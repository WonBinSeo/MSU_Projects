`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:25 12/10/2022 
// Design Name: 
// Module Name:    fp16multiplier 
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

module RCA #(parameter bw = 4)(A, B, Cin, Sum, Cout);
	//can be subsitude with other adder to recude delay
	input [bw:1] A;
	input [bw:1] B;
	input Cin;
	output [bw:1] Sum;
	output Cout;
	
	wire [bw:0] G;
	wire [bw:0] P;
	wire [bw:0] GG;
	
	assign G[0] = Cin;
	assign P[0] = 0;
	assign G[bw:1] = A & B;
	assign P[bw:1] = A ^ B;
	
	assign GG[0] = G[0];
	G_Cell U0(G[0], G[1], P[1], GG[1]);
	
	genvar i;
	generate
		for(i=1; i<=bw; i=i+1) begin: loop_1
			if(i<bw)
				G_Cell U1(GG[i], G[i+1], P[i+1], GG[i+1]);
			assign Sum[i] = P[i] ^ GG[i-1];
		end
	endgenerate
	
	assign Cout = GG[bw];
	
endmodule

module G_Cell(G0, G1, P1, GG);
	input G0;
	input G1;
	input P1;
	output GG;
	
	assign GG = G1 | (P1 & G0);
endmodule


module Adder3(
	a, b, c, d, add,
	lsb, msb
	);
	
	input a,b,c,d;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	
	wire [2:0] pSum [1:0];
	wire [2:0] out;
	wire carry;

	//stage1
	full_adder u0(a,b,c,pSum[0][0],pSum[0][1]);
	
	//stage2
	full_adder u1(d,add[0],pSum[0][0],out[0],pSum[1][0]);
	full_adder u2(1'b0,add[1],pSum[0][1],pSum[1][1],pSum[1][2]);
	
	//RCA
	full_adder u3(.A(pSum[1][1]), .B(pSum[1][0]), .cin(1'b0),.sum(out[1]), .cout(carry));
	full_adder u4(.A(carry),.B(pSum[1][2]),.cin(1'b0),.sum(out[2]),.cout());
	
	assign lsb = out[0];
	assign msb = out[2:1];
	
endmodule


module Adder2(
	a, b, c, add,
	lsb, msb
	);
	
	input a,b,c, add;
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	full_adder u0(a,b,c,temp[0],carry[0]);
	full_adder u1(add,temp[0],1'b0,sum[0],carry[1]);
	full_adder u2(carry[0],carry[1],1'b0,sum[1],sum[2]);
	
	assign lsb = sum[0];
	assign msb[1:0] = sum[2:1];
	
endmodule

module Adder4(
	a, b, c, add,
	lsb, msb
	);
	
	input a,b,c;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	full_adder u0(a,b,c,temp[0],temp[1]);
	full_adder u1(temp[0],add[0],1'b0,sum[0],carry[0]);
	full_adder u2(temp[1],add[1],carry[0],sum[1],sum[2]);
	
	assign lsb = sum[0];
	assign msb = sum[2:1];
	
endmodule

module Adder5(
	a, b, add,
	lsb, msb
	);
	
	input a,b;
	input [1:0] add;
	
	output lsb;
	output [1:0] msb;
	
	wire [2:0] sum;
	wire [2:0] temp;
	
	wire [1:0] carry;
	
	full_adder u0(a,b,add[0],sum[0],carry[0]);
	full_adder u1(add[1],carry[0],1'b0,sum[1],sum[2]);
	
	assign lsb = sum[0];
	assign msb[1:0] = sum[2:1];
	
endmodule


module biasAdder(
	A,B,
	out, shift
	);
	input [4:0] A,B;
	input shift;
	output [4:0] out;
	

	wire [4:0]temp;
	
	RCA #(.bw(5)) badder1(.A(A),.B(B),.Cin(shift),.Sum(temp),.Cout());
	RCA #(.bw(5)) badder2(.A(temp),.B(5'b10000),.Cin(1'b1),.Sum(out),.Cout());
	
endmodule

module vedic_4bit(
	a,b,
	out);
	
	input [3:0] a,b;
	output [7:0] out;
	wire [7:0] pSum;
	
	wire [1:0] add[7:0];
	
	assign pSum[0] = a[0]&b[0];
	
	full_adder adder1(a[0]&b[1],a[1]&b[0],1'b0,pSum[1],add[1][0]);
	
	Adder2 adder2(a[0]&b[2], a[1]&b[1], a[2]&b[0], add[1][0], pSum[2], add[2]);
	
	Adder3 adder3(a[0]&b[3], a[1]&b[2], a[2]&b[1], a[3]&b[0], add[2], pSum[3], add[3]);
	
	Adder4 adder4(a[3]&b[1], a[2]&b[2], a[1]&b[3], add[3], pSum[4], add[4]);
	
	Adder5 adder5(a[3]&b[2], a[2]&b[3], add[4], pSum[5], add[5]);
	
	assign pSum[6] = add[5][0] ^ a[3]&b[3];
	
	assign pSum[7] = add[5][1] + add[5][0]&a[3]&b[3];

	assign out = pSum;
	
endmodule





module karastuba_6bit(
	a, b,
	out);
	
	input [5:0] a,b;
	output [11:0] out;
	
	
	wire [3:0] a1, ar;
	wire [3:0] b1, br;
	
	
	wire [7:0] xy, r, mid, mid2, mid3;
	wire [3:0] xr1, xr2;
	
	wire [3:0] tsum[1:0];
	
	assign a1 = {1'b0,a[5:3]};
	assign ar = {1'b0,a[2:0]};
	
	assign b1 = {1'b0,b[5:3]};
	assign br = {1'b0,b[2:0]};
	
	vedic_4bit u0(a1, b1, xy);
	vedic_4bit u1(ar, br, r);
	
	RCA #(.bw(4)) rca1(.A(a1), .B(ar), .Cin(1'b0), .Sum(tsum[0]),.Cout());
	RCA #(.bw(4)) rca2(.A(b1), .B(br), .Cin(1'b0), .Sum(tsum[1]),.Cout());
	
	vedic_4bit u2(tsum[0], tsum[1], mid);
	
	RCA #(.bw(8)) sub1(.A(mid), .B(~xy), .Cin(1'b1), .Sum(mid2), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(8)) sub1(.A(mid), .B(~xy), .Cin(1'b1), .Sum(mid2), .Cout());
	RCA #(.bw(8)) sub2(.A(mid2), .B(~r), .Cin(1'b1), .Sum(mid3), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(8)) sub2(.A(mid2), .B(~r), .Cin(1'b1), .Sum(mid3), .Cout());
	
	wire [11:0] t1, t2, t3;
	
	assign t1 = {xy, 6'b0};
	assign t2 = {3'b0, mid3, 3'b0};
	assign t3 = r;
	
	wire [11:0] psum;
	
	RCA #(.bw(12)) add1(.A(t1),.B(t2),.Cin(1'b0), .Sum(psum), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(12)) add1(.A(t1),.B(t2),.Cin(1'b0), .Sum(psum), .Cout());
	RCA #(.bw(12)) add2(.A(psum), .B(t3), .Cin(1'b0), .Sum(out), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(12)) add2(.A(psum), .B(t3), .Cin(1'b0), .Sum(out), .Cout());
	

endmodule
	
module karastuba_10bit(
	a,b,
	out
	);
	
	input [9:0] a,b;
	output [19:0] out;
	
	wire [5:0] a1, ar;
	wire [5:0] b1, br;
	
	wire [11:0] xy, r;
	wire [11:0] mid;
	wire [11:0] mid2, mid3;
	
	wire [5:0] tsum[1:0];
	
	assign a1 = {1'b0, a[9:5]};
	assign ar = {1'b0, a[4:0]};
	
	assign b1 = {1'b0, b[9:5]};
	assign br = {1'b0, b[4:0]};
	
	karastuba_6bit km0(a1, b1, xy);
	karastuba_6bit km1(ar, br, r);
	
	RCA #(.bw(6)) rca1(.A(a1), .B(ar), .Cin(1'b0), .Sum(tsum[0]), .Cout());
	RCA #(.bw(6)) rca2(.A(b1), .B(br), .Cin(1'b0), .Sum(tsum[1]), .Cout());
	
	//7bit multiplier가 필요하다는 이유가 있음 이에 대한 수정 필요
	wire [11:0] mout;
	karastuba_6bit km2(tsum[0], tsum[1], mid);
	
	//assign mid={0,mout};
	
	RCA #(.bw(12)) sub1(.A(mid), .B(~xy), .Cin(1'b1), .Sum(mid2), .Cout());
	RCA #(.bw(12)) sub2(.A(mid2), .B(~r), .Cin(1'b1), .Sum(mid3), .Cout());
	//RCA #(.bw(14)) addsub({0,xy},{0,r},0,mid2);
	//RCA #(.bw(13)) sub({0,mid},~mid2,1,mid3, sign);
	
	
	wire [19:0] t1, t2, t3;
	
	assign t1 = {xy, 10'b0};
	assign t2 = {5'b0, mid3, 5'b0};
	assign t3 = r;
	
	wire [19:0] psum;
	
	RCA #(.bw(24)) add1(.A(t1),.B(t2),.Cin(1'b0), .Sum(psum), .Cout());
	RCA #(.bw(24)) add2(.A(psum), .B(t3), .Cin(1'b0), .Sum(out), .Cout());
	

endmodule

module karastuba_12bit(
	a,b,
	out
	);
	
	input [11:0] a,b;
	output [23:0] out;
	
	wire [5:0] a1, ar;
	wire [5:0] b1, br;
	
	wire [11:0] xy, r, x1,x2;
	wire [11:0] mid;
	wire [11:0] mid2, mid3;
	
	wire [12:0] tsum;
	
	assign a1 = a[11:6];
	assign ar = a[5:0];
	
	assign b1 = b[11:6];
	assign br = b[5:0];
	
	karastuba_6bit km0(a1, b1, xy);
	karastuba_6bit km1(ar, br, r);
	karastuba_6bit km2(a1, br, x1);
	karastuba_6bit km3(ar, b1, x2);
	
	RCA #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	//kogge_stone_Nbit_NOCLK #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	//CSA #(.bw(12)) rca1(x1, x2, 1'b0, tsum[11:0],tsum[12]);
	
	wire [23:0] t1, t2, t3;
	
	assign t1 = {xy, 12'b0};
	assign t2 = {6'b0, tsum, 6'b0};
	assign t3 = r;
	
	wire [23:0] psum;
	
	RCA #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add1(.A(t1),.B(t3),.Cin(1'b0), .Sum(psum), .Cout());
	RCA #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	//kogge_stone_Nbit_NOCLK #(.bw(24)) add2(.A(psum),.B(t2),.Cin(1'b0), .Sum(out), .Cout());
	
endmodule

module menMult(
	a,b,
	out, cout
	);
	
	input [9:0] a,b;
	output [9:0] out;
	output cout;
	wire [23:0] multi;
	
	karastuba_12bit menti({1'b1,a,1'b0},{1'b1,b,1'b0},multi);
	
	//need rounding
	
	assign cout = multi[23];
	assign out = cout ? multi[22:13] : multi[21:12];
	
	
//	assign out = 0;
	
endmodule

module fp16multiplier(
		A,B,	CLK,	RESETn,
		out
    );
	 input [15:0] A,B;
	 input CLK, RESETn;
	 output reg [15:0] out;
	 
	 wire [15:0] product;
	 
	 wire cout;
	 
	 wire sign = (A[15]^B[15]);
	 buf(product[15],sign);
	 //assign product[15] = A[15]^B[15];
	 biasAdder U0(A[14:10],B[14:10], product[14:10], cout);
	 menMult U1(A[9:0], B[9:0], product[9:0], cout);
	 
	 //assign out = reg_out;
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			out <= 0;
		end else begin
			out <= product;
		end
	 end


endmodule
