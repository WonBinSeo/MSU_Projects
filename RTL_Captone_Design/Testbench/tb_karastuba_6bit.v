`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:09 12/11/2022
// Design Name:   karastuba_6bit
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_karastuba_6bit.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: karastuba_6bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_karastuba_6bit;

	// Inputs
	reg [5:0] a;
	reg [5:0] b;

	// Outputs
	wire [11:0] out;

	// Instantiate the Unit Under Test (UUT)
	karastuba_6bit uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 6'b001100;
		b = 6'b010010;

		// Wait 100 ns for global reset to finish
		#50000;
		$finish;
		// Add stimulus here

	end
	
	always #50 a=a+1;
	always #50 b=b+2;
      
endmodule

