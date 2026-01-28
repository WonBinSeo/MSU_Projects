`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:14:49 10/14/2022
// Design Name:   kogge_stone
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/dld_assign2/tb_kogge_stone.v
// Project Name:  dld_assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: kogge_stone
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_kogge_stone;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg Cin;

	// Outputs
	wire [31:0] S;
	wire Cout;

	
	// Instantiate the Unit Under Test (UUT)
	kogge_stone uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 15;
		B = 10;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

