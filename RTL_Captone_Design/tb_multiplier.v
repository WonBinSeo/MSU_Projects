`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:00:12 10/17/2022
// Design Name:   multiplier
// Module Name:   C:/Xilinx/14.7/dld_assigns/dld_assigns3/tb_multiplier.v
// Project Name:  dld_assigns3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_multiplier;

	parameter bw = 8;
	// Inputs
	reg [bw:1] A;
	reg [bw:1] B;
	reg cin;

	// Outputs
	wire [2*bw:1] out;
	
	reg CLK;
	reg RESETn;

	// Instantiate the Unit Under Test (UUT)
	multiplier_array_pipe #(.bw(bw)) uut(
		.A(A), 
		.B(B), 
		.out(out),
		.CLK(CLK),
		.RESETn(RESETn)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 1;
		cin = 0;
		
		// Wait 100 ns for global reset to finish
		#50000;
        		
		$finish;
		// Add stimulus here

	end
   
	always #50 A = A + 1;
	always #50 B = B + 1;
	initial begin
		CLK = 0;
		RESETn = 0;
		#50;
		RESETn = 1;
		forever #10 CLK = ~CLK;
	end
      
endmodule

