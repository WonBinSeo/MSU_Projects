`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:09:46 12/11/2022
// Design Name:   CSA_4bit
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_csa.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CSA_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_csa;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg [1:0] add;

	// Outputs
	wire [2:0] out;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CSA_4bit uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.add(add), 
		.out(out), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 1;
		c = 1;
		d = 1;
		add = 11;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      
endmodule

