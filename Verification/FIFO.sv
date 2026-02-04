/////////////////////////////////
////Parameters///////////////////
/////////////////////////////////
module fifo #(parameter WIDTH = 4, parameter DEPTH = 4)
(
  	input logic clk,
	input logic rstn,
  	input logic [0:WIDTH-1] write_data,
	input logic write_enable,
	input logic read_enable,
  	output logic [0:WIDTH-1] read_data,
	output bit full,
	output bit empty

);
	
	localparam int ADDR = $clog2(DEPTH);
	
	//Define write & read pointer to set empty, full point
	logic [0:ADDR-1] write_pointer;
	logic [0:ADDR-1] read_pointer;

    logic write_check;
  	logic read_check;
  	logic [$clog2(DEPTH):0] cnt;
	
	//FIFO Array
	logic [0:WIDTH-1] ARR [0:DEPTH-1];
	
	//Write
	always_ff @(posedge clk or negedge rstn) begin
		if (!rstn) begin
			write_pointer <= 0;
		end
		else begin
			if(write_enable && !full) begin
				ARR [write_pointer] <= write_data;
				write_pointer <= write_pointer + 1;
			end
		end
	end
	
	//Read
	always_ff @(posedge clk or negedge rstn ) begin
		if (!rstn) begin
			read_pointer <= 0;
		end
		else begin
			if(read_enable && !empty) begin	
				read_pointer <= read_pointer + 1;
			end
		end
	end
	
	//Dataout 
  	always_ff @(posedge clk or negedge rstn) begin
      	if (!rstn) begin
        	read_data <= 0;
     	end
     	else begin
          	if (read_enable && !empty)
        		read_data <= ARR[read_pointer];
      		end
    end
  	
	
  	assign write_check = write_enable && !full;
  	assign read_check = read_enable && !empty;
  
	//Array full and empty decision
	always_ff @(posedge clk or negedge rstn) begin
      	if (!rstn) begin
          	cnt <= 0;
        end
      	else begin
          	unique case ({write_check, read_check})
            	2'b10: cnt <= cnt + 1'b1;
              	2'b01: cnt <= cnt - 1'b1;
              	default: cnt <= cnt;
            endcase
        end
    end
           
  	assign full = (cnt == DEPTH);
  	assign empty = (cnt == 0);
	
endmodule