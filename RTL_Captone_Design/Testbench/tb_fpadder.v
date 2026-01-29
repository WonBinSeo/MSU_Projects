`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:01:35 12/16/2022
// Design Name:   fpadder
// Module Name:   C:/Xilinx/14.7/fpadder_new/tb_fpadder.v
// Project Name:  fpadder_new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fpadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

	module tb_fpadder;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;

	// Outputs
	wire [15:0] sum;

	// Instantiate the Unit Under Test (UUT)
	fpadder uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.RESETn(RESETn), 
		.sum(sum)
	);

	   initial begin
      // Initialize Inputs
   A = 16'h0x59ec;
   B = 16'h0x57a6;
   #200
   A = 16'h0x570c;
   B = 16'h0xd552;
   #200
   A = 16'h0x4f30;
   B = 16'h0x4b14;
   #200
   A = 16'h0xd211;
   B = 16'h0x595c;
   #200
   A = 16'h0x5a28;
   B = 16'h0x59cd;
   #200
   A = 16'h0xc222;
   B = 16'h0x59fb;
   #200
   A = 16'h0x580c;
   B = 16'h0xd187;
   #200
   A = 16'h0x563a;
   B = 16'h0x5976;
   #200
   A = 16'h0xd41b;
   B = 16'h0xd4ac;
   #200
   A = 16'h0xc25c;
   B = 16'h0x54d4;
   #200


      // Wait 100 ns for global reset to finish
      #5000;
        
      // Add stimulus here

   end
   initial begin
      CLK = 0;
      RESETn = 0;
      #50;
      RESETn = 1;
      forever #10 CLK = ~CLK;
   end
      
endmodule

