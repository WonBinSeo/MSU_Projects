`timescale 1ns/10ps

module tb_fifo;

  localparam int WIDTH = 4;
  localparam int DEPTH = 4;

  logic clk, rstn;
  logic [0:WIDTH-1] write_data;
  logic write_enable, read_enable;
  logic [0:WIDTH-1] read_data;
  logic full, empty;

  // DUT
  fifo #(.WIDTH(WIDTH), .DEPTH(DEPTH)) dut (
    .clk(clk),
    .rstn(rstn),
    .write_data(write_data),
    .write_enable(write_enable),
    .read_enable(read_enable),
    .read_data(read_data),
    .full(full),
    .empty(empty)
  );

  // clock
  initial clk = 0;
  always #10 clk = ~clk;  // 10ns period

  int i;

  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(0, tb_fifo);
    // 초기화
    rstn = 0;
    write_enable = 0;
    read_enable  = 0;
    write_data   = 0;


    // reset 유지
    #20 rstn = 1;
    $display("[%0t] Reset deasserted", $time);

    // -------------------------
    // WRITE 4번 시도
    // -------------------------
    for (i = 0; i < DEPTH; i++) begin
      @(posedge clk);
      write_enable <= 1;
      write_data   <= i + 1;  // 1,2,3,4

      @(posedge clk);
      write_enable <= 0;

      $display("[%0t] WRITE try data=%0h | full=%0b empty=%0b | wp=%0d rp=%0d",
               $time, write_data, full, empty,
               dut.write_pointer, dut.read_pointer);
    end

    // -------------------------
    // READ 4번 시도
    // -------------------------
    for (i = 0; i < DEPTH; i++) begin
      @(posedge clk);
      read_enable <= 1;

      @(posedge clk);
      read_enable <= 0;

      $display("[%0t] READ try data=%0h | full=%0b empty=%0b | wp=%0d rp=%0d",
               $time, read_data, full, empty,
               dut.write_pointer, dut.read_pointer);
    end

    #300;
    $finish;
  end

endmodule