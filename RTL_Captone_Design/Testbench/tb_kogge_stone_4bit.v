`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:13:47 10/14/2022
// Design Name:   kogge_stone_4bit
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/dld_assign2/tb_kogge_stone_4bit.v
// Project Name:  dld_assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: kogge_stone_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_kogge_stone_Nbit;

	// Inputs
	parameter bw = 32;
	reg [bw:1] A;
	reg [bw:1] B;
	reg cin;
	reg CLK;
	reg RESETn;

	// Outputs
	wire cout;
	wire [bw:1] sum;

	// Instantiate the Unit Under Test (UUT)
	pipe_kogge_stone_Nbit uut (
		.A(A), 
		.B(B), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum),
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

