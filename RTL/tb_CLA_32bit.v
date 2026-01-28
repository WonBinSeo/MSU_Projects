`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:20:26 10/13/2022
// Design Name:   CLA_32bit
// Module Name:   C:/Xilinx/14.7/dld_assign2/tb_CLA_32bit.v
// Project Name:  dld_assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_32bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CLA_32bit;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg cin;
	
	reg CLK, RESETn;

	// Outputs
	wire [31:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	pipe_CLA_32bit uut (
		.A(A), 
		.B(B), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout),
		.CLK(CLK),
		.RESETn(RESETn)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		cin = 0;
		
		// Wait 100 ns for global reset to finish
		#500000;
        		
		$finish;
		// Add stimulus here

	end
      	always #50 A = A + 30000;
	always #50 B = B + 50000;
	initial begin
		CLK = 0;
		RESETn = 1;
		#5;
		forever #10 CLK = ~CLK;
	end
      
endmodule

