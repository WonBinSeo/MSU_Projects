`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:00:57 01/07/2023 
// Design Name: 
// Module Name:    Brent_Kung 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Brent_Kung(A, B, Cin, Sum, Cout);
input [15:0] A, B;
input Cin;
output reg [15:0] Sum;
output Cout;

//line1
genvar i;
generate 
	for(i =0; i<8; i=i+1) begin: loop_1
		buffer(.G(A[2*i]), .P(B[2*i]), .GG(A[2*i]), .PP(B[2*i]));
		BCell(.G0(	


endmodule

module GCell(G0, G1, P1, GG);
input G0, G1, P1;
output GG;

assign GG = G1 | P1 & G0;

endmodule

module BCell(G0, G1, P0, P1, GG, PP);
input G0, G1, P0, P1;
output GG, PP;

assign GG = G1 | P1 & G0;
assign PP = P1 & P0;

endmodule

module Generate(A, B, G);
input A, B;
output G;

assign G = A & B;

endmodule

module Propagate(A, B, P);
input A, B;
output P;

assign P = A ^ B;

endmodule

module buffer(G, P, GG, PP);
input G, P;
output GG, PP;

assign GG = G;
assign PP = P;

endmodule


