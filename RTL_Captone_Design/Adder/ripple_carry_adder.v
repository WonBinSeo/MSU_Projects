`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:17 10/12/2022 
// Design Name: 
// Module Name:    ripple_carry_adder 
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

module gray_cell(Gi, Pi, Gp, Gout);
	 input Gi, Pi;
	 input Gp;
	 output Gout;
	 
	 assign Gout = Gi | (Pi & Gp);

endmodule


module ripple_carry_adder(
		A, B, cin, 
		sum, cout,
		CLK,
		RESETn
    );
	 
	 parameter bw = 32;
	 
	 input [bw:1] A;
	 input [bw:1] B;
	 input cin;
	 output reg [bw:1] sum;
	 output reg cout;
	 
	 input CLK;
	 input RESETn;
	 
	 
	 wire [bw:0] G;
	 wire [bw:0] P;
	 wire [bw:0] Gout;
	 
	 wire [bw:1] S;
	 // wire [bw:0] Pout; RCA에선 gray cell만 이용
	 
	 assign	G[bw:1] = A & B;
	 assign	P[bw:1] = A ^ B;
	 
	 //P, G part
	 assign Gout[0] = cin;
	 //gray_cell U0(G[0], P[0], cin, Gout[1]);
	 
	 genvar i;
	 generate
		for(i = 1; i <= bw; i=i+1) begin: loop_1
			gray_cell U1(G[i], P[i], Gout[i-1], Gout[i]);
			assign S[i] = P[i] ^ Gout[i-1];
		end
	 endgenerate
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			sum <= 0;
			cout <= 0;
		end else begin
			sum <= S;
			cout <= Gout[bw];
		end
	 end

endmodule

module pipe_ripple_carry_adder(
		A, B, cin, 
		sum, cout,
		CLK,
		RESETn
    );
	 
	 parameter bw = 32;
	 
	 input [bw:1] A;
	 input [bw:1] B;
	 input cin;
	 output reg [bw:1] sum;
	 output reg cout;
	 
	 input CLK;
	 input RESETn;
	 

	 
	 wire [bw:0] G;
	 wire [bw:0] P;
	 wire [bw:0] Gout;
	 
	 wire [bw:1] S;
	 // wire [bw:0] Pout; RCA에선 gray cell만 이용

	 reg [32:17] p_G;
	 reg [32:17] p_P;
	 reg [32:17] p_S;
	 reg p_Gout;
	 
	 assign	G[16:1] = A[16:1] & B[16:1];
	 assign	P[16:1] = A[16:1] ^ B[16:1];
	 
	 
	 
	 //P, G part
	 assign Gout[0] = cin;
	 //gray_cell U0(G[0], P[0], cin, Gout[1]);
	 
	 genvar i;
	 generate
		for(i = 1; i <= 16; i=i+1) begin: loop_1
			gray_cell U1(G[i], P[i], Gout[i-1], Gout[i]);
			assign S[i] = P[i] ^ Gout[i-1];
		end
		gray_cell U1(p_G[17], p_P[17], p_Gout, Gout[17]);
		assign S[17] = p_P[17] ^ p_Gout;
		for(i = 18; i <= 32; i=i+1) begin: loop_2
			gray_cell U1(p_G[i], p_P[i], Gout[i-1], Gout[i]);
			assign S[i] = p_P[i] ^ Gout[i-1];
		end
	 endgenerate
	 
	 always@(posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			sum <= 0;
			cout <= 0;
			p_G <= 0;
			p_P <= 0;
			p_S <= 0;
			p_Gout <= 0;
		end else begin
			sum[16:1] <= p_S;
			sum[32:17] <= S[32:17];
			cout <= Gout[bw];
			p_G <= A[32:17] & B[32:17];
			p_P <= A[32:17] ^ B[32:17];
			p_S <= S[16:1];
			p_Gout <= Gout[16];
		end
	 end

endmodule
