////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ripple_carry_adder_synthesis.v
// /___/   /\     Timestamp: Fri Oct 14 16:37:56 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ripple_carry_adder.ngc ripple_carry_adder_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: ripple_carry_adder.ngc
// Output file	: C:\Users\Dongbeom Son\Desktop\repos\dld_assigns\dld_assign2\netgen\synthesis\ripple_carry_adder_synthesis.v
// # of Modules	: 1
// Design Name	: ripple_carry_adder
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ripple_carry_adder (
  cin, cout, A, B, sum
);
  input cin;
  output cout;
  input [4 : 1] A;
  input [4 : 1] B;
  output [4 : 1] sum;
  wire A_4_IBUF_0;
  wire A_3_IBUF_1;
  wire A_2_IBUF_2;
  wire A_1_IBUF_3;
  wire B_4_IBUF_4;
  wire B_3_IBUF_5;
  wire B_2_IBUF_6;
  wire B_1_IBUF_7;
  wire cin_IBUF_8;
  wire sum_1_OBUF_10;
  wire cout_OBUF_11;
  wire sum_2_OBUF_12;
  wire sum_3_OBUF_13;
  wire sum_4_OBUF_14;
  wire [2 : 2] Gout;
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<1>_xo<0>1  (
    .I0(A_1_IBUF_3),
    .I1(B_1_IBUF_7),
    .I2(cin_IBUF_8),
    .O(sum_1_OBUF_10)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<3>_xo<0>1  (
    .I0(A_3_IBUF_1),
    .I1(B_3_IBUF_5),
    .I2(Gout[2]),
    .O(sum_3_OBUF_13)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[2].U1/Gout1  (
    .I0(A_2_IBUF_2),
    .I1(B_2_IBUF_6),
    .I2(B_1_IBUF_7),
    .I3(cin_IBUF_8),
    .I4(A_1_IBUF_3),
    .O(Gout[2])
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \Mxor_sum<2>_xo<0>1  (
    .I0(A_2_IBUF_2),
    .I1(B_2_IBUF_6),
    .I2(B_1_IBUF_7),
    .I3(cin_IBUF_8),
    .I4(A_1_IBUF_3),
    .O(sum_2_OBUF_12)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[4].U1/Gout1  (
    .I0(A_4_IBUF_0),
    .I1(B_4_IBUF_4),
    .I2(B_3_IBUF_5),
    .I3(Gout[2]),
    .I4(A_3_IBUF_1),
    .O(cout_OBUF_11)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \Mxor_sum<4>_xo<0>1  (
    .I0(A_4_IBUF_0),
    .I1(B_4_IBUF_4),
    .I2(B_3_IBUF_5),
    .I3(Gout[2]),
    .I4(A_3_IBUF_1),
    .O(sum_4_OBUF_14)
  );
  IBUF   A_4_IBUF (
    .I(A[4]),
    .O(A_4_IBUF_0)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_1)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_2)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_3)
  );
  IBUF   B_4_IBUF (
    .I(B[4]),
    .O(B_4_IBUF_4)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_5)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_6)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_7)
  );
  IBUF   cin_IBUF (
    .I(cin),
    .O(cin_IBUF_8)
  );
  OBUF   sum_4_OBUF (
    .I(sum_4_OBUF_14),
    .O(sum[4])
  );
  OBUF   sum_3_OBUF (
    .I(sum_3_OBUF_13),
    .O(sum[3])
  );
  OBUF   sum_2_OBUF (
    .I(sum_2_OBUF_12),
    .O(sum[2])
  );
  OBUF   sum_1_OBUF (
    .I(sum_1_OBUF_10),
    .O(sum[1])
  );
  OBUF   cout_OBUF (
    .I(cout_OBUF_11),
    .O(cout)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

