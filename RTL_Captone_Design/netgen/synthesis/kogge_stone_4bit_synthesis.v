////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: kogge_stone_4bit_synthesis.v
// /___/   /\     Timestamp: Fri Oct 14 18:49:59 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim kogge_stone_4bit.ngc kogge_stone_4bit_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: kogge_stone_4bit.ngc
// Output file	: C:\Users\Dongbeom Son\Desktop\repos\dld_assigns\dld_assign2\netgen\synthesis\kogge_stone_4bit_synthesis.v
// # of Modules	: 1
// Design Name	: kogge_stone_4bit
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

module kogge_stone_4bit (
  cin, cout, A, B, sum
);
  input cin;
  output cout;
  input [16 : 1] A;
  input [16 : 1] B;
  output [16 : 1] sum;
  wire A_16_IBUF_0;
  wire A_15_IBUF_1;
  wire A_14_IBUF_2;
  wire A_13_IBUF_3;
  wire A_12_IBUF_4;
  wire A_11_IBUF_5;
  wire A_10_IBUF_6;
  wire A_9_IBUF_7;
  wire A_8_IBUF_8;
  wire A_7_IBUF_9;
  wire A_6_IBUF_10;
  wire A_5_IBUF_11;
  wire A_4_IBUF_12;
  wire A_3_IBUF_13;
  wire A_2_IBUF_14;
  wire A_1_IBUF_15;
  wire B_16_IBUF_16;
  wire B_15_IBUF_17;
  wire B_14_IBUF_18;
  wire B_13_IBUF_19;
  wire B_12_IBUF_20;
  wire B_11_IBUF_21;
  wire B_10_IBUF_22;
  wire B_9_IBUF_23;
  wire B_8_IBUF_24;
  wire B_7_IBUF_25;
  wire B_6_IBUF_26;
  wire B_5_IBUF_27;
  wire B_4_IBUF_28;
  wire B_3_IBUF_29;
  wire B_2_IBUF_30;
  wire B_1_IBUF_31;
  wire cin_IBUF_32;
  wire \GG[36] ;
  wire \GG[55] ;
  wire \GG[76] ;
  wire cout_OBUF_36;
  wire \P[4] ;
  wire \P[8] ;
  wire \P[9] ;
  wire \P[10] ;
  wire \P[12] ;
  wire \P[13] ;
  wire \GG[57] ;
  wire sum_1_OBUF_44;
  wire \GG[21] ;
  wire \GG[22] ;
  wire \GG[24] ;
  wire \GG[26] ;
  wire \GG[29] ;
  wire \GG[56] ;
  wire \GG[58] ;
  wire \GG[78] ;
  wire \GG[82] ;
  wire sum_3_OBUF_55;
  wire sum_5_OBUF_56;
  wire sum_9_OBUF_57;
  wire \GG[81] ;
  wire sum_2_OBUF_59;
  wire \GG[79] ;
  wire sum_7_OBUF_61;
  wire sum_13_OBUF_62;
  wire sum_4_OBUF_63;
  wire sum_6_OBUF_64;
  wire sum_8_OBUF_65;
  wire sum_10_OBUF_66;
  wire sum_11_OBUF_67;
  wire sum_12_OBUF_68;
  wire sum_14_OBUF_69;
  wire sum_15_OBUF_70;
  wire sum_16_OBUF_71;
  wire \GG[83] ;
  wire \loop_1[3].loop_3[5].U1/GGG1 ;
  wire \loop_1[2].loop_3[5].U2/P_GG_AND_18_o1 ;
  wire \loop_1[5].loop_3[16].U1/GGG11 ;
  wire \loop_1[5].loop_3[16].U1/GGG12 ;
  wire \loop_1[3].loop_3[7].U1/GGG ;
  wire \loop_1[3].loop_3[9].U2/GGG ;
  wire N4;
  wire \loop_1[4].loop_3[10].U1/GGG ;
  wire N6;
  wire \loop_1[4].loop_3[15].U1/GGG ;
  wire \loop_1[5].loop_3[16].U1/GGG1 ;
  wire \loop_1[4].loop_3[13].U1/GGG ;
  wire \loop_1[4].loop_3[13].U1/GGG3 ;
  wire \loop_1[4].loop_3[13].U1/GGG4_86 ;
  wire \loop_1[5].loop_3[16].U1/GGG121_87 ;
  wire \loop_1[5].loop_3[16].U1/GGG122_88 ;
  wire \loop_1[4].loop_3[11].U1/GGG ;
  wire \loop_1[4].loop_3[14].U1/GGG ;
  wire N8;
  wire N10;
  wire [24 : 24] PP;
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_P_12_xo<0>1  (
    .I0(A_13_IBUF_3),
    .I1(B_13_IBUF_19),
    .O(\P[13] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_P_11_xo<0>1  (
    .I0(A_12_IBUF_4),
    .I1(B_12_IBUF_20),
    .O(\P[12] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_P_9_xo<0>1  (
    .I0(A_10_IBUF_6),
    .I1(B_10_IBUF_22),
    .O(\P[10] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_P_8_xo<0>1  (
    .I0(A_9_IBUF_7),
    .I1(B_9_IBUF_23),
    .O(\P[9] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_P_7_xo<0>1  (
    .I0(A_8_IBUF_8),
    .I1(B_8_IBUF_24),
    .O(\P[8] )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mxor_P_3_xo<0>1  (
    .I0(A_4_IBUF_12),
    .I1(B_4_IBUF_28),
    .O(\P[4] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[1].loop_3[12].U2/GGG1  (
    .I0(A_12_IBUF_4),
    .I1(B_12_IBUF_20),
    .I2(A_11_IBUF_5),
    .I3(B_11_IBUF_21),
    .O(\GG[29] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[1].loop_3[7].U2/GGG1  (
    .I0(A_7_IBUF_9),
    .I1(B_7_IBUF_25),
    .I2(A_6_IBUF_10),
    .I3(B_6_IBUF_26),
    .O(\GG[24] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[1].loop_3[5].U2/GGG1  (
    .I0(A_5_IBUF_11),
    .I1(B_5_IBUF_27),
    .I2(A_4_IBUF_12),
    .I3(B_4_IBUF_28),
    .O(\GG[22] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[1].loop_3[4].U2/GGG1  (
    .I0(A_4_IBUF_12),
    .I1(B_4_IBUF_28),
    .I2(A_3_IBUF_13),
    .I3(B_3_IBUF_29),
    .O(\GG[21] )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[5].loop_3[16].U1/GGG111  (
    .I0(A_15_IBUF_1),
    .I1(B_15_IBUF_17),
    .I2(A_14_IBUF_2),
    .I3(B_14_IBUF_18),
    .O(\loop_1[5].loop_3[16].U1/GGG11 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \loop_1[3].loop_3[5].U1/GGG11  (
    .I0(A_2_IBUF_14),
    .I1(B_2_IBUF_30),
    .O(\loop_1[3].loop_3[5].U1/GGG1 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[2].loop_3[5].U2/P_GG_AND_18_o11  (
    .I0(A_3_IBUF_13),
    .I1(B_3_IBUF_29),
    .I2(A_2_IBUF_14),
    .I3(B_2_IBUF_30),
    .O(\loop_1[2].loop_3[5].U2/P_GG_AND_18_o1 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<1>_xo<0>1  (
    .I0(A_1_IBUF_15),
    .I1(B_1_IBUF_31),
    .I2(cin_IBUF_32),
    .O(sum_1_OBUF_44)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<5>_xo<0>1  (
    .I0(A_5_IBUF_11),
    .I1(B_5_IBUF_27),
    .I2(\GG[55] ),
    .O(sum_5_OBUF_56)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<6>_xo<0>1  (
    .I0(A_6_IBUF_10),
    .I1(B_6_IBUF_26),
    .I2(\GG[56] ),
    .O(sum_6_OBUF_64)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<16>_xo<0>1  (
    .I0(A_16_IBUF_0),
    .I1(B_16_IBUF_16),
    .I2(\GG[83] ),
    .O(sum_16_OBUF_71)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<7>_xo<0>1  (
    .I0(A_7_IBUF_9),
    .I1(B_7_IBUF_25),
    .I2(\GG[57] ),
    .O(sum_7_OBUF_61)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \loop_1[1].loop_3[7].U2/PPP1  (
    .I0(A_7_IBUF_9),
    .I1(B_7_IBUF_25),
    .I2(A_6_IBUF_10),
    .I3(B_6_IBUF_26),
    .O(PP[24])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<3>_xo<0>1  (
    .I0(A_3_IBUF_13),
    .I1(B_3_IBUF_29),
    .I2(\GG[36] ),
    .O(sum_3_OBUF_55)
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[1].loop_3[9].U2/GGG1  (
    .I0(A_9_IBUF_7),
    .I1(B_9_IBUF_23),
    .I2(A_8_IBUF_8),
    .I3(B_8_IBUF_24),
    .O(\GG[26] )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<15>_xo<0>1  (
    .I0(A_15_IBUF_1),
    .I1(B_15_IBUF_17),
    .I2(\GG[82] ),
    .O(sum_15_OBUF_70)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[2].loop_3[2].U1/GGG1  (
    .I0(A_2_IBUF_14),
    .I1(B_2_IBUF_30),
    .I2(B_1_IBUF_31),
    .I3(cin_IBUF_32),
    .I4(A_1_IBUF_15),
    .O(\GG[36] )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<14>_xo<0>1  (
    .I0(A_14_IBUF_2),
    .I1(B_14_IBUF_18),
    .I2(\GG[81] ),
    .O(sum_14_OBUF_69)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<11>_xo<0>1  (
    .I0(A_11_IBUF_5),
    .I1(B_11_IBUF_21),
    .I2(\GG[78] ),
    .O(sum_11_OBUF_67)
  );
  LUT6 #(
    .INIT ( 64'h0000E800E8000000 ))
  \loop_1[3].loop_3[7].U1/GGG1  (
    .I0(B_3_IBUF_29),
    .I1(\GG[36] ),
    .I2(A_3_IBUF_13),
    .I3(\P[4] ),
    .I4(A_5_IBUF_11),
    .I5(B_5_IBUF_27),
    .O(\loop_1[3].loop_3[7].U1/GGG )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \loop_1[3].loop_3[7].U1/GGG2  (
    .I0(PP[24]),
    .I1(\GG[22] ),
    .I2(\loop_1[3].loop_3[7].U1/GGG ),
    .I3(\GG[24] ),
    .O(\GG[58] )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00808000 ))
  \loop_1[3].loop_3[9].U2/GGG1  (
    .I0(PP[24]),
    .I1(\loop_1[2].loop_3[5].U2/P_GG_AND_18_o1 ),
    .I2(\P[4] ),
    .I3(A_5_IBUF_11),
    .I4(B_5_IBUF_27),
    .I5(\GG[22] ),
    .O(\loop_1[3].loop_3[9].U2/GGG )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[4].loop_3[8].U1/GGG_SW0  (
    .I0(A_6_IBUF_10),
    .I1(B_6_IBUF_26),
    .I2(B_5_IBUF_27),
    .I3(A_5_IBUF_11),
    .I4(\GG[55] ),
    .O(N4)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[4].loop_3[10].U1/GGG2  (
    .I0(A_10_IBUF_6),
    .I1(B_10_IBUF_22),
    .I2(A_9_IBUF_7),
    .I3(B_9_IBUF_23),
    .I4(\loop_1[4].loop_3[10].U1/GGG ),
    .O(\GG[78] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF1717FF ))
  \loop_1[3].loop_3[5].U1/GGG_SW0  (
    .I0(cin_IBUF_32),
    .I1(B_1_IBUF_31),
    .I2(A_1_IBUF_15),
    .I3(A_3_IBUF_13),
    .I4(B_3_IBUF_29),
    .I5(\loop_1[3].loop_3[5].U1/GGG1 ),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF08800AA0 ))
  \loop_1[3].loop_3[5].U1/GGG  (
    .I0(\P[4] ),
    .I1(\loop_1[2].loop_3[5].U2/P_GG_AND_18_o1 ),
    .I2(B_5_IBUF_27),
    .I3(A_5_IBUF_11),
    .I4(N6),
    .I5(\GG[22] ),
    .O(\GG[56] )
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \loop_1[4].loop_3[15].U1/GGG1  (
    .I0(A_15_IBUF_1),
    .I1(B_15_IBUF_17),
    .I2(A_14_IBUF_2),
    .I3(B_14_IBUF_18),
    .O(\loop_1[4].loop_3[15].U1/GGG )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \loop_1[4].loop_3[15].U1/GGG3  (
    .I0(\loop_1[4].loop_3[15].U1/GGG ),
    .I1(\loop_1[4].loop_3[13].U1/GGG ),
    .I2(\GG[79] ),
    .I3(\P[12] ),
    .I4(\P[13] ),
    .I5(\loop_1[5].loop_3[16].U1/GGG11 ),
    .O(\GG[83] )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \loop_1[5].loop_3[16].U1/GGG3  (
    .I0(A_16_IBUF_0),
    .I1(B_16_IBUF_16),
    .I2(\loop_1[5].loop_3[16].U1/GGG1 ),
    .O(cout_OBUF_36)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA88808080 ))
  \loop_1[4].loop_3[13].U1/GGG5  (
    .I0(\P[10] ),
    .I1(\loop_1[4].loop_3[13].U1/GGG3 ),
    .I2(\GG[24] ),
    .I3(\GG[56] ),
    .I4(PP[24]),
    .I5(\GG[26] ),
    .O(\loop_1[4].loop_3[13].U1/GGG4_86 )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[5].loop_3[16].U1/GGG122  (
    .I0(A_10_IBUF_6),
    .I1(B_10_IBUF_22),
    .I2(A_9_IBUF_7),
    .I3(B_9_IBUF_23),
    .O(\loop_1[5].loop_3[16].U1/GGG122_88 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \loop_1[5].loop_3[16].U1/GGG123  (
    .I0(\loop_1[5].loop_3[16].U1/GGG121_87 ),
    .I1(\loop_1[5].loop_3[16].U1/GGG122_88 ),
    .I2(\GG[76] ),
    .I3(\P[10] ),
    .I4(\P[9] ),
    .I5(\GG[29] ),
    .O(\loop_1[5].loop_3[16].U1/GGG12 )
  );
  LUT5 #(
    .INIT ( 32'hEEEEE888 ))
  \loop_1[4].loop_3[11].U1/GGG2  (
    .I0(A_11_IBUF_5),
    .I1(B_11_IBUF_21),
    .I2(A_10_IBUF_6),
    .I3(B_10_IBUF_22),
    .I4(\loop_1[4].loop_3[11].U1/GGG ),
    .O(\GG[79] )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00808000 ))
  \loop_1[4].loop_3[14].U1/GGG1  (
    .I0(\P[13] ),
    .I1(\GG[78] ),
    .I2(\P[12] ),
    .I3(A_11_IBUF_5),
    .I4(B_11_IBUF_21),
    .I5(\GG[29] ),
    .O(\loop_1[4].loop_3[14].U1/GGG )
  );
  LUT5 #(
    .INIT ( 32'hEEEEE888 ))
  \loop_1[4].loop_3[14].U1/GGG2  (
    .I0(A_14_IBUF_2),
    .I1(B_14_IBUF_18),
    .I2(A_13_IBUF_3),
    .I3(B_13_IBUF_19),
    .I4(\loop_1[4].loop_3[14].U1/GGG ),
    .O(\GG[82] )
  );
  IBUF   A_16_IBUF (
    .I(A[16]),
    .O(A_16_IBUF_0)
  );
  IBUF   A_15_IBUF (
    .I(A[15]),
    .O(A_15_IBUF_1)
  );
  IBUF   A_14_IBUF (
    .I(A[14]),
    .O(A_14_IBUF_2)
  );
  IBUF   A_13_IBUF (
    .I(A[13]),
    .O(A_13_IBUF_3)
  );
  IBUF   A_12_IBUF (
    .I(A[12]),
    .O(A_12_IBUF_4)
  );
  IBUF   A_11_IBUF (
    .I(A[11]),
    .O(A_11_IBUF_5)
  );
  IBUF   A_10_IBUF (
    .I(A[10]),
    .O(A_10_IBUF_6)
  );
  IBUF   A_9_IBUF (
    .I(A[9]),
    .O(A_9_IBUF_7)
  );
  IBUF   A_8_IBUF (
    .I(A[8]),
    .O(A_8_IBUF_8)
  );
  IBUF   A_7_IBUF (
    .I(A[7]),
    .O(A_7_IBUF_9)
  );
  IBUF   A_6_IBUF (
    .I(A[6]),
    .O(A_6_IBUF_10)
  );
  IBUF   A_5_IBUF (
    .I(A[5]),
    .O(A_5_IBUF_11)
  );
  IBUF   A_4_IBUF (
    .I(A[4]),
    .O(A_4_IBUF_12)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_13)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_14)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_15)
  );
  IBUF   B_16_IBUF (
    .I(B[16]),
    .O(B_16_IBUF_16)
  );
  IBUF   B_15_IBUF (
    .I(B[15]),
    .O(B_15_IBUF_17)
  );
  IBUF   B_14_IBUF (
    .I(B[14]),
    .O(B_14_IBUF_18)
  );
  IBUF   B_13_IBUF (
    .I(B[13]),
    .O(B_13_IBUF_19)
  );
  IBUF   B_12_IBUF (
    .I(B[12]),
    .O(B_12_IBUF_20)
  );
  IBUF   B_11_IBUF (
    .I(B[11]),
    .O(B_11_IBUF_21)
  );
  IBUF   B_10_IBUF (
    .I(B[10]),
    .O(B_10_IBUF_22)
  );
  IBUF   B_9_IBUF (
    .I(B[9]),
    .O(B_9_IBUF_23)
  );
  IBUF   B_8_IBUF (
    .I(B[8]),
    .O(B_8_IBUF_24)
  );
  IBUF   B_7_IBUF (
    .I(B[7]),
    .O(B_7_IBUF_25)
  );
  IBUF   B_6_IBUF (
    .I(B[6]),
    .O(B_6_IBUF_26)
  );
  IBUF   B_5_IBUF (
    .I(B[5]),
    .O(B_5_IBUF_27)
  );
  IBUF   B_4_IBUF (
    .I(B[4]),
    .O(B_4_IBUF_28)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_29)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_30)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_31)
  );
  IBUF   cin_IBUF (
    .I(cin),
    .O(cin_IBUF_32)
  );
  OBUF   sum_16_OBUF (
    .I(sum_16_OBUF_71),
    .O(sum[16])
  );
  OBUF   sum_15_OBUF (
    .I(sum_15_OBUF_70),
    .O(sum[15])
  );
  OBUF   sum_14_OBUF (
    .I(sum_14_OBUF_69),
    .O(sum[14])
  );
  OBUF   sum_13_OBUF (
    .I(sum_13_OBUF_62),
    .O(sum[13])
  );
  OBUF   sum_12_OBUF (
    .I(sum_12_OBUF_68),
    .O(sum[12])
  );
  OBUF   sum_11_OBUF (
    .I(sum_11_OBUF_67),
    .O(sum[11])
  );
  OBUF   sum_10_OBUF (
    .I(sum_10_OBUF_66),
    .O(sum[10])
  );
  OBUF   sum_9_OBUF (
    .I(sum_9_OBUF_57),
    .O(sum[9])
  );
  OBUF   sum_8_OBUF (
    .I(sum_8_OBUF_65),
    .O(sum[8])
  );
  OBUF   sum_7_OBUF (
    .I(sum_7_OBUF_61),
    .O(sum[7])
  );
  OBUF   sum_6_OBUF (
    .I(sum_6_OBUF_64),
    .O(sum[6])
  );
  OBUF   sum_5_OBUF (
    .I(sum_5_OBUF_56),
    .O(sum[5])
  );
  OBUF   sum_4_OBUF (
    .I(sum_4_OBUF_63),
    .O(sum[4])
  );
  OBUF   sum_3_OBUF (
    .I(sum_3_OBUF_55),
    .O(sum[3])
  );
  OBUF   sum_2_OBUF (
    .I(sum_2_OBUF_59),
    .O(sum[2])
  );
  OBUF   sum_1_OBUF (
    .I(sum_1_OBUF_44),
    .O(sum[1])
  );
  OBUF   cout_OBUF (
    .I(cout_OBUF_36),
    .O(cout)
  );
  LUT5 #(
    .INIT ( 32'h00282800 ))
  \loop_1[3].loop_3[6].U1/GGG4_SW0  (
    .I0(\GG[36] ),
    .I1(B_4_IBUF_28),
    .I2(A_4_IBUF_12),
    .I3(B_3_IBUF_29),
    .I4(A_3_IBUF_13),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEEAA8A8A880 ))
  \loop_1[3].loop_3[6].U1/GGG4  (
    .I0(A_6_IBUF_10),
    .I1(A_5_IBUF_11),
    .I2(B_5_IBUF_27),
    .I3(\GG[21] ),
    .I4(N8),
    .I5(B_6_IBUF_26),
    .O(\GG[57] )
  );
  LUT6 #(
    .INIT ( 64'h3666366636666666 ))
  \Mxor_sum<10>_xo<0>1  (
    .I0(\GG[26] ),
    .I1(\P[10] ),
    .I2(\P[9] ),
    .I3(\P[8] ),
    .I4(\GG[24] ),
    .I5(\loop_1[3].loop_3[9].U2/GGG ),
    .O(sum_10_OBUF_66)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \loop_1[4].loop_3[13].U1/GGG6_SW0  (
    .I0(A_10_IBUF_6),
    .I1(B_10_IBUF_22),
    .I2(\loop_1[4].loop_3[13].U1/GGG4_86 ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88808000 ))
  \loop_1[4].loop_3[13].U1/GGG6  (
    .I0(\P[12] ),
    .I1(\P[13] ),
    .I2(A_11_IBUF_5),
    .I3(B_11_IBUF_21),
    .I4(N10),
    .I5(\loop_1[4].loop_3[13].U1/GGG ),
    .O(\GG[81] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[4].loop_3[8].U1/GGG  (
    .I0(A_8_IBUF_8),
    .I1(B_8_IBUF_24),
    .I2(B_7_IBUF_25),
    .I3(A_7_IBUF_9),
    .I4(N4),
    .O(\GG[76] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[4].loop_3[10].U1/GGG1  (
    .I0(A_8_IBUF_8),
    .I1(B_8_IBUF_24),
    .I2(B_7_IBUF_25),
    .I3(\GG[57] ),
    .I4(A_7_IBUF_9),
    .O(\loop_1[4].loop_3[10].U1/GGG )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA880 ))
  \loop_1[5].loop_3[16].U1/GGG2  (
    .I0(\loop_1[4].loop_3[15].U1/GGG ),
    .I1(A_13_IBUF_3),
    .I2(B_13_IBUF_19),
    .I3(\loop_1[5].loop_3[16].U1/GGG12 ),
    .I4(\loop_1[5].loop_3[16].U1/GGG11 ),
    .O(\loop_1[5].loop_3[16].U1/GGG1 )
  );
  LUT6 #(
    .INIT ( 64'h11111777EEEEE888 ))
  \Mxor_sum<12>_xo<0>1  (
    .I0(A_11_IBUF_5),
    .I1(B_11_IBUF_21),
    .I2(A_10_IBUF_6),
    .I3(B_10_IBUF_22),
    .I4(\loop_1[4].loop_3[11].U1/GGG ),
    .I5(\P[12] ),
    .O(sum_12_OBUF_68)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<13>_xo<0>1  (
    .I0(\loop_1[5].loop_3[16].U1/GGG12 ),
    .I1(A_13_IBUF_3),
    .I2(B_13_IBUF_19),
    .O(sum_13_OBUF_62)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_sum<9>_xo<0>1  (
    .I0(\GG[76] ),
    .I1(A_9_IBUF_7),
    .I2(B_9_IBUF_23),
    .O(sum_9_OBUF_57)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \Mxor_sum<4>_xo<0>1  (
    .I0(A_4_IBUF_12),
    .I1(B_4_IBUF_28),
    .I2(B_3_IBUF_29),
    .I3(\GG[36] ),
    .I4(A_3_IBUF_13),
    .O(sum_4_OBUF_63)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \Mxor_sum<2>_xo<0>1  (
    .I0(A_2_IBUF_14),
    .I1(B_2_IBUF_30),
    .I2(B_1_IBUF_31),
    .I3(cin_IBUF_32),
    .I4(A_1_IBUF_15),
    .O(sum_2_OBUF_59)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \loop_1[5].loop_3[16].U1/GGG121  (
    .I0(A_12_IBUF_4),
    .I1(B_12_IBUF_20),
    .I2(A_11_IBUF_5),
    .I3(B_11_IBUF_21),
    .O(\loop_1[5].loop_3[16].U1/GGG121_87 )
  );
  LUT6 #(
    .INIT ( 64'h6666666660000000 ))
  \loop_1[4].loop_3[11].U1/GGG1  (
    .I0(A_10_IBUF_6),
    .I1(B_10_IBUF_22),
    .I2(\GG[58] ),
    .I3(\P[8] ),
    .I4(\P[9] ),
    .I5(\GG[26] ),
    .O(\loop_1[4].loop_3[11].U1/GGG )
  );
  LUT4 #(
    .INIT ( 16'hE888 ))
  \loop_1[4].loop_3[15].U1/GGG2  (
    .I0(A_13_IBUF_3),
    .I1(B_13_IBUF_19),
    .I2(A_12_IBUF_4),
    .I3(B_12_IBUF_20),
    .O(\loop_1[4].loop_3[13].U1/GGG )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \loop_1[3].loop_3[4].U1/GGG  (
    .I0(A_4_IBUF_12),
    .I1(B_4_IBUF_28),
    .I2(\GG[36] ),
    .I3(B_3_IBUF_29),
    .I4(A_3_IBUF_13),
    .O(\GG[55] )
  );
  LUT6 #(
    .INIT ( 64'hFFA800570057FFA8 ))
  \Mxor_sum<8>_xo<0>1  (
    .I0(PP[24]),
    .I1(\loop_1[3].loop_3[7].U1/GGG ),
    .I2(\GG[22] ),
    .I3(\GG[24] ),
    .I4(B_8_IBUF_24),
    .I5(A_8_IBUF_8),
    .O(sum_8_OBUF_65)
  );
  LUT4 #(
    .INIT ( 16'h0660 ))
  \loop_1[4].loop_3[13].U1/GGG4  (
    .I0(A_9_IBUF_7),
    .I1(B_9_IBUF_23),
    .I2(A_8_IBUF_8),
    .I3(B_8_IBUF_24),
    .O(\loop_1[4].loop_3[13].U1/GGG3 )
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

