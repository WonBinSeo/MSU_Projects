//write data is proviede in a single clock along with the address while read data
//is received on the next clock, and no transactions can be strated during that time indicated by "ready" signal.

module reg_ctrl 
# (
	parameter ADDR_WIDTH 	= 2,
	parameter DATA_WIDTH 	= 4,
	parameter DEPTH 	 	= 4,
	parameter RESET_VAL	 	= 4'b0000
)
(	input				 	clk,
	input				 	rstn,
	input [ADDR_WIDTH-1:0]	addr,
	input				 	sel,
	input				 	wr,
	input [DATA_WIDTH-1:0]	wdata,
	output reg [DATA_WIDTH-1:0]		rdata,
	output reg				ready
	);
	
	reg [DATA_WIDTH-1:0] ctrl [DEPTH]; //DATA_WIDTH-1 bits, DEPTH width
	
	reg ready_dly;
	reg ready_pe;

//Initialization to RESET_VAL when rstn is 0. 
//Then by the values sel, ready, wr -> write data to ctrl memory & read data from ctrl memory at every cycle when posedge	
	always @(posedge clk) begin
		if (!rstn) begin
			for (int i = 0; i < DEPTH; i += 1) begin
				ctrl[i] <= RESET_VAL;
			end
		end
		else begin
			if (sel & ready & wr) begin
				ctrl[addr] <= wdata;
			end
			
			if (sel & ready & !wr) begin
				rdata <= ctrl[addr];
			end
			else begin
				rdata <= 0;
			end
		end
	end 

//Drive 'ready' signal. When rstn and sel = ready_pe = 1, then ready set to 1
//When wr = 0, then ready = 0
	always @(posedge clk) begin
		if(!rstn) begin
			ready <= 1;
		end
		else begin
			if (sel & ready_pe) begin //low edge ready detect and make it high edge
				ready <= 1;
			end
			if (sel & ready & !wr) begin
				ready <= 0;
			end
		end
	end
	
//ready_dly operation. Initialize as 1 when rstn is 0, else read_dly == ready (make for 'ready' signal to be high) signal that right before the ready signal
	always @(posedge clk) begin
		if (!rstn)
			ready_dly <= 1;
		else
			ready_dly <= ready;
	end
	
	assign ready_pe = ~ready & ready_dly;

endmodule
	
	
//Transaction Object, using when compromise environment
// This is the base transaction object that will be used
// in the environment to initiate new transactions and 
// capture transactions at DUT interface
class reg_item;
  rand 	bit [1:0] 	addr;
  rand 	bit [3:0] 	wdata;
  		bit [3:0] 	rdata;
  rand 	bit 		wr;
  
  // This function allows us to print contents of the data packet
  // so that it is easier to track in a logfile
  function void print(string tag="");
    $display ("T=%0t [%s] addr=0x%0h wr=%0d wdata=0x%0h rdata=0x%0h", 
              			$time, tag, addr, wr, wdata, rdata);
  endfunction
endclass

// The driver is responsible for driving transactions to the DUT 
// All it does is to get a transaction from the mailbox if it is 
// available and drive it out into the DUT interface.
class driver;
  virtual reg_if vif;
  event drv_done;
  mailbox drv_mbx;
  
  task run();
    $display ("T=%0t [Driver] starting ...", $time);
    @ (posedge vif.clk);
    
    // Try to get a new transaction every time and then assign 
    // packet contents to the interface. But do this only if the 
    // design is ready to accept new transactions
    forever begin
      reg_item item;
      
      $display ("T=%0t [Driver] waiting for item ...", $time);
      drv_mbx.get(item);      
	  item.print("Driver");
      vif.sel <= 1;
      vif.addr 	<= item.addr;
      vif.wr 	<= item.wr;
      vif.wdata <= item.wdata;
      @ (posedge vif.clk);
      while (!vif.ready)  begin
        $display ("T=%0t [Driver] wait until ready is high", $time);
        @(posedge vif.clk);
      end
      
      // When transfer is over, raise the done event
      vif.sel <= 0;
      ->drv_done;
    end   
  endtask
endclass

// The monitor has a virtual interface handle with which it can monitor
// the events happening on the interface. It sees new transactions and then
// captures information into a packet and sends it to the scoreboard
// using another mailbox.
class monitor;
  virtual reg_if vif;
  mailbox scb_mbx; 		// Mailbox connected to scoreboard
  
  task run();
    $display ("T=%0t [Monitor] starting ...", $time);
    
    // Check forever at every clock edge to see if there is a 
    // valid transaction and if yes, capture info into a class
    // object and send it to the scoreboard when the transaction 
    // is over.
    forever begin
      @ (posedge vif.clk);
      if (vif.sel) begin
        reg_item item = new;
        item.addr = vif.addr;
        item.wr = vif.wr;
        item.wdata = vif.wdata;

        if (!vif.wr) begin
          @(posedge vif.clk);
        	item.rdata = vif.rdata;
        end
        item.print("Monitor");
        scb_mbx.put(item);
      end
    end
  endtask
endclass

// The scoreboard is responsible to check data integrity. Since the design
// stores data it receives for each address, scoreboard helps to check if the
// same data is received when the same address is read at any later point
// in time. So the scoreboard has a "memory" element which updates it
// internally for every write operation.
class scoreboard;
  mailbox scb_mbx;
  
  reg_item refq[4];
  
  task run();
    forever begin
      reg_item item;
      scb_mbx.get(item);
      item.print("Scoreboard");
      
      if (item.wr) begin
        if (refq[item.addr] == null)
          refq[item.addr] = new;
        
        refq[item.addr] = item;
        $display ("T=%0t [Scoreboard] Store addr=0x%0h wr=0x%0h data=0x%0h", $time, item.addr, item.wr, item.wdata);
      end
      
        if (!item.wr) begin
          if (refq[item.addr] == null)
            if (item.rdata != 'b0000)
              	$display ("T=%0t [Scoreboard] ERROR! First time read, addr=0x%0h exp=1234 act=0x%0h",
                        											$time, item.addr, item.rdata);
          	else
          		$display ("T=%0t [Scoreboard] PASS! First time read, addr=0x%0h exp=1234 act=0x%0h",
                    												$time, item.addr, item.rdata);
          else
            if (item.rdata != refq[item.addr].wdata)
              $display ("T=%0t [Scoreboard] ERROR! addr=0x%0h exp=0x%0h act=0x%0h",
                        $time, item.addr, refq[item.addr].wdata, item.rdata);
           else
             $display ("T=%0t [Scoreboard] PASS! addr=0x%0h exp=0x%0h act=0x%0h", 
                       $time, item.addr, refq[item.addr].wdata, item.rdata);
        end
    end
  endtask
endclass

// The environment is a container object simply to hold all verification 
// components together. This environment can then be reused later and all
// components in it would be automatically connected and available for use
// This is an environment without a generator.
class env;
  driver 			d0; 		// Driver to design
  monitor 			m0; 		// Monitor from design
  scoreboard 		s0; 		// Scoreboard connected to monitor
  mailbox 			scb_mbx; 	// Top level mailbox for SCB <-> MON 
  virtual reg_if 	vif; 		// Virtual interface handle
  
  // Instantiate all testbench components
  function new();
    d0 = new;
    m0 = new;
    s0 = new;
    scb_mbx = new();
  endfunction
  
  // Assign handles and start all components so that 
  // they all become active and wait for transactions to be
  // available
  virtual task run();
    d0.vif = vif;
    m0.vif = vif;
    m0.scb_mbx = scb_mbx;
    s0.scb_mbx = scb_mbx;
    
    fork
    	s0.run();
		d0.run();
    	m0.run();
    join_any
  endtask
endclass

// Sometimes we simply need to generate N random transactions to random
// locations so a generator would be useful to do just that. In this case
// loop determines how many transactions need to be sent
class generator;
  int 	loop = 10;
  event drv_done;
  mailbox drv_mbx;
  
  task run();
    for (int i = 0; i < loop; i++) begin
      reg_item item = new;
      item.randomize();
      $display ("T=%0t [Generator] Loop:%0d/%0d create next item", $time, i+1, loop);
      drv_mbx.put(item);
      $display ("T=%0t [Generator] Wait for driver to be done", $time);
      @(drv_done);
    end
  endtask
endclass


// Lets say that the environment class was already there, and generator is 
// a new component that needs to be included in the ENV. So a child ENV can
// be derived and generator be instantiated in it along with all others.
// Note that the run task should be overridden to start the generator as 
// well.
class env_w_gen extends env;
  generator g0;
  
  event drv_done;
  mailbox drv_mbx;
  
  function new();
    super.new();
    g0 = new;
    drv_mbx = new;
  endfunction
  
  virtual task run();
    // Connect virtual interface handles
    d0.vif = vif;
    m0.vif = vif;
    
    // Connect mailboxes between each component
    d0.drv_mbx = drv_mbx;
    g0.drv_mbx = drv_mbx;
    
    m0.scb_mbx = scb_mbx;
    s0.scb_mbx = scb_mbx;
    
    // Connect event handles
    d0.drv_done = drv_done;
    g0.drv_done = drv_done;
    
    // Start all components - a fork join_any is used because 
    // the stimulus is generated by the generator and we want the
    // simulation to exit only when the generator has finished 
    // creating all transactions. Until then all other components
    // have to run in the background.
    fork
    	s0.run();
		d0.run();
    	m0.run();
      g0.run();
    join_any
  endtask
endclass

// The interface allows verification components to access DUT signals
// using a virtual interface handle
interface reg_if (input bit clk);
  logic rstn;
  logic [1:0] addr;
  logic [3:0] wdata;
  logic [3:0] rdata;
  logic 		wr;
  logic 		sel;
  logic 		ready;
endinterface

// The test can instantiate any environment. In this test, we are using
// an environment without the generator and hence the stimulus should be 
// written in the test. 
class test;
  env e0;
  mailbox drv_mbx;
  
  function new();
    drv_mbx = new();
    e0 = new();
  endfunction
  
  virtual task run();
    e0.d0.drv_mbx = drv_mbx;
    
    fork
    	e0.run();
    join_none
    
    apply_stim();
  endtask
  
  virtual task apply_stim();
    reg_item item;
    
    $display ("T=%0t [Test] Starting stimulus ...", $time);
    item = new;
    item.randomize() with { addr == 2'b00; wr == 1; };
    drv_mbx.put(item);
    
    item = new;
    item.randomize() with { addr == 2'b00; wr == 0; };
    drv_mbx.put(item);
  endtask
endclass

// In this test, the original "apply_stim" method is overridden to
// generate 20 randomized transactions
class rand_test extends test;
  virtual task apply_stim();
    for (int i = 0; i < 20; i++) begin
      reg_item item = new;
      item.randomize();
      drv_mbx.put(item);
    end
  endtask
endclass

// This is a new test that instead instantiates an environment with a 
// generator so that random stimulus is automatically applied instead 
// of having to create an "apply_stim" task. Remember that this is a 
// random environment and for more finer control, the above two tests
// can be used.
class new_test;
  env_w_gen e0;
  
  function new();
    e0 = new();
  endfunction
  
  virtual task run();    
    $display ("T=%0t [Test] Starting test ...", $time);
    fork
    	e0.run();
    join_none
  endtask
endclass

// Top level testbench contains the interface, DUT and test handles which 
// can be used to start test components once the DUT comes out of reset. Or
// the reset can also be a part of the test class in which case all you need
// to do is start the test's run method.
module tb;
  reg clk=0;
  
  always #10 clk = ~clk;
  reg_if _if (clk);
  
  reg_ctrl u0 ( .clk (clk),
            .addr (_if.addr),
               .rstn(_if.rstn),
            .sel  (_if.sel),
               .wr (_if.wr),
            .wdata (_if.wdata),
            .rdata (_if.rdata),
            .ready (_if.ready));
  
  int cyc;
    
  always @(posedge clk) begin
    
    if (_if.sel && _if.ready)
      $display ("CYCLE=%0d ACCEPT wr=%0d addr=%0b wdata=%0b rdata=%0b", cyc, _if.wr, _if.addr, _if.wdata, _if.rdata);
    
    cyc++;
  end
  initial begin
    test	  t0;	
    new_test  t1;
    rand_test t2;
    
    clk <= 0;
    _if.rstn <= 0;
    _if.sel <= 0;
    #20 _if.rstn <= 1;

    t0 = new;
    t0.e0.vif = _if;
//    t0.run();
    
    t1 = new;
    t1.e0.vif = _if;
    t1.run();
    
    t2 = new;
    t2.e0.vif = _if;
//    t2.run();
    

    // Once the main stimulus is over, wait for some time
    // until all transactions are finished and then end 
    // simulation. Note that $finish is required because
    // there are components that are running forever in 
    // the background like clk, monitor, driver, etc
    #500 $finish;
  end
  
  // Simulator dependent system tasks that can be used to 
  // dump simulation waves.
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
endmodule
