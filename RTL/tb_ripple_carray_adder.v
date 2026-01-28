`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:34 10/12/2022
// Design Name:   ripple_carry_adder
// Module Name:   C:/Xilinx/14.7/dld_assign2/tb_ripple_carray_adder.v
// Project Name:  dld_assign2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ripple_carray_adder;
	parameter bw = 32;
	// Inputs
	reg [bw:1] A;
	reg [bw:1] B;
	reg cin;
	
	reg CLK;
	reg RESETn;

	// Outputs
	wire [bw:1] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	pipe_ripple_carry_adder uut (
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

