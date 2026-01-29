`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:59:27 12/11/2022
// Design Name:   karastuba_12bit
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_karastuba_12bit.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: karastuba_12bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_karastuba_10bit;

	// Inputs
	reg [9:0] a;
	reg [9:0] b;

	// Outputs
	wire [19:0] out;

	// Instantiate the Unit Under Test (UUT)
	karastuba_10bit uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 10'd996;
		b = 10'd999;

		// Wait 100 ns for global reset to finish
		#50000;
		$finish;
		// Add stimulus here

	end
	
	always #50 a=a+4;
	always #50 b=b+4;
      
endmodule

