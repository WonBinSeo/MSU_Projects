`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:03:48 12/10/2022
// Design Name:   fp16multiplier
// Module Name:   C:/Users/Dongbeom Son/Desktop/repos/dld_assigns/float_MAC/tb_fp16multiplier.v
// Project Name:  float_MAC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp16multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module tb_fp16multiplier;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CLK;
	reg RESETn;

	// Outputs
	wire [15:0] out;
	
	
	
	//for verification
	wire [15:0] error;
	reg [15:0] ans;
	reg [15:0] ans_reg;
	assign error = out - ans_reg;
	
	reg [15:0] err_cnt;

	// Instantiate the Unit Under Test (UUT)
	fp16multiplier uut (
		.A(A), 
		.B(B), 
		.CLK(CLK), 
		.RESETn(RESETn), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
	#50	
/*
	A = 16'hb0df;
	B = 16'h8945;
	ans = 16'h19b;
	#20
	A = 16'h2b83;
	B = 16'hac0;
	ans = 16'hcb;
	#20
	A = 16'hacb4;
	B = 16'h88e1;
	ans = 16'hb8;
	#20
	A = 16'h184;
	B = 16'h304c;
	ans = 16'h34;
	#20
	A = 16'hb45e;
	B = 16'hb546;
	ans = 16'h2dc2;



*/

	A = 16'hae43;
	B = 16'h35e5;
	ans = 16'ha89d;
	#20
	A = 16'h389e;
	B = 16'h3b59;
	ans = 16'h383e;
	#20
	A = 16'h392d;
	B = 16'h3589;
	ans = 16'h332a;
	#20
	A = 16'h3991;
	B = 16'h3124;
	ans = 16'h2f27;
	#20
	A = 16'hb45e;
	B = 16'hb546;
	ans = 16'h2dc2;
	#20
	A = 16'hb6e2;
	B = 16'h3a30;
	ans = 16'hb553;
	#20
	A = 16'h34f2;
	B = 16'h399c;
	ans = 16'h32ef;
	#20
	A = 16'hbb2a;
	B = 16'hb66e;
	ans = 16'h35c2;
	#20
	A = 16'h274e;
	B = 16'h3769;
	ans = 16'h22c4;
	#20
	A = 16'h3571;
	B = 16'hb7ed;
	ans = 16'hb164;
	#20
	A = 16'h3b95;
	B = 16'h3b9f;
	ans = 16'h3b39;
	#20
	A = 16'h315d;
	B = 16'h35a8;
	ans = 16'h2b96;
	#20
	A = 16'hb6bf;
	B = 16'had01;
	ans = 16'h2838;
	#20
	A = 16'h3a63;
	B = 16'hb949;
	ans = 16'hb838;
	#20
	A = 16'hada2;
	B = 16'ha976;
	ans = 16'h1bb1;
	#20
	A = 16'hae37;
	B = 16'h34b3;
	ans = 16'ha74d;
	#20
	A = 16'hb86b;
	B = 16'h36b9;
	ans = 16'hb36d;
	#20
	A = 16'hb7ba;
	B = 16'h3a78;
	ans = 16'hb63f;
	#20
	A = 16'hb55e;
	B = 16'h9eca;
	ans = 16'h188e;
	#20
	A = 16'ha09f;
	B = 16'hb455;
	ans = 16'h1901;
	#20
	A = 16'h34d5;
	B = 16'hb905;
	ans = 16'hb210;
	#20
	A = 16'h3968;
	B = 16'hb0ed;
	ans = 16'haea8;
	#20
	A = 16'h303a;
	B = 16'h3b6e;
	ans = 16'h2fda;
	#20
	A = 16'hb37e;
	B = 16'h3bba;
	ans = 16'hb33c;
	#20
	A = 16'h365c;
	B = 16'hb6de;
	ans = 16'hb175;
	#20
	A = 16'hb8ee;
	B = 16'h3a37;
	ans = 16'hb7a9;
	#20
	A = 16'hb00b;
	B = 16'h39f6;
	ans = 16'hae06;
	#20
	A = 16'hbb7a;
	B = 16'hafe3;
	ans = 16'h2f5f;
	#20
	A = 16'hb665;
	B = 16'hb6e2;
	ans = 16'h3180;
	#20
	A = 16'hb85b;
	B = 16'hbad1;
	ans = 16'h376c;
	#20
	A = 16'hbb4b;
	B = 16'haf45;
	ans = 16'h2ea1;
	#20
	A = 16'h3272;
	B = 16'h29de;
	ans = 16'h20ba;
	#20
	A = 16'h37cd;
	B = 16'h34da;
	ans = 16'h30bb;
	#20
	A = 16'hb5de;
	B = 16'hbb64;
	ans = 16'h356c;
	#20
	A = 16'h3593;
	B = 16'h3a8d;
	ans = 16'h3490;
	#20
	A = 16'hb44b;
	B = 16'h382e;
	ans = 16'hb07c;
	#20
	A = 16'hb838;
	B = 16'hbb71;
	ans = 16'h37d9;
	#20
	A = 16'h3a49;
	B = 16'h321f;
	ans = 16'h30cf;
	#20
	A = 16'h38b9;
	B = 16'hb7be;
	ans = 16'hb492;
	#20
	A = 16'h2ba6;
	B = 16'h36fd;
	ans = 16'h26ae;
	#20
	A = 16'hb7ac;
	B = 16'hb620;
	ans = 16'h31e0;
	#20
	A = 16'hbae7;
	B = 16'had51;
	ans = 16'h2c96;
	#20
	A = 16'hb5c6;
	B = 16'h2f71;
	ans = 16'ha95f;
	#20
	A = 16'h394a;
	B = 16'h3aeb;
	ans = 16'h3893;
	#20
	A = 16'h3a3c;
	B = 16'hb52d;
	ans = 16'hb409;
	#20
	A = 16'hbab9;
	B = 16'h3b20;
	ans = 16'hb9fd;
	#20
	A = 16'hb8c6;
	B = 16'h2ab6;
	ans = 16'ha801;
	#20
	A = 16'hbb60;
	B = 16'hb8bb;
	ans = 16'h385c;
	#20
	A = 16'h3be7;
	B = 16'hb43f;
	ans = 16'hb432;
	#20
	A = 16'h3a30;
	B = 16'hbb92;
	ans = 16'hb9db;
	#20
	A = 16'hb8a3;
	B = 16'h3936;
	ans = 16'hb60a;
	#20
	A = 16'hb466;
	B = 16'hb703;
	ans = 16'h2fb6;
	#20
	A = 16'hba4e;
	B = 16'h2d9b;
	ans = 16'hac6b;
	#20
	A = 16'ha5f1;
	B = 16'hb9de;
	ans = 16'h245b;
	#20
	A = 16'hba2c;
	B = 16'h3acc;
	ans = 16'hb93e;
	#20
	A = 16'hac2e;
	B = 16'hb465;
	ans = 16'h2498;
	#20
	A = 16'hb92a;
	B = 16'hb609;
	ans = 16'h33cb;
	#20
	A = 16'hbb2b;
	B = 16'h2f41;
	ans = 16'hae80;
	#20
	A = 16'h3ae3;
	B = 16'h3936;
	ans = 16'h387c;
	#20
	A = 16'h37cb;
	B = 16'hba9f;
	ans = 16'hb673;
	#20
	A = 16'hb770;
	B = 16'hb0ed;
	ans = 16'h2c94;
	#20
	A = 16'hbbeb;
	B = 16'hba3e;
	ans = 16'h3a2e;
	#20
	A = 16'h36bc;
	B = 16'hbb72;
	ans = 16'hb644;
	#20
	A = 16'h3ad5;
	B = 16'h2769;
	ans = 16'h2654;
	#20
	A = 16'h356e;
	B = 16'h3721;
	ans = 16'h30d7;
	#20
	A = 16'h317a;
	B = 16'h39ec;
	ans = 16'h300e;
	#20
	A = 16'h362e;
	B = 16'hbb65;
	ans = 16'hb5b6;
	#20
	A = 16'hb31a;
	B = 16'hb722;
	ans = 16'h2e55;
	#20
	A = 16'hadc9;
	B = 16'h39af;
	ans = 16'hac1c;
	#20
	A = 16'h3320;
	B = 16'ha14d;
	ans = 16'h98b9;
	#20
	A = 16'h3459;
	B = 16'h1efc;
	ans = 16'h1797;
	#20
	A = 16'hbba7;
	B = 16'hb4ca;
	ans = 16'h3495;
	#20
	A = 16'hbb3e;
	B = 16'h345b;
	ans = 16'hb3e3;
	#20
	A = 16'h3add;
	B = 16'h3a33;
	ans = 16'h3952;
	#20
	A = 16'h39d0;
	B = 16'hbb27;
	ans = 16'hb932;
	#20
	A = 16'hb9e0;
	B = 16'hb994;
	ans = 16'h3819;
	#20
	A = 16'h3781;
	B = 16'hbb07;
	ans = 16'hb697;
	#20
	A = 16'h2822;
	B = 16'h2e95;
	ans = 16'h1acd;
	#20
	A = 16'h3b8d;
	B = 16'hb775;
	ans = 16'hb70a;
	#20
	A = 16'h370b;
	B = 16'h3a55;
	ans = 16'h3593;
	#20
	A = 16'h3237;
	B = 16'hbb52;
	ans = 16'hb1b0;
	#20
	A = 16'h3bae;
	B = 16'h3093;
	ans = 16'h3064;
	#20
	A = 16'hb602;
	B = 16'hb587;
	ans = 16'h3027;
	#20
	A = 16'h3831;
	B = 16'h39e9;
	ans = 16'h3631;
	#20
	A = 16'h3b55;
	B = 16'hba79;
	ans = 16'hb9ef;
	#20
	A = 16'ha80e;
	B = 16'hb5c7;
	ans = 16'h21db;
	#20
	A = 16'h35b2;
	B = 16'hba7b;
	ans = 16'hb49d;
	#20
	A = 16'hb81e;
	B = 16'hb7ed;
	ans = 16'h3414;
	#20
	A = 16'h3acd;
	B = 16'hba7b;
	ans = 16'hb982;
	#20
	A = 16'h353a;
	B = 16'h257a;
	ans = 16'h1f28;
	#20
	A = 16'h3b30;
	B = 16'h37d9;
	ans = 16'h370d;
	#20
	A = 16'hbbed;
	B = 16'h37f6;
	ans = 16'hb7e3;
	#20
	A = 16'ha6ef;
	B = 16'h3ab1;
	ans = 16'ha5cd;
	#20
	A = 16'hbbaf;
	B = 16'hb2b3;
	ans = 16'h326f;
	#20
	A = 16'hb2e7;
	B = 16'h34cc;
	ans = 16'hac24;
	#20
	A = 16'h280a;
	B = 16'ha7cb;
	ans = 16'h93de;
	#20
	A = 16'h3933;
	B = 16'h32ff;
	ans = 16'h308c;
	#20
	A = 16'h3945;
	B = 16'hb678;
	ans = 16'hb443;
	#20
	A = 16'hbb6a;
	B = 16'hb6eb;
	ans = 16'h3669;
	#20
	A = 16'h1ccd;
	B = 16'hb96e;
	ans = 16'h9a84;
	#20
	A = 16'hb350;
	B = 16'hbaf7;
	ans = 16'h325e;
	#20
	A = 16'hb3e2;
	B = 16'hb8bf;
	ans = 16'h30ad;
	#20
	A = 16'hbbb4;
	B = 16'h3937;
	ans = 16'hb905;
	#20
	A = 16'h362c;
	B = 16'hb838;
	ans = 16'hb282;
	#20
	A = 16'hb3fa;
	B = 16'hbaea;
	ans = 16'h32e5;
	#20
	A = 16'h3a84;
	B = 16'hba77;
	ans = 16'hb944;
	#20
	A = 16'h2333;
	B = 16'h397c;
	ans = 16'h20ef;
	#20
	A = 16'h3958;
	B = 16'hb812;
	ans = 16'hb570;
	#20
	A = 16'h368d;
	B = 16'hba42;
	ans = 16'hb520;
	#20
	A = 16'h2fd7;
	B = 16'h3373;
	ans = 16'h274d;
	#20
	A = 16'hb633;
	B = 16'hb867;
	ans = 16'h32d3;
	#20
	A = 16'hb165;
	B = 16'h366c;
	ans = 16'hac55;
	#20
	A = 16'hb0d5;
	B = 16'hb645;
	ans = 16'h2b93;
	#20
	A = 16'hb723;
	B = 16'h31e0;
	ans = 16'had3e;
	#20
	A = 16'hb7be;
	B = 16'h3b87;
	ans = 16'hb749;
	#20
	A = 16'hb809;
	B = 16'h3a46;
	ans = 16'hb654;
	#20
	A = 16'h389a;
	B = 16'h3993;
	ans = 16'h366a;
	#20
	A = 16'hb11f;
	B = 16'h3b8e;
	ans = 16'hb0d6;
	#20
	A = 16'hb4c0;
	B = 16'h3a24;
	ans = 16'hb34b;
	#20
	A = 16'hb899;
	B = 16'h2f8b;
	ans = 16'hac56;
	#20
	A = 16'h38a6;
	B = 16'h3a96;
	ans = 16'h37a7;
	#20
	A = 16'hb114;
	B = 16'h39d9;
	ans = 16'haf6c;
	#20
	A = 16'hbb85;
	B = 16'h325f;
	ans = 16'hb1fd;
	#20
	A = 16'h3ad2;
	B = 16'h39c0;
	ans = 16'h38e7;
	#20
	A = 16'h39cb;
	B = 16'h22f6;
	ans = 16'h210a;
	#20
	A = 16'hb276;
	B = 16'hb848;
	ans = 16'h2eea;
	#20
	A = 16'h3be7;
	B = 16'hb44f;
	ans = 16'hb442;
	#20
	A = 16'h34a6;
	B = 16'hba93;
	ans = 16'hb3a4;
	#20
	A = 16'hb8ad;
	B = 16'h3995;
	ans = 16'hb686;
	#20
	A = 16'hbb60;
	B = 16'hb9e1;
	ans = 16'h396b;
	#20
	A = 16'h2e1e;
	B = 16'hba56;
	ans = 16'hacd8;
	#20
	A = 16'h3b92;
	B = 16'h38a3;
	ans = 16'h3863;
	#20
	A = 16'hb31f;
	B = 16'h343f;
	ans = 16'hab8f;
	#20
	A = 16'h37ee;
	B = 16'hb5d6;
	ans = 16'hb1c9;
	#20
	A = 16'hb445;
	B = 16'h3800;
	ans = 16'hb045;
	#20
	A = 16'ha7fc;
	B = 16'h3b1c;
	ans = 16'ha718;
	#20
	A = 16'hbb56;
	B = 16'h3a0e;
	ans = 16'hb98d;
	#20
	A = 16'h3b07;
	B = 16'hb99a;
	ans = 16'hb8ec;
	#20
	A = 16'h3b2e;
	B = 16'hbbb5;
	ans = 16'hbaeb;
	#20
	A = 16'hb2bb;
	B = 16'h287a;
	ans = 16'h9f88;
	#20
	A = 16'hbb94;
	B = 16'h3697;
	ans = 16'hb63e;
	#20
	A = 16'hb3db;
	B = 16'h2ed5;
	ans = 16'ha6b5;
	#20
	A = 16'h39bc;
	B = 16'h30e2;
	ans = 16'h2f00;
	#20
	A = 16'hb5da;
	B = 16'h3756;
	ans = 16'hb15e;
	#20
	A = 16'h3b0b;
	B = 16'h397c;
	ans = 16'h38d4;
	#20
	A = 16'h3b1d;
	B = 16'h3b1c;
	ans = 16'h3a52;
	#20
	A = 16'hbaa6;
	B = 16'hb324;
	ans = 16'h31ef;
	#20
	A = 16'hb899;
	B = 16'h3910;
	ans = 16'hb5d2;
	#20
	A = 16'hafb4;
	B = 16'h3b69;
	ans = 16'haf23;
	#20
	A = 16'h37b2;
	B = 16'hb858;
	ans = 16'hb42e;
	#20
	A = 16'h320f;
	B = 16'hb719;
	ans = 16'had60;
	#20
	A = 16'h3917;
	B = 16'ha8ee;
	ans = 16'ha646;
	#20
	A = 16'h3a74;
	B = 16'h3afb;
	ans = 16'h39a1;
	#20
	A = 16'hb78f;
	B = 16'h3a16;
	ans = 16'hb5c0;
	#20
	A = 16'h39f9;
	B = 16'hac10;
	ans = 16'haa11;
	#20
	A = 16'h33ea;
	B = 16'h3aa0;
	ans = 16'h328e;
	#20
	A = 16'hb8da;
	B = 16'h3214;
	ans = 16'haf5f;
	#20
	A = 16'hb59b;
	B = 16'hb485;
	ans = 16'h2e55;
	#20
	A = 16'hae5f;
	B = 16'h354a;
	ans = 16'ha836;
	#20
	A = 16'h2b9d;
	B = 16'h39e6;
	ans = 16'h299d;
	#20
	A = 16'h300d;
	B = 16'hb8f9;
	ans = 16'had09;
	#20
	A = 16'hb3f1;
	B = 16'hb680;
	ans = 16'h2e74;
	#20
	A = 16'hbb09;
	B = 16'hb6a0;
	ans = 16'h35d3;
	#20
	A = 16'h34a8;
	B = 16'hb9b1;
	ans = 16'hb2a0;
	#20
	A = 16'hb3e9;
	B = 16'h3ba2;
	ans = 16'hb38c;
	#20
	A = 16'hbacf;
	B = 16'h3776;
	ans = 16'hb65a;
	#20
	A = 16'hbae9;
	B = 16'h34cf;
	ans = 16'hb427;
	#20
	A = 16'h3bc6;
	B = 16'h3a55;
	ans = 16'h3a27;
	#20
	A = 16'hba0d;
	B = 16'h34c7;
	ans = 16'hb33a;
	#20
	A = 16'hb643;
	B = 16'h30dc;
	ans = 16'hab9b;
	#20
	A = 16'hb957;
	B = 16'hba79;
	ans = 16'h3852;
	#20
	A = 16'hb9d5;
	B = 16'h38c1;
	ans = 16'hb6ee;
	#20
	A = 16'h3acf;
	B = 16'hbb69;
	ans = 16'hba4e;
	#20
	A = 16'h3079;
	B = 16'h3662;
	ans = 16'h2b23;
	#20
	A = 16'hbbcb;
	B = 16'h3b13;
	ans = 16'hbae4;
	#20
	A = 16'hbaeb;
	B = 16'h38b5;
	ans = 16'hb812;
	#20
	A = 16'h32a8;
	B = 16'hb3c0;
	ans = 16'haa73;
	#20
	A = 16'h36e7;
	B = 16'h37de;
	ans = 16'h32ca;
	#20
	A = 16'h3381;
	B = 16'hb770;
	ans = 16'haefa;
	#20
	A = 16'hb975;
	B = 16'hba4e;
	ans = 16'h384d;
	#20
	A = 16'h2f36;
	B = 16'ha967;
	ans = 16'h9cdf;
	#20
	A = 16'h37e3;
	B = 16'h30e0;
	ans = 16'h2cce;
	#20
	A = 16'h38eb;
	B = 16'h9f29;
	ans = 16'h9c67;
	#20
	A = 16'hb50b;
	B = 16'h3b04;
	ans = 16'hb46c;
	#20
	A = 16'hba48;
	B = 16'hb9ac;
	ans = 16'h3874;
	#20
	A = 16'hbbff;
	B = 16'h3595;
	ans = 16'hb594;
	#20
	A = 16'hb8af;
	B = 16'hb970;
	ans = 16'h365e;
	#20
	A = 16'hb49a;
	B = 16'h3522;
	ans = 16'hade8;
	#20
	A = 16'hb0d8;
	B = 16'h30b5;
	ans = 16'ha5b3;
	#20
	A = 16'hb819;
	B = 16'h3220;
	ans = 16'hae46;
	#20
	A = 16'hbbdd;
	B = 16'h38cc;
	ans = 16'hb8b7;
	#20
	A = 16'h3984;
	B = 16'h9f46;
	ans = 16'h9d04;
	#20
	A = 16'hb8d9;
	B = 16'hb426;
	ans = 16'h3107;
	#20
	A = 16'h3a27;
	B = 16'h2890;
	ans = 16'h2704;
	#20
	A = 16'h3a79;
	B = 16'h3371;
	ans = 16'h3205;
	#20
	A = 16'h3af9;
	B = 16'h34e5;
	ans = 16'h3444;
	#20
	A = 16'hb25f;
	B = 16'hac34;
	ans = 16'h22b2;
	#20
	A = 16'hbaa8;
	B = 16'h3408;
	ans = 16'hb2b5;
	#20
	A = 16'hb004;
	B = 16'hba6a;
	ans = 16'h2e70;
	#20
	A = 16'hb599;
	B = 16'h3bbd;
	ans = 16'hb56a;
	#20
	A = 16'h3954;
	B = 16'hb0c0;
	ans = 16'hae54;
	#20
	A = 16'hba12;
	B = 16'h34fe;
	ans = 16'hb393;
	#20
	A = 16'h3b12;
	B = 16'hb286;
	ans = 16'hb1c4;
	#20
	A = 16'h39c2;
	B = 16'h38fe;
	ans = 16'h3730;
	#20
	A = 16'hb6d8;
	B = 16'h3aa7;
	ans = 16'hb5b1;
	#20
	A = 16'h31ee;
	B = 16'hb2e4;
	ans = 16'ha91b;
	#20
	A = 16'h3899;
	B = 16'h2861;
	ans = 16'h2508;
	#20
	A = 16'hb767;
	B = 16'hb9ae;
	ans = 16'h3541;
	#20
	A = 16'h39da;
	B = 16'h2623;
	ans = 16'h247d;
	#20
	A = 16'hb86e;
	B = 16'hbb09;
	ans = 16'h37ca;
	#20
	A = 16'h39c6;
	B = 16'hb321;
	ans = 16'hb125;
	#20
	A = 16'h35e2;
	B = 16'h3aab;
	ans = 16'h34e7;
	#20
	A = 16'hb879;
	B = 16'hb9c5;
	ans = 16'h3674;
	#20
	A = 16'hbb69;
	B = 16'h3692;
	ans = 16'hb616;
	#20
	A = 16'hac1d;
	B = 16'hb984;
	ans = 16'h29ac;
	#20
	A = 16'h2e54;
	B = 16'h3b11;
	ans = 16'h2d97;
	#20
	A = 16'h1370;
	B = 16'h3af2;
	ans = 16'h1275;
	#20
	A = 16'hba9b;
	B = 16'h1d74;
	ans = 16'h9c81;
	#20
	A = 16'h3932;
	B = 16'hb6b3;
	ans = 16'hb45a;
	#20
	A = 16'h3809;
	B = 16'h3ad9;
	ans = 16'h36e8;
	#20
	A = 16'hae65;
	B = 16'ha7c7;
	ans = 16'h1a37;
	#20
	A = 16'hba71;
	B = 16'h37f9;
	ans = 16'hb66b;
	#20
	A = 16'ha50c;
	B = 16'h315a;
	ans = 16'h9ac1;
	#20
	A = 16'hbbc2;
	B = 16'hb221;
	ans = 16'h31f2;
	#20
	A = 16'h3919;
	B = 16'h3a87;
	ans = 16'h3829;
	#20
	A = 16'h3902;
	B = 16'hbb18;
	ans = 16'hb871;
	#20
	A = 16'h3707;
	B = 16'hb416;
	ans = 16'haf2e;
	#20
	A = 16'h395a;
	B = 16'h34b6;
	ans = 16'h324d;
	#20
	A = 16'h3a54;
	B = 16'hb851;
	ans = 16'hb6d4;
	#20
	A = 16'hb67a;
	B = 16'hb980;
	ans = 16'h3474;
	#20
	A = 16'h3b79;
	B = 16'h3465;
	ans = 16'h341b;
	#20
	A = 16'h3a00;
	B = 16'h362e;
	ans = 16'h34a2;
	#20
	A = 16'h3471;
	B = 16'hb5fa;
	ans = 16'haea3;
	#20
	A = 16'h3b59;
	B = 16'h38f5;
	ans = 16'h388e;
	#20
	A = 16'hb5a1;
	B = 16'h3bc7;
	ans = 16'hb579;
	#20
	A = 16'hb698;
	B = 16'hb892;
	ans = 16'h3389;
	#20
	A = 16'hac52;
	B = 16'h394d;
	ans = 16'ha9ba;
	#20
	A = 16'h3a9c;
	B = 16'hb414;
	ans = 16'hb2bd;
	#20
	A = 16'h240e;
	B = 16'h38d6;
	ans = 16'h20e7;
	#20
	A = 16'h2fa2;
	B = 16'h3836;
	ans = 16'h2c05;
	#20
	A = 16'hbad8;
	B = 16'hba6f;
	ans = 16'h3981;
	#20
	A = 16'hb2f8;
	B = 16'h34fe;
	ans = 16'hac59;
	#20
	A = 16'h3906;
	B = 16'h3bdc;
	ans = 16'h38ef;
	#20
	A = 16'h24be;
	B = 16'had83;
	ans = 16'h9689;
	#20
	A = 16'hb6f6;
	B = 16'h3a74;
	ans = 16'hb59d;
	#20
	A = 16'hb6c4;
	B = 16'hbb81;
	ans = 16'h3659;
	#20
	A = 16'hb5d5;
	B = 16'h3b2d;
	ans = 16'hb53b;
	#20
	A = 16'hb071;
	B = 16'h3ae8;
	ans = 16'hafab;
	#20
	A = 16'hb610;
	B = 16'hb3ab;
	ans = 16'h2dd0;
	#20
	A = 16'h35e9;
	B = 16'hb700;
	ans = 16'hb12c;
	#20
	A = 16'h3a56;
	B = 16'hbabf;
	ans = 16'hb958;
	#20
	A = 16'h3bb4;
	B = 16'h388e;
	ans = 16'h3863;
	#20
	A = 16'hb5a9;
	B = 16'h3abe;
	ans = 16'hb4c5;
	#20
	A = 16'hba8b;
	B = 16'hba44;
	ans = 16'h3920;
	#20
	A = 16'h3b73;
	B = 16'h3749;
	ans = 16'h36c9;
	#20
	A = 16'hb879;
	B = 16'hb48e;
	ans = 16'h3118;
	#20
	A = 16'h36ed;
	B = 16'hafe1;
	ans = 16'haad2;
	#20
	A = 16'h3aef;
	B = 16'ha8fe;
	ans = 16'ha854;
	#20
	A = 16'h3b9b;
	B = 16'h34c4;
	ans = 16'h3488;
	#20
	A = 16'h317a;
	B = 16'hb4d7;
	ans = 16'haaa0;
	#20
	A = 16'h3bfb;
	B = 16'h2a10;
	ans = 16'h2a0c;
	#20
	A = 16'h3ab1;
	B = 16'hbaa8;
	ans = 16'hb991;
	#20
	A = 16'ha2e2;
	B = 16'h37c5;
	ans = 16'h9eaf;
	#20
	A = 16'h3bf4;
	B = 16'h3468;
	ans = 16'h3461;
	#20
	A = 16'h3a18;
	B = 16'h30d7;
	ans = 16'h2f60;
	#20
	A = 16'h3be8;
	B = 16'h394d;
	ans = 16'h393d;
	#20
	A = 16'h29cc;
	B = 16'hb865;
	ans = 16'ha65e;
	#20
	A = 16'h3872;
	B = 16'h3905;
	ans = 16'h3594;
	#20
	A = 16'h3977;
	B = 16'had77;
	ans = 16'hab77;
	#20
	A = 16'h38b0;
	B = 16'hbb45;
	ans = 16'hb842;
	#20
	A = 16'hbaee;
	B = 16'h39a7;
	ans = 16'hb8e5;
	#20
	A = 16'hb406;
	B = 16'h2d9c;
	ans = 16'ha5a4;
	#20
	A = 16'h35d0;
	B = 16'h3a06;
	ans = 16'h3460;
	#20
	A = 16'ha068;
	B = 16'h39c8;
	ans = 16'h9e5e;
	#20
	A = 16'hb7b6;
	B = 16'h3bd3;
	ans = 16'hb78b;
	#20
	A = 16'h2ee8;
	B = 16'hb98b;
	ans = 16'hacc9;
	#20
	A = 16'hb0c3;
	B = 16'hacc5;
	ans = 16'h21ae;
	#20
	A = 16'hb50f;
	B = 16'hbbdc;
	ans = 16'h34f8;
	#20
	A = 16'h3a35;
	B = 16'h3688;
	ans = 16'h3511;
	#20
	A = 16'hb4a5;
	B = 16'h2b62;
	ans = 16'ha449;
	#20
	A = 16'hb36d;
	B = 16'h31d8;
	ans = 16'ha96d;
	#20
	A = 16'h3b49;
	B = 16'hb070;
	ans = 16'hb00a;
	#20
	A = 16'h37c6;
	B = 16'hbb3c;
	ans = 16'hb708;
	#20
	A = 16'h2f4b;
	B = 16'hba2e;
	ans = 16'hada2;
	#20
	A = 16'hba80;
	B = 16'h34fa;
	ans = 16'hb40b;
	#20
	A = 16'h3658;
	B = 16'h320f;
	ans = 16'h2cce;
	#20
	A = 16'hb8d5;
	B = 16'h384c;
	ans = 16'hb531;
	#20
	A = 16'hbacc;
	B = 16'hae49;
	ans = 16'h2d57;
	#20
	A = 16'h3a18;
	B = 16'hb893;
	ans = 16'hb6f8;
	#20
	A = 16'h3699;
	B = 16'hb7c4;
	ans = 16'hb268;
	#20
	A = 16'h3b2a;
	B = 16'hbaa5;
	ans = 16'hb9f3;
	#20
	A = 16'h285e;
	B = 16'hbbd3;
	ans = 16'ha845;
	#20
	A = 16'hb73a;
	B = 16'h362a;
	ans = 16'hb191;
	#20
	A = 16'hadd6;
	B = 16'hb863;
	ans = 16'h2a66;
	#20
	A = 16'hbadf;
	B = 16'h3810;
	ans = 16'hb6fa;
	#20
	A = 16'h3a54;
	B = 16'haabb;
	ans = 16'ha953;
	#20
	A = 16'h39cf;
	B = 16'hba50;
	ans = 16'hb895;
	#20
	A = 16'hb133;
	B = 16'h350f;
	ans = 16'haa93;
	#20
	A = 16'hb87d;
	B = 16'h2f0a;
	ans = 16'habe6;
	#20
	A = 16'h37f5;
	B = 16'h3aad;
	ans = 16'h36a4;
	#20
	A = 16'hb468;
	B = 16'hb2b5;
	ans = 16'h2b63;
	#20
	A = 16'h3be4;
	B = 16'hb86d;
	ans = 16'hb85e;
	#20
	A = 16'hb809;
	B = 16'h3b14;
	ans = 16'hb724;
	#20
	A = 16'h3bdd;
	B = 16'hbbb7;
	ans = 16'hbb95;
	#20
	A = 16'hb589;
	B = 16'h3b83;
	ans = 16'hb533;
	#20
	A = 16'h2f28;
	B = 16'hbb6a;
	ans = 16'haea2;
	#20
	A = 16'hb773;
	B = 16'h2593;
	ans = 16'ha131;
	#20
	A = 16'hbab8;
	B = 16'h36e2;
	ans = 16'hb5c8;
	#20
	A = 16'h34f9;
	B = 16'h39c8;
	ans = 16'h3330;
	#20
	A = 16'hb01b;
	B = 16'hb676;
	ans = 16'h2aa2;
	#20
	A = 16'hb1cb;
	B = 16'habd9;
	ans = 16'h21af;
	#20
	A = 16'h3891;
	B = 16'h2d0b;
	ans = 16'h29c2;
	#20
	A = 16'hb7e5;
	B = 16'h3959;
	ans = 16'hb547;
	#20
	A = 16'hb705;
	B = 16'h3544;
	ans = 16'hb09f;
	#20
	A = 16'hb04d;
	B = 16'hb76a;
	ans = 16'h2bf9;
	#20
	A = 16'hb54c;
	B = 16'hb8c5;
	ans = 16'h3251;
	#20
	A = 16'hb801;
	B = 16'hb26a;
	ans = 16'h2e6c;
	#20
	A = 16'h35c3;
	B = 16'h3b48;
	ans = 16'h353e;
	#20
	A = 16'h2d6d;
	B = 16'hba46;
	ans = 16'hac41;
	#20
	A = 16'ha8be;
	B = 16'h2e79;
	ans = 16'h9bac;
	#20
	A = 16'h3332;
	B = 16'hbb9f;
	ans = 16'hb2db;
	#20
	A = 16'hb575;
	B = 16'hbb3b;
	ans = 16'h34ef;
	#20
	A = 16'h3275;
	B = 16'h3bd8;
	ans = 16'h3255;
	#20
	A = 16'h3bb7;
	B = 16'h399d;
	ans = 16'h396a;
	#20
	A = 16'h3861;
	B = 16'hb37f;
	ans = 16'hb01a;
	#20
	A = 16'h3986;
	B = 16'hb1eb;
	ans = 16'hb016;
	#20
	A = 16'hb92f;
	B = 16'h38b1;
	ans = 16'hb614;
	#20
	A = 16'hb82d;
	B = 16'h3982;
	ans = 16'hb5c0;
	#20
	A = 16'hbb05;
	B = 16'hb474;
	ans = 16'h33d1;
	#20
	A = 16'h3777;
	B = 16'h311e;
	ans = 16'h2cc6;
	#20
	A = 16'hbb48;
	B = 16'h39fb;
	ans = 16'hb971;
	#20
	A = 16'hb95e;
	B = 16'h391b;
	ans = 16'hb6da;
	#20
	A = 16'hb944;
	B = 16'hb959;
	ans = 16'h370a;
	#20
	A = 16'h394a;
	B = 16'h320c;
	ans = 16'h2fff;
	#20
	A = 16'h36c3;
	B = 16'h384b;
	ans = 16'h3342;
	#20
	A = 16'hbabb;
	B = 16'h393b;
	ans = 16'hb867;
	#20
	A = 16'h34ae;
	B = 16'hb821;
	ans = 16'hb0d5;
	#20
	A = 16'hb9c7;
	B = 16'h37d4;
	ans = 16'hb5a7;
	#20
	A = 16'h3802;
	B = 16'h35fc;
	ans = 16'h31ff;
	#20
	A = 16'hbb6c;
	B = 16'h3b1a;
	ans = 16'hba97;
	#20
	A = 16'hba9a;
	B = 16'hb934;
	ans = 16'h384b;
	#20
	A = 16'hb80c;
	B = 16'h2de2;
	ans = 16'ha9f4;
	#20
	A = 16'hb9ee;
	B = 16'h35e9;
	ans = 16'hb461;
	#20
	A = 16'h3af9;
	B = 16'hbb7d;
	ans = 16'hba87;
	#20
	A = 16'h323a;
	B = 16'h3873;
	ans = 16'h2eed;
	#20
	A = 16'hb29c;
	B = 16'hbb5f;
	ans = 16'h3217;
	#20
	A = 16'h3b32;
	B = 16'hb9a7;
	ans = 16'hb915;
	#20
	A = 16'h39c7;
	B = 16'hb4a4;
	ans = 16'hb2b4;
	#20
	A = 16'h3a8f;
	B = 16'hba9d;
	ans = 16'hb96c;
	#20
	A = 16'hbaf7;
	B = 16'h3ac2;
	ans = 16'hb9e2;
	#20
	A = 16'hba17;
	B = 16'hb9bf;
	ans = 16'h3860;
	#20
	A = 16'h3812;
	B = 16'hb414;
	ans = 16'hb026;
	#20
	A = 16'hb71a;
	B = 16'h3663;
	ans = 16'hb1ab;
	#20
	A = 16'h345d;
	B = 16'h25d8;
	ans = 16'h1e60;
	#20
	A = 16'h38f1;
	B = 16'h39ee;
	ans = 16'h3753;
	#20
	A = 16'h3b95;
	B = 16'h393a;
	ans = 16'h38f4;
	#20
	A = 16'haccd;
	B = 16'h3566;
	ans = 16'ha67b;
	#20
	A = 16'h359a;
	B = 16'h3b1f;
	ans = 16'h34fc;
	#20
	A = 16'h396a;
	B = 16'hb5e6;
	ans = 16'hb3fc;
	#20
	A = 16'h3444;
	B = 16'h326f;
	ans = 16'h2adc;
	#20
	A = 16'h308e;
	B = 16'hb157;
	ans = 16'ha615;
	#20
	A = 16'hb071;
	B = 16'h37e8;
	ans = 16'hac64;
	#20
	A = 16'h36a0;
	B = 16'h35c9;
	ans = 16'h30ca;
	#20
	A = 16'hb5e0;
	B = 16'h352d;
	ans = 16'haf9a;
	#20
	A = 16'h3346;
	B = 16'h3a17;
	ans = 16'h3189;
	#20
	A = 16'h3454;
	B = 16'h9602;
	ans = 16'h8e80;
	#20
	A = 16'h3aca;
	B = 16'h2410;
	ans = 16'h22e5;
	#20
	A = 16'h2f84;
	B = 16'haf3f;
	ans = 16'ha2cf;
	#20
	A = 16'h389a;
	B = 16'h2e79;
	ans = 16'h2b72;
	#20
	A = 16'hb432;
	B = 16'hb6b3;
	ans = 16'h2f07;
	#20
	A = 16'hb8db;
	B = 16'h3739;
	ans = 16'hb462;
	#20
	A = 16'hb5b4;
	B = 16'hb697;
	ans = 16'h30b3;
	#20
	A = 16'h3509;
	B = 16'h39c2;
	ans = 16'h333f;
	#20
	A = 16'hbb87;
	B = 16'h2d2d;
	ans = 16'hacdf;
	#20
	A = 16'h3a09;
	B = 16'hbbf1;
	ans = 16'hb9fe;
	#20
	A = 16'h3850;
	B = 16'h367d;
	ans = 16'h32ff;
	#20
	A = 16'hb92b;
	B = 16'hb672;
	ans = 16'h342a;
	#20
	A = 16'h3b39;
	B = 16'hb8f3;
	ans = 16'hb878;
	#20
	A = 16'hb8ef;
	B = 16'ha836;
	ans = 16'h2532;
	#20
	A = 16'h34d1;
	B = 16'h24fc;
	ans = 16'h1e00;
	#20
	A = 16'h3b4a;
	B = 16'hba24;
	ans = 16'hb998;
	#20
	A = 16'h3a77;
	B = 16'h30af;
	ans = 16'h2f92;
	#20
	A = 16'hb876;
	B = 16'hb546;
	ans = 16'h31e2;
	#20
	A = 16'h396c;
	B = 16'hb91e;
	ans = 16'hb6f0;
	#20
	A = 16'hb3ec;
	B = 16'hba39;
	ans = 16'h3229;
	#20
	A = 16'hba3f;
	B = 16'h39d7;
	ans = 16'hb88f;
	#20
	A = 16'hb6fe;
	B = 16'hbad8;
	ans = 16'h35fb;
	#20
	A = 16'h302e;
	B = 16'hb851;
	ans = 16'hac83;
	#20
	A = 16'ha8bb;
	B = 16'h39c2;
	ans = 16'ha6cf;
	#20
	A = 16'hb892;
	B = 16'hb4fb;
	ans = 16'h31b1;
	#20
	A = 16'hb52a;
	B = 16'hab11;
	ans = 16'h2490;
	#20
	A = 16'h37c0;
	B = 16'h39fb;
	ans = 16'h35cb;
	#20
	A = 16'hb560;
	B = 16'haa57;
	ans = 16'h2442;
	#20
	A = 16'h3977;
	B = 16'hb583;
	ans = 16'hb388;
	#20
	A = 16'hb2f9;
	B = 16'hbb26;
	ans = 16'h323b;
	#20
	A = 16'h2d5a;
	B = 16'hb876;
	ans = 16'ha9f8;
	#20
	A = 16'hb702;
	B = 16'hb90e;
	ans = 16'h346e;
	#20
	A = 16'h3765;
	B = 16'h3aa0;
	ans = 16'h3620;
	#20
	A = 16'hb6a9;
	B = 16'h3aa6;
	ans = 16'hb589;
	#20
	A = 16'hbaf1;
	B = 16'h330e;
	ans = 16'hb21f;
	#20
	A = 16'h3be4;
	B = 16'hb2ec;
	ans = 16'hb2d4;
	#20
	A = 16'h3405;
	B = 16'hb72d;
	ans = 16'haf36;
	#20
	A = 16'h3861;
	B = 16'h33f6;
	ans = 16'h305c;
	#20
	A = 16'h3884;
	B = 16'hb9e1;
	ans = 16'hb6a3;
	#20
	A = 16'ha7af;
	B = 16'h381e;
	ans = 16'ha3e9;
	#20
	A = 16'h3aaa;
	B = 16'haf6e;
	ans = 16'hae30;
	#20
	A = 16'hb621;
	B = 16'h361c;
	ans = 16'hb0ae;
	#20
	A = 16'hb64c;
	B = 16'hbb3d;
	ans = 16'h35b3;
	#20
	A = 16'hbbec;
	B = 16'hb26f;
	ans = 16'h325f;
	#20
	A = 16'h293d;
	B = 16'hbb78;
	ans = 16'ha8e4;
	#20
	A = 16'h2b17;
	B = 16'hb031;
	ans = 16'h9f6e;
	#20
	A = 16'h30d7;
	B = 16'h39c3;
	ans = 16'h2ef9;
	#20
	A = 16'h3276;
	B = 16'h38c1;
	ans = 16'h2fae;
	#20
	A = 16'hb905;
	B = 16'h3520;
	ans = 16'hb26e;
	#20
	A = 16'h3ad5;
	B = 16'hba19;
	ans = 16'hb935;
	#20
	A = 16'h1d35;
	B = 16'hbbee;
	ans = 16'h9d29;
	#20
	A = 16'h2cc2;
	B = 16'ha850;
	ans = 16'h9921;
	#20
	A = 16'hb9c6;
	B = 16'hbbea;
	ans = 16'h39b6;
	#20
	A = 16'hb345;
	B = 16'hb418;
	ans = 16'h2b71;
	#20
	A = 16'hbbb2;
	B = 16'ha17b;
	ans = 16'h2146;
	#20
	A = 16'h3a11;
	B = 16'hb2e0;
	ans = 16'hb137;
	#20
	A = 16'h23bb;
	B = 16'h3558;
	ans = 16'h1d2a;
	#20
	A = 16'hade9;
	B = 16'hac93;
	ans = 16'h1ec2;
	#20
	A = 16'hb7bb;
	B = 16'h3b8e;
	ans = 16'hb74d;
	#20
	A = 16'hb569;
	B = 16'hbbf3;
	ans = 16'h3560;
	#20
	A = 16'hbb1e;
	B = 16'hb7ca;
	ans = 16'h36ee;
	#20
	A = 16'h3a36;
	B = 16'h3aa0;
	ans = 16'h3925;
	#20
	A = 16'h3472;
	B = 16'h3740;
	ans = 16'h3007;
	#20
	A = 16'hb6d3;
	B = 16'hba19;
	ans = 16'h3534;
	#20
	A = 16'h36f3;
	B = 16'hb950;
	ans = 16'hb49d;
	#20
	A = 16'h3a0f;
	B = 16'h31cf;
	ans = 16'h3066;
	#20
	A = 16'hb70e;
	B = 16'h2f6d;
	ans = 16'haa8c;
	#20
	A = 16'hb2c8;
	B = 16'h3925;
	ans = 16'hb05c;
	#20
	A = 16'h381f;
	B = 16'hb828;
	ans = 16'hb448;
	#20
	A = 16'h3aae;
	B = 16'h3a6c;
	ans = 16'h395d;
	#20
	A = 16'ha92e;
	B = 16'hba7e;
	ans = 16'h2834;
	#20
	A = 16'h3a8e;
	B = 16'h39de;
	ans = 16'h38cf;
	#20
	A = 16'hb9db;
	B = 16'h3b80;
	ans = 16'hb97d;
	#20
	A = 16'h34bd;
	B = 16'hb4f1;
	ans = 16'hadda;
	#20
	A = 16'h3842;
	B = 16'h3b8b;
	ans = 16'h3804;
	#20
	A = 16'hb20e;
	B = 16'h2e3a;
	ans = 16'ha4b6;
	#20
	A = 16'hb94a;
	B = 16'h28eb;
	ans = 16'ha681;
	#20
	A = 16'hafb1;
	B = 16'hbbfc;
	ans = 16'h2fad;
	#20
	A = 16'h38ab;
	B = 16'hba28;
	ans = 16'hb72f;
	#20
	A = 16'h38d5;
	B = 16'h3976;
	ans = 16'h3699;
	#20
	A = 16'hb182;
	B = 16'hbb8b;
	ans = 16'h3131;
	#20
	A = 16'h3a18;
	B = 16'hb91c;
	ans = 16'hb7c9;
	#20
	A = 16'hb4c1;
	B = 16'hb1a5;
	ans = 16'h2ab5;
	#20
	A = 16'hbbbb;
	B = 16'hb0b8;
	ans = 16'h308f;
	#20
	A = 16'hb2fe;
	B = 16'hb047;
	ans = 16'h277a;
	#20
	A = 16'hb880;
	B = 16'h31b5;
	ans = 16'hae6c;
	#20
	A = 16'hb773;
	B = 16'h3a2e;
	ans = 16'hb5c1;
	#20
	A = 16'h396c;
	B = 16'h3a76;
	ans = 16'h3861;
	#20
	A = 16'hb98f;
	B = 16'hb87d;
	ans = 16'h363d;
	#20
	A = 16'h39ea;
	B = 16'h3430;
	ans = 16'h3231;
	#20
	A = 16'hbb1b;
	B = 16'hbaf7;
	ans = 16'h3a30;
	#20
	A = 16'h3351;
	B = 16'hbbba;
	ans = 16'hb311;
	#20
	A = 16'h3174;
	B = 16'h32c3;
	ans = 16'h289c;
	#20
	A = 16'hb48f;
	B = 16'h36e4;
	ans = 16'hafda;
	#20
	A = 16'h938e;
	B = 16'h3a16;
	ans = 16'h91bf;
	#20
	A = 16'h3bbf;
	B = 16'hafe4;
	ans = 16'hafa4;
	#20
	A = 16'h207c;
	B = 16'hb2b6;
	ans = 16'h9786;
	#20
	A = 16'h3b9e;
	B = 16'hb9a0;
	ans = 16'hb95b;
	#20
	A = 16'h3083;
	B = 16'haa05;
	ans = 16'h9eca;
	#20
	A = 16'hbb65;
	B = 16'hb875;
	ans = 16'h381f;
	#20
	A = 16'hb63c;
	B = 16'h3904;
	ans = 16'hb3d1;
	#20
	A = 16'hb0fc;
	B = 16'hb3de;
	ans = 16'h28e7;
	#20
	A = 16'h293b;
	B = 16'hb84b;
	ans = 16'ha59d;
	#20
	A = 16'h2c13;
	B = 16'h2fcf;
	ans = 16'h1ff4;
	#20
	A = 16'h2848;
	B = 16'hba1d;
	ans = 16'ha68b;
	#20
	A = 16'hbac0;
	B = 16'h38c8;
	ans = 16'hb809;
	#20
	A = 16'hae5f;
	B = 16'hbbfc;
	ans = 16'h2e5c;
	#20
	A = 16'h380f;
	B = 16'h3827;
	ans = 16'h3437;
	#20
	A = 16'ha325;
	B = 16'h3a3f;
	ans = 16'ha194;
	#20
	A = 16'hb919;
	B = 16'h36da;
	ans = 16'hb45e;
	#20
	A = 16'hba6e;
	B = 16'h35b4;
	ans = 16'hb495;
	#20
	A = 16'hbac8;
	B = 16'h2666;
	ans = 16'ha56c;
	#20
	A = 16'h24d2;
	B = 16'hb7ec;
	ans = 16'ha0c6;
	#20
	A = 16'ha950;
	B = 16'h3a2d;
	ans = 16'ha81a;
	#20
	A = 16'hb464;
	B = 16'hb990;
	ans = 16'h321b;
	#20
	A = 16'hba0c;
	B = 16'hb5fa;
	ans = 16'h3484;
	#20
	A = 16'h33a7;
	B = 16'h3a0c;
	ans = 16'h31c9;
	#20
	A = 16'h34dd;
	B = 16'hb8ef;
	ans = 16'hb200;
	#20
	A = 16'hb58d;
	B = 16'hba6d;
	ans = 16'h3475;
	#20
	A = 16'hbbb2;
	B = 16'hbaad;
	ans = 16'h3a6c;
	#20
	A = 16'hb971;
	B = 16'h3a7c;
	ans = 16'hb869;
	#20
	A = 16'h3bcd;
	B = 16'hbb1e;
	ans = 16'hbaf1;
	#20
	A = 16'hb7d3;
	B = 16'hb7e8;
	ans = 16'h33bc;
	#20
	A = 16'hbb3f;
	B = 16'hb77a;
	ans = 16'h36c6;
	#20
	A = 16'h36ef;
	B = 16'hbacc;
	ans = 16'hb5e4;
	#20
	A = 16'hb99f;
	B = 16'hbbcc;
	ans = 16'h397a;
	#20
	A = 16'hb745;
	B = 16'hb9d6;
	ans = 16'h354e;
	#20
	A = 16'h2f10;
	B = 16'ha5b8;
	ans = 16'h990c;
	#20
	A = 16'h35a0;
	B = 16'h1e79;
	ans = 16'h188d;
	#20
	A = 16'h3b76;
	B = 16'hb8e3;
	ans = 16'hb88f;
	#20
	A = 16'ha96e;
	B = 16'hacb4;
	ans = 16'h1a62;
	#20
	A = 16'hb322;
	B = 16'h3b0a;
	ans = 16'hb247;
	#20
	A = 16'hb568;
	B = 16'had6f;
	ans = 16'h2758;
	#20
	A = 16'hb439;
	B = 16'hb647;
	ans = 16'h2ea0;
	#20
	A = 16'h32f2;
	B = 16'h2d83;
	ans = 16'h24c9;
	#20
	A = 16'hb557;
	B = 16'habc7;
	ans = 16'h2531;
	#20
	A = 16'hb845;
	B = 16'h3759;
	ans = 16'hb3d8;
	#20
	A = 16'h30da;
	B = 16'h3a78;
	ans = 16'h2fd9;
	#20
	A = 16'h3873;
	B = 16'hacae;
	ans = 16'ha935;
	#20
	A = 16'h3866;
	B = 16'h1833;
	ans = 16'h149e;
	#20
	A = 16'hac64;
	B = 16'h3bb7;
	ans = 16'hac3c;
	#20
	A = 16'h3126;
	B = 16'h372c;
	ans = 16'h2c9e;
	#20
	A = 16'hb571;
	B = 16'hba09;
	ans = 16'h341b;
	#20
	A = 16'h3bf1;
	B = 16'h325f;
	ans = 16'h3253;
	#20
	A = 16'h3b16;
	B = 16'hb9ae;
	ans = 16'hb908;
	#20
	A = 16'hbbaf;
	B = 16'h3b1f;
	ans = 16'hbad7;
	#20
	A = 16'hba8e;
	B = 16'hb9be;
	ans = 16'h38b4;
	#20
	A = 16'h3965;
	B = 16'h3b2f;
	ans = 16'h38d8;
	#20
	A = 16'hb48e;
	B = 16'h390d;
	ans = 16'hb1c0;
	#20
	A = 16'hba2d;
	B = 16'h39f1;
	ans = 16'hb896;
	#20
	A = 16'hb7b6;
	B = 16'h3478;
	ans = 16'hb04f;
	#20
	A = 16'hb806;
	B = 16'hb976;
	ans = 16'h357e;
	#20
	A = 16'h3b39;
	B = 16'h3574;
	ans = 16'h34ec;
	#20
	A = 16'h3762;
	B = 16'h3435;
	ans = 16'h2fc4;
	#20
	A = 16'h396f;
	B = 16'hb3c6;
	ans = 16'hb148;
	#20
	A = 16'hba33;
	B = 16'h2eee;
	ans = 16'had5f;
	#20
	A = 16'habda;
	B = 16'hb3bf;
	ans = 16'h239a;
	#20
	A = 16'ha737;
	B = 16'h3625;
	ans = 16'ha18b;
	#20
	A = 16'hbb48;
	B = 16'h36c5;
	ans = 16'hb629;
	#20
	A = 16'h3666;
	B = 16'hb569;
	ans = 16'hb054;
	#20
	A = 16'hb836;
	B = 16'h3243;
	ans = 16'hae98;
	#20
	A = 16'hbb1a;
	B = 16'hbaa5;
	ans = 16'h39e6;
	#20
	A = 16'hb3a6;
	B = 16'hb142;
	ans = 16'h2907;
	#20
	A = 16'h39b0;
	B = 16'h39c0;
	ans = 16'h3816;
	#20
	A = 16'h3bb2;
	B = 16'hba23;
	ans = 16'hb9e7;
	#20
	A = 16'h3147;
	B = 16'hba2a;
	ans = 16'hb011;
	#20
	A = 16'hb1e4;
	B = 16'hb2f3;
	ans = 16'h291e;
	#20
	A = 16'hb378;
	B = 16'hbaa0;
	ans = 16'h322f;
	#20
	A = 16'h393d;
	B = 16'h32d1;
	ans = 16'h3077;
	#20
	A = 16'h39a3;
	B = 16'hbb8f;
	ans = 16'hb953;
	#20
	A = 16'h39e4;
	B = 16'h2ff9;
	ans = 16'h2ddf;
	#20
	A = 16'hb770;
	B = 16'h37e7;
	ans = 16'hb359;
	#20
	A = 16'h38ca;
	B = 16'hb947;
	ans = 16'hb652;
	#20
	A = 16'h3b31;
	B = 16'h3099;
	ans = 16'h3022;
	#20
	A = 16'hb0f2;
	B = 16'hba71;
	ans = 16'h2ff7;
	#20
	A = 16'h36ff;
	B = 16'h377f;
	ans = 16'h328e;
	#20
	A = 16'h32bd;
	B = 16'h3b87;
	ans = 16'h3257;
	#20
	A = 16'haffe;
	B = 16'h3120;
	ans = 16'ha51f;
	#20
	A = 16'hb781;
	B = 16'h38d9;
	ans = 16'hb48c;
	#20
	A = 16'hbb68;
	B = 16'hb344;
	ans = 16'h32ba;
	#20
	A = 16'h2c2d;
	B = 16'hbb16;
	ans = 16'hab66;
	#20
	A = 16'h123c;
	B = 16'h3546;
	ans = 16'hc1c;
	#20
	A = 16'hb81a;
	B = 16'hba36;
	ans = 16'h365e;
	#20
	A = 16'h3656;
	B = 16'hbb27;
	ans = 16'hb5aa;
	#20
	A = 16'h37e4;
	B = 16'h3b5a;
	ans = 16'h3740;
	#20
	A = 16'hb91e;
	B = 16'hb9ec;
	ans = 16'h3793;
	#20
	A = 16'h391b;
	B = 16'haa10;
	ans = 16'ha7bd;
	#20
	A = 16'hb023;
	B = 16'h29de;
	ans = 16'h9e11;
	#20
	A = 16'h381d;
	B = 16'hb818;
	ans = 16'hb436;
	#20
	A = 16'hb8ca;
	B = 16'h3624;
	ans = 16'hb35a;
	#20
	A = 16'h311f;
	B = 16'h3bf6;
	ans = 16'h3119;
	#20
	A = 16'h3753;
	B = 16'hb094;
	ans = 16'hac31;
	#20
	A = 16'h39d8;
	B = 16'h324c;
	ans = 16'h309a;
	#20
	A = 16'h3b2c;
	B = 16'h36fb;
	ans = 16'h3642;
	#20
	A = 16'h39a8;
	B = 16'hb7a5;
	ans = 16'hb568;
	#20
	A = 16'hb5d7;
	B = 16'hb51d;
	ans = 16'h2f77;
	#20
	A = 16'h3a0c;
	B = 16'hb5aa;
	ans = 16'hb448;
	#20
	A = 16'hb990;
	B = 16'h3a72;
	ans = 16'hb87b;
	#20
	A = 16'h3888;
	B = 16'h3269;
	ans = 16'h2f43;
	#20
	A = 16'hb537;
	B = 16'h3bbe;
	ans = 16'hb50c;
	#20
	A = 16'hbbf5;
	B = 16'hbab1;
	ans = 16'h3aa8;
	#20
	A = 16'h357b;
	B = 16'hb982;
	ans = 16'hb38c;
	#20
	A = 16'h30eb;
	B = 16'hba7a;
	ans = 16'haff6;
	#20
	A = 16'ha580;
	B = 16'ha4f9;
	ans = 16'hed6;
	#20
	A = 16'h381b;
	B = 16'hab0b;
	ans = 16'ha73b;
	#20
	A = 16'hb83e;
	B = 16'h3bdc;
	ans = 16'hb82b;
	#20
	A = 16'hb930;
	B = 16'hab6d;
	ans = 16'h28d1;
	#20
	A = 16'h34bc;
	B = 16'hba83;
	ans = 16'hb3b5;
	#20
	A = 16'h3873;
	B = 16'h34d7;
	ans = 16'h3162;
	#20
	A = 16'hae2a;
	B = 16'h3651;
	ans = 16'ha8de;
	#20
	A = 16'h2480;
	B = 16'hb95d;
	ans = 16'ha209;
	#20
	A = 16'hb54b;
	B = 16'hbaf6;
	ans = 16'h349b;
	#20
	A = 16'hb4f5;
	B = 16'h38ff;
	ans = 16'hb231;
	#20
	A = 16'hb8e0;
	B = 16'h380d;
	ans = 16'hb4f0;
	#20
	A = 16'h2dff;
	B = 16'h352b;
	ans = 16'h27bf;
	#20
	A = 16'hb48a;
	B = 16'hb6de;
	ans = 16'h2fcb;
	#20
	A = 16'hbba7;
	B = 16'h39aa;
	ans = 16'hb96b;
	#20
	A = 16'h3425;
	B = 16'hb26e;
	ans = 16'haaa9;
	#20
	A = 16'hbbd1;
	B = 16'h3670;
	ans = 16'hb64a;
	#20
	A = 16'h366b;
	B = 16'haec8;
	ans = 16'ha971;
	#20
	A = 16'h3978;
	B = 16'hb8c8;
	ans = 16'hb689;
	#20
	A = 16'h3a8f;
	B = 16'hb649;
	ans = 16'hb527;
	#20
	A = 16'h3baa;
	B = 16'hbbf1;
	ans = 16'hbb9c;
	#20
	A = 16'hbbb0;
	B = 16'hb792;
	ans = 16'h3746;
	#20
	A = 16'h2390;
	B = 16'h3bb3;
	ans = 16'h2347;
	#20
	A = 16'hb5a8;
	B = 16'hba63;
	ans = 16'h3484;
	#20
	A = 16'had1a;
	B = 16'hb998;
	ans = 16'h2b22;
	#20
	A = 16'h3b27;
	B = 16'hbba5;
	ans = 16'hbad6;
	#20
	A = 16'h3af2;
	B = 16'h3853;
	ans = 16'h3782;
	#20
	A = 16'h3a47;
	B = 16'h3ac0;
	ans = 16'h394c;
	#20
	A = 16'hbbad;
	B = 16'hb7e7;
	ans = 16'h3795;
	#20
	A = 16'hb3cb;
	B = 16'h367d;
	ans = 16'hae52;
	#20
	A = 16'hbb7c;
	B = 16'hbaa1;
	ans = 16'h3a34;
	#20
	A = 16'h3a79;
	B = 16'h3862;
	ans = 16'h3718;
	#20
	A = 16'h3003;
	B = 16'hb458;
	ans = 16'ha85b;
	#20
	A = 16'h37f3;
	B = 16'hb303;
	ans = 16'haef8;
	#20
	A = 16'h392a;
	B = 16'h3bdf;
	ans = 16'h3915;
	#20
	A = 16'h3941;
	B = 16'hb7ea;
	ans = 16'hb533;
	#20
	A = 16'h362d;
	B = 16'h2cf3;
	ans = 16'h27a4;
	#20
	A = 16'h363a;
	B = 16'h3421;
	ans = 16'h2e6d;
	#20
	A = 16'hac9f;
	B = 16'hb0b4;
	ans = 16'h216f;
	#20
	A = 16'h2fe3;
	B = 16'h3952;
	ans = 16'h2d3f;
	#20
	A = 16'h2c81;
	B = 16'h39a7;
	ans = 16'h2a5d;
	#20
	A = 16'h38c2;
	B = 16'hb734;
	ans = 16'hb449;
	#20
	A = 16'h3a42;
	B = 16'hb0b1;
	ans = 16'haf57;
	#20
	A = 16'hb8a8;
	B = 16'h3a5f;
	ans = 16'hb76b;
	#20
	A = 16'hb196;
	B = 16'h3b6c;
	ans = 16'hb12f;
	#20
	A = 16'hb86d;
	B = 16'hae3d;
	ans = 16'h2ae7;
	#20
	A = 16'h31c4;
	B = 16'h3452;
	ans = 16'h2a3a;
	#20
	A = 16'hb85b;
	B = 16'h3945;
	ans = 16'hb5bd;
	#20
	A = 16'hb01e;
	B = 16'h3421;
	ans = 16'ha840;
	#20
	A = 16'hbafd;
	B = 16'hbac1;
	ans = 16'h39e6;
	#20
	A = 16'h349d;
	B = 16'hbae3;
	ans = 16'hb3f1;
	#20
	A = 16'hb1c9;
	B = 16'hb64a;
	ans = 16'h2c8c;
	#20
	A = 16'h3a45;
	B = 16'hb461;
	ans = 16'hb2dd;
	#20
	A = 16'h38ff;
	B = 16'hae8b;
	ans = 16'hac16;
	#20
	A = 16'hba50;
	B = 16'hb6c4;
	ans = 16'h3557;
	#20
	A = 16'hb4c0;
	B = 16'hb2a4;
	ans = 16'h2be3;
	#20
	A = 16'hb892;
	B = 16'hbb87;
	ans = 16'h384d;
	#20
	A = 16'h3802;
	B = 16'h31c7;
	ans = 16'h2dca;
	#20
	A = 16'h380c;
	B = 16'h31c3;
	ans = 16'h2dd4;
	#20
	A = 16'h3903;
	B = 16'h3909;
	ans = 16'h364f;
	#20
	A = 16'h35d0;
	B = 16'hb13f;
	ans = 16'haba0;
	#20
	A = 16'h345c;
	B = 16'hb7f2;
	ans = 16'hb054;
	#20
	A = 16'hbb43;
	B = 16'h329a;
	ans = 16'hb1fe;
	#20
	A = 16'h31b1;
	B = 16'hb801;
	ans = 16'hadb2;
	#20
	A = 16'h3504;
	B = 16'haf82;
	ans = 16'ha8b5;
	#20
	A = 16'h38c7;
	B = 16'h3b8e;
	ans = 16'h3883;
	#20
	A = 16'h3b4d;
	B = 16'hb712;
	ans = 16'hb674;
	#20
	A = 16'hb477;
	B = 16'hb901;
	ans = 16'h3196;
	#20
	A = 16'hacfc;
	B = 16'hb3b9;
	ans = 16'h24d0;
	#20
	A = 16'hb87c;
	B = 16'hb485;
	ans = 16'h3111;
	#20
	A = 16'hb948;
	B = 16'haa69;
	ans = 16'h283b;
	#20
	A = 16'hba97;
	B = 16'hbbee;
	ans = 16'h3a88;
	#20
	A = 16'hb3a9;
	B = 16'h39b0;
	ans = 16'hb172;
	#20
	A = 16'hbb96;
	B = 16'h2831;
	ans = 16'ha7f3;
	#20
	A = 16'hb6dd;
	B = 16'hb79c;
	ans = 16'h3287;
	#20
	A = 16'h314c;
	B = 16'hb32c;
	ans = 16'ha8c0;
	#20
	A = 16'h3077;
	B = 16'hb23c;
	ans = 16'ha6f5;
	#20
	A = 16'hbabd;
	B = 16'hbb63;
	ans = 16'h3a39;
	#20
	A = 16'hb92f;
	B = 16'h3a44;
	ans = 16'hb80f;
	#20
	A = 16'hb035;
	B = 16'ha9a7;
	ans = 16'h1df2;
	#20
	A = 16'h3b10;
	B = 16'h384a;
	ans = 16'h3793;
	#20
	A = 16'hbb34;
	B = 16'h38e9;
	ans = 16'hb86c;
	#20
	A = 16'h3ace;
	B = 16'h39f8;
	ans = 16'h3914;
	#20
	A = 16'h3ab1;
	B = 16'h35e4;
	ans = 16'h34ed;
	#20
	A = 16'h339b;
	B = 16'h3485;
	ans = 16'h2c4c;
	#20
	A = 16'h3791;
	B = 16'hb663;
	ans = 16'hb20a;
	#20
	A = 16'h2c26;
	B = 16'hb7c7;
	ans = 16'ha808;
	#20
	A = 16'h34cb;
	B = 16'h2f61;
	ans = 16'h286c;
	#20
	A = 16'h31ab;
	B = 16'hb8d9;
	ans = 16'haede;
	#20
	A = 16'h394d;
	B = 16'h3ae1;
	ans = 16'h388f;
	#20
	A = 16'hbb32;
	B = 16'h3173;
	ans = 16'hb0e7;
	#20
	A = 16'h344e;
	B = 16'h29c5;
	ans = 16'h2236;
	#20
	A = 16'h3903;
	B = 16'h3abb;
	ans = 16'h3837;
	#20
	A = 16'habe6;
	B = 16'h3bdb;
	ans = 16'habc1;
	#20
	A = 16'h39a1;
	B = 16'hb718;
	ans = 16'hb4fe;
	#20
	A = 16'hb965;
	B = 16'h37b7;
	ans = 16'hb534;
	#20
	A = 16'h320b;
	B = 16'h2e6e;
	ans = 16'h24db;
	#20
	A = 16'h3579;
	B = 16'h3b9f;
	ans = 16'h3537;
	#20
	A = 16'h282e;
	B = 16'h3a81;
	ans = 16'h26cc;
	#20
	A = 16'h3bbd;
	B = 16'hb482;
	ans = 16'hb45c;
	#20
	A = 16'h319b;
	B = 16'h367d;
	ans = 16'h2c8c;
	#20
	A = 16'h3014;
	B = 16'hb2b4;
	ans = 16'ha6d6;
	#20
	A = 16'hb831;
	B = 16'h3266;
	ans = 16'haeb4;
	#20
	A = 16'h2ea5;
	B = 16'h2eae;
	ans = 16'h218c;
	#20
	A = 16'hbbbe;
	B = 16'hbaa2;
	ans = 16'h3a6b;
	#20
	A = 16'hbab4;
	B = 16'hb89e;
	ans = 16'h37bd;
	#20
	A = 16'h3b21;
	B = 16'h39bf;
	ans = 16'h391f;
	#20
	A = 16'h2c9f;
	B = 16'h3be7;
	ans = 16'h2c91;
	#20
	A = 16'h347e;
	B = 16'h3a40;
	ans = 16'h3305;
	#20
	A = 16'h3a47;
	B = 16'hbb04;
	ans = 16'hb981;
	#20
	A = 16'hb9dc;
	B = 16'hb127;
	ans = 16'h2f8c;
	#20
	A = 16'hb9a1;
	B = 16'h3b29;
	ans = 16'hb90a;
	#20
	A = 16'hb1ad;
	B = 16'ha75a;
	ans = 16'h1d37;
	#20
	A = 16'hab54;
	B = 16'hb6dc;
	ans = 16'h2649;
	#20
	A = 16'h34ae;
	B = 16'h304f;
	ans = 16'h290a;
	#20
	A = 16'h3366;
	B = 16'hb92c;
	ans = 16'hb0c8;
	#20
	A = 16'h3a32;
	B = 16'h3b15;
	ans = 16'h397c;
	#20
	A = 16'hb684;
	B = 16'h349b;
	ans = 16'haf80;
	#20
	A = 16'h2809;
	B = 16'h364c;
	ans = 16'h225a;
	#20
	A = 16'hb380;
	B = 16'hb406;
	ans = 16'h2b8b;
	#20
	A = 16'hb9b1;
	B = 16'h37a0;
	ans = 16'hb56d;
	#20
	A = 16'h360d;
	B = 16'h3a36;
	ans = 16'h34b3;
	#20
	A = 16'hb9a7;
	B = 16'h2f28;
	ans = 16'had0e;
	#20
	A = 16'h3641;
	B = 16'hb960;
	ans = 16'hb434;
	#20
	A = 16'hb7cc;
	B = 16'hba7b;
	ans = 16'h3651;
	#20
	A = 16'hb686;
	B = 16'h342f;
	ans = 16'haed3;
	#20
	A = 16'haccc;
	B = 16'hb88b;
	ans = 16'h2973;
	#20
	A = 16'h36c6;
	B = 16'h31a9;
	ans = 16'h2ccb;
	#20
	A = 16'h369e;
	B = 16'h354c;
	ans = 16'h3062;
	#20
	A = 16'h3bd4;
	B = 16'h33bb;
	ans = 16'h3390;
	#20
	A = 16'hb9b1;
	B = 16'h305f;
	ans = 16'hae38;
	#20
	A = 16'hb8ac;
	B = 16'ha67e;
	ans = 16'h2395;
	#20
	A = 16'h3a67;
	B = 16'h38f2;
	ans = 16'h37ea;
	#20
	A = 16'hba6e;
	B = 16'hb879;
	ans = 16'h3730;
	#20
	A = 16'hb920;
	B = 16'hb737;
	ans = 16'h349f;
	#20
	A = 16'hba8e;
	B = 16'hbb63;
	ans = 16'h3a0d;
	#20
	A = 16'h359a;
	B = 16'h2f19;
	ans = 16'h28f8;
	#20
	A = 16'habbb;
	B = 16'hb783;
	ans = 16'h2742;
	#20
	A = 16'hbb05;
	B = 16'h3995;
	ans = 16'hb8e6;
	#20
	A = 16'hbb77;
	B = 16'h3624;
	ans = 16'hb5bb;
	#20
	A = 16'hb03f;
	B = 16'hb535;
	ans = 16'h2987;
	#20
	A = 16'h3bf3;
	B = 16'hb443;
	ans = 16'hb43c;
	#20
	A = 16'h37b9;
	B = 16'h30fe;
	ans = 16'h2cd2;
	#20
	A = 16'hb75e;
	B = 16'hb6f1;
	ans = 16'h3264;
	#20
	A = 16'h378e;
	B = 16'h3708;
	ans = 16'h32a4;
	#20
	A = 16'h3472;
	B = 16'h34fa;
	ans = 16'h2d88;
	#20
	A = 16'h3940;
	B = 16'hb021;
	ans = 16'had6b;
	#20
	A = 16'h3402;
	B = 16'h3491;
	ans = 16'h2c93;
	#20
	A = 16'hb5c1;
	B = 16'h35fc;
	ans = 16'hb04e;
	#20
	A = 16'h3a80;
	B = 16'hb75d;
	ans = 16'hb5fc;
	#20
	A = 16'hb65d;
	B = 16'hba1a;
	ans = 16'h34da;
	#20
	A = 16'h3a54;
	B = 16'hb9dc;
	ans = 16'hb8a3;
	#20
	A = 16'h38b4;
	B = 16'ha621;
	ans = 16'ha335;
	#20
	A = 16'h3903;
	B = 16'haf41;
	ans = 16'hac8b;
	#20
	A = 16'h3862;
	B = 16'hb01c;
	ans = 16'hac81;
	#20
	A = 16'h3b78;
	B = 16'h397b;
	ans = 16'h391e;
	#20
	A = 16'h3ad0;
	B = 16'hbbbe;
	ans = 16'hba98;
	#20
	A = 16'hbaa2;
	B = 16'hbb09;
	ans = 16'h39d5;
	#20
	A = 16'hb2aa;
	B = 16'hb12e;
	ans = 16'h2851;
	#20
	A = 16'hb414;
	B = 16'hac29;
	ans = 16'h243e;
	#20
	A = 16'hb9a6;
	B = 16'h3890;
	ans = 16'hb671;
	#20
	A = 16'h3441;
	B = 16'h3ab4;
	ans = 16'h3321;
	#20
	A = 16'hb553;
	B = 16'hb9a7;
	ans = 16'h3386;
	#20
	A = 16'h38d9;
	B = 16'hb9ca;
	ans = 16'hb704;
	#20
	A = 16'h3412;
	B = 16'hb321;
	ans = 16'hab41;
	#20
	A = 16'hb9be;
	B = 16'hb2eb;
	ans = 16'h30f7;
	#20
	A = 16'hafe2;
	B = 16'h37bb;
	ans = 16'hab9e;
	#20
	A = 16'h317d;
	B = 16'h3ad2;
	ans = 16'h30ae;
	#20
	A = 16'hb8c0;
	B = 16'hb49b;
	ans = 16'h3178;
	#20
	A = 16'hb961;
	B = 16'hbb8f;
	ans = 16'h3915;
	#20
	A = 16'h3314;
	B = 16'hb695;
	ans = 16'hadd3;
	#20
	A = 16'h3a01;
	B = 16'hae3a;
	ans = 16'hacac;
	#20
	A = 16'hb2b3;
	B = 16'h2f49;
	ans = 16'ha61a;
	#20
	A = 16'h3b4b;
	B = 16'h3143;
	ans = 16'h30cc;
	#20
	A = 16'h3b6b;
	B = 16'hacbe;
	ans = 16'hac66;
	#20
	A = 16'hb707;
	B = 16'h3bf0;
	ans = 16'hb6f9;
	#20
	A = 16'hbaa9;
	B = 16'hb87a;
	ans = 16'h3774;
	#20
	A = 16'h3a59;
	B = 16'ha736;
	ans = 16'ha5b9;
	#20
	A = 16'hbb21;
	B = 16'hb7e2;
	ans = 16'h3706;
	#20
	A = 16'hb9df;
	B = 16'hb332;
	ans = 16'h3148;
	#20
	A = 16'h3344;
	B = 16'h305b;
	ans = 16'h27e9;
	#20
	A = 16'h2fed;
	B = 16'hb9b9;
	ans = 16'hadab;
	#20
	A = 16'hb973;
	B = 16'hbbdb;
	ans = 16'h395a;
	#20
	A = 16'hb8da;
	B = 16'ha637;
	ans = 16'h238a;
	#20
	A = 16'hb8c3;
	B = 16'h3a97;
	ans = 16'hb7d8;
	#20
	A = 16'h386e;
	B = 16'h36e9;
	ans = 16'h33a7;
	#20
	A = 16'hbab9;
	B = 16'h391a;
	ans = 16'hb849;
	#20
	A = 16'h3790;
	B = 16'had4b;
	ans = 16'ha901;
	#20
	A = 16'hbbae;
	B = 16'h3567;
	ans = 16'hb530;
	#20
	A = 16'hb372;
	B = 16'hb91c;
	ans = 16'h30c1;
	#20
	A = 16'hb054;
	B = 16'hbb83;
	ans = 16'h3010;
	#20
	A = 16'hbb7b;
	B = 16'ha66a;
	ans = 16'h25ff;
	#20
	A = 16'h3ad0;
	B = 16'hb077;
	ans = 16'haf9b;
	#20
	A = 16'hbbca;
	B = 16'hba9b;
	ans = 16'h3a6e;
	#20
	A = 16'hba2a;
	B = 16'h32f5;
	ans = 16'hb15c;
	#20
	A = 16'hb310;
	B = 16'h3a32;
	ans = 16'hb178;
	#20
	A = 16'h2e15;
	B = 16'h3a8a;
	ans = 16'h2cf9;
	#20
	A = 16'h35eb;
	B = 16'hba6d;
	ans = 16'hb4c1;
	#20
	A = 16'h3522;
	B = 16'h3998;
	ans = 16'h332e;
	#20
	A = 16'hacb9;
	B = 16'hb81c;
	ans = 16'h28da;
	#20
	A = 16'hbb5e;
	B = 16'hb038;
	ans = 16'h2fc5;
	#20
	A = 16'h2a5e;
	B = 16'hb459;
	ans = 16'ha2ec;
	#20
	A = 16'h3a34;
	B = 16'h380c;
	ans = 16'h3647;
	#20
	A = 16'h396e;
	B = 16'h3b85;
	ans = 16'h391b;
	#20
	A = 16'h3458;
	B = 16'h2f10;
	ans = 16'h27ab;
	#20
	A = 16'hb11e;
	B = 16'hb690;
	ans = 16'h2c33;
	#20
	A = 16'hb5d9;
	B = 16'h3ac2;
	ans = 16'hb4f1;
	#20
	A = 16'h31a0;
	B = 16'h3837;
	ans = 16'h2ded;
	#20
	A = 16'h34e0;
	B = 16'hbb87;
	ans = 16'hb496;
	#20
	A = 16'hba49;
	B = 16'h36f2;
	ans = 16'hb575;
	#20
	A = 16'hb129;
	B = 16'h3172;
	ans = 16'ha706;
	#20
	A = 16'h3a8b;
	B = 16'hb4a4;
	ans = 16'hb397;
	#20
	A = 16'hbbe5;
	B = 16'hac36;
	ans = 16'h2c28;
	#20
	A = 16'h38da;
	B = 16'hb78b;
	ans = 16'hb493;
	#20
	A = 16'hb90b;
	B = 16'h35e9;
	ans = 16'hb374;
	#20
	A = 16'hbb52;
	B = 16'h3a1f;
	ans = 16'hb99a;
	#20
	A = 16'hb891;
	B = 16'ha934;
	ans = 16'h25f1;
	#20
	A = 16'h3a30;
	B = 16'h39ac;
	ans = 16'h3863;
	#20
	A = 16'hb23a;
	B = 16'h3581;
	ans = 16'hac49;
	#20
	A = 16'hb616;
	B = 16'h27c4;
	ans = 16'ha1e8;
	#20
	A = 16'h3422;
	B = 16'hb9e1;
	ans = 16'hb213;
	#20
	A = 16'h3a1e;
	B = 16'hb06f;
	ans = 16'haec8;
	#20
	A = 16'h3809;
	B = 16'hb7a1;
	ans = 16'hb3b2;
	#20
	A = 16'h3ad1;
	B = 16'hb8e9;
	ans = 16'hb82f;
	#20
	A = 16'hb583;
	B = 16'h2683;
	ans = 16'ha07d;
	#20
	A = 16'hb873;
	B = 16'hb90e;
	ans = 16'h359f;
	#20
	A = 16'h307f;
	B = 16'h3011;
	ans = 16'h2492;
	#20
	A = 16'h39b3;
	B = 16'h28a8;
	ans = 16'h26a2;
	#20
	A = 16'h3af9;
	B = 16'h387f;
	ans = 16'h37d6;
	#20
	A = 16'hb867;
	B = 16'ha3d4;
	ans = 16'h204f;
	#20
	A = 16'hb879;
	B = 16'h3a95;
	ans = 16'hb75c;
	#20
	A = 16'hb82b;
	B = 16'h2ef8;
	ans = 16'hab43;
	#20
	A = 16'hb9f3;
	B = 16'h2d40;
	ans = 16'habcf;
	#20
	A = 16'h34fc;
	B = 16'hb8d8;
	ans = 16'hb209;
	#20
	A = 16'hb837;
	B = 16'h3bb5;
	ans = 16'hb80f;
	#20
	A = 16'hb15b;
	B = 16'h34f5;
	ans = 16'haaa3;
	#20
	A = 16'hbb95;
	B = 16'hb5bb;
	ans = 16'h356e;
	#20
	A = 16'h2e6f;
	B = 16'hbbac;
	ans = 16'hae2b;
	#20
	A = 16'h35a4;
	B = 16'h39d5;
	ans = 16'h341d;
	#20
	A = 16'h3a8d;
	B = 16'hb60e;
	ans = 16'hb4f5;
	#20
	A = 16'h3a73;
	B = 16'h30d9;
	ans = 16'h2fd1;
	#20
	A = 16'h3bce;
	B = 16'hbb7f;
	ans = 16'hbb50;
	#20
	A = 16'hb061;
	B = 16'hbb6e;
	ans = 16'h3011;
	#20
	A = 16'hb13d;
	B = 16'h3323;
	ans = 16'ha8ac;
	#20
	A = 16'hb95a;
	B = 16'hb4b7;
	ans = 16'h324f;
	#20
	A = 16'h3869;
	B = 16'hb07e;
	ans = 16'hacf4;
	#20
	A = 16'h3600;
	B = 16'hba9e;
	ans = 16'hb4f6;
	#20
	A = 16'h3834;
	B = 16'hafa9;
	ans = 16'hac06;
	#20
	A = 16'h3b98;
	B = 16'h35f1;
	ans = 16'h35a4;
	#20
	A = 16'h352d;
	B = 16'hacd0;
	ans = 16'ha63a;
	#20
	A = 16'h3964;
	B = 16'hbbec;
	ans = 16'hb957;
	#20
	A = 16'hb8b0;
	B = 16'h3a55;
	ans = 16'hb76c;
	#20
	A = 16'h3b98;
	B = 16'h3b77;
	ans = 16'h3b16;
	#20
	A = 16'haf02;
	B = 16'hbb27;
	ans = 16'h2e44;
	#20
	A = 16'hba6d;
	B = 16'haa17;
	ans = 16'h28e4;
	#20
	A = 16'hbad0;
	B = 16'h393b;
	ans = 16'hb874;
	#20
	A = 16'h3b1e;
	B = 16'h39c6;
	ans = 16'h3923;
	#20
	A = 16'h34eb;
	B = 16'h3104;
	ans = 16'h2a2b;
	#20
	A = 16'h39ce;
	B = 16'h3197;
	ans = 16'h300e;
	#20
	A = 16'h342a;
	B = 16'h2ddf;
	ans = 16'h261d;
	#20
	A = 16'h3858;
	B = 16'h32f8;
	ans = 16'h2f91;
	#20
	A = 16'hb8e4;
	B = 16'h2982;
	ans = 16'ha6bc;
	#20
	A = 16'hb495;
	B = 16'hb7a3;
	ans = 16'h3060;
	#20
	A = 16'h375b;
	B = 16'hbb58;
	ans = 16'hb6c1;
	#20
	A = 16'h1fc1;
	B = 16'h3bf1;
	ans = 16'h1fb2;
	#20
	A = 16'habcc;
	B = 16'hbb59;
	ans = 16'h2b29;
	#20
	A = 16'h38e1;
	B = 16'h8e7c;
	ans = 16'h8be9;
	#20
	A = 16'h9e24;
	B = 16'h3603;
	ans = 16'h989d;
	#20
	A = 16'hb96f;
	B = 16'h38ee;
	ans = 16'hb6b2;
	#20
	A = 16'hb7d3;
	B = 16'hb856;
	ans = 16'h343e;
	#20
	A = 16'h3b20;
	B = 16'h2e10;
	ans = 16'h2d66;
	#20
	A = 16'hba1a;
	B = 16'hb783;
	ans = 16'h35bb;
	#20
	A = 16'h32c6;
	B = 16'hb449;
	ans = 16'hab42;
	#20
	A = 16'h3afd;
	B = 16'hb365;
	ans = 16'hb276;
	#20
	A = 16'h3b7f;
	B = 16'h3948;
	ans = 16'h38f3;
	#20
	A = 16'h39c5;
	B = 16'h3911;
	ans = 16'h374f;
	#20
	A = 16'h38c0;
	B = 16'h35dd;
	ans = 16'h32f6;
	#20
	A = 16'h38d3;
	B = 16'hba11;
	ans = 16'hb751;
	#20
	A = 16'hacf7;
	B = 16'h3877;
	ans = 16'ha98b;
	#20
	A = 16'haa5a;
	B = 16'h3650;
	ans = 16'ha503;
	#20
	A = 16'h38c8;
	B = 16'h3af1;
	ans = 16'h3826;
	#20
	A = 16'h3a1d;
	B = 16'hba7d;
	ans = 16'hb8f5;
	#20
	A = 16'h38ea;
	B = 16'hb840;
	ans = 16'hb539;
	#20
	A = 16'h3a04;
	B = 16'hb84d;
	ans = 16'hb678;
	#20
	A = 16'h3462;
	B = 16'h3851;
	ans = 16'h30bb;
	#20
	A = 16'h3b08;
	B = 16'h327c;
	ans = 16'h31b3;
	#20
	A = 16'hb46e;
	B = 16'hb79b;
	ans = 16'h3036;
	#20
	A = 16'h2f2e;
	B = 16'h31b8;
	ans = 16'h2522;
	#20
	A = 16'h381b;
	B = 16'h391b;
	ans = 16'h353d;
	#20
	A = 16'hb898;
	B = 16'h3b8f;
	ans = 16'hb857;
	#20
	A = 16'hba87;
	B = 16'hb46f;
	ans = 16'h333c;
	#20
	A = 16'h358b;
	B = 16'h3a06;
	ans = 16'h342c;
	#20
	A = 16'h381f;
	B = 16'hb5f1;
	ans = 16'hb21f;
	#20
	A = 16'hbbb4;
	B = 16'hb8dd;
	ans = 16'h38af;
	#20
	A = 16'h37b5;
	B = 16'hbbec;
	ans = 16'hb7a2;
	#20
	A = 16'hb192;
	B = 16'hbb94;
	ans = 16'h3147;
	#20
	A = 16'hb47b;
	B = 16'h337b;
	ans = 16'hac31;
	#20
	A = 16'h3afd;
	B = 16'h394d;
	ans = 16'h38a1;
	#20
	A = 16'hb6fc;
	B = 16'h38ab;
	ans = 16'hb413;
	#20
	A = 16'hbb38;
	B = 16'h3379;
	ans = 16'hb2be;
	#20
	A = 16'h38e5;
	B = 16'hb81b;
	ans = 16'hb506;
	#20
	A = 16'h3b12;
	B = 16'h3a2a;
	ans = 16'h3973;
	#20
	A = 16'h2b2c;
	B = 16'hb77c;
	ans = 16'ha6b6;
	#20
	A = 16'hb3f0;
	B = 16'h3594;
	ans = 16'had89;
	#20
	A = 16'hb8cd;
	B = 16'h38b1;
	ans = 16'hb5a1;
	#20
	A = 16'hb1e0;
	B = 16'hb16b;
	ans = 16'h27f5;
	#20
	A = 16'hb40f;
	B = 16'h39a4;
	ans = 16'hb1b9;
	#20
	A = 16'ha819;
	B = 16'hb4da;
	ans = 16'h20f8;
	#20
	A = 16'hba96;
	B = 16'hbafa;
	ans = 16'h39be;
	#20
	A = 16'h383a;
	B = 16'hb7bd;
	ans = 16'hb417;
	#20
	A = 16'h3612;
	B = 16'hbab5;
	ans = 16'hb517;
	#20
	A = 16'h38ce;
	B = 16'h3834;
	ans = 16'h350c;
	#20
	A = 16'hb5ad;
	B = 16'ha939;
	ans = 16'h2369;
	#20
	A = 16'hb4e6;
	B = 16'h3405;
	ans = 16'hacec;
	#20
	A = 16'h3560;
	B = 16'hb52e;
	ans = 16'haef6;
	#20
	A = 16'h388a;
	B = 16'h35dd;
	ans = 16'h32a7;
	#20
	A = 16'hb2a7;
	B = 16'h38dc;
	ans = 16'hb00a;
	#20
	A = 16'h38b5;
	B = 16'hb61b;
	ans = 16'hb32f;
	#20
	A = 16'hb73d;
	B = 16'hbb47;
	ans = 16'h3696;
	#20
	A = 16'hadf3;
	B = 16'ha4e8;
	ans = 16'h174c;
	#20
	A = 16'hba24;
	B = 16'h34d0;
	ans = 16'hb363;
	#20
	A = 16'h38a2;
	B = 16'h38b1;
	ans = 16'h356f;
	#20
	A = 16'h3959;
	B = 16'h3bee;
	ans = 16'h394d;
	#20
	A = 16'hb6de;
	B = 16'h352f;
	ans = 16'hb073;
	#20
	A = 16'h3b3e;
	B = 16'hb7d1;
	ans = 16'hb713;
	#20
	A = 16'h3344;
	B = 16'hb423;
	ans = 16'hab84;
	#20
	A = 16'h3674;
	B = 16'h38bf;
	ans = 16'h33a8;
	#20
	A = 16'hb81b;
	B = 16'h385c;
	ans = 16'hb479;
	#20
	A = 16'hbaca;
	B = 16'h369f;
	ans = 16'hb59e;
	#20
	A = 16'h3573;
	B = 16'h3b9f;
	ans = 16'h3531;
	#20
	A = 16'h374b;
	B = 16'h3bec;
	ans = 16'h3739;
	#20
	A = 16'h3bc7;
	B = 16'hb703;
	ans = 16'hb6d1;
	#20
	A = 16'h3be5;
	B = 16'hb02e;
	ans = 16'hb020;
	#20
	A = 16'h3895;
	B = 16'hb9a0;
	ans = 16'hb672;
	#20
	A = 16'h3154;
	B = 16'h3322;
	ans = 16'h28c0;
	#20
	A = 16'hbb4f;
	B = 16'h36f2;
	ans = 16'hb658;
	#20
	A = 16'h30fa;
	B = 16'hac50;
	ans = 16'ha15e;
	#20
	A = 16'hbaf5;
	B = 16'hb5b6;
	ans = 16'h34f7;
	#20
	A = 16'h3744;
	B = 16'hbb97;
	ans = 16'hb6e5;
	#20
	A = 16'h3bce;
	B = 16'hb13f;
	ans = 16'hb11e;
	#20
	A = 16'h3023;
	B = 16'hb81c;
	ans = 16'hac40;
	#20
	A = 16'h2c25;
	B = 16'hb80c;
	ans = 16'ha831;
	#20
	A = 16'h2d5d;
	B = 16'hba5f;
	ans = 16'hac45;
	#20
	A = 16'h3ac3;
	B = 16'h38c4;
	ans = 16'h3807;
	#20
	A = 16'hba34;
	B = 16'h3b8b;
	ans = 16'hb9d9;
	#20
	A = 16'h3ad9;
	B = 16'h3be2;
	ans = 16'h3abf;
	#20
	A = 16'hba09;
	B = 16'hb60f;
	ans = 16'h3492;
	#20
	A = 16'hbbee;
	B = 16'h3aec;
	ans = 16'hbadc;
	#20
	A = 16'h33c8;
	B = 16'h3808;
	ans = 16'h2fd8;
	#20
	A = 16'hb519;
	B = 16'h366f;
	ans = 16'hb019;
	#20
	A = 16'h29d1;
	B = 16'h387a;
	ans = 16'h2682;
	#20
	A = 16'h3abe;
	B = 16'hbb7c;
	ans = 16'hba4f;
	#20
	A = 16'h369a;
	B = 16'h3a72;
	ans = 16'h3552;
	#20
	A = 16'h30be;
	B = 16'hb2b7;
	ans = 16'ha7f6;
	#20
	A = 16'h3766;
	B = 16'hb964;
	ans = 16'hb4fc;
	#20
	A = 16'h37dc;
	B = 16'hba16;
	ans = 16'hb5fb;
	#20
	A = 16'h2a7c;
	B = 16'h353a;
	ans = 16'h243d;
	#20
	A = 16'h394c;
	B = 16'hb903;
	ans = 16'hb6a3;
	#20
	A = 16'h2cac;
	B = 16'h2f05;
	ans = 16'h2019;
	#20
	A = 16'haf76;
	B = 16'hb877;
	ans = 16'h2c2a;
	#20
	A = 16'h38b7;
	B = 16'hbb84;
	ans = 16'hb86e;
	#20
	A = 16'h39a1;
	B = 16'h392a;
	ans = 16'h3744;
	#20
	A = 16'h3bec;
	B = 16'hb865;
	ans = 16'hb85a;
	#20
	A = 16'h3600;
	B = 16'hbae6;
	ans = 16'hb52c;
	#20
	A = 16'h3778;
	B = 16'h22e9;
	ans = 16'h1e74;
	#20
	A = 16'h34c8;
	B = 16'h3a93;
	ans = 16'h33dc;
	#20
	A = 16'h2945;
	B = 16'h2e40;
	ans = 16'h1c1e;
	#20
	A = 16'h32dc;
	B = 16'hb3db;
	ans = 16'haabc;
	#20
	A = 16'hb8d5;
	B = 16'h3bda;
	ans = 16'hb8be;
	#20
	A = 16'hbb31;
	B = 16'h376b;
	ans = 16'hb6ab;
	#20
	A = 16'hb4e2;
	B = 16'h3a1c;
	ans = 16'hb375;
	#20
	A = 16'hba49;
	B = 16'hb6a2;
	ans = 16'h3536;
	#20
	A = 16'h282d;
	B = 16'hb928;
	ans = 16'ha562;
	#20
	A = 16'hb9e0;
	B = 16'hb981;
	ans = 16'h380b;
	#20
	A = 16'h38fd;
	B = 16'hb40e;
	ans = 16'hb10e;
	#20
	A = 16'h3a4e;
	B = 16'hae22;
	ans = 16'hacd5;
	#20
	A = 16'h381e;
	B = 16'h3968;
	ans = 16'h3591;
	#20
	A = 16'h3b75;
	B = 16'h2654;
	ans = 16'h25e6;
	#20
	A = 16'h3991;
	B = 16'h3bc5;
	ans = 16'h3968;
	#20
	A = 16'h2f59;
	B = 16'h3352;
	ans = 16'h26b9;
	#20
	A = 16'hb5c4;
	B = 16'h364f;
	ans = 16'hb08c;
	#20
	A = 16'hba1f;
	B = 16'h3b02;
	ans = 16'hb95d;
	#20
	A = 16'h3387;
	B = 16'h388a;
	ans = 16'h3045;
	#20
	A = 16'h39fe;
	B = 16'h3547;
	ans = 16'h33e8;
	#20
	A = 16'h3929;
	B = 16'hba04;
	ans = 16'hb7c3;
	#20
	A = 16'h35ff;
	B = 16'h30f3;
	ans = 16'h2b6b;
	#20
	A = 16'hb0c1;
	B = 16'h340d;
	ans = 16'ha8d0;
	#20
	A = 16'hb8ea;
	B = 16'h3834;
	ans = 16'hb52a;
	#20
	A = 16'hb8cc;
	B = 16'had9b;
	ans = 16'h2ab9;
	#20
	A = 16'h39ff;
	B = 16'hbae0;
	ans = 16'hb927;
	#20
	A = 16'hb061;
	B = 16'h3bce;
	ans = 16'hb046;
	#20
	A = 16'h3a28;
	B = 16'had2b;
	ans = 16'habf4;
	#20
	A = 16'hba10;
	B = 16'h3a15;
	ans = 16'hb89c;
	#20
	A = 16'hbb8d;
	B = 16'h3a56;
	ans = 16'hb9fb;
	#20
	A = 16'hbb06;
	B = 16'h363e;
	ans = 16'hb57b;
	#20
	A = 16'h3819;
	B = 16'ha10f;
	ans = 16'h9d2f;
	#20
	A = 16'h3b47;
	B = 16'hb588;
	ans = 16'hb508;
	#20
	A = 16'h3981;
	B = 16'h2fee;
	ans = 16'h2d75;
	#20
	A = 16'h3b94;
	B = 16'h399a;
	ans = 16'h394e;
	#20
	A = 16'hba6d;
	B = 16'hb786;
	ans = 16'h360b;
	#20
	A = 16'hb500;
	B = 16'hac99;
	ans = 16'h25bf;
	#20
	A = 16'hb5b4;
	B = 16'hba4e;
	ans = 16'h347f;
	#20
	A = 16'h394a;
	B = 16'h314c;
	ans = 16'h2f01;
	#20
	A = 16'h35a1;
	B = 16'h3610;
	ans = 16'h3044;
	#20
	A = 16'h2821;
	B = 16'hb9f9;
	ans = 16'ha62a;
	#20
	A = 16'h3699;
	B = 16'h350c;
	ans = 16'h302a;
	#20
	A = 16'h39aa;
	B = 16'h3ac8;
	ans = 16'h38cd;
	#20
	A = 16'hb569;
	B = 16'hb201;
	ans = 16'h2c0f;
	#20
	A = 16'h3ad8;
	B = 16'hb9b8;
	ans = 16'hb8e4;
	#20
	A = 16'h34d4;
	B = 16'hb9f5;
	ans = 16'hb331;
	#20
	A = 16'hba28;
	B = 16'h349e;
	ans = 16'hb31b;
	#20
	A = 16'h3afa;
	B = 16'hb47e;
	ans = 16'hb3d6;
	#20
	A = 16'h39d0;
	B = 16'h3608;
	ans = 16'h3462;
	#20
	A = 16'h3688;
	B = 16'h3948;
	ans = 16'h3450;
	#20
	A = 16'hba0f;
	B = 16'haf72;
	ans = 16'h2da3;
	#20
	A = 16'hb845;
	B = 16'hbbec;
	ans = 16'h383a;
	#20
	A = 16'hb22e;
	B = 16'h3984;
	ans = 16'hb043;
	#20
	A = 16'hbb68;
	B = 16'hbbe2;
	ans = 16'h3b4c;
	#20
	A = 16'hb668;
	B = 16'hbb34;
	ans = 16'h35c5;
	#20
	A = 16'hb79c;
	B = 16'h3101;
	ans = 16'hacc2;
	#20
	A = 16'hbbd1;
	B = 16'haeff;
	ans = 16'h2ed6;
	#20
	A = 16'hb46b;
	B = 16'hb8b1;
	ans = 16'h312e;
	#20
	A = 16'hbb1d;
	B = 16'hba1c;
	ans = 16'h396f;
	#20
	A = 16'hb656;
	B = 16'h357e;
	ans = 16'hb05a;
	#20
	A = 16'h2d2b;
	B = 16'h2927;
	ans = 16'h1aa8;
	#20
	A = 16'hbb33;
	B = 16'h3890;
	ans = 16'hb81b;
	#20
	A = 16'hb9d6;
	B = 16'h3b07;
	ans = 16'hb920;
	#20
	A = 16'hb632;
	B = 16'hb9df;
	ans = 16'h348c;
	#20
	A = 16'h350e;
	B = 16'h3902;
	ans = 16'h3254;
	#20
	A = 16'hb39e;
	B = 16'h3b19;
	ans = 16'hb2c2;
	#20
	A = 16'haec8;
	B = 16'h3b03;
	ans = 16'hadf2;
	#20
	A = 16'hb4df;
	B = 16'hb753;
	ans = 16'h3076;
	#20
	A = 16'h3b62;
	B = 16'hbb0d;
	ans = 16'hba82;
	#20
	A = 16'hb2dd;
	B = 16'h3b39;
	ans = 16'hb232;
	#20
	A = 16'hb7a1;
	B = 16'hba6d;
	ans = 16'h3621;
	#20
	A = 16'hb36e;
	B = 16'ha987;
	ans = 16'h2122;
	#20
	A = 16'h397f;
	B = 16'h32cc;
	ans = 16'h30ab;
	#20
	A = 16'h3100;
	B = 16'h2fca;
	ans = 16'h24de;
	#20
	A = 16'h3411;
	B = 16'hbb31;
	ans = 16'hb350;
	#20
	A = 16'haeb6;
	B = 16'h36a2;
	ans = 16'ha990;
	#20
	A = 16'h363d;
	B = 16'h38b2;
	ans = 16'h3353;
	#20
	A = 16'hb984;
	B = 16'h3b86;
	ans = 16'hb930;
	#20
	A = 16'had55;
	B = 16'h31e4;
	ans = 16'ha3da;
	#20
	A = 16'hb967;
	B = 16'h3bdb;
	ans = 16'hb94e;
	#20
	A = 16'h2fe3;
	B = 16'hbb99;
	ans = 16'haf7d;
	#20
	A = 16'haaf3;
	B = 16'h3bae;
	ans = 16'haaac;
	#20
	A = 16'h39be;
	B = 16'h393f;
	ans = 16'h3788;
	#20
	A = 16'hb2cd;
	B = 16'hbb28;
	ans = 16'h3215;
	#20
	A = 16'h386e;
	B = 16'hb66d;
	ans = 16'hb31e;
	#20
	A = 16'h3bee;
	B = 16'hb580;
	ans = 16'hb574;
	#20
	A = 16'h370e;
	B = 16'h339d;
	ans = 16'h2eb7;
	#20
	A = 16'hb0c9;
	B = 16'hb3ca;
	ans = 16'h28a9;
	#20
	A = 16'h23ec;
	B = 16'h368f;
	ans = 16'h1e7f;
	#20
	A = 16'hb9e3;
	B = 16'hb39a;
	ans = 16'h3198;
	#20
	A = 16'h3a52;
	B = 16'ha77a;
	ans = 16'ha5e8;
	#20
	A = 16'hb14e;
	B = 16'h3b9f;
	ans = 16'hb10e;
	#20
	A = 16'hb207;
	B = 16'h3597;
	ans = 16'hac36;
	#20
	A = 16'h39cf;
	B = 16'h1cf8;
	ans = 16'h1b37;
	#20
	A = 16'h37da;
	B = 16'h2b03;
	ans = 16'h26e2;
	#20
	A = 16'hadc3;
	B = 16'h34e8;
	ans = 16'ha711;
	#20
	A = 16'h3a44;
	B = 16'hb856;
	ans = 16'hb6cb;
	#20
	A = 16'h28c3;
	B = 16'h39ea;
	ans = 16'h270a;
	#20
	A = 16'h3911;
	B = 16'h3b52;
	ans = 16'h38a3;
	#20
	A = 16'h2deb;
	B = 16'h31bf;
	ans = 16'h2440;
	#20
	A = 16'hb7c9;
	B = 16'hb795;
	ans = 16'h3361;
	#20
	A = 16'h3a94;
	B = 16'h31dc;
	ans = 16'h30d1;
	#20
	A = 16'h347c;
	B = 16'hb939;
	ans = 16'hb1db;
	#20
	A = 16'h3a89;
	B = 16'h3886;
	ans = 16'h3764;
	#20
	A = 16'hacae;
	B = 16'hb00e;
	ans = 16'h20be;
	#20
	A = 16'haf14;
	B = 16'h3bbc;
	ans = 16'haed8;
	#20
	A = 16'haec8;
	B = 16'h39f7;
	ans = 16'had0e;
	#20
	A = 16'hb902;
	B = 16'hb6d6;
	ans = 16'h3447;
	#20
	A = 16'hb4a0;
	B = 16'hb993;
	ans = 16'h3272;
	#20
	A = 16'hb91d;
	B = 16'h3a8e;
	ans = 16'hb831;
	#20
	A = 16'hb7ad;
	B = 16'h38ce;
	ans = 16'hb49c;
	#20
	A = 16'hbb84;
	B = 16'hb742;
	ans = 16'h36d2;
	#20
	A = 16'hbac8;
	B = 16'hb20a;
	ans = 16'h311e;
	#20
	A = 16'hb11d;
	B = 16'h3346;
	ans = 16'ha8a6;
	#20
	A = 16'hbb97;
	B = 16'h3b74;
	ans = 16'hbb12;
	#20
	A = 16'hbb91;
	B = 16'hb438;
	ans = 16'h33fb;
	#20
	A = 16'hae08;
	B = 16'hb901;
	ans = 16'h2b8c;
	#20
	A = 16'hb8ca;
	B = 16'h3a1c;
	ans = 16'hb751;
	#20
	A = 16'hb194;
	B = 16'hb3dd;
	ans = 16'h297c;
	#20
	A = 16'hb288;
	B = 16'h394b;
	ans = 16'hb052;
	#20
	A = 16'h3ae2;
	B = 16'ha0cb;
	ans = 16'ha020;
	#20
	A = 16'h3a2f;
	B = 16'h3823;
	ans = 16'h3665;
	#20
	A = 16'hb4eb;
	B = 16'h301b;
	ans = 16'ha90c;
	#20
	A = 16'h3b57;
	B = 16'h3601;
	ans = 16'h3582;
	#20
	A = 16'hb488;
	B = 16'hab4c;
	ans = 16'h2422;
	#20
	A = 16'h34c4;
	B = 16'hb7ca;
	ans = 16'hb0a4;
	#20
	A = 16'h3b8f;
	B = 16'h3979;
	ans = 16'h392c;
	#20
	A = 16'hb796;
	B = 16'h3b79;
	ans = 16'hb716;
	#20
	A = 16'had5d;
	B = 16'hb01c;
	ans = 16'h2183;
	#20
	A = 16'hba92;
	B = 16'h342d;
	ans = 16'hb2dc;
	#20
	A = 16'hb869;
	B = 16'hac1d;
	ans = 16'h2889;
	#20
	A = 16'hb0a5;
	B = 16'h354c;
	ans = 16'haa26;
	#20
	A = 16'hb301;
	B = 16'hb996;
	ans = 16'h30e4;
	#20
	A = 16'h3969;
	B = 16'h3a8b;
	ans = 16'h386d;
	#20
	A = 16'hb4c9;
	B = 16'hb868;
	ans = 16'h3145;
	#20
	A = 16'hb32c;
	B = 16'hb6b9;
	ans = 16'h2e07;
	#20
	A = 16'hb6ef;
	B = 16'h3455;
	ans = 16'haf82;
	#20
	A = 16'h3b59;
	B = 16'h3a9e;
	ans = 16'h3a14;
	#20
	A = 16'h350b;
	B = 16'h3b1e;
	ans = 16'h347d;
	#20
	A = 16'h372e;
	B = 16'h396e;
	ans = 16'h34df;
	#20
	A = 16'h2a41;
	B = 16'hb899;
	ans = 16'ha730;
	#20
	A = 16'h3ad5;
	B = 16'h39e9;
	ans = 16'h390c;
	#20
	A = 16'hbb8f;
	B = 16'h3a3f;
	ans = 16'hb9e7;
	#20
	A = 16'h2fd9;
	B = 16'hb7d0;
	ans = 16'habaa;
	#20
	A = 16'h3880;
	B = 16'hb844;
	ans = 16'hb4cc;
	#20
	A = 16'h34b5;
	B = 16'h306a;
	ans = 16'h2932;
	#20
	A = 16'h3767;
	B = 16'hb494;
	ans = 16'hb03c;
	#20
	A = 16'h341c;
	B = 16'h39c1;
	ans = 16'h31e9;
	#20
	A = 16'haea1;
	B = 16'ha895;
	ans = 16'h1b98;
	#20
	A = 16'h3a3a;
	B = 16'hb1bb;
	ans = 16'hb076;
	#20
	A = 16'h381b;
	B = 16'hb990;
	ans = 16'hb5b6;
	#20
	A = 16'h38ef;
	B = 16'hba92;
	ans = 16'hb80d;
	#20
	A = 16'h3baa;
	B = 16'hb2bc;
	ans = 16'hb274;
	#20
	A = 16'hb976;
	B = 16'h2ace;
	ans = 16'ha8a5;
	#20
	A = 16'hbaf5;
	B = 16'hb94f;
	ans = 16'h389e;
	#20
	A = 16'h3b8b;
	B = 16'haeed;
	ans = 16'hae88;
	#20
	A = 16'h3a1c;
	B = 16'h320b;
	ans = 16'h309d;
	#20
	A = 16'h37de;
	B = 16'hbaf6;
	ans = 16'hb6d8;
	#20
	A = 16'h3b5e;
	B = 16'hb43e;
	ans = 16'hb3d0;
	#20
	A = 16'h39f7;
	B = 16'hb881;
	ans = 16'hb6b7;
	#20
	A = 16'h3a6b;
	B = 16'hb20c;
	ans = 16'hb0da;
	#20
	A = 16'hb966;
	B = 16'hb9c4;
	ans = 16'h37c8;
	#20
	A = 16'hac0d;
	B = 16'h37f6;
	ans = 16'ha808;
	#20
	A = 16'hb5dd;
	B = 16'h2d87;
	ans = 16'ha80d;
	#20
	A = 16'h35f2;
	B = 16'hbb71;
	ans = 16'hb588;
	#20
	A = 16'hba97;
	B = 16'h38b1;
	ans = 16'hb7bb;
	#20
	A = 16'hbb63;
	B = 16'h34af;
	ans = 16'hb453;
	#20
	A = 16'h1c60;
	B = 16'h3a2c;
	ans = 16'h1ac0;
	#20
	A = 16'hba71;
	B = 16'hbb29;
	ans = 16'h39c4;
	#20
	A = 16'haff6;
	B = 16'h3a06;
	ans = 16'hadfe;
	#20
	A = 16'hb656;
	B = 16'h381b;
	ans = 16'hb281;
	#20
	A = 16'h37ab;
	B = 16'ha993;
	ans = 16'ha558;
	#20
	A = 16'h3950;
	B = 16'h30f6;
	ans = 16'h2e97;
	#20
	A = 16'h33e9;
	B = 16'hbb69;
	ans = 16'hb354;
	#20
	A = 16'hba4e;
	B = 16'hb937;
	ans = 16'h381c;
	#20
	A = 16'hb7ee;
	B = 16'hb77a;
	ans = 16'h3369;
	#20
	A = 16'h3b4f;
	B = 16'h37e3;
	ans = 16'h3735;
	#20
	A = 16'hbbd4;
	B = 16'h3aae;
	ans = 16'hba89;
	#20
	A = 16'h38dc;
	B = 16'hb2f9;
	ans = 16'hb03c;
	#20
	A = 16'h38d2;
	B = 16'h3a2c;
	ans = 16'h3770;
	#20
	A = 16'h321a;
	B = 16'h34fa;
	ans = 16'h2b97;
	#20
	A = 16'h37a1;
	B = 16'h3753;
	ans = 16'h32fc;
	#20
	A = 16'hb9a9;
	B = 16'h3866;
	ans = 16'hb639;
	#20
	A = 16'ha8ec;
	B = 16'hb51d;
	ans = 16'h224b;
	#20
	A = 16'ha49d;
	B = 16'h3625;
	ans = 16'h9f16;
	#20
	A = 16'h31f4;
	B = 16'h3bec;
	ans = 16'h31e5;
	#20
	A = 16'h3919;
	B = 16'h387e;
	ans = 16'h35ba;
	#20
	A = 16'hb455;
	B = 16'h348f;
	ans = 16'hacf0;
	#20
	A = 16'hb730;
	B = 16'hbae6;
	ans = 16'h3633;
	#20
	A = 16'h3247;
	B = 16'hbb67;
	ans = 16'hb1cf;
	#20
	A = 16'hb4e8;
	B = 16'h341c;
	ans = 16'had0a;
	#20
	A = 16'hb82c;
	B = 16'hbbeb;
	ans = 16'h3821;
	#20
	A = 16'h3b9c;
	B = 16'h2aff;
	ans = 16'h2aa8;
	#20
	A = 16'hb6ce;
	B = 16'hb377;
	ans = 16'h2e59;
	#20
	A = 16'h386f;
	B = 16'hb841;
	ans = 16'hb4b7;
	#20
	A = 16'hb987;
	B = 16'h39d3;
	ans = 16'hb806;
	#20
	A = 16'h3bdc;
	B = 16'h39e7;
	ans = 16'h39cc;
	#20
	A = 16'hbbb4;
	B = 16'h361c;
	ans = 16'hb5e2;
	#20
	A = 16'hb803;
	B = 16'h2ef7;
	ans = 16'haafc;
	#20
	A = 16'hac66;
	B = 16'hb618;
	ans = 16'h26b3;
	#20
	A = 16'hb984;
	B = 16'h2f23;
	ans = 16'hacec;
	#20
	A = 16'hb964;
	B = 16'hb844;
	ans = 16'h35c0;
	#20
	A = 16'h38de;
	B = 16'hb328;
	ans = 16'hb05b;
	#20
	A = 16'h38d6;
	B = 16'hb59d;
	ans = 16'hb2c9;
	#20
	A = 16'hb61f;
	B = 16'hae6b;
	ans = 16'h28e9;
	#20
	A = 16'hb934;
	B = 16'hb82e;
	ans = 16'h3570;
	#20
	A = 16'h3498;
	B = 16'h377d;
	ans = 16'h304d;
	#20
	A = 16'h3b87;
	B = 16'h3933;
	ans = 16'h38e4;
	#20
	A = 16'hb887;
	B = 16'hb88d;
	ans = 16'h3527;
	#20
	A = 16'hb892;
	B = 16'h3a07;
	ans = 16'hb6e3;
	#20
	A = 16'h2c6a;
	B = 16'h3b77;
	ans = 16'h2c1e;
	#20
	A = 16'h38da;
	B = 16'hb4cb;
	ans = 16'hb1d0;
	#20
	A = 16'hb850;
	B = 16'h3174;
	ans = 16'hade1;
	#20
	A = 16'h365f;
	B = 16'hbb99;
	ans = 16'hb60d;
	#20
	A = 16'h2d4c;
	B = 16'hb819;
	ans = 16'ha96d;
	#20
	A = 16'h354c;
	B = 16'h39aa;
	ans = 16'h3380;
	#20
	A = 16'h37f0;
	B = 16'h3973;
	ans = 16'h3568;
	#20
	A = 16'h37fe;
	B = 16'h395e;
	ans = 16'h355d;
	#20
	A = 16'ha8b6;
	B = 16'hace4;
	ans = 16'h19c3;
	#20
	A = 16'hb42c;
	B = 16'hb9b2;
	ans = 16'h31f1;
	#20
	A = 16'hb94a;
	B = 16'hb8dc;
	ans = 16'h366d;
	#20
	A = 16'hb5d8;
	B = 16'hb0db;
	ans = 16'h2b18;
	#20
	A = 16'h3a4d;
	B = 16'hb94d;
	ans = 16'hb82d;
	#20
	A = 16'hae90;
	B = 16'h2db2;
	ans = 16'ha0ac;
	#20
	A = 16'hb433;
	B = 16'hba61;
	ans = 16'h32b2;
	#20
	A = 16'hbae9;
	B = 16'h388d;
	ans = 16'hb7dd;
	#20
	A = 16'hbb27;
	B = 16'hba6f;
	ans = 16'h39c0;
	#20
	A = 16'h342f;
	B = 16'h3a98;
	ans = 16'h32e5;
	#20
	A = 16'h30a9;
	B = 16'hba01;
	ans = 16'haeff;
	#20
	A = 16'h3413;
	B = 16'hb624;
	ans = 16'hae41;
	#20
	A = 16'hbb1a;
	B = 16'h3900;
	ans = 16'hb870;
	#20
	A = 16'ha888;
	B = 16'h3847;
	ans = 16'ha4d8;
	#20
	A = 16'h3782;
	B = 16'h365a;
	ans = 16'h31f6;
	#20
	A = 16'hb939;
	B = 16'hb12e;
	ans = 16'h2ec3;
	#20
	A = 16'h3730;
	B = 16'hbb48;
	ans = 16'hb68b;
	#20
	A = 16'hbbf3;
	B = 16'h38e7;
	ans = 16'hb8df;
	#20
	A = 16'hb040;
	B = 16'hb1df;
	ans = 16'h263d;
	#20
	A = 16'h2b55;
	B = 16'hbb4a;
	ans = 16'haaae;
	#20
	A = 16'h385b;
	B = 16'h3b6c;
	ans = 16'h380a;
	#20
	A = 16'h2bc2;
	B = 16'hb7c6;
	ans = 16'ha78a;
	#20
	A = 16'h3a79;
	B = 16'h34fb;
	ans = 16'h3408;
	#20
	A = 16'hb7d6;
	B = 16'h34c3;
	ans = 16'hb0aa;
	#20
	A = 16'h37e6;
	B = 16'h2c67;
	ans = 16'h2859;
	#20
	A = 16'hbbf4;
	B = 16'h3be0;
	ans = 16'hbbd4;
	#20
	A = 16'h356f;
	B = 16'hb923;
	ans = 16'hb2fa;
	#20
	A = 16'h3ae4;
	B = 16'hb90f;
	ans = 16'hb85b;
	#20
	A = 16'hbba7;
	B = 16'hb956;
	ans = 16'h391b;
	#20
	A = 16'hb811;
	B = 16'hb958;
	ans = 16'h356f;
	#20
	A = 16'h3a97;
	B = 16'h35bb;
	ans = 16'h34b8;
	#20
	A = 16'h34d7;
	B = 16'h352d;
	ans = 16'h2e43;
	#20
	A = 16'h3428;
	B = 16'hb4fa;
	ans = 16'had2c;
	#20
	A = 16'hb97f;
	B = 16'ha163;
	ans = 16'h1f67;
	#20
	A = 16'h37b1;
	B = 16'h372d;
	ans = 16'h32e6;
	#20
	A = 16'h3554;
	B = 16'h255f;
	ans = 16'h1f28;
	#20
	A = 16'hbb77;
	B = 16'hb95b;
	ans = 16'h38ff;
	#20
	A = 16'hb421;
	B = 16'h3566;
	ans = 16'had93;
	#20
	A = 16'h3945;
	B = 16'hb9ea;
	ans = 16'hb7cb;
	#20
	A = 16'hb844;
	B = 16'h33fe;
	ans = 16'hb043;
	#20
	A = 16'h3b9d;
	B = 16'hbb69;
	ans = 16'hbb0d;
	#20
	A = 16'hb760;
	B = 16'h39b8;
	ans = 16'hb546;
	#20
	A = 16'h29ec;
	B = 16'ha8b5;
	ans = 16'h96f8;
	#20
	A = 16'hb8cb;
	B = 16'ha7c3;
	ans = 16'h24a6;
	#20
	A = 16'ha47b;
	B = 16'hb87f;
	ans = 16'h2109;
	#20
	A = 16'h3b50;
	B = 16'hb915;
	ans = 16'hb8a5;
	#20
	A = 16'hb565;
	B = 16'h32fb;
	ans = 16'hacb5;
	#20
	A = 16'h300d;
	B = 16'hbabb;
	ans = 16'haed1;
	#20
	A = 16'h3aff;
	B = 16'h2def;
	ans = 16'h2d30;
	#20
	A = 16'hb9ec;
	B = 16'hb9b5;
	ans = 16'h3839;
	#20
	A = 16'hbad0;
	B = 16'h3176;
	ans = 16'hb0a6;
	#20
	A = 16'h388d;
	B = 16'hb031;
	ans = 16'hacc5;
	#20
	A = 16'hba0f;
	B = 16'haead;
	ans = 16'h2d0e;
	#20
	A = 16'h3bc6;
	B = 16'h2c69;
	ans = 16'h2c49;
	#20
	A = 16'hb0e2;
	B = 16'h3a88;
	ans = 16'haff9;
	#20
	A = 16'hb130;
	B = 16'hb5bb;
	ans = 16'h2b6f;
	#20
	A = 16'h3392;
	B = 16'h37b4;
	ans = 16'h2f4a;
	#20
	A = 16'hba72;
	B = 16'hb85a;
	ans = 16'h3703;
	#20
	A = 16'h3525;
	B = 16'hb48c;
	ans = 16'hadd9;
	#20
	A = 16'hbada;
	B = 16'hb816;
	ans = 16'h3700;
	#20
	A = 16'hb527;
	B = 16'h2af3;
	ans = 16'ha47a;
	#20
	A = 16'hb4e7;
	B = 16'hb6eb;
	ans = 16'h303d;
	#20
	A = 16'hb9df;
	B = 16'h3662;
	ans = 16'hb4af;
	#20
	A = 16'h3251;
	B = 16'hb969;
	ans = 16'hb046;
	#20
	A = 16'h3aee;
	B = 16'h3875;
	ans = 16'h37b9;
	#20
	A = 16'h2f0e;
	B = 16'hba38;
	ans = 16'had7c;
	#20
	A = 16'h3978;
	B = 16'h3b41;
	ans = 16'h38f5;
	#20
	A = 16'h3abc;
	B = 16'h34e4;
	ans = 16'h341e;
	#20
	A = 16'hb437;
	B = 16'hba48;
	ans = 16'h329e;
	#20
	A = 16'hb72c;
	B = 16'h385e;
	ans = 16'hb3d5;
	#20
	A = 16'h33d5;
	B = 16'h34f4;
	ans = 16'h2cd9;
	#20
	A = 16'hb25c;
	B = 16'hb928;
	ans = 16'h3019;
	#20
	A = 16'h324e;
	B = 16'hb976;
	ans = 16'hb04e;
	#20
	A = 16'hb863;
	B = 16'hb328;
	ans = 16'h2fd9;
	#20
	A = 16'h31da;
	B = 16'h3b17;
	ans = 16'h3130;
	#20
	A = 16'hb7d5;
	B = 16'hb83d;
	ans = 16'h3426;
	#20
	A = 16'h3019;
	B = 16'h2dc2;
	ans = 16'h21e6;
	#20
	A = 16'hb4c6;
	B = 16'hba28;
	ans = 16'h3359;
	#20
	A = 16'h3374;
	B = 16'h3421;
	ans = 16'h2bb1;
	#20
	A = 16'h37bf;
	B = 16'h3aaa;
	ans = 16'h3674;
	#20
	A = 16'h3a94;
	B = 16'h36a2;
	ans = 16'h3574;
	#20
	A = 16'h3881;
	B = 16'habea;
	ans = 16'ha875;
	#20
	A = 16'h3ad0;
	B = 16'h15bb;
	ans = 16'h14e1;
	#20
	A = 16'h39db;
	B = 16'h3a36;
	ans = 16'h388c;
	#20
	A = 16'h3758;
	B = 16'hb42a;
	ans = 16'hafa5;
	#20
	A = 16'haf02;
	B = 16'hba09;
	ans = 16'h2d49;
	#20
	A = 16'h2c9f;
	B = 16'h344c;
	ans = 16'h24f7;
	#20
	A = 16'h2df0;
	B = 16'hac22;
	ans = 16'h9e22;
	#20
	A = 16'h36a3;
	B = 16'hba16;
	ans = 16'hb50d;
	#20
	A = 16'h3abe;
	B = 16'hbb28;
	ans = 16'hba08;
	#20
	A = 16'h3bf5;
	B = 16'h2c32;
	ans = 16'h2c2c;
	#20
	A = 16'hb3b5;
	B = 16'hbb48;
	ans = 16'h3304;
	#20
	A = 16'h3462;
	B = 16'h2f30;
	ans = 16'h27e0;
	#20
	A = 16'hb4fb;
	B = 16'h3233;
	ans = 16'habb8;
	#20
	A = 16'hb6c6;
	B = 16'hbbab;
	ans = 16'h367e;
	#20
	A = 16'h3894;
	B = 16'h34dc;
	ans = 16'h3190;
	#20
	A = 16'h322b;
	B = 16'h3ab8;
	ans = 16'h312e;
	#20
	A = 16'h3b8e;
	B = 16'hbac8;
	ans = 16'hba67;
	#20
	A = 16'h37f6;
	B = 16'h3373;
	ans = 16'h2f6a;
	#20
	A = 16'h24c2;
	B = 16'hb7f5;
	ans = 16'ha0bb;
	#20
	A = 16'hba8e;
	B = 16'hb94b;
	ans = 16'h3856;
	#20
	A = 16'h2fbe;
	B = 16'h2209;
	ans = 16'h15d7;
	#20
	A = 16'hbbfb;
	B = 16'hb7c6;
	ans = 16'h37c1;
	#20
	A = 16'hbbe7;
	B = 16'hb97c;
	ans = 16'h396b;
	#20
	A = 16'h35ac;
	B = 16'hb459;
	ans = 16'hae2a;
	#20
	A = 16'hba44;
	B = 16'h37b4;
	ans = 16'hb608;
	#20
	A = 16'h3b9a;
	B = 16'hba4d;
	ans = 16'hb9fd;
	#20
	A = 16'h34db;
	B = 16'h3bfc;
	ans = 16'h34d9;
	#20
	A = 16'hb890;
	B = 16'h3b44;
	ans = 16'hb825;
	#20
	A = 16'h39d6;
	B = 16'ha301;
	ans = 16'ha11c;
	#20
	A = 16'hac24;
	B = 16'h3ab9;
	ans = 16'haaf6;
	#20
	A = 16'hbb81;
	B = 16'hba6b;
	ans = 16'h3a05;
	#20
	A = 16'h3829;
	B = 16'hbbdb;
	ans = 16'hb816;
	#20
	A = 16'h37d4;
	B = 16'h37d8;
	ans = 16'h33ad;
	#20
	A = 16'h2b5c;
	B = 16'hb28a;
	ans = 16'ha204;
	#20
	A = 16'h38b3;
	B = 16'hb561;
	ans = 16'hb252;
	#20
	A = 16'h3671;
	B = 16'hb157;
	ans = 16'hac4d;
	#20
	A = 16'h3b54;
	B = 16'hbace;
	ans = 16'hba3c;
	#20
	A = 16'h344b;
	B = 16'h380e;
	ans = 16'h305a;
	#20
	A = 16'hb61b;
	B = 16'hb2ae;
	ans = 16'h2d19;
	#20
	A = 16'h3b03;
	B = 16'h3b55;
	ans = 16'h3a6d;
	#20
	A = 16'hb8a7;
	B = 16'hb9fa;
	ans = 16'h36f4;
	#20
	A = 16'hbbd6;
	B = 16'h334b;
	ans = 16'hb325;
	#20
	A = 16'hb476;
	B = 16'h2cca;
	ans = 16'ha557;
	#20
	A = 16'hb6fe;
	B = 16'hb7ad;
	ans = 16'h32b5;
	#20
	A = 16'hb8b6;
	B = 16'hb690;
	ans = 16'h33bb;
	#20
	A = 16'h38b9;
	B = 16'h34aa;
	ans = 16'h3182;
	#20
	A = 16'h3722;
	B = 16'hb6d4;
	ans = 16'hb217;
	#20
	A = 16'h3992;
	B = 16'h2e4c;
	ans = 16'h2c62;
	#20
	A = 16'h3251;
	B = 16'hb05d;
	ans = 16'ha6e4;
	#20
	A = 16'hb682;
	B = 16'h3a1a;
	ans = 16'hb4f7;
	#20
	A = 16'h37b2;
	B = 16'h3615;
	ans = 16'h31da;
	#20
	A = 16'hb8e1;
	B = 16'h3b27;
	ans = 16'hb85d;
	#20
	A = 16'hb6f0;
	B = 16'h3b63;
	ans = 16'hb668;
	#20
	A = 16'hb70e;
	B = 16'h3768;
	ans = 16'hb288;
	#20
	A = 16'haec7;
	B = 16'h3a34;
	ans = 16'had41;
	#20
	A = 16'hbb5e;
	B = 16'h1c45;
	ans = 16'h9bdd;
	#20
	A = 16'hb6c8;
	B = 16'h2b95;
	ans = 16'ha66d;
	#20
	A = 16'hb03c;
	B = 16'hb7aa;
	ans = 16'h2c0e;
	#20
	A = 16'hb13b;
	B = 16'h349a;
	ans = 16'haa04;
	#20
	A = 16'h3a78;
	B = 16'h2f3a;
	ans = 16'h2dd8;
	#20
	A = 16'h393a;
	B = 16'hb4b3;
	ans = 16'hb224;
	#20
	A = 16'h3432;
	B = 16'hb390;
	ans = 16'habef;
	#20
	A = 16'h28c1;
	B = 16'h39aa;
	ans = 16'h26bb;
	#20
	A = 16'h38e1;
	B = 16'hb8f1;
	ans = 16'hb607;
	#20
	A = 16'h3840;
	B = 16'hb530;
	ans = 16'hb183;
	#20
	A = 16'hb864;
	B = 16'hb908;
	ans = 16'h3586;
	#20
	A = 16'h2cb7;
	B = 16'hb321;
	ans = 16'ha434;
	#20
	A = 16'hb848;
	B = 16'h38e8;
	ans = 16'hb540;
	#20
	A = 16'hba16;
	B = 16'h2877;
	ans = 16'ha6cb;
	#20
	A = 16'hb4a8;
	B = 16'h2963;
	ans = 16'ha245;
	#20
	A = 16'h30a2;
	B = 16'h2fda;
	ans = 16'h248c;
	#20
	A = 16'h9e5c;
	B = 16'hba9a;
	ans = 16'h1d3f;
	#20
	A = 16'hbbd7;
	B = 16'h39e8;
	ans = 16'hb9ca;
	#20
	A = 16'hb971;
	B = 16'hba92;
	ans = 16'h3878;
	#20
	A = 16'h342c;
	B = 16'hbbae;
	ans = 16'hb401;
	#20
	A = 16'hb90f;
	B = 16'hb0db;
	ans = 16'h2e24;
	#20
	A = 16'hb887;
	B = 16'hb601;
	ans = 16'h32cc;
	#20
	A = 16'hb978;
	B = 16'h35ca;
	ans = 16'hb3ea;
	#20
	A = 16'h39ba;
	B = 16'hb43c;
	ans = 16'hb210;
	#20
	A = 16'h2e4c;
	B = 16'h3aa7;
	ans = 16'h2d3c;
	#20
	A = 16'h3634;
	B = 16'hb883;
	ans = 16'hb2ff;
	#20
	A = 16'hb800;
	B = 16'h2c6a;
	ans = 16'ha86a;
	#20
	A = 16'h3bd2;
	B = 16'h30ad;
	ans = 16'h3092;
	#20
	A = 16'h3917;
	B = 16'h32e4;
	ans = 16'h3062;
	#20
	A = 16'h34bc;
	B = 16'hbbfc;
	ans = 16'hb4ba;
	#20
	A = 16'h3a3c;
	B = 16'h38e1;
	ans = 16'h379b;
	#20
	A = 16'hbada;
	B = 16'hb8a1;
	ans = 16'h37ee;
	#20
	A = 16'h3782;
	B = 16'hb8a7;
	ans = 16'hb45e;
	#20
	A = 16'h3b50;
	B = 16'hb5ee;
	ans = 16'hb56c;
	#20
	A = 16'h3737;
	B = 16'hbbda;
	ans = 16'hb715;
	#20
	A = 16'hb693;
	B = 16'hb42d;
	ans = 16'h2edd;
	#20
	A = 16'hb3d7;
	B = 16'hb5e5;
	ans = 16'h2dc7;
	#20
	A = 16'hb8df;
	B = 16'hb812;
	ans = 16'h34f5;
	#20
	A = 16'h2ed2;
	B = 16'h34ac;
	ans = 16'h27f7;
	#20
	A = 16'h39cc;
	B = 16'hb87e;
	ans = 16'hb683;
	#20
	A = 16'h3a3f;
	B = 16'h3a5a;
	ans = 16'h38f6;
	#20
	A = 16'hbb8b;
	B = 16'hb615;
	ans = 16'h35bc;
	#20
	A = 16'hb318;
	B = 16'hb894;
	ans = 16'h300f;
	#20
	A = 16'hbb44;
	B = 16'ha391;
	ans = 16'h22df;
	#20
	A = 16'habce;
	B = 16'hbbb4;
	ans = 16'h2b84;
	#20
	A = 16'h36fa;
	B = 16'hba86;
	ans = 16'hb5b0;
	#20
	A = 16'hae44;
	B = 16'hb9c6;
	ans = 16'h2c86;
	#20
	A = 16'hb599;
	B = 16'hb11e;
	ans = 16'h2b29;
	#20
	A = 16'hbbbf;
	B = 16'h3915;
	ans = 16'hb8ec;
	#20
	A = 16'h349a;
	B = 16'h36f7;
	ans = 16'h3002;
	#20
	A = 16'hbadb;
	B = 16'h3a41;
	ans = 16'hb95c;
	#20
	A = 16'h3a82;
	B = 16'h3555;
	ans = 16'h3456;
	#20
	A = 16'hb1ed;
	B = 16'hb41d;
	ans = 16'h2a18;
	#20
	A = 16'h265e;
	B = 16'hb7e4;
	ans = 16'ha248;
	#20
	A = 16'h30e1;
	B = 16'hb72d;
	ans = 16'hac60;
	#20
	A = 16'h2ec2;
	B = 16'h36ca;
	ans = 16'h29bc;
	#20
	A = 16'hb0c0;
	B = 16'hb043;
	ans = 16'h2510;
	#20
	A = 16'hb8c3;
	B = 16'h322f;
	ans = 16'haf5c;
	#20
	A = 16'h3784;
	B = 16'h3001;
	ans = 16'h2b86;
	#20
	A = 16'h3bdb;
	B = 16'hba39;
	ans = 16'hba1c;
	#20
	A = 16'hb59e;
	B = 16'h3551;
	ans = 16'haf77;
	#20
	A = 16'hb5a7;
	B = 16'haa81;
	ans = 16'h2498;
	#20
	A = 16'hb91a;
	B = 16'hba42;
	ans = 16'h37fb;
	#20
	A = 16'h3373;
	B = 16'h3874;
	ans = 16'h3026;
	#20
	A = 16'hb975;
	B = 16'hba39;
	ans = 16'h383f;
	#20
	A = 16'hb634;
	B = 16'hb710;
	ans = 16'h317a;
	#20
	A = 16'ha38a;
	B = 16'h32cf;
	ans = 16'h9a6b;
	#20
	A = 16'h2bc3;
	B = 16'hb03e;
	ans = 16'ha01e;
	#20
	A = 16'h3a2f;
	B = 16'h302a;
	ans = 16'h2e70;
	#20
	A = 16'haa20;
	B = 16'hb971;
	ans = 16'h282b;
	#20
	A = 16'h31d7;
	B = 16'h3376;
	ans = 16'h2972;
	#20
	A = 16'h39fc;
	B = 16'ha42a;
	ans = 16'ha23b;
	#20
	A = 16'hbaca;
	B = 16'h3a4d;
	ans = 16'hb959;
	#20
	A = 16'hba1c;
	B = 16'h390e;
	ans = 16'hb7b8;
	#20
	A = 16'h3904;
	B = 16'h393c;
	ans = 16'h3690;
	#20
	A = 16'hb943;
	B = 16'h31f7;
	ans = 16'hafd9;
	#20
	A = 16'h265e;
	B = 16'hb83e;
	ans = 16'ha2c1;
	#20
	A = 16'hb06e;
	B = 16'h326c;
	ans = 16'ha71d;
	#20
	A = 16'h3286;
	B = 16'hb82a;
	ans = 16'haeca;
	#20
	A = 16'hb8ab;
	B = 16'hb70c;
	ans = 16'h341d;
	#20
	A = 16'h2e0b;
	B = 16'h35ea;
	ans = 16'h2878;
	#20
	A = 16'hb3e8;
	B = 16'h3977;
	ans = 16'hb167;
	#20
	A = 16'hb3d2;
	B = 16'hae8d;
	ans = 16'h2667;
	#20
	A = 16'h3a38;
	B = 16'hb656;
	ans = 16'hb4ed;
	#20
	A = 16'ha7cd;
	B = 16'h362f;
	ans = 16'ha208;
	#20
	A = 16'h3939;
	B = 16'h3871;
	ans = 16'h35cd;
	#20
	A = 16'hbb86;
	B = 16'h3977;
	ans = 16'hb924;
	#20
	A = 16'h3b3a;
	B = 16'h3834;
	ans = 16'h3798;
	#20
	A = 16'h3b92;
	B = 16'hafd8;
	ans = 16'haf6c;
	#20
	A = 16'h3bdd;
	B = 16'h3a33;
	ans = 16'h3a18;
	#20
	A = 16'hb893;
	B = 16'h363c;
	ans = 16'hb321;
	#20
	A = 16'h346e;
	B = 16'h382a;
	ans = 16'h309d;
	#20
	A = 16'haf9b;
	B = 16'hbbff;
	ans = 16'h2f9a;
	#20
	A = 16'h3b10;
	B = 16'hb887;
	ans = 16'hb7fe;
	#20
	A = 16'hb921;
	B = 16'hb6be;
	ans = 16'h3453;
	#20
	A = 16'h36b9;
	B = 16'hb654;
	ans = 16'hb151;
	#20
	A = 16'hb7db;
	B = 16'hb3de;
	ans = 16'h2fba;
	#20
	A = 16'ha609;
	B = 16'h3ae6;
	ans = 16'ha534;
	#20
	A = 16'hba43;
	B = 16'h3078;
	ans = 16'haeff;
	#20
	A = 16'hb907;
	B = 16'h3af0;
	ans = 16'hb85c;
	#20
	A = 16'hb208;
	B = 16'habfc;
	ans = 16'h2205;
	#20
	A = 16'hb9ce;
	B = 16'hb69d;
	ans = 16'h34cc;
	#20
	A = 16'h3851;
	B = 16'hb50e;
	ans = 16'hb174;
	#20
	A = 16'hb9d5;
	B = 16'h3a4c;
	ans = 16'hb897;
	#20
	A = 16'h3bc8;
	B = 16'h3b35;
	ans = 16'h3b03;
	#20
	A = 16'h3990;
	B = 16'hba45;
	ans = 16'hb85c;
	#20
	A = 16'h3950;
	B = 16'h3bc6;
	ans = 16'h3929;
	#20
	A = 16'h2cae;
	B = 16'hb52e;
	ans = 16'ha60f;
	#20
	A = 16'hb949;
	B = 16'hb5d4;
	ans = 16'h33b3;
	#20
	A = 16'hb707;
	B = 16'h3ad8;
	ans = 16'hb603;
	#20
	A = 16'hb5fa;
	B = 16'h3a29;
	ans = 16'hb49a;
	#20
	A = 16'h29c7;
	B = 16'hb503;
	ans = 16'ha33d;
	#20
	A = 16'h3857;
	B = 16'h3af7;
	ans = 16'h378e;
	#20
	A = 16'ha9fa;
	B = 16'h9cca;
	ans = 16'hb28;
	#20
	A = 16'hbb5d;
	B = 16'hb66b;
	ans = 16'h35e8;
	#20
	A = 16'hba17;
	B = 16'hb531;
	ans = 16'h33e7;
	#20
	A = 16'hae27;
	B = 16'hbb40;
	ans = 16'h2d93;
	#20
	A = 16'hb721;
	B = 16'ha94a;
	ans = 16'h24b7;
	#20
	A = 16'hb5b9;
	B = 16'hb832;
	ans = 16'h3201;
	#20
	A = 16'hb882;
	B = 16'h3b90;
	ans = 16'hb843;
	#20
	A = 16'h396a;
	B = 16'h2c39;
	ans = 16'h29b7;
	#20
	A = 16'h3baf;
	B = 16'h39d7;
	ans = 16'h399c;
	#20
	A = 16'hb60e;
	B = 16'hba29;
	ans = 16'h34aa;
	#20
	A = 16'hae26;
	B = 16'h33e4;
	ans = 16'ha610;
	#20
	A = 16'hbab3;
	B = 16'hb106;
	ans = 16'h3035;
	#20
	A = 16'hb6e9;
	B = 16'hb5fd;
	ans = 16'h312c;
	#20
	A = 16'h3be9;
	B = 16'h28d7;
	ans = 16'h28c9;
	#20
	A = 16'hb872;
	B = 16'hb4a4;
	ans = 16'h3128;
	#20
	A = 16'h355f;
	B = 16'hb755;
	ans = 16'hb0ec;
	#20
	A = 16'hb8f9;
	B = 16'h3183;
	ans = 16'haeda;
	#20
	A = 16'h392f;
	B = 16'hb8c4;
	ans = 16'hb62d;
	#20
	A = 16'haff9;
	B = 16'hb832;
	ans = 16'h2c2e;
	#20
	A = 16'hb9a4;
	B = 16'h3833;
	ans = 16'hb5ec;
	#20
	A = 16'h3a2e;
	B = 16'h3b81;
	ans = 16'h39cc;
	#20
	A = 16'h2e43;
	B = 16'h39e1;
	ans = 16'h2c9a;
	#20
	A = 16'hb673;
	B = 16'hbbfd;
	ans = 16'h3671;
	#20
	A = 16'hb8c0;
	B = 16'h3a75;
	ans = 16'hb7ab;
	#20
	A = 16'hb4dc;
	B = 16'h3102;
	ans = 16'haa15;
	#20
	A = 16'hba00;
	B = 16'h3229;
	ans = 16'hb09f;
	#20
	A = 16'h3a3f;
	B = 16'h3ae2;
	ans = 16'h3960;
	#20
	A = 16'h34c9;
	B = 16'h3205;
	ans = 16'h2b33;
	#20
	A = 16'hb808;
	B = 16'hb937;
	ans = 16'h3541;
	#20
	A = 16'hb90b;
	B = 16'h3aa4;
	ans = 16'hb830;
	#20
	A = 16'h38ce;
	B = 16'hb8ec;
	ans = 16'hb5e9;
	#20
	A = 16'hb9dd;
	B = 16'hb2f7;
	ans = 16'h311b;
	#20
	A = 16'hbace;
	B = 16'hbb9a;
	ans = 16'h3a77;
	#20
	A = 16'h393e;
	B = 16'h3ae0;
	ans = 16'h3881;
	#20
	A = 16'h3c00;
	B = 16'hb9ea;
	ans = 16'hb9ea;
	#20
	A = 16'hae17;
	B = 16'ha444;
	ans = 16'h167f;
	#20
	A = 16'h3b3d;
	B = 16'hac00;
	ans = 16'hab3d;
	#20
	A = 16'h2915;
	B = 16'hb95f;
	ans = 16'ha6d3;
	#20
	A = 16'h36f7;
	B = 16'h360f;
	ans = 16'h3146;
	#20
	A = 16'haea7;
	B = 16'h3b40;
	ans = 16'hae07;
	#20
	A = 16'h374f;
	B = 16'h30ef;
	ans = 16'h2c82;
	#20
	A = 16'h3572;
	B = 16'h3866;
	ans = 16'h31fd;
	#20
	A = 16'haf62;
	B = 16'hbab3;
	ans = 16'h2e2f;
	#20
	A = 16'hb96f;
	B = 16'h397a;
	ans = 16'hb770;
	#20
	A = 16'ha649;
	B = 16'ha36f;
	ans = 16'hdd7;
	#20
	A = 16'hb225;
	B = 16'hb8a6;
	ans = 16'h2f24;
	#20
	A = 16'h366c;
	B = 16'h33f1;
	ans = 16'h2e60;
	#20
	A = 16'hbb74;
	B = 16'hb5a6;
	ans = 16'h3543;
	#20
	A = 16'h3799;
	B = 16'h2f31;
	ans = 16'h2ad4;
	#20
	A = 16'ha267;
	B = 16'h36ed;
	ans = 16'h9d8b;
	#20
	A = 16'hb73b;
	B = 16'h2fe5;
	ans = 16'hab23;
	#20
	A = 16'h352d;
	B = 16'hb8d9;
	ans = 16'hb246;
	#20
	A = 16'h35cd;
	B = 16'hb8cc;
	ans = 16'hb2f5;
	#20
	A = 16'h3a80;
	B = 16'h367f;
	ans = 16'h3547;
	#20
	A = 16'h33d4;
	B = 16'hb84f;
	ans = 16'hb037;
	#20
	A = 16'h2f4f;
	B = 16'h3887;
	ans = 16'h2c23;
	#20
	A = 16'h3af1;
	B = 16'h35c6;
	ans = 16'h3502;
	#20
	A = 16'hb6d0;
	B = 16'h3908;
	ans = 16'hb449;
	#20
	A = 16'hafff;
	B = 16'h3805;
	ans = 16'hac04;
	#20
	A = 16'h382d;
	B = 16'h3b24;
	ans = 16'h3774;
	#20
	A = 16'hb9de;
	B = 16'hb121;
	ans = 16'h2f86;
	#20
	A = 16'hb932;
	B = 16'h33b2;
	ans = 16'hb0ff;
	#20
	A = 16'hb8fc;
	B = 16'h360f;
	ans = 16'hb38d;
	#20
	A = 16'h3b22;
	B = 16'h2eb5;
	ans = 16'h2dfb;
	#20
	A = 16'h3903;
	B = 16'hb978;
	ans = 16'hb6da;
	#20
	A = 16'hba5e;
	B = 16'h37f2;
	ans = 16'hb653;
	#20
	A = 16'h2be2;
	B = 16'hb331;
	ans = 16'ha316;
	#20
	A = 16'hb8c9;
	B = 16'h39fe;
	ans = 16'hb72b;
	#20
	A = 16'h2f55;
	B = 16'hb740;
	ans = 16'haaa5;
	#20
	A = 16'hb295;
	B = 16'h359b;
	ans = 16'hac9d;
	#20
	A = 16'h37e7;
	B = 16'h3604;
	ans = 16'h31f1;
	#20
	A = 16'hb408;
	B = 16'h3199;
	ans = 16'ha9a4;
	#20
	A = 16'hb62d;
	B = 16'hba1c;
	ans = 16'h34b7;
	#20
	A = 16'h3b62;
	B = 16'haf2f;
	ans = 16'haea1;
	#20
	A = 16'hb737;
	B = 16'h3414;
	ans = 16'haf5b;
	#20
	A = 16'hbafe;
	B = 16'h3bdb;
	ans = 16'hbade;
	#20
	A = 16'h3a67;
	B = 16'h2d05;
	ans = 16'h2c04;
	#20
	A = 16'hb93f;
	B = 16'h38df;
	ans = 16'hb663;
	#20
	A = 16'hbb52;
	B = 16'h3088;
	ans = 16'hb025;
	#20
	A = 16'hbab6;
	B = 16'h30d2;
	ans = 16'hb00b;
	#20
	A = 16'hbbf8;
	B = 16'h38c7;
	ans = 16'hb8c2;
	#20
	A = 16'h388f;
	B = 16'hbb16;
	ans = 16'hb80a;
	#20
	A = 16'h3ad6;
	B = 16'ha956;
	ans = 16'ha88f;
	#20
	A = 16'h32a9;
	B = 16'h2fd9;
	ans = 16'h2689;
	#20
	A = 16'h39e5;
	B = 16'h34f6;
	ans = 16'h3350;
	#20
	A = 16'h3560;
	B = 16'h3b30;
	ans = 16'h34d4;
	#20
	A = 16'habca;
	B = 16'h39c0;
	ans = 16'ha999;
	#20
	A = 16'h3663;
	B = 16'h2ee0;
	ans = 16'h297d;
	#20
	A = 16'h3a70;
	B = 16'had86;
	ans = 16'hac72;
	#20
	A = 16'hb9f5;
	B = 16'hb9c7;
	ans = 16'h384d;
	#20
	A = 16'hb6f1;
	B = 16'hb996;
	ans = 16'h34d9;
	#20
	A = 16'h3264;
	B = 16'hbbba;
	ans = 16'hb22c;
	#20
	A = 16'h355f;
	B = 16'h38f4;
	ans = 16'h32a7;
	#20
	A = 16'hbb86;
	B = 16'hb826;
	ans = 16'h37cd;
	#20
	A = 16'hb351;
	B = 16'hb468;
	ans = 16'h2c08;
	#20
	A = 16'hb941;
	B = 16'hb884;
	ans = 16'h35ee;
	#20
	A = 16'h3b95;
	B = 16'hb4c2;
	ans = 16'hb482;
	#20
	A = 16'h36d4;
	B = 16'h35e9;
	ans = 16'h310b;
	#20
	A = 16'h35fb;
	B = 16'hb0ca;
	ans = 16'hab29;
	#20
	A = 16'hafd7;
	B = 16'h39c7;
	ans = 16'hada9;
	#20
	A = 16'h25d0;
	B = 16'hb77c;
	ans = 16'ha170;
	#20
	A = 16'hb988;
	B = 16'h313d;
	ans = 16'haf3e;
	#20
	A = 16'hb9a3;
	B = 16'h341e;
	ans = 16'hb1cd;
	#20
	A = 16'h364b;
	B = 16'hb669;
	ans = 16'hb10b;
	#20
	A = 16'hb636;
	B = 16'h371e;
	ans = 16'hb187;
	#20
	A = 16'h377c;
	B = 16'h394b;
	ans = 16'h34f4;
	#20
	A = 16'h3b35;
	B = 16'hb386;
	ans = 16'hb2c7;
	#20
	A = 16'h344b;
	B = 16'h39b5;
	ans = 16'h3220;
	#20
	A = 16'hb51c;
	B = 16'h35a7;
	ans = 16'haf38;
	#20
	A = 16'hbad6;
	B = 16'h337e;
	ans = 16'hb267;
	#20
	A = 16'hba98;
	B = 16'hb4b1;
	ans = 16'h33bc;
	#20
	A = 16'hbb97;
	B = 16'hba23;
	ans = 16'h39d2;
	#20
	A = 16'haab2;
	B = 16'hb4b9;
	ans = 16'h23e8;
	#20
	A = 16'hb567;
	B = 16'hb35c;
	ans = 16'h2cf8;
	#20
	A = 16'h28c6;
	B = 16'hb6cd;
	ans = 16'ha40f;
	#20
	A = 16'h3b70;
	B = 16'hb452;
	ans = 16'hb404;
	#20
	A = 16'h3a52;
	B = 16'h3a24;
	ans = 16'h38da;
	#20
	A = 16'hba93;
	B = 16'h37a0;
	ans = 16'hb644;
	#20
	A = 16'h3b4a;
	B = 16'hb0ed;
	ans = 16'hb07d;
	#20
	A = 16'hba8a;
	B = 16'hb83d;
	ans = 16'h36ee;
	#20
	A = 16'ha8c4;
	B = 16'h3bd8;
	ans = 16'ha8ac;
	#20
	A = 16'h34be;
	B = 16'h37c7;
	ans = 16'h309c;
	#20
	A = 16'hab9e;
	B = 16'h3522;
	ans = 16'ha4e3;
	#20
	A = 16'hb719;
	B = 16'h3b41;
	ans = 16'hb670;
	#20
	A = 16'h38b7;
	B = 16'h2f97;
	ans = 16'h2c79;
	#20
	A = 16'hafc8;
	B = 16'h3972;
	ans = 16'had4c;
	#20
	A = 16'hb1d8;
	B = 16'h347a;
	ans = 16'haa8a;
	#20
	A = 16'hb7a9;
	B = 16'h3a77;
	ans = 16'hb631;
	#20
	A = 16'hb783;
	B = 16'h336d;
	ans = 16'haef9;
	#20
	A = 16'ha79f;
	B = 16'hb469;
	ans = 16'h2034;
	#20
	A = 16'h36bf;
	B = 16'h2247;
	ans = 16'h1d4b;
	#20
	A = 16'h3511;
	B = 16'hb8bd;
	ans = 16'hb200;
	#20
	A = 16'h397f;
	B = 16'h3730;
	ans = 16'h34f0;
	#20
	A = 16'h393a;
	B = 16'h3950;
	ans = 16'h36f1;
	#20
	A = 16'h36a9;
	B = 16'h372d;
	ans = 16'h31f9;
	#20
	A = 16'h3b9e;
	B = 16'h39a4;
	ans = 16'h395f;
	#20
	A = 16'h3b5c;
	B = 16'hbb95;
	ans = 16'hbafa;
	#20
	A = 16'hbbb3;
	B = 16'had66;
	ans = 16'h2d32;
	#20
	A = 16'hbb90;
	B = 16'hbbcf;
	ans = 16'h3b62;
	#20
	A = 16'h31f0;
	B = 16'h3816;
	ans = 16'h2e11;
	#20
	A = 16'hb45a;
	B = 16'h39e1;
	ans = 16'hb265;
	#20
	A = 16'hb515;
	B = 16'h3619;
	ans = 16'hafbf;
	#20
	A = 16'h397b;
	B = 16'h3931;
	ans = 16'h371d;
	#20
	A = 16'h9e0c;
	B = 16'hb722;
	ans = 16'h1964;
	#20
	A = 16'h388f;
	B = 16'hb2f7;
	ans = 16'haff0;
	#20
	A = 16'hb716;
	B = 16'h3840;
	ans = 16'hb387;
	#20
	A = 16'h365e;
	B = 16'hbad1;
	ans = 16'hb56d;
	#20
	A = 16'h253e;
	B = 16'hbb0e;
	ans = 16'ha49f;
	#20
	A = 16'hafff;
	B = 16'h3b2a;
	ans = 16'haf29;
	#20
	A = 16'had07;
	B = 16'h3756;
	ans = 16'ha89c;
	#20
	A = 16'hb9d2;
	B = 16'h3beb;
	ans = 16'hb9c3;
	#20
	A = 16'haf1a;
	B = 16'h2868;
	ans = 16'h9bd3;
	#20
	A = 16'h3981;
	B = 16'h38cd;
	ans = 16'h369b;
	#20
	A = 16'h34af;
	B = 16'h3856;
	ans = 16'h3114;
	#20
	A = 16'hb8a2;
	B = 16'h27e5;
	ans = 16'ha492;
	#20
	A = 16'h37e6;
	B = 16'h3a5c;
	ans = 16'h3647;
	#20
	A = 16'hb8db;
	B = 16'hb560;
	ans = 16'h3286;
	#20
	A = 16'hb90a;
	B = 16'h3573;
	ans = 16'hb2dd;
	#20
	A = 16'h2e10;
	B = 16'hb6e6;
	ans = 16'ha93a;
	#20
	A = 16'hb8db;
	B = 16'h3a5c;
	ans = 16'hb7b8;
	#20
	A = 16'h3392;
	B = 16'hb1e8;
	ans = 16'ha997;
	#20
	A = 16'h3980;
	B = 16'h3281;
	ans = 16'h3079;
	#20
	A = 16'h37fe;
	B = 16'h395e;
	ans = 16'h355d;
	#20
	A = 16'hb8ce;
	B = 16'hb871;
	ans = 16'h3556;
	#20
	A = 16'h2959;
	B = 16'hbaab;
	ans = 16'ha875;
	#20
	A = 16'hadc3;
	B = 16'hb780;
	ans = 16'h2967;
	#20
	A = 16'h395e;
	B = 16'h294d;
	ans = 16'h271d;
	#20
	A = 16'h3657;
	B = 16'h2f5e;
	ans = 16'h29d7;
	#20
	A = 16'h3a5f;
	B = 16'h388f;
	ans = 16'h3743;
	#20
	A = 16'hb343;
	B = 16'hb903;
	ans = 16'h308d;
	#20
	A = 16'h32aa;
	B = 16'h337b;
	ans = 16'h2a3b;
	#20
	A = 16'hb89b;
	B = 16'h38c5;
	ans = 16'hb57e;
	#20
	A = 16'hb8ea;
	B = 16'hb629;
	ans = 16'h3391;
	#20
	A = 16'hb111;
	B = 16'hb83a;
	ans = 16'h2d5a;
	#20
	A = 16'h35f3;
	B = 16'hb57a;
	ans = 16'hb013;
	#20
	A = 16'hb898;
	B = 16'h3bc2;
	ans = 16'hb874;
	#20
	A = 16'haa2c;
	B = 16'hb453;
	ans = 16'h22ac;
	#20
	A = 16'hbb4c;
	B = 16'hb440;
	ans = 16'h33c1;
	#20
	A = 16'hb356;
	B = 16'h3a5b;
	ans = 16'hb1d4;
	#20
	A = 16'h3567;
	B = 16'h2fd3;
	ans = 16'h2949;
	#20
	A = 16'hb95e;
	B = 16'h3b6c;
	ans = 16'hb8fb;
	#20
	A = 16'hb242;
	B = 16'hb5d0;
	ans = 16'h2c8c;
	#20
	A = 16'h321f;
	B = 16'h38d0;
	ans = 16'h2f5d;
	#20
	A = 16'hb2b2;
	B = 16'h3634;
	ans = 16'had31;
	#20
	A = 16'h3419;
	B = 16'h368d;
	ans = 16'h2eb6;
	#20
	A = 16'hba1d;
	B = 16'hb98f;
	ans = 16'h383f;
	#20
	A = 16'h30d6;
	B = 16'h38eb;
	ans = 16'h2df2;
	#20
	A = 16'h34ed;
	B = 16'hb26a;
	ans = 16'habe6;
	#20
	A = 16'hb5d7;
	B = 16'h3274;
	ans = 16'hacb6;
	#20
	A = 16'hae5f;
	B = 16'h3347;
	ans = 16'ha5cc;
	#20
	A = 16'hb5fa;
	B = 16'hbb66;
	ans = 16'h3587;
	#20
	A = 16'h34a5;
	B = 16'h3be2;
	ans = 16'h3494;
	#20
	A = 16'hb336;
	B = 16'hba4b;
	ans = 16'h31ac;
	#20
	A = 16'hbb60;
	B = 16'hb8f7;
	ans = 16'h3894;
	#20
	A = 16'h233d;
	B = 16'hb8eb;
	ans = 16'ha073;
	#20
	A = 16'hb441;
	B = 16'hb257;
	ans = 16'h2abe;
	#20
	A = 16'hb244;
	B = 16'hb85f;
	ans = 16'h2ed9;
	#20
	A = 16'hb9fb;
	B = 16'h3379;
	ans = 16'hb196;
	#20
	A = 16'h388a;
	B = 16'hb986;
	ans = 16'hb645;
	#20
	A = 16'hb26c;
	B = 16'hb682;
	ans = 16'h2d39;
	#20
	A = 16'hb84b;
	B = 16'h353a;
	ans = 16'hb19c;
	#20
	A = 16'h3319;
	B = 16'hb56f;
	ans = 16'hacd2;
	#20
	A = 16'h391b;
	B = 16'h25d6;
	ans = 16'h2373;
	#20
	A = 16'hbbbf;
	B = 16'h356a;
	ans = 16'hb53e;
	#20
	A = 16'h3834;
	B = 16'hac1a;
	ans = 16'ha84f;
	#20
	A = 16'h2dae;
	B = 16'hac6e;
	ans = 16'h9e4a;
	#20
	A = 16'hb7cd;
	B = 16'hb85b;
	ans = 16'h343f;
	#20
	A = 16'hb01f;
	B = 16'h356c;
	ans = 16'ha996;
	#20
	A = 16'h3b36;
	B = 16'hb9c8;
	ans = 16'hb936;
	#20
	A = 16'h3a8a;
	B = 16'hb69b;
	ans = 16'hb566;
	#20
	A = 16'h3768;
	B = 16'hb6d2;
	ans = 16'hb250;
	#20
	A = 16'hb417;
	B = 16'hb638;
	ans = 16'h2e5c;
	#20
	A = 16'h39ef;
	B = 16'hb1fe;
	ans = 16'hb072;
	#20
	A = 16'h3339;
	B = 16'hb83e;
	ans = 16'hafa9;
	#20
	A = 16'h3a98;
	B = 16'h3500;
	ans = 16'h341f;
	#20
	A = 16'h3873;
	B = 16'h39a2;
	ans = 16'h3644;
	#20
	A = 16'hafa4;
	B = 16'h37a7;
	ans = 16'hab4f;
	#20
	A = 16'hb1cc;
	B = 16'hb4e6;
	ans = 16'h2b19;
	#20
	A = 16'h2faf;
	B = 16'hb9ec;
	ans = 16'hadb0;
	#20
	A = 16'h3784;
	B = 16'h35ec;
	ans = 16'h3190;
	#20
	A = 16'hb7e7;
	B = 16'h9c4f;
	ans = 16'h1842;
	#20
	A = 16'h3b46;
	B = 16'hb54d;
	ans = 16'hb4d2;
	#20
	A = 16'h369c;
	B = 16'h345f;
	ans = 16'h2f39;
	#20
	A = 16'h3981;
	B = 16'hb7b5;
	ans = 16'hb54d;
	#20
	A = 16'h3b4b;
	B = 16'h2bc1;
	ans = 16'h2b12;
	#20
	A = 16'h372a;
	B = 16'ha986;
	ans = 16'ha4f2;
	#20
	A = 16'h3bfa;
	B = 16'h3a9f;
	ans = 16'h3a9a;
	#20
	A = 16'hb9b7;
	B = 16'hb493;
	ans = 16'h3289;
	#20
	A = 16'hb458;
	B = 16'h3a74;
	ans = 16'hb302;
	#20
	A = 16'h3947;
	B = 16'h2bb3;
	ans = 16'h2914;
	#20
	A = 16'hb31b;
	B = 16'hb562;
	ans = 16'h2cc8;
	#20
	A = 16'h3915;
	B = 16'hb218;
	ans = 16'hafbe;
	#20
	A = 16'hb7e5;
	B = 16'h3936;
	ans = 16'hb524;
	#20
	A = 16'h39e2;
	B = 16'h34a0;
	ans = 16'h32cd;
	#20
	A = 16'hb6b4;
	B = 16'hb1c0;
	ans = 16'h2cd1;
	#20
	A = 16'h317a;
	B = 16'h3b92;
	ans = 16'h312f;
	#20
	A = 16'hba6e;
	B = 16'hba2c;
	ans = 16'h38f6;
	#20
	A = 16'hbbb7;
	B = 16'h3932;
	ans = 16'hb903;
	#20
	A = 16'h3ac2;
	B = 16'hb19e;
	ans = 16'hb0bf;
	#20
	A = 16'h3a42;
	B = 16'hb762;
	ans = 16'hb5c6;
	#20
	A = 16'h3047;
	B = 16'hb8ba;
	ans = 16'had0e;
	#20
	A = 16'h39b2;
	B = 16'h36fd;
	ans = 16'h34fa;
	#20
	A = 16'h3321;
	B = 16'hb406;
	ans = 16'hab2c;
	#20
	A = 16'h311a;
	B = 16'hb911;
	ans = 16'hae76;
	#20
	A = 16'hb961;
	B = 16'hb44e;
	ans = 16'h31ca;
	#20
	A = 16'h3865;
	B = 16'h3b90;
	ans = 16'h3827;
	#20
	A = 16'h38c5;
	B = 16'hb5be;
	ans = 16'hb2d9;
	#20
	A = 16'h32fc;
	B = 16'hb8be;
	ans = 16'hb024;
	#20
	A = 16'hba73;
	B = 16'h35ab;
	ans = 16'hb492;
	#20
	A = 16'h36e6;
	B = 16'hbb6b;
	ans = 16'hb666;
	#20
	A = 16'h3495;
	B = 16'hba97;
	ans = 16'hb38c;
	#20
	A = 16'h3686;
	B = 16'haee2;
	ans = 16'ha99d;
	#20
	A = 16'hb996;
	B = 16'hba10;
	ans = 16'h383c;
	#20
	A = 16'h3ab2;
	B = 16'hba57;
	ans = 16'hb94e;
	#20
	A = 16'hb442;
	B = 16'hb907;
	ans = 16'h315a;
	#20
	A = 16'h3556;
	B = 16'h350e;
	ans = 16'h2ebe;
	#20
	A = 16'h3937;
	B = 16'h3b72;
	ans = 16'h38da;
	#20
	A = 16'hb824;
	B = 16'h38c6;
	ans = 16'hb4f1;
	#20
	A = 16'h38e9;
	B = 16'h3b87;
	ans = 16'h389f;
	#20
	A = 16'h2376;
	B = 16'h350b;
	ans = 16'h1cb4;
	#20
	A = 16'ha7bf;
	B = 16'h3bf1;
	ans = 16'ha7b0;
	#20
	A = 16'hb9e8;
	B = 16'hb078;
	ans = 16'h2e99;
	#20
	A = 16'hbaa2;
	B = 16'h3987;
	ans = 16'hb895;
	#20
	A = 16'hb744;
	B = 16'hb563;
	ans = 16'h30e4;
	#20
	A = 16'hbafd;
	B = 16'hbb50;
	ans = 16'h3a63;
	#20
	A = 16'hbbfc;
	B = 16'h1dd0;
	ans = 16'h9dcd;
	#20
	A = 16'h3abf;
	B = 16'h3472;
	ans = 16'h337f;
	#20
	A = 16'hb9ff;
	B = 16'hb98e;
	ans = 16'h382a;
	#20
	A = 16'hb485;
	B = 16'h3605;
	ans = 16'haecd;
	#20
	A = 16'h3b7d;
	B = 16'h2c39;
	ans = 16'h2be8;
	#20
	A = 16'hb774;
	B = 16'h36fb;
	ans = 16'hb281;
	#20
	A = 16'hbb49;
	B = 16'h3b09;
	ans = 16'hba68;
	#20
	A = 16'h32c4;
	B = 16'hb9c6;
	ans = 16'hb0e2;
	#20
	A = 16'h29d3;
	B = 16'hb0f2;
	ans = 16'h9f33;
	#20
	A = 16'h3ad0;
	B = 16'h37e1;
	ans = 16'h36b6;
	#20
	A = 16'hafc8;
	B = 16'h35c3;
	ans = 16'ha99b;
	#20
	A = 16'hb0c6;
	B = 16'hb899;
	ans = 16'h2d7d;
	#20
	A = 16'hb02d;
	B = 16'h3397;
	ans = 16'ha7ec;
	#20
	A = 16'hbbd8;
	B = 16'hb2aa;
	ans = 16'h3289;
	#20
	A = 16'h3b1e;
	B = 16'hbb8c;
	ans = 16'hbab7;
	#20
	A = 16'hb669;
	B = 16'hb063;
	ans = 16'h2b08;
	#20
	A = 16'h3709;
	B = 16'h30c0;
	ans = 16'h2c2d;
	#20
	A = 16'hafe4;
	B = 16'h36fe;
	ans = 16'haae6;
	#20
	A = 16'hb974;
	B = 16'hba89;
	ans = 16'h3874;
	#20
	A = 16'hb138;
	B = 16'h30c1;
	ans = 16'ha634;
	#20
	A = 16'hb4d0;
	B = 16'h31bf;
	ans = 16'haaea;
	#20
	A = 16'h3aff;
	B = 16'h36b2;
	ans = 16'h35db;
	#20
	A = 16'h2fa1;
	B = 16'h30e0;
	ans = 16'h24a6;
	#20
	A = 16'hb294;
	B = 16'hb864;
	ans = 16'h2f38;
	#20
	A = 16'h395a;
	B = 16'h3894;
	ans = 16'h3620;
	#20
	A = 16'h3406;
	B = 16'hb8b5;
	ans = 16'hb0bc;
	#20
	A = 16'h8ee7;
	B = 16'hb423;
	ans = 16'h723;
	#20
	A = 16'h3303;
	B = 16'h2dc5;
	ans = 16'h250f;
	#20
	A = 16'h30de;
	B = 16'h3875;
	ans = 16'h2d6c;
	#20
	A = 16'h3a62;
	B = 16'hb497;
	ans = 16'hb353;
	#20
	A = 16'h24d1;
	B = 16'hb8ee;
	ans = 16'ha1f0;
	#20
	A = 16'h3ba5;
	B = 16'hb696;
	ans = 16'hb64b;
	#20
	A = 16'h39ee;
	B = 16'hb929;
	ans = 16'hb7a6;
	#20
	A = 16'h37dc;
	B = 16'h3b27;
	ans = 16'h3707;
	#20
	A = 16'hbbb1;
	B = 16'hb49d;
	ans = 16'h346f;
	#20
	A = 16'hba00;
	B = 16'h331c;
	ans = 16'hb155;
	#20
	A = 16'hb6e2;
	B = 16'h3a3c;
	ans = 16'hb55d;
	#20
	A = 16'hbb65;
	B = 16'hb4b3;
	ans = 16'h3458;
	#20
	A = 16'h3776;
	B = 16'hb851;
	ans = 16'hb407;
	#20
	A = 16'hb5e4;
	B = 16'h2e4b;
	ans = 16'ha8a2;
	#20
	A = 16'h3491;
	B = 16'h3bfe;
	ans = 16'h3490;
	#20
	A = 16'h3363;
	B = 16'h3bbc;
	ans = 16'h3324;
	#20
	A = 16'hba1d;
	B = 16'hb924;
	ans = 16'h37db;
	#20
	A = 16'h3469;
	B = 16'h2dde;
	ans = 16'h2678;
	#20
	A = 16'hb942;
	B = 16'h3902;
	ans = 16'hb695;
	#20
	A = 16'hb6ef;
	B = 16'ha4f3;
	ans = 16'h204a;
	#20
	A = 16'h3b45;
	B = 16'hae21;
	ans = 16'had92;
	#20
	A = 16'h37a1;
	B = 16'hbbb2;
	ans = 16'hb757;
	#20
	A = 16'h3918;
	B = 16'h380d;
	ans = 16'h3529;
	#20
	A = 16'hbb08;
	B = 16'h3a1c;
	ans = 16'hb95f;
	#20
	A = 16'hb152;
	B = 16'h39a1;
	ans = 16'haf7d;
	#20
	A = 16'haf73;
	B = 16'hb898;
	ans = 16'h2c47;
	#20
	A = 16'h3b81;
	B = 16'h3585;
	ans = 16'h352d;
	#20
	A = 16'hb1a7;
	B = 16'hb73c;
	ans = 16'h2d1d;
	#20
	A = 16'hb4d0;
	B = 16'hb75e;
	ans = 16'h306f;
	#20
	A = 16'h30b7;
	B = 16'h2fc3;
	ans = 16'h2493;
	#20
	A = 16'hb972;
	B = 16'hba7b;
	ans = 16'h3869;
	#20
	A = 16'h392c;
	B = 16'hb88c;
	ans = 16'hb5e1;
	#20
	A = 16'h33f8;
	B = 16'h36c0;
	ans = 16'h2eb9;
	#20
	A = 16'h3b86;
	B = 16'h34f5;
	ans = 16'h34a9;
	#20
	A = 16'hb8bb;
	B = 16'hbb2a;
	ans = 16'h383c;
	#20
	A = 16'hb7f0;
	B = 16'h3af8;
	ans = 16'hb6ea;
	#20
	A = 16'h38d8;
	B = 16'h34c2;
	ans = 16'h31c3;
	#20
	A = 16'hbbcf;
	B = 16'h3725;
	ans = 16'hb6f9;
	#20
	A = 16'hb354;
	B = 16'hb5f3;
	ans = 16'h2d73;
	#20
	A = 16'hb771;
	B = 16'h377d;
	ans = 16'hb2f7;
	#20
	A = 16'h37c3;
	B = 16'had60;
	ans = 16'ha937;
	#20
	A = 16'haa3d;
	B = 16'h39ae;
	ans = 16'ha86e;
	#20
	A = 16'h3424;
	B = 16'hbb86;
	ans = 16'hb3ca;
	#20
	A = 16'h2ef9;
	B = 16'h3488;
	ans = 16'h27e6;
	#20
	A = 16'hb560;
	B = 16'hba35;
	ans = 16'h342c;
	#20
	A = 16'ha0d8;
	B = 16'h3bed;
	ans = 16'ha0cc;
	#20
	A = 16'hb877;
	B = 16'h34ee;
	ans = 16'hb181;
	#20
	A = 16'hbbfa;
	B = 16'h3a60;
	ans = 16'hba5b;
	#20
	A = 16'hba6a;
	B = 16'h2c00;
	ans = 16'haa6a;
	#20
	A = 16'h3572;
	B = 16'h392c;
	ans = 16'h330a;
	#20
	A = 16'hb42a;
	B = 16'h3777;
	ans = 16'hafc5;
	#20
	A = 16'h393a;
	B = 16'h399d;
	ans = 16'h3756;
	#20
	A = 16'hba44;
	B = 16'hb6fb;
	ans = 16'h3578;
	#20
	A = 16'h39e3;
	B = 16'hacb7;
	ans = 16'haaf0;
	#20
	A = 16'ha984;
	B = 16'h387b;
	ans = 16'ha62e;
	#20
	A = 16'hbb53;
	B = 16'hbaae;
	ans = 16'h3a1e;
	#20
	A = 16'hbaca;
	B = 16'hab2e;
	ans = 16'h2a18;
	#20
	A = 16'h39fb;
	B = 16'hb756;
	ans = 16'hb57c;
	#20
	A = 16'h3a61;
	B = 16'h38c6;
	ans = 16'h379d;
	#20
	A = 16'hb4ca;
	B = 16'h3acf;
	ans = 16'hb413;
	#20
	A = 16'h37e4;
	B = 16'hb858;
	ans = 16'hb449;
	#20
	A = 16'h3704;
	B = 16'h3a00;
	ans = 16'h3543;
	#20
	A = 16'hbacc;
	B = 16'h3b00;
	ans = 16'hb9f2;
	#20
	A = 16'hbb6b;
	B = 16'h3935;
	ans = 16'hb8d4;
	#20
	A = 16'hbab5;
	B = 16'h362e;
	ans = 16'hb52e;
	#20
	A = 16'h3512;
	B = 16'hbb01;
	ans = 16'hb470;
	#20
	A = 16'h32f9;
	B = 16'h3bc2;
	ans = 16'h32c3;
	#20
	A = 16'hb923;
	B = 16'h3b14;
	ans = 16'hb88b;
	#20
	A = 16'h3bcc;
	B = 16'h39fc;
	ans = 16'h39d5;
	#20
	A = 16'hb8ad;
	B = 16'hbaa7;
	ans = 16'h37c7;
	#20
	A = 16'h2c6b;
	B = 16'h37b3;
	ans = 16'h2840;
	#20
	A = 16'h394d;
	B = 16'h3a20;
	ans = 16'h380f;
	#20
	A = 16'hb87d;
	B = 16'h32e1;
	ans = 16'hafb8;
	#20
	A = 16'hbaca;
	B = 16'h338d;
	ans = 16'hb268;
	#20
	A = 16'hb1d0;
	B = 16'h3ac7;
	ans = 16'hb0ed;
	#20
	A = 16'h3920;
	B = 16'hb459;
	ans = 16'hb192;
	#20
	A = 16'h3ac4;
	B = 16'hb9fc;
	ans = 16'hb910;
	#20
	A = 16'hb125;
	B = 16'h39af;
	ans = 16'haf4f;
	#20
	A = 16'h33f7;
	B = 16'hba2c;
	ans = 16'hb225;
	#20
	A = 16'h1d8d;
	B = 16'h2d15;
	ans = 16'hf0d;
	#20
	A = 16'h3a0b;
	B = 16'ha8a0;
	ans = 16'ha6fd;
	#20
	A = 16'hb47b;
	B = 16'h38dd;
	ans = 16'hb173;
	#20
	A = 16'hb5f8;
	B = 16'h3b02;
	ans = 16'hb53a;
	#20
	A = 16'h331b;
	B = 16'hb97c;
	ans = 16'hb0df;
	#20
	A = 16'hab0f;
	B = 16'h2f83;
	ans = 16'h9ea1;
	#20
	A = 16'hba37;
	B = 16'h9431;
	ans = 16'h1283;
	#20
	A = 16'h3881;
	B = 16'h323c;
	ans = 16'h2f05;
	#20
	A = 16'h3a19;
	B = 16'hba38;
	ans = 16'hb8bd;
	#20
	A = 16'h2c92;
	B = 16'h3ad3;
	ans = 16'h2bcc;
	#20
	A = 16'hb1b3;
	B = 16'h32d4;
	ans = 16'ha8dd;
	#20
	A = 16'h31bf;
	B = 16'hb739;
	ans = 16'had30;
	#20
	A = 16'h2dd7;
	B = 16'h2d83;
	ans = 16'h2006;
	#20
	A = 16'hba4c;
	B = 16'hbb97;
	ans = 16'h39f9;
	#20
	A = 16'hb9fe;
	B = 16'hb2dc;
	ans = 16'h3123;
	#20
	A = 16'hb7b1;
	B = 16'h2faf;
	ans = 16'hab63;
	#20
	A = 16'h3a0f;
	B = 16'hb93b;
	ans = 16'hb7ec;
	#20
	A = 16'hb741;
	B = 16'h3a8f;
	ans = 16'hb5f2;
	#20
	A = 16'ha169;
	B = 16'h3394;
	ans = 16'h9920;
	#20
	A = 16'ha970;
	B = 16'hbb27;
	ans = 16'h28dd;
	#20
	A = 16'h3b46;
	B = 16'hb6ba;
	ans = 16'hb61e;
	#20
	A = 16'hb79f;
	B = 16'h39fc;
	ans = 16'hb5b3;
	#20
	A = 16'h2c87;
	B = 16'h355b;
	ans = 16'h2610;
	#20
	A = 16'hb860;
	B = 16'hb6e2;
	ans = 16'h3387;
	#20
	A = 16'h3b06;
	B = 16'hb7c9;
	ans = 16'hb6d6;
	#20
	A = 16'hb37c;
	B = 16'h3a5d;
	ans = 16'hb1f4;
	#20
	A = 16'h3b2e;
	B = 16'h320d;
	ans = 16'h316e;
	#20
	A = 16'hb7ba;
	B = 16'hb797;
	ans = 16'h3355;
	#20
	A = 16'h39a8;
	B = 16'h30a4;
	ans = 16'h2e90;
	#20
	A = 16'h35c1;
	B = 16'h3414;
	ans = 16'h2dde;
	#20
	A = 16'h3b7f;
	B = 16'hba5b;
	ans = 16'hb9f5;
	#20
	A = 16'hbb3a;
	B = 16'h9e38;
	ans = 16'h1d9e;
	#20
	A = 16'hb64a;
	B = 16'h38f7;
	ans = 16'hb3ce;
	#20
	A = 16'hb42a;
	B = 16'h3888;
	ans = 16'hb0b8;
	#20
	A = 16'ha37a;
	B = 16'hb072;
	ans = 16'h1828;
	#20
	A = 16'h30a0;
	B = 16'hb81f;
	ans = 16'hacc4;
	#20
	A = 16'h1361;
	B = 16'hb6f0;
	ans = 16'h8e66;
	#20
	A = 16'h3adf;
	B = 16'hb272;
	ans = 16'hb189;
	#20
	A = 16'hafb6;
	B = 16'hb576;
	ans = 16'h2943;
	#20
	A = 16'hb426;
	B = 16'h34c7;
	ans = 16'hacf4;
	#20
	A = 16'hbad5;
	B = 16'h3676;
	ans = 16'hb585;
	#20
	A = 16'hbaa5;
	B = 16'h3b49;
	ans = 16'hba0d;
	#20
	A = 16'hbaba;
	B = 16'hb32d;
	ans = 16'h3209;
	#20
	A = 16'h3b98;
	B = 16'h33f8;
	ans = 16'h3390;
	#20
	A = 16'h2876;
	B = 16'hbaf8;
	ans = 16'ha7c6;
	#20
	A = 16'h39d3;
	B = 16'hb8aa;
	ans = 16'hb6cb;
	#20
	A = 16'hb96c;
	B = 16'h37b4;
	ans = 16'hb538;
	#20
	A = 16'h3ad3;
	B = 16'hb75a;
	ans = 16'hb645;
	#20
	A = 16'h2fd7;
	B = 16'h3825;
	ans = 16'h2c10;
	#20
	A = 16'hade9;
	B = 16'h3614;
	ans = 16'ha87e;
	#20
	A = 16'h38ae;
	B = 16'h38d7;
	ans = 16'h35aa;
	#20
	A = 16'h3665;
	B = 16'h2a4b;
	ans = 16'h2508;
	#20
	A = 16'hbb1d;
	B = 16'hbbb5;
	ans = 16'h3ada;
	#20
	A = 16'h38af;
	B = 16'hb93d;
	ans = 16'hb622;
	#20
	A = 16'hba7b;
	B = 16'h3996;
	ans = 16'hb886;
	#20
	A = 16'h36bd;
	B = 16'haa9f;
	ans = 16'ha594;
	#20
	A = 16'h251f;
	B = 16'h391f;
	ans = 16'h228e;
	#20
	A = 16'h3ad1;
	B = 16'hb8ac;
	ans = 16'hb7f6;
	#20
	A = 16'h3b0f;
	B = 16'hac9b;
	ans = 16'hac10;
	#20
	A = 16'h3516;
	B = 16'hb65a;
	ans = 16'hb00a;
	#20
	A = 16'h33b9;
	B = 16'hb467;
	ans = 16'hac40;
	#20
	A = 16'hbb53;
	B = 16'h356e;
	ans = 16'hb4f9;
	#20
	A = 16'hba33;
	B = 16'hb71d;
	ans = 16'h3583;
	#20
	A = 16'hb8cf;
	B = 16'h3807;
	ans = 16'hb4d7;
	#20
	A = 16'had3a;
	B = 16'hbb9c;
	ans = 16'h2cf9;
	#20
	A = 16'h305f;
	B = 16'hb913;
	ans = 16'had8c;
	#20
	A = 16'hb429;
	B = 16'h3a45;
	ans = 16'hb285;
	#20
	A = 16'h3bde;
	B = 16'h3b7d;
	ans = 16'h3b5d;
	#20
	A = 16'hb842;
	B = 16'h32be;
	ans = 16'haf2d;
	#20
	A = 16'hbb6c;
	B = 16'hb738;
	ans = 16'h36b2;
	#20
	A = 16'h3a87;
	B = 16'hb6f8;
	ans = 16'hb5b0;
	#20
	A = 16'h3bbf;
	B = 16'hb9eb;
	ans = 16'hb9bb;
	#20
	A = 16'h38a0;
	B = 16'hba05;
	ans = 16'hb6f6;
	#20
	A = 16'h3925;
	B = 16'hb7e9;
	ans = 16'hb516;
	#20
	A = 16'hbbe7;
	B = 16'h3260;
	ans = 16'hb24c;
	#20
	A = 16'h28ba;
	B = 16'hbafc;
	ans = 16'ha820;
	#20
	A = 16'h3220;
	B = 16'h3ac7;
	ans = 16'h3130;
	#20
	A = 16'h34d6;
	B = 16'hb95a;
	ans = 16'hb278;
	#20
	A = 16'hb97d;
	B = 16'h36c2;
	ans = 16'hb4a3;
	#20
	A = 16'hb518;
	B = 16'hb448;
	ans = 16'h2d74;
	#20
	A = 16'hb53c;
	B = 16'hb6f4;
	ans = 16'h308d;
	#20
	A = 16'hb6fe;
	B = 16'hb974;
	ans = 16'h34c4;
	#20
	A = 16'h3a2f;
	B = 16'h2615;
	ans = 16'h24b3;
	#20
	A = 16'h3783;
	B = 16'h3541;
	ans = 16'h30ef;
	#20
	A = 16'h36e1;
	B = 16'h3993;
	ans = 16'h34cb;
	#20
	A = 16'h3a56;
	B = 16'hb77b;
	ans = 16'hb5ed;
	#20
	A = 16'hbbf3;
	B = 16'hb513;
	ans = 16'h350b;
	#20
	A = 16'hb9cc;
	B = 16'h334b;
	ans = 16'hb149;
	#20
	A = 16'h2ef3;
	B = 16'h3638;
	ans = 16'h2967;
	#20
	A = 16'haf69;
	B = 16'h38f7;
	ans = 16'hac99;
	#20
	A = 16'hacd8;
	B = 16'h38b3;
	ans = 16'ha9b1;
	#20
	A = 16'hb48b;
	B = 16'h2eb2;
	ans = 16'ha79b;
	#20
	A = 16'h32d1;
	B = 16'ha645;
	ans = 16'h9d58;
	#20
	A = 16'h387a;
	B = 16'h393a;
	ans = 16'h35d9;
	#20
	A = 16'hadf6;
	B = 16'hbad7;
	ans = 16'h2d19;
	#20
	A = 16'h343f;
	B = 16'had3c;
	ans = 16'ha58e;
	#20
	A = 16'h399c;
	B = 16'h3546;
	ans = 16'h3365;
	#20
	A = 16'hb40b;
	B = 16'h370c;
	ans = 16'haf1f;
	#20
	A = 16'h36be;
	B = 16'ha7a9;
	ans = 16'ha275;
	#20
	A = 16'hac98;
	B = 16'h3a59;
	ans = 16'hab4a;
	#20
	A = 16'h342a;
	B = 16'hb44a;
	ans = 16'hac77;
	#20
	A = 16'hb0df;
	B = 16'h8945;
	ans = 16'h19b;
	#20
	A = 16'h3404;
	B = 16'h398b;
	ans = 16'h3191;
	#20
	A = 16'hb791;
	B = 16'hb9ed;
	ans = 16'h359b;
	#20
	A = 16'hb299;
	B = 16'h3a27;
	ans = 16'hb113;
	#20
	A = 16'h37b6;
	B = 16'hb4f1;
	ans = 16'hb0c3;
	#20
	A = 16'h3054;
	B = 16'hba63;
	ans = 16'haee9;
	#20
	A = 16'h32eb;
	B = 16'h3b2d;
	ans = 16'h3235;
	#20
	A = 16'hb11c;
	B = 16'hb5c8;
	ans = 16'h2b62;
	#20
	A = 16'hb6bc;
	B = 16'hb516;
	ans = 16'h3048;
	#20
	A = 16'h3889;
	B = 16'hbaa6;
	ans = 16'hb78a;
	#20
	A = 16'hbb8c;
	B = 16'hb6eb;
	ans = 16'h3687;
	#20
	A = 16'hb810;
	B = 16'hb7c4;
	ans = 16'h33e3;
	#20
	A = 16'hbbf7;
	B = 16'hba59;
	ans = 16'h3a52;
	#20
	A = 16'h398d;
	B = 16'hb79a;
	ans = 16'hb546;
	#20
	A = 16'h390a;
	B = 16'h3b02;
	ans = 16'h386a;
	#20
	A = 16'hb84b;
	B = 16'h387b;
	ans = 16'hb4cf;
	#20
	A = 16'hbbd8;
	B = 16'hb0d3;
	ans = 16'h30bb;
	#20
	A = 16'hb6c6;
	B = 16'hb522;
	ans = 16'h3059;
	#20
	A = 16'h34ff;
	B = 16'h3956;
	ans = 16'h32aa;
	#20
	A = 16'hbb93;
	B = 16'haa0c;
	ans = 16'h29ba;
	#20
	A = 16'hb87d;
	B = 16'h2c02;
	ans = 16'ha87f;
	#20
	A = 16'hb819;
	B = 16'h3648;
	ans = 16'hb26f;
	#20
	A = 16'hb672;
	B = 16'h3659;
	ans = 16'hb11d;
	#20
	A = 16'hafcf;
	B = 16'hb767;
	ans = 16'h2b3a;
	#20
	A = 16'h2109;
	B = 16'h37af;
	ans = 16'h1cd6;
	#20
	A = 16'h395e;
	B = 16'h39f2;
	ans = 16'h37fa;
	#20
	A = 16'hb967;
	B = 16'hb175;
	ans = 16'h2f5f;
	#20
	A = 16'h3abd;
	B = 16'hb84b;
	ans = 16'hb73b;
	#20
	A = 16'hb4ee;
	B = 16'hbbae;
	ans = 16'h34bb;
	#20
	A = 16'h3a38;
	B = 16'h360d;
	ans = 16'h34b4;
	#20
	A = 16'h3b5f;
	B = 16'h36e7;
	ans = 16'h365c;
	#20
	A = 16'h3831;
	B = 16'hbaef;
	ans = 16'hb744;
	#20
	A = 16'h230a;
	B = 16'hb1a8;
	ans = 16'h98fa;
	#20
	A = 16'hbb48;
	B = 16'hb412;
	ans = 16'h3369;
	#20
	A = 16'h364d;
	B = 16'h3b02;
	ans = 16'h3585;
	#20
	A = 16'hb323;
	B = 16'h3a8d;
	ans = 16'hb1d8;
	#20
	A = 16'h31a2;
	B = 16'h3624;
	ans = 16'h2c53;
	#20
	A = 16'hb5f7;
	B = 16'hb0b0;
	ans = 16'h2afd;
	#20
	A = 16'hb531;
	B = 16'hb5c8;
	ans = 16'h2f81;
	#20
	A = 16'hbb54;
	B = 16'hae20;
	ans = 16'h2d9c;
	#20
	A = 16'hb9e7;
	B = 16'hb886;
	ans = 16'h36ad;
	#20
	A = 16'hb5fa;
	B = 16'hb87d;
	ans = 16'h32b5;
	#20
	A = 16'hb294;
	B = 16'hb972;
	ans = 16'h307a;
	#20
	A = 16'h39d0;
	B = 16'h2fa8;
	ans = 16'h2d90;
	#20
	A = 16'hb8f0;
	B = 16'hb87f;
	ans = 16'h358d;
	#20
	A = 16'hb3b8;
	B = 16'h3944;
	ans = 16'hb115;
	#20
	A = 16'h3a87;
	B = 16'hba81;
	ans = 16'hb94f;
	#20
	A = 16'h35c5;
	B = 16'h354a;
	ans = 16'h2fa1;
	#20
	A = 16'hba38;
	B = 16'ha941;
	ans = 16'h2816;
	#20
	A = 16'h38f5;
	B = 16'h36a1;
	ans = 16'h341c;
	#20
	A = 16'hb42f;
	B = 16'hb2ff;
	ans = 16'h2b51;
	#20
	A = 16'hb929;
	B = 16'h348c;
	ans = 16'hb1de;
	#20
	A = 16'h3bcf;
	B = 16'h2c28;
	ans = 16'h2c0f;
	#20
	A = 16'hba2a;
	B = 16'h2d17;
	ans = 16'habd8;
	#20
	A = 16'h395d;
	B = 16'h3b06;
	ans = 16'h38b5;
	#20
	A = 16'h3aae;
	B = 16'hb9e1;
	ans = 16'hb8e9;
	#20
	A = 16'hb76c;
	B = 16'hbb73;
	ans = 16'h36e9;
	#20
	A = 16'hba68;
	B = 16'h3ab6;
	ans = 16'hb960;
	#20
	A = 16'h2b83;
	B = 16'hac0;
	ans = 16'hcb;
	#20
	A = 16'hb5b0;
	B = 16'hb490;
	ans = 16'h2e7d;
	#20
	A = 16'h38ab;
	B = 16'h3bb7;
	ans = 16'h3880;
	#20
	A = 16'h39b2;
	B = 16'h3b87;
	ans = 16'h395c;
	#20
	A = 16'h3b74;
	B = 16'h3ac0;
	ans = 16'h3a4a;
	#20
	A = 16'hb4fd;
	B = 16'h3395;
	ans = 16'hacba;
	#20
	A = 16'h371c;
	B = 16'h3688;
	ans = 16'h31ce;
	#20
	A = 16'h2767;
	B = 16'h3b64;
	ans = 16'h26d7;
	#20
	A = 16'h35e0;
	B = 16'hb563;
	ans = 16'hafe9;
	#20
	A = 16'hb922;
	B = 16'hbbe9;
	ans = 16'h3913;
	#20
	A = 16'h3551;
	B = 16'h38eb;
	ans = 16'h3289;
	#20
	A = 16'h3908;
	B = 16'h3a32;
	ans = 16'h37cb;
	#20
	A = 16'hb14d;
	B = 16'h2dfa;
	ans = 16'ha3ec;
	#20
	A = 16'hb8fa;
	B = 16'h3350;
	ans = 16'hb08d;
	#20
	A = 16'hb808;
	B = 16'h382d;
	ans = 16'hb435;
	#20
	A = 16'h39f5;
	B = 16'h2fce;
	ans = 16'h2dd0;
	#20
	A = 16'hb988;
	B = 16'h301f;
	ans = 16'hadb3;
	#20
	A = 16'hb92b;
	B = 16'hba37;
	ans = 16'h3804;
	#20
	A = 16'hb8b8;
	B = 16'hb142;
	ans = 16'h2e34;
	#20
	A = 16'hb7c5;
	B = 16'h38a5;
	ans = 16'hb483;
	#20
	A = 16'h3916;
	B = 16'h2c60;
	ans = 16'h2990;
	#20
	A = 16'hb5d3;
	B = 16'hb399;
	ans = 16'h2d88;
	#20
	A = 16'hb831;
	B = 16'hb8cb;
	ans = 16'h3506;
	#20
	A = 16'h97f9;
	B = 16'h3859;
	ans = 16'h9455;
	#20
	A = 16'h3a73;
	B = 16'h2edf;
	ans = 16'h2d8a;
	#20
	A = 16'hbb96;
	B = 16'hb56a;
	ans = 16'h3522;
	#20
	A = 16'hb0d8;
	B = 16'ha797;
	ans = 16'h1c98;
	#20
	A = 16'h3707;
	B = 16'h3bf2;
	ans = 16'h36fb;
	#20
	A = 16'hba68;
	B = 16'h3415;
	ans = 16'hb28a;
	#20
	A = 16'h379f;
	B = 16'hbae6;
	ans = 16'hb692;
	#20
	A = 16'hb8b2;
	B = 16'h34c2;
	ans = 16'hb196;
	#20
	A = 16'hb135;
	B = 16'hb608;
	ans = 16'h2bda;
	#20
	A = 16'hb40b;
	B = 16'h2520;
	ans = 16'h9d2e;
	#20
	A = 16'hb54f;
	B = 16'h3071;
	ans = 16'ha9e5;
	#20
	A = 16'hbbe8;
	B = 16'h33dc;
	ans = 16'hb3c4;
	#20
	A = 16'hb392;
	B = 16'h3ba2;
	ans = 16'hb339;
	#20
	A = 16'h3458;
	B = 16'hb53b;
	ans = 16'hadae;
	#20
	A = 16'hb47f;
	B = 16'hb818;
	ans = 16'h309a;
	#20
	A = 16'h3b87;
	B = 16'h3720;
	ans = 16'h36b4;
	#20
	A = 16'h3ab9;
	B = 16'hb2ca;
	ans = 16'hb1b4;
	#20
	A = 16'h3b0c;
	B = 16'hbbfb;
	ans = 16'hbb08;
	#20
	A = 16'h39db;
	B = 16'h3838;
	ans = 16'h362d;
	#20
	A = 16'hafc9;
	B = 16'h3aad;
	ans = 16'hae7f;
	#20
	A = 16'h3838;
	B = 16'hac95;
	ans = 16'ha8d5;
	#20
	A = 16'hb949;
	B = 16'hb014;
	ans = 16'h2d63;
	#20
	A = 16'hb1b4;
	B = 16'hbbe6;
	ans = 16'h31a1;
	#20
	A = 16'hb125;
	B = 16'hb0df;
	ans = 16'h2644;
	#20
	A = 16'hb840;
	B = 16'h35fe;
	ans = 16'hb25e;
	#20
	A = 16'hb900;
	B = 16'h398f;
	ans = 16'hb6f3;
	#20
	A = 16'hb875;
	B = 16'hb18b;
	ans = 16'h2e2d;
	#20
	A = 16'hb1a6;
	B = 16'h3b55;
	ans = 16'hb12d;
	#20
	A = 16'h3164;
	B = 16'hb808;
	ans = 16'had6f;
	#20
	A = 16'hb3b0;
	B = 16'ha88c;
	ans = 16'h205f;
	#20
	A = 16'h3b62;
	B = 16'hb71e;
	ans = 16'hb691;
	#20
	A = 16'hb7e2;
	B = 16'h35e2;
	ans = 16'hb1cc;
	#20
	A = 16'h3850;
	B = 16'h38d8;
	ans = 16'h3539;
	#20
	A = 16'h3585;
	B = 16'h2c85;
	ans = 16'h263d;
	#20
	A = 16'h3953;
	B = 16'hae0e;
	ans = 16'hac08;
	#20
	A = 16'hb770;
	B = 16'h3bb3;
	ans = 16'hb728;
	#20
	A = 16'hb68c;
	B = 16'hb86c;
	ans = 16'h333d;
	#20
	A = 16'h3b1a;
	B = 16'h38fe;
	ans = 16'h386e;
	#20
	A = 16'h31eb;
	B = 16'h39eb;
	ans = 16'h3061;
	#20
	A = 16'haa99;
	B = 16'hb622;
	ans = 16'h250f;
	#20
	A = 16'hb5db;
	B = 16'h3a4c;
	ans = 16'hb49c;
	#20
	A = 16'h3ac3;
	B = 16'h38be;
	ans = 16'h3802;
	#20
	A = 16'h3673;
	B = 16'h282d;
	ans = 16'h22bc;
	#20
	A = 16'hb8b4;
	B = 16'h3935;
	ans = 16'hb61f;
	#20
	A = 16'h31bd;
	B = 16'ha8c3;
	ans = 16'h9ed5;
	#20
	A = 16'hbad4;
	B = 16'h3a9e;
	ans = 16'hb9a6;
	#20
	A = 16'hb9dd;
	B = 16'hb863;
	ans = 16'h366e;
	#20
	A = 16'hb4bd;
	B = 16'hb749;
	ans = 16'h3051;
	#20
	A = 16'hb9d2;
	B = 16'hba2c;
	ans = 16'h387e;
	#20
	A = 16'h39a7;
	B = 16'h114d;
	ans = 16'hf7e;
	#20
	A = 16'h387e;
	B = 16'hbac1;
	ans = 16'hb796;
	#20
	A = 16'h371b;
	B = 16'h3271;
	ans = 16'h2db9;
	#20
	A = 16'h3142;
	B = 16'h38b2;
	ans = 16'h2e2c;
	#20
	A = 16'hb43b;
	B = 16'hab5e;
	ans = 16'h23cb;
	#20
	A = 16'h3ba6;
	B = 16'h36d4;
	ans = 16'h3687;
	#20
	A = 16'h394a;
	B = 16'h316d;
	ans = 16'h2f2d;
	#20
	A = 16'hb737;
	B = 16'h3aea;
	ans = 16'hb63c;
	#20
	A = 16'hb86d;
	B = 16'hb8b7;
	ans = 16'h3537;
	#20
	A = 16'hb7e1;
	B = 16'hb9b9;
	ans = 16'h35a3;
	#20
	A = 16'hb3d1;
	B = 16'h363c;
	ans = 16'hae17;
	#20
	A = 16'h350f;
	B = 16'h390c;
	ans = 16'h3262;
	#20
	A = 16'h3a8d;
	B = 16'h38c1;
	ans = 16'h37c9;
	#20
	A = 16'hb790;
	B = 16'h377b;
	ans = 16'hb312;
	#20
	A = 16'hb5a0;
	B = 16'h3423;
	ans = 16'hadd1;
	#20
	A = 16'hb77c;
	B = 16'h3824;
	ans = 16'hb3bf;
	#20
	A = 16'hba38;
	B = 16'h383a;
	ans = 16'hb692;
	#20
	A = 16'h364f;
	B = 16'hb4a4;
	ans = 16'haf52;
	#20
	A = 16'h369a;
	B = 16'hb930;
	ans = 16'hb448;
	#20
	A = 16'h36b5;
	B = 16'h3aab;
	ans = 16'h3597;
	#20
	A = 16'h39c8;
	B = 16'h3afc;
	ans = 16'h390c;
	#20
	A = 16'hb1b1;
	B = 16'hbb8b;
	ans = 16'h315e;
	#20
	A = 16'hb2cd;
	B = 16'h3a70;
	ans = 16'hb179;
	#20
	A = 16'hb80c;
	B = 16'hb51f;
	ans = 16'h312e;
	#20
	A = 16'h2fa4;
	B = 16'hba49;
	ans = 16'hae01;
	#20
	A = 16'hba68;
	B = 16'h3376;
	ans = 16'hb1f9;
	#20
	A = 16'hb951;
	B = 16'had77;
	ans = 16'h2b43;
	#20
	A = 16'ha371;
	B = 16'hb072;
	ans = 16'h1823;
	#20
	A = 16'h3738;
	B = 16'hb4c1;
	ans = 16'hb04a;
	#20
	A = 16'hba98;
	B = 16'hb2ba;
	ans = 16'h318b;
	#20
	A = 16'h31ff;
	B = 16'hb1a0;
	ans = 16'ha837;
	#20
	A = 16'ha5bb;
	B = 16'h33dc;
	ans = 16'h9da1;
	#20
	A = 16'haea0;
	B = 16'h2d24;
	ans = 16'ha042;
	#20
	A = 16'ha95c;
	B = 16'hbb84;
	ans = 16'h2909;
	#20
	A = 16'hb586;
	B = 16'h3919;
	ans = 16'hb30a;
	#20
	A = 16'hb949;
	B = 16'ha60a;
	ans = 16'h23fb;
	#20
	A = 16'hb8e1;
	B = 16'hb4b4;
	ans = 16'h31bd;
	#20
	A = 16'had1d;
	B = 16'h3682;
	ans = 16'ha829;
	#20
	A = 16'hb8c8;
	B = 16'hb8d2;
	ans = 16'h35c3;
	#20
	A = 16'h3b90;
	B = 16'hbb37;
	ans = 16'hbad2;
	#20
	A = 16'hb904;
	B = 16'h3aa5;
	ans = 16'hb82a;
	#20
	A = 16'h34bf;
	B = 16'hb94e;
	ans = 16'hb24b;
	#20
	A = 16'h1e81;
	B = 16'hb8f8;
	ans = 16'h9c0a;
	#20
	A = 16'h3a04;
	B = 16'hb912;
	ans = 16'hb7a0;
	#20
	A = 16'hbba7;
	B = 16'h3247;
	ans = 16'hb201;
	#20
	A = 16'h3270;
	B = 16'h3bed;
	ans = 16'h3261;
	#20
	A = 16'h3b50;
	B = 16'h317f;
	ans = 16'h3106;
	#20
	A = 16'hb560;
	B = 16'ha4b9;
	ans = 16'h1e59;
	#20
	A = 16'hbb93;
	B = 16'hb7bd;
	ans = 16'h3754;
	#20
	A = 16'h3b0a;
	B = 16'h32c3;
	ans = 16'h31f3;
	#20
	A = 16'h98e6;
	B = 16'hb631;
	ans = 16'h1395;
	#20
	A = 16'h376a;
	B = 16'hb8b8;
	ans = 16'hb460;
	#20
	A = 16'h39e8;
	B = 16'hbb5a;
	ans = 16'hb96d;
	#20
	A = 16'hba60;
	B = 16'hbbf2;
	ans = 16'h3a55;
	#20
	A = 16'h2fba;
	B = 16'h3914;
	ans = 16'h2ce8;
	#20
	A = 16'hb922;
	B = 16'hb431;
	ans = 16'h3161;
	#20
	A = 16'hba9a;
	B = 16'h3abc;
	ans = 16'hb98f;
	#20
	A = 16'hb001;
	B = 16'h3652;
	ans = 16'haa54;
	#20
	A = 16'hb141;
	B = 16'hb848;
	ans = 16'h2da0;
	#20
	A = 16'hb8db;
	B = 16'h3a4f;
	ans = 16'hb7a8;
	#20
	A = 16'hb777;
	B = 16'h3bce;
	ans = 16'hb748;
	#20
	A = 16'h3b54;
	B = 16'h3759;
	ans = 16'h36bb;
	#20
	A = 16'hb71c;
	B = 16'hb939;
	ans = 16'h34a4;
	#20
	A = 16'h3100;
	B = 16'hb4a4;
	ans = 16'ha9cd;
	#20
	A = 16'hb7a2;
	B = 16'hb9c4;
	ans = 16'h3580;
	#20
	A = 16'hb8b4;
	B = 16'h382f;
	ans = 16'hb4eb;
	#20
	A = 16'hb585;
	B = 16'hbafe;
	ans = 16'h34d3;
	#20
	A = 16'h38dc;
	B = 16'h307e;
	ans = 16'h2d75;
	#20
	A = 16'hb7c5;
	B = 16'h34cf;
	ans = 16'hb0ac;
	#20
	A = 16'hb8e2;
	B = 16'h357a;
	ans = 16'hb2af;
	#20
	A = 16'h39e7;
	B = 16'h22ce;
	ans = 16'h2105;
	#20
	A = 16'hbaa6;
	B = 16'h3b93;
	ans = 16'hba4b;
	#20
	A = 16'hb8b4;
	B = 16'hb174;
	ans = 16'h2e69;
	#20
	A = 16'hb0a9;
	B = 16'hb817;
	ans = 16'h2cc4;
	#20
	A = 16'h385b;
	B = 16'hbaeb;
	ans = 16'hb788;
	#20
	A = 16'hba3f;
	B = 16'hb687;
	ans = 16'h3519;
	#20
	A = 16'hb789;
	B = 16'hb8d6;
	ans = 16'h348e;
	#20
	A = 16'h3ac4;
	B = 16'hb4f9;
	ans = 16'hb435;
	#20
	A = 16'hae56;
	B = 16'hb631;
	ans = 16'h28e7;
	#20
	A = 16'hb5ed;
	B = 16'h3a73;
	ans = 16'hb4c7;
	#20
	A = 16'ha8c8;
	B = 16'hb99d;
	ans = 16'h26b6;
	#20
	A = 16'hb769;
	B = 16'hb836;
	ans = 16'h33cd;
	#20
	A = 16'hae17;
	B = 16'h3213;
	ans = 16'ha4a0;
	#20
	A = 16'hac15;
	B = 16'hbb96;
	ans = 16'h2bbe;
	#20
	A = 16'h3a8e;
	B = 16'hb8b7;
	ans = 16'hb7ba;
	#20
	A = 16'hb9c2;
	B = 16'hbbf3;
	ans = 16'h39b9;
	#20
	A = 16'hb5f4;
	B = 16'h3a04;
	ans = 16'hb47a;
	#20
	A = 16'h2fcd;
	B = 16'hac61;
	ans = 16'ha045;
	#20
	A = 16'h390f;
	B = 16'hbb36;
	ans = 16'hb88f;
	#20
	A = 16'hb6e1;
	B = 16'hb886;
	ans = 16'h33c7;
	#20
	A = 16'h31de;
	B = 16'hb5cd;
	ans = 16'hac41;
	#20
	A = 16'h3660;
	B = 16'hb53a;
	ans = 16'hb02a;
	#20
	A = 16'hbbaa;
	B = 16'h3b38;
	ans = 16'hbaea;
	#20
	A = 16'h3aad;
	B = 16'h2ad4;
	ans = 16'h29b3;
	#20
	A = 16'hbb1a;
	B = 16'hb74e;
	ans = 16'h367c;
	#20
	A = 16'h3052;
	B = 16'hb520;
	ans = 16'ha989;
	#20
	A = 16'h32b3;
	B = 16'h28a3;
	ans = 16'h1fc4;
	#20
	A = 16'h3a2d;
	B = 16'h3791;
	ans = 16'h35d7;
	#20
	A = 16'h37dc;
	B = 16'hb81f;
	ans = 16'hb40c;
	#20
	A = 16'hb8b0;
	B = 16'h337e;
	ans = 16'hb064;
	#20
	A = 16'hbaf3;
	B = 16'h353d;
	ans = 16'hb48d;
	#20
	A = 16'hb788;
	B = 16'hb94c;
	ans = 16'h34fd;
	#20
	A = 16'hb133;
	B = 16'hb502;
	ans = 16'h2a82;
	#20
	A = 16'h3a99;
	B = 16'hab65;
	ans = 16'haa19;
	#20
	A = 16'hb9ef;
	B = 16'h3823;
	ans = 16'hb623;
	#20
	A = 16'hb86a;
	B = 16'hb87f;
	ans = 16'h34f6;
	#20
	A = 16'hb9f7;
	B = 16'hb514;
	ans = 16'h3393;
	#20
	A = 16'h39e9;
	B = 16'h3a42;
	ans = 16'h38a0;
	#20
	A = 16'hb408;
	B = 16'h3643;
	ans = 16'hae50;
	#20
	A = 16'hbbda;
	B = 16'h3937;
	ans = 16'hb91e;
	#20
	A = 16'hba30;
	B = 16'h3b7e;
	ans = 16'hb9cb;
	#20
	A = 16'hb8e0;
	B = 16'hb786;
	ans = 16'h3496;
	#20
	A = 16'hb2b0;
	B = 16'h306b;
	ans = 16'ha763;
	#20
	A = 16'h3598;
	B = 16'hbb74;
	ans = 16'hb536;
	#20
	A = 16'h31ee;
	B = 16'hb44c;
	ans = 16'haa5f;
	#20
	A = 16'h2c00;
	B = 16'h3ac0;
	ans = 16'h2ac0;
	#20
	A = 16'hb679;
	B = 16'h3a40;
	ans = 16'hb50f;
	#20
	A = 16'hb99f;
	B = 16'h3822;
	ans = 16'hb5cf;
	#20
	A = 16'h39d9;
	B = 16'h3494;
	ans = 16'h32b1;
	#20
	A = 16'hb595;
	B = 16'h3b81;
	ans = 16'hb53c;
	#20
	A = 16'hb84b;
	B = 16'h3a2c;
	ans = 16'hb6a0;
	#20
	A = 16'hb292;
	B = 16'h2438;
	ans = 16'h9aee;
	#20
	A = 16'h3a45;
	B = 16'hba89;
	ans = 16'hb91f;
	#20
	A = 16'hba43;
	B = 16'h3114;
	ans = 16'haff3;
	#20
	A = 16'hb8f8;
	B = 16'h3059;
	ans = 16'had67;
	#20
	A = 16'h356c;
	B = 16'h360b;
	ans = 16'h3018;
	#20
	A = 16'h330e;
	B = 16'h39ef;
	ans = 16'h313c;
	#20
	A = 16'hb620;
	B = 16'h2ec6;
	ans = 16'ha930;
	#20
	A = 16'h3261;
	B = 16'hb810;
	ans = 16'hae7b;
	#20
	A = 16'hbadc;
	B = 16'h3660;
	ans = 16'hb577;
	#20
	A = 16'h3b8f;
	B = 16'hbb50;
	ans = 16'hbae9;
	#20
	A = 16'hba5f;
	B = 16'h3448;
	ans = 16'hb2d2;
	#20
	A = 16'h39b9;
	B = 16'hb4a8;
	ans = 16'hb2a9;
	#20
	A = 16'hba62;
	B = 16'h3bbb;
	ans = 16'hba2b;
	#20
	A = 16'h2912;
	B = 16'hbac3;
	ans = 16'ha849;
	#20
	A = 16'hb13b;
	B = 16'h3243;
	ans = 16'ha818;
	#20
	A = 16'hadb5;
	B = 16'hb692;
	ans = 16'h28b0;
	#20
	A = 16'h3861;
	B = 16'hba0d;
	ans = 16'hb6a0;
	#20
	A = 16'hba51;
	B = 16'hb403;
	ans = 16'h3256;
	#20
	A = 16'h3bc6;
	B = 16'h3bd6;
	ans = 16'h3b9d;
	#20
	A = 16'hb9a3;
	B = 16'hbaed;
	ans = 16'h38e1;
	#20
	A = 16'hbb3f;
	B = 16'h384a;
	ans = 16'hb7c5;
	#20
	A = 16'h35b8;
	B = 16'h373d;
	ans = 16'h312d;
	#20
	A = 16'h3a85;
	B = 16'h35db;
	ans = 16'h34c6;
	#20
	A = 16'h3667;
	B = 16'hb92d;
	ans = 16'hb424;
	#20
	A = 16'h2ebf;
	B = 16'h35d8;
	ans = 16'h28ee;
	#20
	A = 16'h2f4f;
	B = 16'h38b6;
	ans = 16'h2c4e;
	#20
	A = 16'h3b26;
	B = 16'h34b9;
	ans = 16'h3438;
	#20
	A = 16'h3772;
	B = 16'h3ad5;
	ans = 16'h365c;
	#20
	A = 16'hb60d;
	B = 16'h38a9;
	ans = 16'hb30d;
	#20
	A = 16'h3588;
	B = 16'haa7f;
	ans = 16'ha47e;
	#20
	A = 16'h3b0c;
	B = 16'h36f5;
	ans = 16'h3621;
	#20
	A = 16'h389d;
	B = 16'hb931;
	ans = 16'hb5fd;
	#20
	A = 16'hb2d5;
	B = 16'h2f5a;
	ans = 16'ha647;
	#20
	A = 16'hb880;
	B = 16'hba8b;
	ans = 16'h375c;
	#20
	A = 16'hb6f0;
	B = 16'h3739;
	ans = 16'hb243;
	#20
	A = 16'hbaf3;
	B = 16'h3a34;
	ans = 16'hb963;
	#20
	A = 16'h37d6;
	B = 16'h3be7;
	ans = 16'h37be;
	#20
	A = 16'h352d;
	B = 16'h28be;
	ans = 16'h2223;
	#20
	A = 16'h3a5e;
	B = 16'h3803;
	ans = 16'h3663;
	#20
	A = 16'h2f15;
	B = 16'h399e;
	ans = 16'h2cf9;
	#20
	A = 16'hb94e;
	B = 16'hb4a2;
	ans = 16'h3225;
	#20
	A = 16'hb7b8;
	B = 16'h38cb;
	ans = 16'hb4a0;
	#20
	A = 16'h38c5;
	B = 16'h3761;
	ans = 16'h3466;
	#20
	A = 16'hb5be;
	B = 16'hab2f;
	ans = 16'h2528;
	#20
	A = 16'hb466;
	B = 16'h36d2;
	ans = 16'haf80;
	#20
	A = 16'hb499;
	B = 16'hbbf9;
	ans = 16'h3495;
	#20
	A = 16'hb879;
	B = 16'hb715;
	ans = 16'h33eb;
	#20
	A = 16'h3a69;
	B = 16'hb3ee;
	ans = 16'hb25b;
	#20
	A = 16'hb09e;
	B = 16'hb708;
	ans = 16'h2c0f;
	#20
	A = 16'h396f;
	B = 16'hb9f2;
	ans = 16'hb80a;
	#20
	A = 16'h3ac2;
	B = 16'hb99b;
	ans = 16'hb8bc;
	#20
	A = 16'h3540;
	B = 16'hb4fe;
	ans = 16'hae8d;
	#20
	A = 16'hbbbc;
	B = 16'h3044;
	ans = 16'hb020;
	#20
	A = 16'hb826;
	B = 16'hb378;
	ans = 16'h2fbf;
	#20
	A = 16'h2d98;
	B = 16'h3af3;
	ans = 16'h2cdc;
	#20
	A = 16'hb9b5;
	B = 16'h3b44;
	ans = 16'hb92f;
	#20
	A = 16'hd1d;
	B = 16'h39a2;
	ans = 16'hb33;
	#20
	A = 16'hb6e2;
	B = 16'hb5e9;
	ans = 16'h3116;
	#20
	A = 16'h380a;
	B = 16'hb71f;
	ans = 16'hb331;
	#20
	A = 16'h2ff5;
	B = 16'hb80c;
	ans = 16'hac06;
	#20
	A = 16'hb90c;
	B = 16'ha782;
	ans = 16'h24bd;
	#20
	A = 16'hb7ab;
	B = 16'h3177;
	ans = 16'had3d;
	#20
	A = 16'hb752;
	B = 16'h333f;
	ans = 16'haea1;
	#20
	A = 16'hba28;
	B = 16'h3756;
	ans = 16'hb5a5;
	#20
	A = 16'h379b;
	B = 16'hb9c2;
	ans = 16'hb579;
	#20
	A = 16'h2ca4;
	B = 16'hbaf1;
	ans = 16'hac07;
	#20
	A = 16'h397c;
	B = 16'h385d;
	ans = 16'h35fc;
	#20
	A = 16'hba37;
	B = 16'hbbd5;
	ans = 16'h3a16;
	#20
	A = 16'h36fe;
	B = 16'h349f;
	ans = 16'h300a;
	#20
	A = 16'h37b9;
	B = 16'h3b69;
	ans = 16'h3727;
	#20
	A = 16'h375b;
	B = 16'ha432;
	ans = 16'h9fb7;
	#20
	A = 16'hb75a;
	B = 16'h3a73;
	ans = 16'hb5ed;
	#20
	A = 16'h3ad6;
	B = 16'h3471;
	ans = 16'h3397;
	#20
	A = 16'h3800;
	B = 16'h3555;
	ans = 16'h3155;
	#20
	A = 16'hbb81;
	B = 16'ha43e;
	ans = 16'h23f5;
	#20
	A = 16'h38a7;
	B = 16'h3a67;
	ans = 16'h3772;
	#20
	A = 16'hb71c;
	B = 16'h328c;
	ans = 16'hadd1;
	#20
	A = 16'hb78e;
	B = 16'hb20f;
	ans = 16'h2db9;
	#20
	A = 16'hbb12;
	B = 16'h3a1b;
	ans = 16'hb965;
	#20
	A = 16'hb9b1;
	B = 16'h30fb;
	ans = 16'haf16;
	#20
	A = 16'hb2b7;
	B = 16'hb474;
	ans = 16'h2b7a;
	#20
	A = 16'h386a;
	B = 16'h3b1d;
	ans = 16'h37da;
	#20
	A = 16'hace0;
	B = 16'hb987;
	ans = 16'h2abd;
	#20
	A = 16'h38cc;
	B = 16'h399e;
	ans = 16'h36bc;
	#20
	A = 16'hb4f8;
	B = 16'h3970;
	ans = 16'hb2c1;
	#20
	A = 16'hb02d;
	B = 16'hbbd1;
	ans = 16'h3014;
	#20
	A = 16'hb662;
	B = 16'hbb01;
	ans = 16'h3597;
	#20
	A = 16'hb961;
	B = 16'h3a16;
	ans = 16'hb818;
	#20
	A = 16'h38f5;
	B = 16'hb55d;
	ans = 16'hb2a6;
	#20
	A = 16'hb6b5;
	B = 16'h34df;
	ans = 16'hb015;
	#20
	A = 16'hb8c3;
	B = 16'h36eb;
	ans = 16'hb41e;
	#20
	A = 16'hbb17;
	B = 16'h39d4;
	ans = 16'hb92a;
	#20
	A = 16'h3002;
	B = 16'hb8aa;
	ans = 16'hacac;
	#20
	A = 16'h3a83;
	B = 16'hba21;
	ans = 16'hb8fd;
	#20
	A = 16'h3bf8;
	B = 16'h2fb8;
	ans = 16'h2fb0;
	#20
	A = 16'hb447;
	B = 16'hba93;
	ans = 16'h3308;
	#20
	A = 16'hb71a;
	B = 16'h3431;
	ans = 16'haf71;
	#20
	A = 16'h3814;
	B = 16'h21cb;
	ans = 16'h1de8;
	#20
	A = 16'hb4b2;
	B = 16'hb450;
	ans = 16'h2d10;
	#20
	A = 16'h33fd;
	B = 16'h316c;
	ans = 16'h296a;
	#20
	A = 16'hb9d1;
	B = 16'h3612;
	ans = 16'hb46a;
	#20
	A = 16'h34ca;
	B = 16'h335e;
	ans = 16'h2c69;
	#20
	A = 16'hb4fa;
	B = 16'h3aa5;
	ans = 16'hb422;
	#20
	A = 16'hb7ac;
	B = 16'hb439;
	ans = 16'h300d;
	#20
	A = 16'ha8a9;
	B = 16'h39a8;
	ans = 16'ha697;
	#20
	A = 16'h3b6b;
	B = 16'h2591;
	ans = 16'h2529;
	#20
	A = 16'haa6b;
	B = 16'h3766;
	ans = 16'ha5ef;
	#20
	A = 16'h30fc;
	B = 16'hba68;
	ans = 16'haffc;
	#20
	A = 16'hb18e;
	B = 16'hb84c;
	ans = 16'h2df8;
	#20
	A = 16'hb8a7;
	B = 16'h399d;
	ans = 16'hb687;
	#20
	A = 16'h355a;
	B = 16'h3a3f;
	ans = 16'h342e;
	#20
	A = 16'h399e;
	B = 16'hb868;
	ans = 16'hb630;
	#20
	A = 16'h3926;
	B = 16'hbb69;
	ans = 16'hb8c5;
	#20
	A = 16'h2f18;
	B = 16'h3855;
	ans = 16'h2baf;
	#20
	A = 16'h3852;
	B = 16'ha827;
	ans = 16'ha47c;
	#20
	A = 16'hb8bc;
	B = 16'h382b;
	ans = 16'hb4ef;
	#20
	A = 16'hb693;
	B = 16'hb71a;
	ans = 16'h31d6;
	#20
	A = 16'hb8fa;
	B = 16'hbbe8;
	ans = 16'h38eb;
	#20
	A = 16'had8a;
	B = 16'h3a64;
	ans = 16'hac6d;
	#20
	A = 16'hb5b9;
	B = 16'h3955;
	ans = 16'hb3a1;
	#20
	A = 16'hbbcf;
	B = 16'h3bc2;
	ans = 16'hbb92;
	#20
	A = 16'hb63d;
	B = 16'h37d0;
	ans = 16'hb218;
	#20
	A = 16'h35b2;
	B = 16'h35b5;
	ans = 16'h3010;
	#20
	A = 16'h38a0;
	B = 16'haf89;
	ans = 16'hac5b;
	#20
	A = 16'h24e2;
	B = 16'hb994;
	ans = 16'ha2cf;
	#20
	A = 16'ha5ba;
	B = 16'h315f;
	ans = 16'h9bb1;
	#20
	A = 16'h3996;
	B = 16'h3803;
	ans = 16'h359a;
	#20
	A = 16'h3901;
	B = 16'hb62e;
	ans = 16'hb3bb;
	#20
	A = 16'h3940;
	B = 16'hba5e;
	ans = 16'hb82e;
	#20
	A = 16'hb851;
	B = 16'hb164;
	ans = 16'h2dd1;
	#20
	A = 16'h3bac;
	B = 16'h3b77;
	ans = 16'h3b29;
	#20
	A = 16'h2cb6;
	B = 16'hae0c;
	ans = 16'h9f1f;
	#20
	A = 16'h32a4;
	B = 16'hb905;
	ans = 16'hb02b;
	#20
	A = 16'h32d3;
	B = 16'h3941;
	ans = 16'h307b;
	#20
	A = 16'h3ab6;
	B = 16'h379b;
	ans = 16'h3661;
	#20
	A = 16'hb682;
	B = 16'h3702;
	ans = 16'hb1b3;
	#20
	A = 16'h36a4;
	B = 16'h35d7;
	ans = 16'h30d9;
	#20
	A = 16'h283a;
	B = 16'hb582;
	ans = 16'ha1d2;
	#20
	A = 16'hb66a;
	B = 16'h39ee;
	ans = 16'hb4c1;
	#20
	A = 16'h3790;
	B = 16'hb660;
	ans = 16'hb207;
	#20
	A = 16'hb99b;
	B = 16'hba35;
	ans = 16'h3859;
	#20
	A = 16'hb84f;
	B = 16'haeb8;
	ans = 16'h2b3d;
	#20
	A = 16'hb998;
	B = 16'h3543;
	ans = 16'hb35c;
	#20
	A = 16'hb7d5;
	B = 16'h3a6c;
	ans = 16'hb649;
	#20
	A = 16'h3757;
	B = 16'h391c;
	ans = 16'h34b0;
	#20
	A = 16'hbae0;
	B = 16'h3a62;
	ans = 16'hb97c;
	#20
	A = 16'hb5bd;
	B = 16'hb9ea;
	ans = 16'h343e;
	#20
	A = 16'h394f;
	B = 16'h3aa9;
	ans = 16'h386b;
	#20
	A = 16'hbb62;
	B = 16'ha898;
	ans = 16'h283d;
	#20
	A = 16'ha56c;
	B = 16'hb6f7;
	ans = 16'h20b8;
	#20
	A = 16'h3a96;
	B = 16'hb85a;
	ans = 16'hb72a;
	#20
	A = 16'hb070;
	B = 16'hb8af;
	ans = 16'h2d32;
	#20
	A = 16'h31e8;
	B = 16'h381e;
	ans = 16'h2e14;
	#20
	A = 16'haf34;
	B = 16'h37ab;
	ans = 16'haae7;
	#20
	A = 16'h3964;
	B = 16'hb9d7;
	ans = 16'hb7df;
	#20
	A = 16'hba9f;
	B = 16'hb857;
	ans = 16'h372f;
	#20
	A = 16'hb573;
	B = 16'h371f;
	ans = 16'hb0da;
	#20
	A = 16'hb87a;
	B = 16'h2be8;
	ans = 16'ha86d;
	#20
	A = 16'h3bc2;
	B = 16'h3529;
	ans = 16'h3501;
	#20
	A = 16'hbb72;
	B = 16'hb13d;
	ans = 16'h30e0;
	#20
	A = 16'hb1be;
	B = 16'h3571;
	ans = 16'habd0;
	#20
	A = 16'hb9a9;
	B = 16'hb812;
	ans = 16'h35c2;
	#20
	A = 16'h37cc;
	B = 16'h38f3;
	ans = 16'h34d3;
	#20
	A = 16'h3b4b;
	B = 16'h3adb;
	ans = 16'h3a40;
	#20
	A = 16'h2fd9;
	B = 16'hb9c0;
	ans = 16'hada4;
	#20
	A = 16'hbaad;
	B = 16'hbbb2;
	ans = 16'h3a6c;
	#20
	A = 16'h3a7d;
	B = 16'h3b97;
	ans = 16'h3a28;
	#20
	A = 16'h3b71;
	B = 16'h3b6e;
	ans = 16'h3ae9;
	#20
	A = 16'h38cc;
	B = 16'hbb2b;
	ans = 16'hb84c;
	#20
	A = 16'h39ab;
	B = 16'h26c3;
	ans = 16'h24ca;
	#20
	A = 16'h2620;
	B = 16'hbba1;
	ans = 16'ha5d7;
	#20
	A = 16'hb990;
	B = 16'hb3bf;
	ans = 16'h3163;
	#20
	A = 16'h3597;
	B = 16'hb96f;
	ans = 16'hb398;
	#20
	A = 16'h3b7b;
	B = 16'had21;
	ans = 16'haccc;
	#20
	A = 16'h39d7;
	B = 16'h347c;
	ans = 16'h328c;
	#20
	A = 16'h384a;
	B = 16'h3a87;
	ans = 16'h3700;
	#20
	A = 16'h3bdb;
	B = 16'h378b;
	ans = 16'h3768;
	#20
	A = 16'hb5f4;
	B = 16'h3182;
	ans = 16'hac19;
	#20
	A = 16'h3bd3;
	B = 16'h3895;
	ans = 16'h387b;
	#20
	A = 16'h3915;
	B = 16'hb807;
	ans = 16'hb51e;
	#20
	A = 16'h3419;
	B = 16'h3bf9;
	ans = 16'h3415;
	#20
	A = 16'haeb5;
	B = 16'h3a30;
	ans = 16'had30;
	#20
	A = 16'ha650;
	B = 16'hb4ae;
	ans = 16'h1f63;
	#20
	A = 16'h21d7;
	B = 16'h379d;
	ans = 16'h1d8f;
	#20
	A = 16'hba11;
	B = 16'hae75;
	ans = 16'h2ce5;
	#20
	A = 16'h2c2e;
	B = 16'hae5c;
	ans = 16'h9ea5;
	#20
	A = 16'h2ad3;
	B = 16'hb780;
	ans = 16'ha666;
	#20
	A = 16'hb162;
	B = 16'hba59;
	ans = 16'h3045;
	#20
	A = 16'hb661;
	B = 16'h337c;
	ans = 16'hadf8;
	#20
	A = 16'hbaf7;
	B = 16'hbb77;
	ans = 16'h3a80;
	#20
	A = 16'h3b73;
	B = 16'h365c;
	ans = 16'h35ec;
	#20
	A = 16'h33c6;
	B = 16'hbac1;
	ans = 16'hb290;
	#20
	A = 16'h354a;
	B = 16'hb81d;
	ans = 16'hb170;
	#20
	A = 16'hb6b9;
	B = 16'h3994;
	ans = 16'hb4b0;
	#20
	A = 16'hb835;
	B = 16'h35fa;
	ans = 16'hb249;
	#20
	A = 16'hb609;
	B = 16'hb102;
	ans = 16'h2b8e;
	#20
	A = 16'h3472;
	B = 16'h3435;
	ans = 16'h2cad;
	#20
	A = 16'h3a8f;
	B = 16'haf56;
	ans = 16'hae04;
	#20
	A = 16'h3886;
	B = 16'h3a05;
	ans = 16'h36cf;
	#20
	A = 16'hbab2;
	B = 16'h3859;
	ans = 16'hb747;
	#20
	A = 16'hb762;
	B = 16'hba51;
	ans = 16'h35d4;
	#20
	A = 16'h298f;
	B = 16'hb4e4;
	ans = 16'ha2cc;
	#20
	A = 16'hb443;
	B = 16'hb8b3;
	ans = 16'h3102;
	#20
	A = 16'hb81a;
	B = 16'hb9fb;
	ans = 16'h3622;
	#20
	A = 16'hbbb4;
	B = 16'hb84b;
	ans = 16'h3822;
	#20
	A = 16'h2055;
	B = 16'hbad2;
	ans = 16'h9f63;
	#20
	A = 16'h37cb;
	B = 16'h3bc7;
	ans = 16'h3793;
	#20
	A = 16'h384f;
	B = 16'ha535;
	ans = 16'ha19c;
	#20
	A = 16'hb075;
	B = 16'h38c6;
	ans = 16'had52;
	#20
	A = 16'h35b4;
	B = 16'h3001;
	ans = 16'h29b5;
	#20
	A = 16'hbae4;
	B = 16'h35e3;
	ans = 16'hb512;
	#20
	A = 16'hba45;
	B = 16'hbae3;
	ans = 16'h3966;
	#20
	A = 16'hbb84;
	B = 16'hb839;
	ans = 16'h37ef;
	#20
	A = 16'hb5dc;
	B = 16'hbb3f;
	ans = 16'h354f;
	#20
	A = 16'hbb03;
	B = 16'h380d;
	ans = 16'hb71a;
	#20
	A = 16'h39ef;
	B = 16'hb482;
	ans = 16'hb2b0;
	#20
	A = 16'hbac2;
	B = 16'hb4b1;
	ans = 16'h33ed;
	#20
	A = 16'hb61f;
	B = 16'h3abc;
	ans = 16'hb527;
	#20
	A = 16'h3777;
	B = 16'h34d1;
	ans = 16'h307f;
	#20
	A = 16'hb4ad;
	B = 16'hb38d;
	ans = 16'h2c6a;
	#20
	A = 16'h31f7;
	B = 16'h38e8;
	ans = 16'h2f51;
	#20
	A = 16'hb8b8;
	B = 16'h94cd;
	ans = 16'h11aa;
	#20
	A = 16'h3b94;
	B = 16'h3949;
	ans = 16'h3902;
	#20
	A = 16'h39c8;
	B = 16'hb73f;
	ans = 16'hb53d;
	#20
	A = 16'h39e0;
	B = 16'h389e;
	ans = 16'h36c8;
	#20
	A = 16'hbb99;
	B = 16'hbaba;
	ans = 16'h3a63;
	#20
	A = 16'h3a64;
	B = 16'hba46;
	ans = 16'hb903;
	#20
	A = 16'h32fa;
	B = 16'h38aa;
	ans = 16'h3011;
	#20
	A = 16'h3970;
	B = 16'hb7d2;
	ans = 16'hb551;
	#20
	A = 16'h3a7c;
	B = 16'h341d;
	ans = 16'h32ab;
	#20
	A = 16'h3788;
	B = 16'hb526;
	ans = 16'hb0d9;
	#20
	A = 16'habea;
	B = 16'h3762;
	ans = 16'ha74e;
	#20
	A = 16'hb1af;
	B = 16'h36d2;
	ans = 16'hacd8;
	#20
	A = 16'h3290;
	B = 16'h3924;
	ans = 16'h3038;
	#20
	A = 16'hb29f;
	B = 16'hb922;
	ans = 16'h3040;
	#20
	A = 16'h3474;
	B = 16'h38f1;
	ans = 16'h3180;
	#20
	A = 16'h3b92;
	B = 16'h3a40;
	ans = 16'h39ea;
	#20
	A = 16'hac1b;
	B = 16'hb6db;
	ans = 16'h2709;
	#20
	A = 16'h3923;
	B = 16'hb11e;
	ans = 16'hae92;
	#20
	A = 16'haa17;
	B = 16'hb5db;
	ans = 16'h2475;
	#20
	A = 16'hb655;
	B = 16'hb5c8;
	ans = 16'h3093;
	#20
	A = 16'had57;
	B = 16'h3722;
	ans = 16'ha8c3;
	#20
	A = 16'h3b66;
	B = 16'h3952;
	ans = 16'h38ec;
	#20
	A = 16'h3103;
	B = 16'h3abd;
	ans = 16'h3039;
	#20
	A = 16'h2d7f;
	B = 16'hbb8e;
	ans = 16'had31;
	#20
	A = 16'hb885;
	B = 16'h37d6;
	ans = 16'hb46d;
	#20
	A = 16'h35a2;
	B = 16'hb6d3;
	ans = 16'hb0ce;
	#20
	A = 16'h3771;
	B = 16'h385a;
	ans = 16'h340c;
	#20
	A = 16'hbbd0;
	B = 16'hbad6;
	ans = 16'h3aad;
	#20
	A = 16'h3509;
	B = 16'hb90b;
	ans = 16'hb259;
	#20
	A = 16'hb02f;
	B = 16'h36f6;
	ans = 16'hab48;
	#20
	A = 16'hb830;
	B = 16'hbaaf;
	ans = 16'h36ff;
	#20
	A = 16'hb3a1;
	B = 16'hbbd1;
	ans = 16'h3374;
	#20
	A = 16'h2d81;
	B = 16'h3463;
	ans = 16'h2609;
	#20
	A = 16'hb8f0;
	B = 16'h3462;
	ans = 16'hb169;
	#20
	A = 16'h2fbf;
	B = 16'h2e22;
	ans = 16'h21f0;
	#20
	A = 16'h3543;
	B = 16'h3a80;
	ans = 16'h3446;
	#20
	A = 16'hb694;
	B = 16'h2e19;
	ans = 16'ha904;
	#20
	A = 16'h3a27;
	B = 16'hb5f6;
	ans = 16'hb496;
	#20
	A = 16'hb9c6;
	B = 16'h307a;
	ans = 16'hae76;
	#20
	A = 16'hbaab;
	B = 16'h3a8c;
	ans = 16'hb975;
	#20
	A = 16'hb415;
	B = 16'hbb90;
	ans = 16'h33b8;
	#20
	A = 16'hb6c5;
	B = 16'h3ad3;
	ans = 16'hb5c6;
	#20
	A = 16'hb978;
	B = 16'hb616;
	ans = 16'h3429;
	#20
	A = 16'hac89;
	B = 16'h3239;
	ans = 16'ha30e;
	#20
	A = 16'h384b;
	B = 16'hbbdb;
	ans = 16'hb837;
	#20
	A = 16'haf28;
	B = 16'h3809;
	ans = 16'hab38;
	#20
	A = 16'hb592;
	B = 16'h367c;
	ans = 16'hb084;
	#20
	A = 16'h3912;
	B = 16'hb93b;
	ans = 16'hb6a1;
	#20
	A = 16'h2b33;
	B = 16'h39f0;
	ans = 16'h2958;
	#20
	A = 16'h3ab6;
	B = 16'hb0fb;
	ans = 16'hb02e;
	#20
	A = 16'h9218;
	B = 16'hbaae;
	ans = 16'h1117;
	#20
	A = 16'hb992;
	B = 16'h33cd;
	ans = 16'hb16e;
	#20
	A = 16'h3617;
	B = 16'hbb32;
	ans = 16'hb57a;
	#20
	A = 16'h387d;
	B = 16'h38c6;
	ans = 16'h355b;
	#20
	A = 16'hb807;
	B = 16'h3068;
	ans = 16'hac70;
	#20
	A = 16'hb458;
	B = 16'hacea;
	ans = 16'h2556;
	#20
	A = 16'hb549;
	B = 16'h38f1;
	ans = 16'hb287;
	#20
	A = 16'h3aa1;
	B = 16'h30e1;
	ans = 16'h300b;
	#20
	A = 16'h35ff;
	B = 16'hb981;
	ans = 16'hb420;
	#20
	A = 16'hb25b;
	B = 16'hb40b;
	ans = 16'h2a6c;
	#20
	A = 16'h3bc3;
	B = 16'hb9b1;
	ans = 16'hb986;
	#20
	A = 16'hb551;
	B = 16'hb40b;
	ans = 16'h2d60;
	#20
	A = 16'hb849;
	B = 16'hbaf2;
	ans = 16'h3771;
	#20
	A = 16'h364b;
	B = 16'haca8;
	ans = 16'ha753;
	#20
	A = 16'hb86b;
	B = 16'hb999;
	ans = 16'h362f;
	#20
	A = 16'hb9f1;
	B = 16'ha8f1;
	ans = 16'h2757;
	#20
	A = 16'h385e;
	B = 16'h3826;
	ans = 16'h3487;
	#20
	A = 16'hb84c;
	B = 16'hb9d2;
	ans = 16'h3641;
	#20
	A = 16'hb504;
	B = 16'h3918;
	ans = 16'hb263;
	#20
	A = 16'h284e;
	B = 16'h3bfc;
	ans = 16'h284c;
	#20
	A = 16'hb525;
	B = 16'hbabe;
	ans = 16'h3456;
	#20
	A = 16'h3986;
	B = 16'hb835;
	ans = 16'hb5cf;
	#20
	A = 16'h3030;
	B = 16'had63;
	ans = 16'ha1a4;
	#20
	A = 16'hb86e;
	B = 16'ha98d;
	ans = 16'h2626;
	#20
	A = 16'h348c;
	B = 16'hb51d;
	ans = 16'hadd0;
	#20
	A = 16'hbb26;
	B = 16'h39ed;
	ans = 16'hb94c;
	#20
	A = 16'h38c0;
	B = 16'h3575;
	ans = 16'h327b;
	#20
	A = 16'h3b26;
	B = 16'h32be;
	ans = 16'h3206;
	#20
	A = 16'ha476;
	B = 16'h390b;
	ans = 16'ha1a0;
	#20
	A = 16'h3bdf;
	B = 16'hb844;
	ans = 16'hb832;
	#20
	A = 16'hb857;
	B = 16'h3a01;
	ans = 16'hb684;
	#20
	A = 16'h3691;
	B = 16'hb999;
	ans = 16'hb498;
	#20
	A = 16'h33d3;
	B = 16'hae9e;
	ans = 16'ha679;
	#20
	A = 16'h3aec;
	B = 16'hb915;
	ans = 16'hb866;
	#20
	A = 16'hb29d;
	B = 16'hb857;
	ans = 16'h2f2d;
	#20
	A = 16'hba03;
	B = 16'h325f;
	ans = 16'hb0ca;
	#20
	A = 16'hb815;
	B = 16'h3530;
	ans = 16'hb14b;
	#20
	A = 16'h33fa;
	B = 16'h35c6;
	ans = 16'h2dc2;
	#20
	A = 16'h3ad3;
	B = 16'h39d7;
	ans = 16'h38fb;
	#20
	A = 16'hb3f1;
	B = 16'h3875;
	ans = 16'hb06d;
	#20
	A = 16'hb3fd;
	B = 16'h3b86;
	ans = 16'hb383;
	#20
	A = 16'hb0f1;
	B = 16'h3bb9;
	ans = 16'hb0c5;
	#20
	A = 16'h2978;
	B = 16'hbb32;
	ans = 16'ha8eb;
	#20
	A = 16'h39e3;
	B = 16'h325a;
	ans = 16'h30ac;
	#20
	A = 16'h2ce5;
	B = 16'h3b48;
	ans = 16'h2c74;
	#20
	A = 16'hb710;
	B = 16'hb924;
	ans = 16'h348a;
	#20
	A = 16'hbae9;
	B = 16'hb4f4;
	ans = 16'h3447;
	#20
	A = 16'hb8b1;
	B = 16'hb187;
	ans = 16'h2e7c;
	#20
	A = 16'hb28a;
	B = 16'h2ccc;
	ans = 16'ha3d7;
	#20
	A = 16'haf91;
	B = 16'hb3f0;
	ans = 16'h2782;
	#20
	A = 16'hb9e2;
	B = 16'haec5;
	ans = 16'h2cfa;
	#20
	A = 16'hb2d3;
	B = 16'h36a3;
	ans = 16'hada9;
	#20
	A = 16'h260a;
	B = 16'h321b;
	ans = 16'h1c9c;
	#20
	A = 16'h393f;
	B = 16'h3621;
	ans = 16'h3405;
	#20
	A = 16'h312b;
	B = 16'h37b5;
	ans = 16'h2cfb;
	#20
	A = 16'hbbd6;
	B = 16'hbb1a;
	ans = 16'h3af5;
	#20
	A = 16'hbaef;
	B = 16'hb918;
	ans = 16'h386a;
	#20
	A = 16'h3426;
	B = 16'hba9b;
	ans = 16'hb2da;
	#20
	A = 16'hb74a;
	B = 16'h3b8e;
	ans = 16'hb6e2;
	#20
	A = 16'hba87;
	B = 16'h31b9;
	ans = 16'hb0ab;
	#20
	A = 16'hbb4c;
	B = 16'hb6b5;
	ans = 16'h361e;
	#20
	A = 16'hba91;
	B = 16'h3b59;
	ans = 16'hba08;
	#20
	A = 16'h39c3;
	B = 16'hba67;
	ans = 16'hb89c;
	#20
	A = 16'hb884;
	B = 16'hb94a;
	ans = 16'h35f9;
	#20
	A = 16'hb0dd;
	B = 16'h2125;
	ans = 16'h9641;
	#20
	A = 16'h3076;
	B = 16'hb625;
	ans = 16'haada;
	#20
	A = 16'h38dc;
	B = 16'h38db;
	ans = 16'h35e6;
	#20
	A = 16'hbb1d;
	B = 16'hb394;
	ans = 16'h32bd;
	#20
	A = 16'hb950;
	B = 16'h3685;
	ans = 16'hb454;
	#20
	A = 16'hba43;
	B = 16'hb807;
	ans = 16'h364e;
	#20
	A = 16'h301e;
	B = 16'hbb97;
	ans = 16'hafd0;
	#20
	A = 16'h3b2d;
	B = 16'hb8f8;
	ans = 16'hb875;
	#20
	A = 16'h903b;
	B = 16'h3a4a;
	ans = 16'h8ea7;
	#20
	A = 16'h3b15;
	B = 16'hb7d2;
	ans = 16'hb6ec;
	#20
	A = 16'hb5fd;
	B = 16'h382c;
	ans = 16'hb23f;
	#20
	A = 16'h37af;
	B = 16'h3b8f;
	ans = 16'h3742;
	#20
	A = 16'h38ff;
	B = 16'ha73d;
	ans = 16'ha485;
	#20
	A = 16'h20f6;
	B = 16'hbbbc;
	ans = 16'ha0cc;
	#20
	A = 16'hb962;
	B = 16'h37a5;
	ans = 16'hb525;
	#20
	A = 16'h3985;
	B = 16'h396a;
	ans = 16'h3779;
	#20
	A = 16'hbb18;
	B = 16'h3457;
	ans = 16'hb3b2;
	#20
	A = 16'hb776;
	B = 16'hbb58;
	ans = 16'h36d9;
	#20
	A = 16'h264d;
	B = 16'h30a2;
	ans = 16'h1b4c;
	#20
	A = 16'h3b51;
	B = 16'hb128;
	ans = 16'hb0b7;
	#20
	A = 16'hb468;
	B = 16'hb6c3;
	ans = 16'h2f73;
	#20
	A = 16'h3856;
	B = 16'h397b;
	ans = 16'h35f1;
	#20
	A = 16'h3b8e;
	B = 16'h3897;
	ans = 16'h3856;
	#20
	A = 16'hb2d1;
	B = 16'hbb66;
	ans = 16'h324e;
	#20
	A = 16'h2526;
	B = 16'h3483;
	ans = 16'h1dcf;
	#20
	A = 16'h37f0;
	B = 16'hbb1a;
	ans = 16'hb70c;
	#20
	A = 16'hb6c0;
	B = 16'h35a3;
	ans = 16'hb0c2;
	#20
	A = 16'h3959;
	B = 16'h3b8c;
	ans = 16'h390b;
	#20
	A = 16'h397b;
	B = 16'hba82;
	ans = 16'hb875;
	#20
	A = 16'hb31c;
	B = 16'h3401;
	ans = 16'hab1e;
	#20
	A = 16'h29ad;
	B = 16'hbb1f;
	ans = 16'ha90d;
	#20
	A = 16'h3308;
	B = 16'hbb1e;
	ans = 16'hb241;
	#20
	A = 16'h3a14;
	B = 16'h390e;
	ans = 16'h37ae;
	#20
	A = 16'h395e;
	B = 16'h384e;
	ans = 16'h35c7;
	#20
	A = 16'h3a62;
	B = 16'h3b6e;
	ans = 16'h39ee;
	#20
	A = 16'hbbba;
	B = 16'h319b;
	ans = 16'hb16a;
	#20
	A = 16'hb4f7;
	B = 16'h2b86;
	ans = 16'ha4ab;
	#20
	A = 16'hb823;
	B = 16'h360e;
	ans = 16'hb243;
	#20
	A = 16'h35b3;
	B = 16'h2a28;
	ans = 16'h2463;
	#20
	A = 16'h3631;
	B = 16'h39bf;
	ans = 16'h3472;
	#20
	A = 16'habc7;
	B = 16'h37ad;
	ans = 16'ha776;
	#20
	A = 16'h39a4;
	B = 16'h33d5;
	ans = 16'h3186;
	#20
	A = 16'hb6e3;
	B = 16'h3929;
	ans = 16'hb471;
	#20
	A = 16'h3826;
	B = 16'hb151;
	ans = 16'had84;
	#20
	A = 16'h3708;
	B = 16'hb83a;
	ans = 16'hb36e;
	#20
	A = 16'hbb4f;
	B = 16'hb9c6;
	ans = 16'h3946;
	#20
	A = 16'hba8a;
	B = 16'h3860;
	ans = 16'hb727;
	#20
	A = 16'h3993;
	B = 16'h33c8;
	ans = 16'h316c;
	#20
	A = 16'hb8b5;
	B = 16'h3abb;
	ans = 16'hb7ec;
	#20
	A = 16'h373d;
	B = 16'hb9ce;
	ans = 16'hb541;
	#20
	A = 16'h33ff;
	B = 16'hbb3b;
	ans = 16'hb33a;
	#20
	A = 16'hb19d;
	B = 16'hba49;
	ans = 16'h3069;
	#20
	A = 16'hb8a4;
	B = 16'h3849;
	ans = 16'hb4f9;
	#20
	A = 16'hbbf4;
	B = 16'h2824;
	ans = 16'ha81e;
	#20
	A = 16'hb6b8;
	B = 16'hbb8a;
	ans = 16'h3655;
	#20
	A = 16'hba0f;
	B = 16'hbb5e;
	ans = 16'h3994;
	#20
	A = 16'h38b9;
	B = 16'hb838;
	ans = 16'hb4fb;
	#20
	A = 16'hb0d3;
	B = 16'h32c8;
	ans = 16'ha817;
	#20
	A = 16'hab30;
	B = 16'h3b97;
	ans = 16'haad2;
	#20
	A = 16'hbad6;
	B = 16'hbbee;
	ans = 16'h3ac7;
	#20
	A = 16'h34ea;
	B = 16'hb897;
	ans = 16'hb1a4;
	#20
	A = 16'hb970;
	B = 16'h2f89;
	ans = 16'had1f;
	#20
	A = 16'hb5a7;
	B = 16'h320a;
	ans = 16'hac44;
	#20
	A = 16'h386d;
	B = 16'h2e63;
	ans = 16'h2b11;
	#20
	A = 16'hba08;
	B = 16'hab57;
	ans = 16'h2989;
	#20
	A = 16'h3560;
	B = 16'hbad2;
	ans = 16'hb495;
	#20
	A = 16'hb462;
	B = 16'h3bcd;
	ans = 16'hb446;
	#20
	A = 16'h3bc4;
	B = 16'hb9ca;
	ans = 16'hb99f;
	#20
	A = 16'h344d;
	B = 16'h38a9;
	ans = 16'h3103;
	#20
	A = 16'hb8c9;
	B = 16'h381f;
	ans = 16'hb4ee;
	#20
	A = 16'hb5e1;
	B = 16'h3a65;
	ans = 16'hb4b3;
	#20
	A = 16'h2b3a;
	B = 16'hb874;
	ans = 16'ha806;
	#20
	A = 16'h3863;
	B = 16'h3480;
	ans = 16'h30ef;
	#20
	A = 16'h3a28;
	B = 16'had74;
	ans = 16'hac32;
	#20
	A = 16'hb43b;
	B = 16'h383e;
	ans = 16'hb07d;
	#20
	A = 16'hb4a5;
	B = 16'h3ac5;
	ans = 16'hb3dc;
	#20
	A = 16'hba01;
	B = 16'h3bfa;
	ans = 16'hb9fc;
	#20
	A = 16'hbab3;
	B = 16'h3b72;
	ans = 16'hba3c;
	#20
	A = 16'h3168;
	B = 16'h2f1a;
	ans = 16'h24cd;
	#20
	A = 16'hb9d9;
	B = 16'h3882;
	ans = 16'hb697;
	#20
	A = 16'hbbaf;
	B = 16'hb7fd;
	ans = 16'h37ac;
	#20
	A = 16'h389d;
	B = 16'h391d;
	ans = 16'h35e6;
	#20
	A = 16'h35f3;
	B = 16'h3a12;
	ans = 16'h3484;
	#20
	A = 16'hb698;
	B = 16'hbadc;
	ans = 16'h35a7;
	#20
	A = 16'h34f3;
	B = 16'h3bcb;
	ans = 16'h34d2;
	#20
	A = 16'hb7a0;
	B = 16'hb69d;
	ans = 16'h324e;
	#20
	A = 16'hb3f4;
	B = 16'hb495;
	ans = 16'h2c8e;
	#20
	A = 16'h2c62;
	B = 16'hb595;
	ans = 16'ha61e;
	#20
	A = 16'h2d58;
	B = 16'hba1b;
	ans = 16'hac14;
	#20
	A = 16'h3615;
	B = 16'hb7be;
	ans = 16'hb1e3;
	#20
	A = 16'hbb9b;
	B = 16'hb109;
	ans = 16'h30c9;
	#20
	A = 16'h33fb;
	B = 16'h350c;
	ans = 16'h2d09;
	#20
	A = 16'hb91c;
	B = 16'h1b99;
	ans = 16'h98da;
	#20
	A = 16'h3a6d;
	B = 16'h3562;
	ans = 16'h3453;
	#20
	A = 16'hba3a;
	B = 16'hbad0;
	ans = 16'h394d;
	#20
	A = 16'h3a3e;
	B = 16'hb797;
	ans = 16'hb5ec;
	#20
	A = 16'hafff;
	B = 16'h38d8;
	ans = 16'hacd7;
	#20
	A = 16'hbb5b;
	B = 16'hb9e0;
	ans = 16'h3967;
	#20
	A = 16'h34e3;
	B = 16'haffd;
	ans = 16'ha8e1;
	#20
	A = 16'h3b29;
	B = 16'hb746;
	ans = 16'hb683;
	#20
	A = 16'hb9b1;
	B = 16'h3a90;
	ans = 16'hb8ab;
	#20
	A = 16'h33e0;
	B = 16'hba9b;
	ans = 16'hb281;
	#20
	A = 16'h38f4;
	B = 16'h3b5f;
	ans = 16'h3890;
	#20
	A = 16'h3480;
	B = 16'h3692;
	ans = 16'h2f64;
	#20
	A = 16'hba76;
	B = 16'hb5d9;
	ans = 16'h34b9;
	#20
	A = 16'h39a0;
	B = 16'hb1ca;
	ans = 16'hb012;
	#20
	A = 16'hb977;
	B = 16'h39cc;
	ans = 16'hb7eb;
	#20
	A = 16'ha9d0;
	B = 16'h2a84;
	ans = 16'h98bc;
	#20
	A = 16'had7b;
	B = 16'hb569;
	ans = 16'h276a;
	#20
	A = 16'h3942;
	B = 16'h372a;
	ans = 16'h34b5;
	#20
	A = 16'hbbac;
	B = 16'ha675;
	ans = 16'h2631;
	#20
	A = 16'h3567;
	B = 16'h3b59;
	ans = 16'h34f6;
	#20
	A = 16'h395c;
	B = 16'h37e4;
	ans = 16'h3549;
	#20
	A = 16'h34da;
	B = 16'h2f85;
	ans = 16'h288f;
	#20
	A = 16'h3aa6;
	B = 16'hba66;
	ans = 16'hb951;
	#20
	A = 16'h33bf;
	B = 16'hbaac;
	ans = 16'hb276;
	#20
	A = 16'h38da;
	B = 16'h3560;
	ans = 16'h3285;
	#20
	A = 16'hb804;
	B = 16'hb824;
	ans = 16'h3428;
	#20
	A = 16'h3892;
	B = 16'hba66;
	ans = 16'hb750;
	#20
	A = 16'hb818;
	B = 16'h343f;
	ans = 16'hb058;
	#20
	A = 16'hb177;
	B = 16'ha2f3;
	ans = 16'h18bf;
	#20
	A = 16'h1d62;
	B = 16'h34ef;
	ans = 16'h16a4;
	#20
	A = 16'hb572;
	B = 16'hb9b3;
	ans = 16'h33c2;
	#20
	A = 16'hb23f;
	B = 16'hb9d5;
	ans = 16'h308e;
	#20
	A = 16'h30aa;
	B = 16'hb587;
	ans = 16'haa72;
	#20
	A = 16'h332b;
	B = 16'hb689;
	ans = 16'haddb;
	#20
	A = 16'hb9fc;
	B = 16'hb557;
	ans = 16'h33fd;
	#20
	A = 16'hba1e;
	B = 16'hbaf1;
	ans = 16'h394f;
	#20
	A = 16'h3a4f;
	B = 16'hb874;
	ans = 16'hb706;
	#20
	A = 16'hb928;
	B = 16'hb863;
	ans = 16'h35a8;
	#20
	A = 16'hb119;
	B = 16'h34c3;
	ans = 16'haa12;
	#20
	A = 16'h2906;
	B = 16'h3ab6;
	ans = 16'h2837;
	#20
	A = 16'h3947;
	B = 16'hb979;
	ans = 16'hb738;
	#20
	A = 16'h3726;
	B = 16'h3526;
	ans = 16'h309a;
	#20
	A = 16'h30ee;
	B = 16'hbaf5;
	ans = 16'hb049;
	#20
	A = 16'h3834;
	B = 16'h2e14;
	ans = 16'h2a63;
	#20
	A = 16'hb905;
	B = 16'h3b0b;
	ans = 16'hb86b;
	#20
	A = 16'hba3d;
	B = 16'h2a8b;
	ans = 16'ha91a;
	#20
	A = 16'hbb25;
	B = 16'hb88b;
	ans = 16'h380f;
	#20
	A = 16'hac67;
	B = 16'h3a0c;
	ans = 16'haaa8;
	#20
	A = 16'hb92f;
	B = 16'h3b98;
	ans = 16'hb8ec;
	#20
	A = 16'h3835;
	B = 16'h3501;
	ans = 16'h3143;
	#20
	A = 16'h366f;
	B = 16'hab46;
	ans = 16'ha5d9;
	#20
	A = 16'hbb1b;
	B = 16'h38cf;
	ans = 16'hb845;
	#20
	A = 16'hb5a3;
	B = 16'hb2ae;
	ans = 16'h2cb5;
	#20
	A = 16'h39b9;
	B = 16'h3bf1;
	ans = 16'h39ae;
	#20
	A = 16'h271d;
	B = 16'h31ee;
	ans = 16'h1d46;
	#20
	A = 16'h3594;
	B = 16'hb5c7;
	ans = 16'hb007;
	#20
	A = 16'hb4af;
	B = 16'h37cf;
	ans = 16'hb092;
	#20
	A = 16'h2eb3;
	B = 16'h3b99;
	ans = 16'h2e5d;
	#20
	A = 16'hb894;
	B = 16'h34f7;
	ans = 16'hb1af;
	#20
	A = 16'hade1;
	B = 16'h3b10;
	ans = 16'had31;
	#20
	A = 16'h372d;
	B = 16'hb4c0;
	ans = 16'hb043;
	#20
	A = 16'hbb3d;
	B = 16'hb871;
	ans = 16'h3805;
	#20
	A = 16'h3afd;
	B = 16'ha8a3;
	ans = 16'ha80d;
	#20
	A = 16'h34e4;
	B = 16'hb1ce;
	ans = 16'hab19;
	#20
	A = 16'hb8ba;
	B = 16'h3174;
	ans = 16'hae72;
	#20
	A = 16'h3589;
	B = 16'hb896;
	ans = 16'hb259;
	#20
	A = 16'hbba2;
	B = 16'h37bc;
	ans = 16'hb761;
	#20
	A = 16'hb69d;
	B = 16'hbaf2;
	ans = 16'h35be;
	#20
	A = 16'hba9c;
	B = 16'h3a31;
	ans = 16'hb91d;
	#20
	A = 16'hba45;
	B = 16'h3591;
	ans = 16'hb45d;
	#20
	A = 16'hba59;
	B = 16'h32c9;
	ans = 16'hb162;
	#20
	A = 16'h3bc1;
	B = 16'hb812;
	ans = 16'hb7e4;
	#20
	A = 16'h3882;
	B = 16'hb956;
	ans = 16'hb603;
	#20
	A = 16'h397a;
	B = 16'hba60;
	ans = 16'hb85d;
	#20
	A = 16'h3ae7;
	B = 16'h39f2;
	ans = 16'h3921;
	#20
	A = 16'h3a8f;
	B = 16'hb633;
	ans = 16'hb515;
	#20
	A = 16'hb5cf;
	B = 16'h342c;
	ans = 16'hae0f;
	#20
	A = 16'hb4b7;
	B = 16'h37c2;
	ans = 16'hb092;
	#20
	A = 16'h3530;
	B = 16'h39b7;
	ans = 16'h3369;
	#20
	A = 16'hb5ed;
	B = 16'h3aca;
	ans = 16'hb507;
	#20
	A = 16'hb730;
	B = 16'haf23;
	ans = 16'h2a69;
	#20
	A = 16'h3bc3;
	B = 16'h3a7d;
	ans = 16'h3a4c;
	#20
	A = 16'h3a4a;
	B = 16'hbbe0;
	ans = 16'hba31;
	#20
	A = 16'hb3c2;
	B = 16'hb893;
	ans = 16'h3070;
	#20
	A = 16'hb7cd;
	B = 16'hb0d3;
	ans = 16'h2cb4;
	#20
	A = 16'h3851;
	B = 16'h3548;
	ans = 16'h31b3;
	#20
	A = 16'hb9e2;
	B = 16'hb721;
	ans = 16'h353e;
	#20
	A = 16'ha823;
	B = 16'hb8fd;
	ans = 16'h2529;
	#20
	A = 16'hb43d;
	B = 16'hbb04;
	ans = 16'h336f;
	#20
	A = 16'h3af8;
	B = 16'h358a;
	ans = 16'h34d3;
	#20
	A = 16'hb6a5;
	B = 16'hba80;
	ans = 16'h3566;
	#20
	A = 16'h3241;
	B = 16'h36ca;
	ans = 16'h2d4f;
	#20
	A = 16'h3afe;
	B = 16'hb52f;
	ans = 16'hb488;
	#20
	A = 16'hb3cc;
	B = 16'h3a7c;
	ans = 16'hb252;
	#20
	A = 16'hb937;
	B = 16'hb91b;
	ans = 16'h36a8;
	#20
	A = 16'hb2f6;
	B = 16'h38c8;
	ans = 16'hb029;
	#20
	A = 16'hb61b;
	B = 16'hb6ba;
	ans = 16'h3122;
	#20
	A = 16'h347a;
	B = 16'hbad5;
	ans = 16'hb3a5;
	#20
	A = 16'hb7a1;
	B = 16'hb82f;
	ans = 16'h33fb;
	#20
	A = 16'h1434;
	B = 16'hba80;
	ans = 16'h92d4;
	#20
	A = 16'hb8e7;
	B = 16'h30ee;
	ans = 16'hae0b;
	#20
	A = 16'hb981;
	B = 16'hba5d;
	ans = 16'h3861;
	#20
	A = 16'hab4f;
	B = 16'h359b;
	ans = 16'ha51f;
	#20
	A = 16'ha0e2;
	B = 16'h35e7;
	ans = 16'h9b34;
	#20
	A = 16'h3ade;
	B = 16'h38ae;
	ans = 16'h3804;
	#20
	A = 16'h3964;
	B = 16'h2f5d;
	ans = 16'h2cf6;
	#20
	A = 16'h3a58;
	B = 16'hba3f;
	ans = 16'hb8f4;
	#20
	A = 16'h31a4;
	B = 16'hb1b4;
	ans = 16'ha805;
	#20
	A = 16'hb955;
	B = 16'hb663;
	ans = 16'h3442;
	#20
	A = 16'h33ea;
	B = 16'h3b27;
	ans = 16'h3313;
	#20
	A = 16'h3124;
	B = 16'hbaeb;
	ans = 16'hb072;
	#20
	A = 16'hbbee;
	B = 16'hbafb;
	ans = 16'h3aeb;
	#20
	A = 16'hb8dc;
	B = 16'h3417;
	ans = 16'hb0f8;
	#20
	A = 16'h3ae4;
	B = 16'h36f3;
	ans = 16'h35fc;
	#20
	A = 16'h39a5;
	B = 16'hba84;
	ans = 16'hb899;
	#20
	A = 16'hba22;
	B = 16'h3571;
	ans = 16'hb42c;
	#20
	A = 16'hb963;
	B = 16'h3466;
	ans = 16'hb1ec;
	#20
	A = 16'hb8d0;
	B = 16'hba60;
	ans = 16'h37ac;
	#20
	A = 16'hb6fb;
	B = 16'h33c8;
	ans = 16'haeca;
	#20
	A = 16'hbaa0;
	B = 16'h3b84;
	ans = 16'hba39;
	#20
	A = 16'h3770;
	B = 16'h3942;
	ans = 16'h34e3;
	#20
	A = 16'hb988;
	B = 16'h3b32;
	ans = 16'hb8fa;
	#20
	A = 16'h2d72;
	B = 16'h398c;
	ans = 16'h2b8d;
	#20
	A = 16'h316a;
	B = 16'hbb8d;
	ans = 16'hb11c;
	#20
	A = 16'h346f;
	B = 16'hb780;
	ans = 16'hb028;
	#20
	A = 16'h2dfb;
	B = 16'h3a03;
	ans = 16'h2c7e;
	#20
	A = 16'hb84e;
	B = 16'hafe0;
	ans = 16'h2c3d;
	#20
	A = 16'hbad4;
	B = 16'h3b6d;
	ans = 16'hba57;
	#20
	A = 16'hb838;
	B = 16'h9c9e;
	ans = 16'h18df;
	#20
	A = 16'hb852;
	B = 16'hb90c;
	ans = 16'h3573;
	#20
	A = 16'h3307;
	B = 16'hb757;
	ans = 16'hae73;
	#20
	A = 16'h3760;
	B = 16'h3aee;
	ans = 16'h3663;
	#20
	A = 16'h3bad;
	B = 16'hb746;
	ans = 16'hb6fb;
	#20
	A = 16'h31b6;
	B = 16'hb609;
	ans = 16'hac4f;
	#20
	A = 16'h3914;
	B = 16'h365c;
	ans = 16'h3409;
	#20
	A = 16'h3172;
	B = 16'h3a05;
	ans = 16'h3019;
	#20
	A = 16'h2e90;
	B = 16'h364e;
	ans = 16'h292c;
	#20
	A = 16'ha856;
	B = 16'h38f1;
	ans = 16'ha55b;
	#20
	A = 16'h3a0e;
	B = 16'hb88e;
	ans = 16'hb6e5;
	#20
	A = 16'hba3b;
	B = 16'h3992;
	ans = 16'hb857;
	#20
	A = 16'hb3b6;
	B = 16'hb050;
	ans = 16'h2828;
	#20
	A = 16'hbacf;
	B = 16'h37e9;
	ans = 16'hb6bb;
	#20
	A = 16'hb4b7;
	B = 16'h24b2;
	ans = 16'h9d89;
	#20
	A = 16'hb76c;
	B = 16'hb5a5;
	ans = 16'h313d;
	#20
	A = 16'hbbb6;
	B = 16'h355b;
	ans = 16'hb529;
	#20
	A = 16'hb446;
	B = 16'h308b;
	ans = 16'ha8db;
	#20
	A = 16'h39f0;
	B = 16'hbaed;
	ans = 16'hb924;
	#20
	A = 16'h2d56;
	B = 16'h3a59;
	ans = 16'h2c3c;
	#20
	A = 16'h3001;
	B = 16'h3a44;
	ans = 16'h2e46;
	#20
	A = 16'hbbdf;
	B = 16'h386d;
	ans = 16'hb85b;
	#20
	A = 16'hb903;
	B = 16'h2ec6;
	ans = 16'hac3e;
	#20
	A = 16'hb23f;
	B = 16'h2ebd;
	ans = 16'ha543;
	#20
	A = 16'hbb9f;
	B = 16'h3b8a;
	ans = 16'hbb2f;
	#20
	A = 16'hb83b;
	B = 16'h39c7;
	ans = 16'hb61c;
	#20
	A = 16'hbb5b;
	B = 16'h3522;
	ans = 16'hb4b8;
	#20
	A = 16'h2d21;
	B = 16'h35f4;
	ans = 16'h27a2;
	#20
	A = 16'ha8b8;
	B = 16'h3061;
	ans = 16'h9d2a;
	#20
	A = 16'hb91c;
	B = 16'h39f3;
	ans = 16'hb799;
	#20
	A = 16'hb801;
	B = 16'h2132;
	ans = 16'h9d33;
	#20
	A = 16'h3092;
	B = 16'h3650;
	ans = 16'h2b36;
	#20
	A = 16'hb608;
	B = 16'hb75d;
	ans = 16'h318d;
	#20
	A = 16'ha6d4;
	B = 16'hb8cb;
	ans = 16'h2417;
	#20
	A = 16'hbb02;
	B = 16'h34b5;
	ans = 16'hb420;
	#20
	A = 16'h3b87;
	B = 16'h38be;
	ans = 16'h3876;
	#20
	A = 16'hb271;
	B = 16'hb856;
	ans = 16'h2efb;
	#20
	A = 16'h39fa;
	B = 16'hafd7;
	ans = 16'haddb;
	#20
	A = 16'h3bb8;
	B = 16'h3a66;
	ans = 16'h3a2c;
	#20
	A = 16'h39e2;
	B = 16'hb196;
	ans = 16'hb01c;
	#20
	A = 16'hb3a3;
	B = 16'h349b;
	ans = 16'hac65;
	#20
	A = 16'h22f9;
	B = 16'hbb33;
	ans = 16'ha246;
	#20
	A = 16'h3a4a;
	B = 16'h3a6e;
	ans = 16'h390e;
	#20
	A = 16'hba50;
	B = 16'hba84;
	ans = 16'h3924;
	#20
	A = 16'hb816;
	B = 16'hb972;
	ans = 16'h3590;
	#20
	A = 16'hbbb8;
	B = 16'h3b3c;
	ans = 16'hbafb;
	#20
	A = 16'h30ed;
	B = 16'h3744;
	ans = 16'h2c79;
	#20
	A = 16'hbb62;
	B = 16'h3b9f;
	ans = 16'hbb08;
	#20
	A = 16'hb8bf;
	B = 16'hb2fe;
	ans = 16'h3026;
	#20
	A = 16'ha903;
	B = 16'h3632;
	ans = 16'ha3c3;
	#20
	A = 16'hba25;
	B = 16'hbb10;
	ans = 16'h396d;
	#20
	A = 16'ha988;
	B = 16'hbbd3;
	ans = 16'h2969;
	#20
	A = 16'h3446;
	B = 16'hbb4c;
	ans = 16'hb3cc;
	#20
	A = 16'hb8dc;
	B = 16'h3b77;
	ans = 16'hb889;
	#20
	A = 16'h381f;
	B = 16'hb4c8;
	ans = 16'hb0ed;
	#20
	A = 16'h2ec7;
	B = 16'hb7a7;
	ans = 16'haa7c;
	#20
	A = 16'h390b;
	B = 16'h3bd0;
	ans = 16'h38ed;
	#20
	A = 16'hb3fc;
	B = 16'h392c;
	ans = 16'hb129;
	#20
	A = 16'h3960;
	B = 16'hb86b;
	ans = 16'hb5f0;
	#20
	A = 16'h38e5;
	B = 16'h34a2;
	ans = 16'h31ab;
	#20
	A = 16'h3090;
	B = 16'h2cd9;
	ans = 16'h2188;
	#20
	A = 16'hb533;
	B = 16'h2e55;
	ans = 16'ha81d;
	#20
	A = 16'hba29;
	B = 16'hb841;
	ans = 16'h368d;
	#20
	A = 16'hbbdb;
	B = 16'hac19;
	ans = 16'h2c06;
	#20
	A = 16'hba8c;
	B = 16'h3796;
	ans = 16'hb635;
	#20
	A = 16'h3ae4;
	B = 16'h3948;
	ans = 16'h388d;
	#20
	A = 16'hba7e;
	B = 16'hb740;
	ans = 16'h35e2;
	#20
	A = 16'h2b03;
	B = 16'h2919;
	ans = 16'h1878;
	#20
	A = 16'hb40a;
	B = 16'h389d;
	ans = 16'hb0a9;
	#20
	A = 16'h1eec;
	B = 16'hb700;
	ans = 16'h9a0e;
	#20
	A = 16'hbbef;
	B = 16'hbbda;
	ans = 16'h3bc9;
	#20
	A = 16'h3b5b;
	B = 16'haac0;
	ans = 16'haa35;
	#20
	A = 16'hb441;
	B = 16'hb79f;
	ans = 16'h300d;
	#20
	A = 16'hb49e;
	B = 16'hb00c;
	ans = 16'h28ac;
	#20
	A = 16'h3493;
	B = 16'h317b;
	ans = 16'h2a44;
	#20
	A = 16'hbaa7;
	B = 16'h35c9;
	ans = 16'hb4d0;
	#20
	A = 16'h3525;
	B = 16'hba5a;
	ans = 16'hb416;
	#20
	A = 16'h322d;
	B = 16'h30fc;
	ans = 16'h27b2;
	#20
	A = 16'h2f15;
	B = 16'hba48;
	ans = 16'had8f;
	#20
	A = 16'hb6a3;
	B = 16'h37e6;
	ans = 16'hb28d;
	#20
	A = 16'hba51;
	B = 16'hbb42;
	ans = 16'h39bb;
	#20
	A = 16'hba13;
	B = 16'h34de;
	ans = 16'hb364;
	#20
	A = 16'h3a41;
	B = 16'ha8a6;
	ans = 16'ha745;
	#20
	A = 16'h392a;
	B = 16'h3359;
	ans = 16'h30be;
	#20
	A = 16'hb995;
	B = 16'haef4;
	ans = 16'h2cda;
	#20
	A = 16'hb869;
	B = 16'h3267;
	ans = 16'haf0f;
	#20
	A = 16'h339c;
	B = 16'hbb42;
	ans = 16'hb2e7;
	#20
	A = 16'hb8b3;
	B = 16'hb945;
	ans = 16'h3631;
	#20
	A = 16'hb59b;
	B = 16'h398b;
	ans = 16'hb3c5;
	#20
	A = 16'hb949;
	B = 16'hbb1d;
	ans = 16'h38b3;
	#20
	A = 16'hbbcc;
	B = 16'hb831;
	ans = 16'h3816;
	#20
	A = 16'haed5;
	B = 16'ha818;
	ans = 16'h1afe;
	#20
	A = 16'hac1d;
	B = 16'hb62d;
	ans = 16'h265a;
	#20
	A = 16'h3bef;
	B = 16'ha30a;
	ans = 16'ha2fb;
	#20
	A = 16'hb98e;
	B = 16'h36b3;
	ans = 16'hb4a7;
	#20
	A = 16'h382a;
	B = 16'hb8ed;
	ans = 16'hb521;
	#20
	A = 16'hb7e8;
	B = 16'h354a;
	ans = 16'hb13a;
	#20
	A = 16'h36cb;
	B = 16'h3245;
	ans = 16'h2d53;
	#20
	A = 16'hbbd0;
	B = 16'hbb34;
	ans = 16'h3b09;
	#20
	A = 16'hb426;
	B = 16'hae41;
	ans = 16'h267c;
	#20
	A = 16'h3aae;
	B = 16'hb730;
	ans = 16'hb600;
	#20
	A = 16'h3382;
	B = 16'h3553;
	ans = 16'h2cff;
	#20
	A = 16'hba3c;
	B = 16'hb093;
	ans = 16'h2f21;
	#20
	A = 16'h38eb;
	B = 16'hba39;
	ans = 16'hb7a7;
	#20
	A = 16'hb59f;
	B = 16'hb99a;
	ans = 16'h33df;
	#20
	A = 16'h3bfe;
	B = 16'h39ce;
	ans = 16'h39cd;
	#20
	A = 16'h36ac;
	B = 16'hb396;
	ans = 16'hae54;
	#20
	A = 16'hb776;
	B = 16'hb6be;
	ans = 16'h324a;
	#20
	A = 16'hb233;
	B = 16'h3a2b;
	ans = 16'hb0c8;
	#20
	A = 16'hb873;
	B = 16'h3b1a;
	ans = 16'hb7e6;
	#20
	A = 16'h30f3;
	B = 16'hbbdd;
	ans = 16'hb0dd;
	#20
	A = 16'hb3f3;
	B = 16'hb9ff;
	ans = 16'h31f5;
	#20
	A = 16'hb638;
	B = 16'h2dcf;
	ans = 16'ha884;
	#20
	A = 16'h36d2;
	B = 16'hb8c3;
	ans = 16'hb40f;
	#20
	A = 16'h3aac;
	B = 16'hb910;
	ans = 16'hb839;
	#20
	A = 16'hb59d;
	B = 16'h376f;
	ans = 16'hb137;
	#20
	A = 16'hb8f2;
	B = 16'hba8e;
	ans = 16'h380d;
	#20
	A = 16'haf34;
	B = 16'hb62b;
	ans = 16'h298e;
	#20
	A = 16'h31a6;
	B = 16'h3519;
	ans = 16'h2b33;
	#20
	A = 16'h3af5;
	B = 16'h2cf0;
	ans = 16'h2c4b;
	#20
	A = 16'hb835;
	B = 16'hb2bb;
	ans = 16'h2f14;
	#20
	A = 16'hb92f;
	B = 16'hba0c;
	ans = 16'h37d6;
	#20
	A = 16'hac56;
	B = 16'h3a37;
	ans = 16'haabd;
	#20
	A = 16'hb5e1;
	B = 16'hb851;
	ans = 16'h3258;
	#20
	A = 16'hb069;
	B = 16'hb99b;
	ans = 16'h2e2e;
	#20
	A = 16'h3af7;
	B = 16'hb106;
	ans = 16'hb060;
	#20
	A = 16'h32e3;
	B = 16'hb83e;
	ans = 16'haf4e;
	#20
	A = 16'hb9a0;
	B = 16'hb8d8;
	ans = 16'h36d0;
	#20
	A = 16'h3248;
	B = 16'h3835;
	ans = 16'h2e9b;
	#20
	A = 16'hba38;
	B = 16'hb86a;
	ans = 16'h36dd;
	#20
	A = 16'hb951;
	B = 16'hb92c;
	ans = 16'h36e0;
	#20
	A = 16'hb87a;
	B = 16'h36f0;
	ans = 16'hb3c4;
	#20
	A = 16'h36b2;
	B = 16'h3afe;
	ans = 16'h35da;
	#20
	A = 16'h381a;
	B = 16'hb421;
	ans = 16'hb03c;
	#20
	A = 16'hbb8d;
	B = 16'h357b;
	ans = 16'hb52c;
	#20
	A = 16'hbbc2;
	B = 16'h3526;
	ans = 16'hb4fe;
	#20
	A = 16'hbbf2;
	B = 16'hb042;
	ans = 16'h303b;
	#20
	A = 16'h3a94;
	B = 16'hab8f;
	ans = 16'haa37;
	#20
	A = 16'h38f0;
	B = 16'ha99f;
	ans = 16'ha6f0;
	#20
	A = 16'hb578;
	B = 16'h2e53;
	ans = 16'ha853;
	#20
	A = 16'hb2b7;
	B = 16'hb871;
	ans = 16'h2f75;
	#20
	A = 16'h391d;
	B = 16'hbbd6;
	ans = 16'hb902;
	#20
	A = 16'h355e;
	B = 16'hba37;
	ans = 16'hb42b;
	#20
	A = 16'h3b78;
	B = 16'h39dd;
	ans = 16'h3979;
	#20
	A = 16'hb06b;
	B = 16'h3b0c;
	ans = 16'hafc9;
	#20
	A = 16'hb907;
	B = 16'h39ab;
	ans = 16'hb720;
	#20
	A = 16'hb046;
	B = 16'hb7f0;
	ans = 16'h2c3d;
	#20
	A = 16'h3b78;
	B = 16'hbbac;
	ans = 16'hbb2a;
	#20
	A = 16'h322a;
	B = 16'h339d;
	ans = 16'h29de;
	#20
	A = 16'hb5bb;
	B = 16'h378f;
	ans = 16'hb16a;
	#20
	A = 16'h3514;
	B = 16'h2ce1;
	ans = 16'h2632;
	#20
	A = 16'h2a1a;
	B = 16'h31b2;
	ans = 16'h2058;
	#20
	A = 16'hae37;
	B = 16'h3688;
	ans = 16'ha913;
	#20
	A = 16'hba73;
	B = 16'h37a4;
	ans = 16'hb629;
	#20
	A = 16'h20dd;
	B = 16'hb447;
	ans = 16'h9933;
	#20
	A = 16'hbbf9;
	B = 16'h3b47;
	ans = 16'hbb41;
	#20
	A = 16'h308e;
	B = 16'h3866;
	ans = 16'h2d02;
	#20
	A = 16'h3b75;
	B = 16'hb755;
	ans = 16'hb6d6;
	#20
	A = 16'hb509;
	B = 16'h3274;
	ans = 16'hac10;
	#20
	A = 16'hac7a;
	B = 16'h39bb;
	ans = 16'haa6a;
	#20
	A = 16'hb8f3;
	B = 16'ha2a3;
	ans = 16'h201b;
	#20
	A = 16'h393c;
	B = 16'hb979;
	ans = 16'hb729;
	#20
	A = 16'h3853;
	B = 16'hb76b;
	ans = 16'hb402;
	#20
	A = 16'hbb66;
	B = 16'haeb1;
	ans = 16'h2e30;
	#20
	A = 16'h3870;
	B = 16'h3a5b;
	ans = 16'h370d;
	#20
	A = 16'h3987;
	B = 16'h32c0;
	ans = 16'h30aa;
	#20
	A = 16'hb652;
	B = 16'h36b6;
	ans = 16'hb14d;
	#20
	A = 16'haf79;
	B = 16'hbb6a;
	ans = 16'h2eed;
	#20
	A = 16'hb440;
	B = 16'h35f8;
	ans = 16'hae58;
	#20
	A = 16'hba9d;
	B = 16'hb359;
	ans = 16'h3213;
	#20
	A = 16'hbb69;
	B = 16'h3785;
	ans = 16'hb6f7;
	#20
	A = 16'h3a3f;
	B = 16'hb2dd;
	ans = 16'hb15c;
	#20
	A = 16'hb425;
	B = 16'hb815;
	ans = 16'h303b;
	#20
	A = 16'hb2d3;
	B = 16'h3bc8;
	ans = 16'hb2a3;
	#20
	A = 16'h3be2;
	B = 16'hb818;
	ans = 16'hb809;
	#20
	A = 16'h3bfe;
	B = 16'hb843;
	ans = 16'hb842;
	#20
	A = 16'hbb1d;
	B = 16'hb612;
	ans = 16'h3566;
	#20
	A = 16'hb8a7;
	B = 16'h3bf5;
	ans = 16'hb8a1;
	#20
	A = 16'hbbfa;
	B = 16'h3881;
	ans = 16'hb87e;
	#20
	A = 16'h37b4;
	B = 16'h2365;
	ans = 16'h1f1f;
	#20
	A = 16'h3397;
	B = 16'hb78a;
	ans = 16'haf27;
	#20
	A = 16'h330c;
	B = 16'h3753;
	ans = 16'h2e74;
	#20
	A = 16'h33d3;
	B = 16'hba60;
	ans = 16'hb23c;
	#20
	A = 16'h3815;
	B = 16'hb9bf;
	ans = 16'hb5dd;
	#20
	A = 16'ha14d;
	B = 16'h3593;
	ans = 16'h9b63;
	#20
	A = 16'hbab4;
	B = 16'h34fc;
	ans = 16'hb42d;
	#20
	A = 16'hb8bf;
	B = 16'h3348;
	ans = 16'hb052;
	#20
	A = 16'h3754;
	B = 16'hb99a;
	ans = 16'hb522;
	#20
	A = 16'hadea;
	B = 16'hb432;
	ans = 16'h2634;
	#20
	A = 16'h35a3;
	B = 16'h2e2f;
	ans = 16'h285b;
	#20
	A = 16'had11;
	B = 16'h3a38;
	ans = 16'habe0;
	#20
	A = 16'hb8af;
	B = 16'hba4d;
	ans = 16'h3761;
	#20
	A = 16'h34ee;
	B = 16'h397a;
	ans = 16'h32c0;
	#20
	A = 16'h3ba9;
	B = 16'h3662;
	ans = 16'h361d;
	#20
	A = 16'h3234;
	B = 16'hbbf7;
	ans = 16'hb22d;
	#20
	A = 16'hb600;
	B = 16'h3a82;
	ans = 16'hb4e2;
	#20
	A = 16'h370a;
	B = 16'hb85b;
	ans = 16'hb3aa;
	#20
	A = 16'h3713;
	B = 16'h3b44;
	ans = 16'h366d;
	#20
	A = 16'hb393;
	B = 16'hba1e;
	ans = 16'h31cb;
	#20
	A = 16'h3669;
	B = 16'h38e1;
	ans = 16'h33d2;
	#20
	A = 16'hae50;
	B = 16'h3a78;
	ans = 16'had1b;
	#20
	A = 16'h3943;
	B = 16'hbb32;
	ans = 16'hb8bc;
	#20
	A = 16'h34de;
	B = 16'h3847;
	ans = 16'h3134;
	#20
	A = 16'h39f9;
	B = 16'h3046;
	ans = 16'h2e62;
	#20
	A = 16'hb996;
	B = 16'h3acc;
	ans = 16'hb8bf;
	#20
	A = 16'h34f3;
	B = 16'hb08d;
	ans = 16'ha9a1;
	#20
	A = 16'h343c;
	B = 16'h355e;
	ans = 16'h2daf;
	#20
	A = 16'h3911;
	B = 16'h32a1;
	ans = 16'h3033;
	#20
	A = 16'hb9b2;
	B = 16'hbafa;
	ans = 16'h38f7;
	#20
	A = 16'hb55a;
	B = 16'hb7a8;
	ans = 16'h311f;
	#20
	A = 16'hb942;
	B = 16'h30d0;
	ans = 16'hae53;
	#20
	A = 16'hb16f;
	B = 16'h398e;
	ans = 16'haf8c;
	#20
	A = 16'h398d;
	B = 16'h38cc;
	ans = 16'h36a8;
	#20
	A = 16'h34de;
	B = 16'h3136;
	ans = 16'h2a57;
	#20
	A = 16'h331c;
	B = 16'h3bc7;
	ans = 16'h32e9;
	#20
	A = 16'h2c26;
	B = 16'h366a;
	ans = 16'h26a7;
	#20
	A = 16'hb7a2;
	B = 16'h3b2f;
	ans = 16'hb6db;
	#20
	A = 16'h3940;
	B = 16'h3ab4;
	ans = 16'h3866;
	#20
	A = 16'hb80a;
	B = 16'h3804;
	ans = 16'hb40e;
	#20
	A = 16'hb8be;
	B = 16'hb5ad;
	ans = 16'h32bb;
	#20
	A = 16'hb972;
	B = 16'hb41a;
	ans = 16'h3195;
	#20
	A = 16'h2ddd;
	B = 16'hb915;
	ans = 16'hab73;
	#20
	A = 16'hba40;
	B = 16'haf4f;
	ans = 16'h2db6;
	#20
	A = 16'hb98e;
	B = 16'hbbc1;
	ans = 16'h3962;
	#20
	A = 16'hba72;
	B = 16'h359a;
	ans = 16'hb483;
	#20
	A = 16'h39fb;
	B = 16'hbb05;
	ans = 16'hb93f;
	#20
	A = 16'h37fa;
	B = 16'h1c65;
	ans = 16'h1862;
	#20
	A = 16'hb06d;
	B = 16'h39e5;
	ans = 16'hae86;
	#20
	A = 16'h2922;
	B = 16'hba89;
	ans = 16'ha831;
	#20
	A = 16'h3bfe;
	B = 16'hae91;
	ans = 16'hae8f;
	#20
	A = 16'h3a28;
	B = 16'h3a2a;
	ans = 16'h38be;
	#20
	A = 16'hb830;
	B = 16'h39cc;
	ans = 16'hb612;
	#20
	A = 16'ha082;
	B = 16'hb334;
	ans = 16'h180f;
	#20
	A = 16'h3365;
	B = 16'hb2e9;
	ans = 16'haa63;
	#20
	A = 16'h3013;
	B = 16'h3626;
	ans = 16'h2a43;
	#20
	A = 16'hba52;
	B = 16'h360b;
	ans = 16'hb4c6;
	#20
	A = 16'hbb49;
	B = 16'hb3ca;
	ans = 16'h3318;
	#20
	A = 16'h39da;
	B = 16'hba47;
	ans = 16'hb897;
	#20
	A = 16'h3beb;
	B = 16'hb07c;
	ans = 16'hb070;
	#20
	A = 16'hb871;
	B = 16'hbb0b;
	ans = 16'h37d2;
	#20
	A = 16'hb71e;
	B = 16'hba7f;
	ans = 16'h35c7;
	#20
	A = 16'h39e3;
	B = 16'hb841;
	ans = 16'hb643;
	#20
	A = 16'h3781;
	B = 16'hb269;
	ans = 16'hae03;
	#20
	A = 16'h30d7;
	B = 16'h3657;
	ans = 16'h2bac;
	#20
	A = 16'h3332;
	B = 16'h3b41;
	ans = 16'h3286;
	#20
	A = 16'hb558;
	B = 16'h32d2;
	ans = 16'hac8e;
	#20
	A = 16'hb51f;
	B = 16'h291f;
	ans = 16'ha28e;
	#20
	A = 16'h2f64;
	B = 16'h3549;
	ans = 16'h28e2;
	#20
	A = 16'h268c;
	B = 16'hbb8a;
	ans = 16'ha62b;
	#20
	A = 16'hb362;
	B = 16'hba10;
	ans = 16'h3198;
	#20
	A = 16'h33c4;
	B = 16'h3a3a;
	ans = 16'h320b;
	#20
	A = 16'hb834;
	B = 16'hb8b0;
	ans = 16'h34ed;
	#20
	A = 16'hb793;
	B = 16'h3233;
	ans = 16'haddf;
	#20
	A = 16'h3af7;
	B = 16'hb8d0;
	ans = 16'hb831;
	#20
	A = 16'hb6e2;
	B = 16'h37af;
	ans = 16'hb29c;
	#20
	A = 16'h3b01;
	B = 16'h35e4;
	ans = 16'h3528;
	#20
	A = 16'h3037;
	B = 16'h32c3;
	ans = 16'h2720;
	#20
	A = 16'hb952;
	B = 16'h3a98;
	ans = 16'hb863;
	#20
	A = 16'hb7d2;
	B = 16'h3768;
	ans = 16'hb33d;
	#20
	A = 16'hb48d;
	B = 16'haef0;
	ans = 16'h27e5;
	#20
	A = 16'h3a7f;
	B = 16'hb2bb;
	ans = 16'hb177;
	#20
	A = 16'h356c;
	B = 16'hae6e;
	ans = 16'ha85c;
	#20
	A = 16'h3267;
	B = 16'hba19;
	ans = 16'hb0e1;
	#20
	A = 16'h3b90;
	B = 16'h39a0;
	ans = 16'h3951;
	#20
	A = 16'hba6a;
	B = 16'hb5b3;
	ans = 16'h3492;
	#20
	A = 16'h336b;
	B = 16'hb58a;
	ans = 16'had23;
	#20
	A = 16'hb27a;
	B = 16'hb8b8;
	ans = 16'h2fa4;
	#20
	A = 16'hb5e8;
	B = 16'h3a57;
	ans = 16'hb4ae;
	#20
	A = 16'hafe0;
	B = 16'ha008;
	ans = 16'h13f0;
	#20
	A = 16'h3a66;
	B = 16'hba3e;
	ans = 16'hb8fe;
	#20
	A = 16'h3aad;
	B = 16'h3a87;
	ans = 16'h3972;
	#20
	A = 16'h344d;
	B = 16'hb4c3;
	ans = 16'had1f;
	#20
	A = 16'hb7fb;
	B = 16'hb96a;
	ans = 16'h3567;
	#20
	A = 16'h39bd;
	B = 16'hba59;
	ans = 16'hb88e;
	#20
	A = 16'hb98f;
	B = 16'hbb10;
	ans = 16'h38e8;
	#20
	A = 16'hb10c;
	B = 16'h38ab;
	ans = 16'hade4;
	#20
	A = 16'h38f5;
	B = 16'hb555;
	ans = 16'hb29c;
	#20
	A = 16'h3072;
	B = 16'hb464;
	ans = 16'ha8e1;
	#20
	A = 16'h3c00;
	B = 16'hb7df;
	ans = 16'hb7df;
	#20
	A = 16'hb511;
	B = 16'hb188;
	ans = 16'h2b02;
	#20
	A = 16'h39ab;
	B = 16'hae31;
	ans = 16'hac63;
	#20
	A = 16'h38f0;
	B = 16'hb408;
	ans = 16'hb0fa;
	#20
	A = 16'h3b5b;
	B = 16'hbae8;
	ans = 16'hba5a;
	#20
	A = 16'hb5e1;
	B = 16'hb1a9;
	ans = 16'h2c29;
	#20
	A = 16'hb6af;
	B = 16'hb499;
	ans = 16'h2faf;
	#20
	A = 16'hba43;
	B = 16'h385e;
	ans = 16'hb6d6;
	#20
	A = 16'hb8a1;
	B = 16'hb9d7;
	ans = 16'h36c2;
	#20
	A = 16'h3a1a;
	B = 16'hb6f9;
	ans = 16'hb551;
	#20
	A = 16'h34d5;
	B = 16'h387f;
	ans = 16'h316e;
	#20
	A = 16'h2a27;
	B = 16'h35b9;
	ans = 16'h2467;
	#20
	A = 16'hb3c5;
	B = 16'h34ee;
	ans = 16'hacca;
	#20
	A = 16'h3651;
	B = 16'hbbad;
	ans = 16'hb60f;
	#20
	A = 16'haea6;
	B = 16'h384e;
	ans = 16'hab28;
	#20
	A = 16'h3449;
	B = 16'h39a8;
	ans = 16'h320f;
	#20
	A = 16'hba28;
	B = 16'hadb7;
	ans = 16'h2c66;
	#20
	A = 16'hb941;
	B = 16'h34a1;
	ans = 16'hb214;
	#20
	A = 16'h3a7e;
	B = 16'hbb0d;
	ans = 16'hb9b9;
	#20
	A = 16'hb768;
	B = 16'h36db;
	ans = 16'hb259;
	#20
	A = 16'h357b;
	B = 16'hb62d;
	ans = 16'hb03b;
	#20
	A = 16'h335a;
	B = 16'h3b54;
	ans = 16'h32bc;
	#20
	A = 16'h3103;
	B = 16'haff2;
	ans = 16'ha4fa;
	#20
	A = 16'h3843;
	B = 16'hbb11;
	ans = 16'hb787;
	#20
	A = 16'h32a2;
	B = 16'h38e6;
	ans = 16'h3010;
	#20
	A = 16'h341f;
	B = 16'h388b;
	ans = 16'h30ae;
	#20
	A = 16'hb858;
	B = 16'h2cf6;
	ans = 16'ha963;
	#20
	A = 16'hb8f9;
	B = 16'hb5ba;
	ans = 16'h331e;
	#20
	A = 16'hb980;
	B = 16'hbafb;
	ans = 16'h38cd;
	#20
	A = 16'hb8b1;
	B = 16'h3807;
	ans = 16'hb4b9;
	#20
	A = 16'h35e2;
	B = 16'h3906;
	ans = 16'h3363;
	#20
	A = 16'h3069;
	B = 16'h39f0;
	ans = 16'h2e8c;
	#20
	A = 16'h3912;
	B = 16'h3afa;
	ans = 16'h386c;
	#20
	A = 16'hb7b0;
	B = 16'h394c;
	ans = 16'hb517;
	#20
	A = 16'h34af;
	B = 16'hb91b;
	ans = 16'hb1fa;
	#20
	A = 16'h3728;
	B = 16'h35a1;
	ans = 16'h3109;
	#20
	A = 16'hbb13;
	B = 16'h3b58;
	ans = 16'hba7e;
	#20
	A = 16'h3adb;
	B = 16'hb33a;
	ans = 16'hb231;
	#20
	A = 16'hb7d3;
	B = 16'h3833;
	ans = 16'hb41b;
	#20
	A = 16'hb3fb;
	B = 16'h3830;
	ans = 16'hb02d;
	#20
	A = 16'h3115;
	B = 16'h3885;
	ans = 16'h2dbe;
	#20
	A = 16'hb953;
	B = 16'ha4c4;
	ans = 16'h2258;
	#20
	A = 16'hb310;
	B = 16'h3b65;
	ans = 16'hb287;
	#20
	A = 16'hbb35;
	B = 16'h3a39;
	ans = 16'hb99b;
	#20
	A = 16'h31d8;
	B = 16'h3764;
	ans = 16'h2d66;
	#20
	A = 16'hb9b0;
	B = 16'h39cd;
	ans = 16'hb820;
	#20
	A = 16'h3050;
	B = 16'hb9ad;
	ans = 16'hae1f;
	#20
	A = 16'h39fe;
	B = 16'h3afd;
	ans = 16'h393c;
	#20
	A = 16'h367a;
	B = 16'hb944;
	ans = 16'hb443;
	#20
	A = 16'hbb0b;
	B = 16'hb83a;
	ans = 16'h3771;
	#20
	A = 16'h37d1;
	B = 16'h35ee;
	ans = 16'h31cb;
	#20
	A = 16'h34a3;
	B = 16'hbbd3;
	ans = 16'hb489;
	#20
	A = 16'h3a6e;
	B = 16'h34ca;
	ans = 16'h33b3;
	#20
	A = 16'hbaeb;
	B = 16'h3a64;
	ans = 16'hb987;
	#20
	A = 16'hb833;
	B = 16'h322a;
	ans = 16'hae79;
	#20
	A = 16'h2c93;
	B = 16'hb76b;
	ans = 16'ha83e;
	#20
	A = 16'h3b1b;
	B = 16'h37c1;
	ans = 16'h36e3;
	#20
	A = 16'ha8c5;
	B = 16'hbb17;
	ans = 16'h283a;
	#20
	A = 16'hb71a;
	B = 16'h3758;
	ans = 16'hb285;
	#20
	A = 16'h3b1d;
	B = 16'h3a5b;
	ans = 16'h39a7;
	#20
	A = 16'h3b62;
	B = 16'hb85a;
	ans = 16'hb804;
	#20
	A = 16'h3881;
	B = 16'h33eb;
	ans = 16'h3075;
	#20
	A = 16'h2fb8;
	B = 16'hbb73;
	ans = 16'haf30;
	#20
	A = 16'hb9f1;
	B = 16'h36b0;
	ans = 16'hb4f7;
	#20
	A = 16'hb911;
	B = 16'h37a2;
	ans = 16'hb4d5;
	#20
	A = 16'h347c;
	B = 16'h3591;
	ans = 16'h2e3e;
	#20
	A = 16'h3bf6;
	B = 16'h3b99;
	ans = 16'h3b90;
	#20
	A = 16'h38f7;
	B = 16'h3b34;
	ans = 16'h3878;
	#20
	A = 16'h2fa0;
	B = 16'hb768;
	ans = 16'hab0f;
	#20
	A = 16'h333b;
	B = 16'hb8e7;
	ans = 16'hb06e;
	#20
	A = 16'hb862;
	B = 16'hb443;
	ans = 16'h30ab;
	#20
	A = 16'hba31;
	B = 16'h325c;
	ans = 16'hb0ec;
	#20
	A = 16'h351e;
	B = 16'h2dc3;
	ans = 16'h275f;
	#20
	A = 16'hb045;
	B = 16'h9cde;
	ans = 16'h1132;
	#20
	A = 16'h3393;
	B = 16'hb765;
	ans = 16'haf00;
	#20
	A = 16'hb0b8;
	B = 16'hb97c;
	ans = 16'h2e78;
	#20
	A = 16'h2f8d;
	B = 16'h3846;
	ans = 16'h2c09;
	#20
	A = 16'hba33;
	B = 16'had49;
	ans = 16'h2c18;
	#20
	A = 16'hb45d;
	B = 16'h3bc2;
	ans = 16'hb43b;
	#20
	A = 16'h399c;
	B = 16'hb990;
	ans = 16'hb7cd;
	#20
	A = 16'h3a4f;
	B = 16'hb0c0;
	ans = 16'haf7e;
	#20
	A = 16'h3ab3;
	B = 16'hbadc;
	ans = 16'hb9be;
	#20
	A = 16'h3012;
	B = 16'hb74f;
	ans = 16'hab70;
	#20
	A = 16'h30d2;
	B = 16'h2e50;
	ans = 16'h239b;
	#20
	A = 16'hb518;
	B = 16'h3bf1;
	ans = 16'hb50e;
	#20
	A = 16'h33a5;
	B = 16'hb85b;
	ans = 16'hb029;
	#20
	A = 16'h3006;
	B = 16'h37ce;
	ans = 16'h2bda;
	#20
	A = 16'hbbfb;
	B = 16'hb864;
	ans = 16'h3861;
	#20
	A = 16'h381f;
	B = 16'hb002;
	ans = 16'hac21;
	#20
	A = 16'h366e;
	B = 16'h35d3;
	ans = 16'h30ae;
	#20
	A = 16'hb815;
	B = 16'h2d55;
	ans = 16'ha971;
	#20
	A = 16'h356f;
	B = 16'hb8e8;
	ans = 16'hb2aa;
	#20
	A = 16'hb172;
	B = 16'haea8;
	ans = 16'h2488;
	#20
	A = 16'h3bf7;
	B = 16'hb6c1;
	ans = 16'hb6b9;
	#20
	A = 16'h3456;
	B = 16'h39aa;
	ans = 16'h3224;
	#20
	A = 16'hadf5;
	B = 16'hbb04;
	ans = 16'h2d39;
	#20
	A = 16'hbbf6;
	B = 16'hb83e;
	ans = 16'h3839;
	#20
	A = 16'haf14;
	B = 16'hb609;
	ans = 16'h2957;
	#20
	A = 16'h3bfa;
	B = 16'h3be8;
	ans = 16'h3be2;
	#20
	A = 16'h3bde;
	B = 16'h29e8;
	ans = 16'h29cf;
	#20
	A = 16'hb851;
	B = 16'h3b52;
	ans = 16'hb7e6;
	#20
	A = 16'h2441;
	B = 16'h39d9;
	ans = 16'h2238;
	#20
	A = 16'h3ac6;
	B = 16'h3451;
	ans = 16'h334f;
	#20
	A = 16'hb5bc;
	B = 16'h32f8;
	ans = 16'hacff;
	#20
	A = 16'h36f4;
	B = 16'hb13e;
	ans = 16'hac8e;
	#20
	A = 16'hba01;
	B = 16'h2597;
	ans = 16'ha432;
	#20
	A = 16'hb840;
	B = 16'hb22e;
	ans = 16'h2e91;
	#20
	A = 16'hb793;
	B = 16'hb269;
	ans = 16'h2e12;
	#20
	A = 16'h3b2d;
	B = 16'hbb4f;
	ans = 16'hba8e;
	#20
	A = 16'h3b6f;
	B = 16'hb1de;
	ans = 16'hb174;
	#20
	A = 16'h387d;
	B = 16'hb516;
	ans = 16'hb1b5;
	#20
	A = 16'hb611;
	B = 16'hb9e2;
	ans = 16'h3476;
	#20
	A = 16'h3501;
	B = 16'h3489;
	ans = 16'h2dac;
	#20
	A = 16'haf58;
	B = 16'haa41;
	ans = 16'h1dbe;
	#20
	A = 16'h38e0;
	B = 16'h39b5;
	ans = 16'h36f5;
	#20
	A = 16'hb982;
	B = 16'hbb28;
	ans = 16'h38ed;
	#20
	A = 16'hb99f;
	B = 16'h3518;
	ans = 16'hb328;
	#20
	A = 16'hbb1e;
	B = 16'hb643;
	ans = 16'h3592;
	#20
	A = 16'hb355;
	B = 16'hb6ad;
	ans = 16'h2e1e;
	#20
	A = 16'had4e;
	B = 16'h34df;
	ans = 16'ha676;
	#20
	A = 16'hb56c;
	B = 16'h3820;
	ans = 16'hb197;
	#20
	A = 16'h3b69;
	B = 16'hb147;
	ans = 16'hb0e3;
	#20
	A = 16'hb8a8;
	B = 16'hb221;
	ans = 16'h2f22;
	#20
	A = 16'hba4b;
	B = 16'hbb16;
	ans = 16'h3993;
	#20
	A = 16'h3b90;
	B = 16'hbba5;
	ans = 16'hbb3a;
	#20
	A = 16'hb65e;
	B = 16'hb3ca;
	ans = 16'h2e33;
	#20
	A = 16'hb8c6;
	B = 16'hb744;
	ans = 16'h3456;
	#20
	A = 16'hb984;
	B = 16'h3809;
	ans = 16'hb590;
	#20
	A = 16'h32f2;
	B = 16'h379a;
	ans = 16'h2e99;
	#20
	A = 16'hb477;
	B = 16'hb48c;
	ans = 16'h2d13;
	#20
	A = 16'h34a1;
	B = 16'hb0bf;
	ans = 16'ha97e;
	#20
	A = 16'h380c;
	B = 16'hb5ec;
	ans = 16'hb1fe;
	#20
	A = 16'hbaa3;
	B = 16'h3264;
	ans = 16'hb14d;
	#20
	A = 16'h362d;
	B = 16'h2d53;
	ans = 16'h281c;
	#20
	A = 16'hb94e;
	B = 16'hb3d4;
	ans = 16'h3131;
	#20
	A = 16'hb77f;
	B = 16'hb93a;
	ans = 16'h34e6;
	#20
	A = 16'haf5f;
	B = 16'hbb56;
	ans = 16'h2ec2;
	#20
	A = 16'h38f6;
	B = 16'h2d24;
	ans = 16'h2a60;
	#20
	A = 16'hb7d4;
	B = 16'h2e7f;
	ans = 16'haa5b;
	#20
	A = 16'hb12b;
	B = 16'hb14c;
	ans = 16'h26d8;
	#20
	A = 16'hb691;
	B = 16'hb85f;
	ans = 16'h332d;
	#20
	A = 16'hb91e;
	B = 16'hbb90;
	ans = 16'h38d6;
	#20
	A = 16'h39b0;
	B = 16'h3385;
	ans = 16'h3159;
	#20
	A = 16'h391e;
	B = 16'h3964;
	ans = 16'h36e5;
	#20
	A = 16'hb32d;
	B = 16'h3746;
	ans = 16'hae86;
	#20
	A = 16'hb3e7;
	B = 16'hbbca;
	ans = 16'h33b2;
	#20
	A = 16'h38e9;
	B = 16'h3831;
	ans = 16'h3525;
	#20
	A = 16'hb697;
	B = 16'h3a1b;
	ans = 16'hb507;
	#20
	A = 16'h3a7c;
	B = 16'hb3b7;
	ans = 16'hb241;
	#20
	A = 16'hb6e8;
	B = 16'h2a0d;
	ans = 16'ha539;
	#20
	A = 16'h36a5;
	B = 16'hb4c2;
	ans = 16'hafe7;
	#20
	A = 16'h38ff;
	B = 16'hb708;
	ans = 16'hb464;
	#20
	A = 16'hb777;
	B = 16'h3b17;
	ans = 16'hb69e;
	#20
	A = 16'h3847;
	B = 16'had2b;
	ans = 16'ha987;
	#20
	A = 16'h3861;
	B = 16'hb106;
	ans = 16'had80;
	#20
	A = 16'h337e;
	B = 16'hb6bf;
	ans = 16'hae51;
	#20
	A = 16'h38bb;
	B = 16'had67;
	ans = 16'haa64;
	#20
	A = 16'h238f;
	B = 16'hbb07;
	ans = 16'ha2a4;
	#20
	A = 16'hbabc;
	B = 16'hb7e1;
	ans = 16'h36a2;
	#20
	A = 16'h38b3;
	B = 16'hbbfe;
	ans = 16'hb8b2;
	#20
	A = 16'h3449;
	B = 16'h33d0;
	ans = 16'h2c2f;
	#20
	A = 16'h3a67;
	B = 16'h2e99;
	ans = 16'h2d48;
	#20
	A = 16'hb874;
	B = 16'hb831;
	ans = 16'h34ab;
	#20
	A = 16'hb80b;
	B = 16'hba6e;
	ans = 16'h3680;
	#20
	A = 16'hb3e6;
	B = 16'hb49c;
	ans = 16'h2c8d;
	#20
	A = 16'h35e6;
	B = 16'h379a;
	ans = 16'h319b;
	#20
	A = 16'hb7dc;
	B = 16'h3b62;
	ans = 16'hb741;
	#20
	A = 16'hb93d;
	B = 16'h3be5;
	ans = 16'hb92b;
	#20
	A = 16'hb95c;
	B = 16'h300c;
	ans = 16'had6c;
	#20
	A = 16'h32d4;
	B = 16'ha88f;
	ans = 16'h9fc8;
	#20
	A = 16'hb51c;
	B = 16'h30f7;
	ans = 16'haa58;
	#20
	A = 16'hbbbf;
	B = 16'h3719;
	ans = 16'hb6df;
	#20
	A = 16'h3601;
	B = 16'h3800;
	ans = 16'h3201;
	#20
	A = 16'h3517;
	B = 16'h29c6;
	ans = 16'h2359;
	#20
	A = 16'h399b;
	B = 16'h3b4d;
	ans = 16'h391e;
	#20
	A = 16'hb637;
	B = 16'hbba4;
	ans = 16'h35f0;
	#20
	A = 16'h1e18;
	B = 16'hb603;
	ans = 16'h9894;
	#20
	A = 16'h30f0;
	B = 16'h38e0;
	ans = 16'h2e04;
	#20
	A = 16'hbbfa;
	B = 16'h3b5c;
	ans = 16'hbb56;
	#20
	A = 16'h3841;
	B = 16'h352a;
	ans = 16'h317e;
	#20
	A = 16'h35a4;
	B = 16'h2b6b;
	ans = 16'h253b;
	#20
	A = 16'hb56e;
	B = 16'h386d;
	ans = 16'hb202;
	#20
	A = 16'h3b74;
	B = 16'h38df;
	ans = 16'h388a;
	#20
	A = 16'hb0ba;
	B = 16'h37b8;
	ans = 16'hac8f;
	#20
	A = 16'hbbc8;
	B = 16'hb5a0;
	ans = 16'h3579;
	#20
	A = 16'h39fd;
	B = 16'hb680;
	ans = 16'hb4de;
	#20
	A = 16'h3023;
	B = 16'hb7e9;
	ans = 16'hac17;
	#20
	A = 16'h3b87;
	B = 16'hb623;
	ans = 16'hb5c6;
	#20
	A = 16'hbbc0;
	B = 16'h34ef;
	ans = 16'hb4c8;
	#20
	A = 16'h39d8;
	B = 16'hbbfb;
	ans = 16'hb9d4;
	#20
	A = 16'hb696;
	B = 16'h2f13;
	ans = 16'ha9d3;
	#20
	A = 16'hb039;
	B = 16'h3409;
	ans = 16'ha843;
	#20
	A = 16'hb9af;
	B = 16'h3786;
	ans = 16'hb558;
	#20
	A = 16'ha5b4;
	B = 16'hba86;
	ans = 16'h24a7;
	#20
	A = 16'h3b6f;
	B = 16'h37d3;
	ans = 16'h3745;
	#20
	A = 16'hb734;
	B = 16'hb83f;
	ans = 16'h33a5;
	#20
	A = 16'h33bf;
	B = 16'h3757;
	ans = 16'h2f1b;
	#20
	A = 16'hbbe0;
	B = 16'hbb74;
	ans = 16'h3b56;
	#20
	A = 16'hb937;
	B = 16'ha7db;
	ans = 16'h251f;
	#20
	A = 16'hb672;
	B = 16'hb279;
	ans = 16'h2d37;
	#20
	A = 16'h310a;
	B = 16'h3ba8;
	ans = 16'h30d3;
	#20
	A = 16'h2f2b;
	B = 16'hb233;
	ans = 16'ha58e;
	#20
	A = 16'h385b;
	B = 16'hb5fc;
	ans = 16'hb284;
	#20
	A = 16'h2f02;
	B = 16'hb4dc;
	ans = 16'ha842;
	#20
	A = 16'hb4d2;
	B = 16'hba24;
	ans = 16'h3366;
	#20
	A = 16'hb89d;
	B = 16'hb255;
	ans = 16'h2f4e;
	#20
	A = 16'hb898;
	B = 16'h34f3;
	ans = 16'hb1af;
	#20
	A = 16'h3bad;
	B = 16'hb056;
	ans = 16'hb029;
	#20
	A = 16'hb8e7;
	B = 16'h3b19;
	ans = 16'hb859;
	#20
	A = 16'h3746;
	B = 16'h385a;
	ans = 16'h33ea;
	#20
	A = 16'h355f;
	B = 16'hb8cf;
	ans = 16'hb275;
	#20
	A = 16'h3b89;
	B = 16'hb656;
	ans = 16'hb5f8;
	#20
	A = 16'h367e;
	B = 16'hb470;
	ans = 16'haf34;
	#20
	A = 16'h3048;
	B = 16'hbbdd;
	ans = 16'hb035;
	#20
	A = 16'h3a7f;
	B = 16'hbade;
	ans = 16'hb994;
	#20
	A = 16'hba01;
	B = 16'h2ca9;
	ans = 16'haaff;
	#20
	A = 16'hb9f9;
	B = 16'h3044;
	ans = 16'hae5f;
	#20
	A = 16'h2f85;
	B = 16'h3b8a;
	ans = 16'h2f16;
	#20
	A = 16'ha9ec;
	B = 16'h27fb;
	ans = 16'h95e8;
	#20
	A = 16'h3b7c;
	B = 16'hb64b;
	ans = 16'hb5e3;
	#20
	A = 16'h3900;
	B = 16'hbacc;
	ans = 16'hb840;
	#20
	A = 16'h3a7e;
	B = 16'hb820;
	ans = 16'hb6b2;
	#20
	A = 16'h3863;
	B = 16'haf81;
	ans = 16'hac1d;
	#20
	A = 16'h3bf6;
	B = 16'hbbce;
	ans = 16'hbbc4;
	#20
	A = 16'hb7db;
	B = 16'hbb9a;
	ans = 16'h3777;
	#20
	A = 16'h3a0d;
	B = 16'hb552;
	ans = 16'hb406;
	#20
	A = 16'h311b;
	B = 16'hadfe;
	ans = 16'ha3a6;
	#20
	A = 16'habd1;
	B = 16'h38e3;
	ans = 16'ha8c6;
	#20
	A = 16'hb974;
	B = 16'hb9eb;
	ans = 16'h3809;
	#20
	A = 16'h31e8;
	B = 16'hb81a;
	ans = 16'hae0e;
	#20
	A = 16'hb98c;
	B = 16'h3018;
	ans = 16'hadad;
	#20
	A = 16'h3b29;
	B = 16'hba93;
	ans = 16'hb9e2;
	#20
	A = 16'hbbb2;
	B = 16'h2ed8;
	ans = 16'hae95;
	#20
	A = 16'h35ac;
	B = 16'h3a8f;
	ans = 16'h34a6;
	#20
	A = 16'h14e7;
	B = 16'hb9f4;
	ans = 16'h934c;
	#20
	A = 16'hb488;
	B = 16'h3545;
	ans = 16'hadf8;
	#20
	A = 16'h3b0e;
	B = 16'hbaeb;
	ans = 16'hba1a;
	#20
	A = 16'h3972;
	B = 16'h3a07;
	ans = 16'h381a;
	#20
	A = 16'hb84a;
	B = 16'h2840;
	ans = 16'ha48f;
	#20
	A = 16'hb061;
	B = 16'h386a;
	ans = 16'hacd5;
	#20
	A = 16'h3aed;
	B = 16'h3764;
	ans = 16'h3666;
	#20
	A = 16'h3b1f;
	B = 16'hbb4a;
	ans = 16'hba7d;
	#20
	A = 16'hb8c7;
	B = 16'hbbd8;
	ans = 16'h38af;
	#20
	A = 16'h2fe1;
	B = 16'h3776;
	ans = 16'h2b59;
	#20
	A = 16'h3a05;
	B = 16'h3af3;
	ans = 16'h393b;
	#20
	A = 16'h354c;
	B = 16'hb75e;
	ans = 16'hb0e1;
	#20
	A = 16'hb0bb;
	B = 16'hb61b;
	ans = 16'h2b38;
	#20
	A = 16'h3581;
	B = 16'h3a3e;
	ans = 16'h344b;
	#20
	A = 16'hb96a;
	B = 16'hbb24;
	ans = 16'h38d5;
	#20
	A = 16'h24ed;
	B = 16'hbbf4;
	ans = 16'ha4e6;
	#20
	A = 16'h3b63;
	B = 16'hb7c7;
	ans = 16'hb72e;
	#20
	A = 16'h2826;
	B = 16'h354b;
	ans = 16'h217d;
	#20
	A = 16'h352b;
	B = 16'h3af0;
	ans = 16'h347b;
	#20
	A = 16'h3a60;
	B = 16'ha993;
	ans = 16'ha871;
	#20
	A = 16'h341c;
	B = 16'h3a03;
	ans = 16'h322d;
	#20
	A = 16'h31a6;
	B = 16'h3aa5;
	ans = 16'h30b1;
	#20
	A = 16'h3438;
	B = 16'hba6b;
	ans = 16'hb2c5;
	#20
	A = 16'hba51;
	B = 16'hb90b;
	ans = 16'h37f7;
	#20
	A = 16'hb425;
	B = 16'hbb58;
	ans = 16'h339c;
	#20
	A = 16'h30c9;
	B = 16'hb725;
	ans = 16'hac46;
	#20
	A = 16'hbb07;
	B = 16'hbb69;
	ans = 16'h3a82;
	#20
	A = 16'h39f8;
	B = 16'h3bf4;
	ans = 16'h39ef;
	#20
	A = 16'h3768;
	B = 16'h398a;
	ans = 16'h3521;
	#20
	A = 16'h1eb9;
	B = 16'hb98d;
	ans = 16'h9caa;
	#20
	A = 16'h36ba;
	B = 16'h1807;
	ans = 16'h12c6;
	#20
	A = 16'hb00a;
	B = 16'h38e4;
	ans = 16'hacf0;
	#20
	A = 16'h39cc;
	B = 16'haeb0;
	ans = 16'hacd9;
	#20
	A = 16'hb59d;
	B = 16'hb858;
	ans = 16'h3218;
	#20
	A = 16'hb6fa;
	B = 16'ha13e;
	ans = 16'h1c92;
	#20
	A = 16'h2e89;
	B = 16'h3a8c;
	ans = 16'h2d59;
	#20
	A = 16'hb9d7;
	B = 16'hbb41;
	ans = 16'h394c;
	#20
	A = 16'h3865;
	B = 16'hb84f;
	ans = 16'hb4bc;
	#20
	A = 16'h3bdb;
	B = 16'habbd;
	ans = 16'hab99;
	#20
	A = 16'hba34;
	B = 16'h3985;
	ans = 16'hb848;
	#20
	A = 16'hb052;
	B = 16'hac52;
	ans = 16'h20ab;
	#20
	A = 16'ha7aa;
	B = 16'hb682;
	ans = 16'h223c;
	#20
	A = 16'hb9e5;
	B = 16'hbbc0;
	ans = 16'h39b6;
	#20
	A = 16'hb6a3;
	B = 16'h3b92;
	ans = 16'hb648;
	#20
	A = 16'h3ac5;
	B = 16'hb263;
	ans = 16'hb168;
	#20
	A = 16'hb56c;
	B = 16'hb98f;
	ans = 16'h3389;
	#20
	A = 16'hb86a;
	B = 16'h3a05;
	ans = 16'hb6a5;
	#20
	A = 16'hb459;
	B = 16'hbb90;
	ans = 16'h341c;
	#20
	A = 16'h2a1a;
	B = 16'hba48;
	ans = 16'ha8ca;
	#20
	A = 16'h38b0;
	B = 16'h39d4;
	ans = 16'h36d4;
	#20
	A = 16'h39ce;
	B = 16'h3889;
	ans = 16'h3695;
	#20
	A = 16'h397d;
	B = 16'h3568;
	ans = 16'h336b;
	#20
	A = 16'hb29c;
	B = 16'h32cb;
	ans = 16'ha99d;
	#20
	A = 16'h3970;
	B = 16'h3b13;
	ans = 16'h38cf;
	#20
	A = 16'hba2f;
	B = 16'h3695;
	ans = 16'hb516;
	#20
	A = 16'h39d7;
	B = 16'hb069;
	ans = 16'hae70;
	#20
	A = 16'hb637;
	B = 16'h3133;
	ans = 16'hac0a;
	#20
	A = 16'h3843;
	B = 16'h2cb7;
	ans = 16'h2906;
	#20
	A = 16'h366c;
	B = 16'hbad9;
	ans = 16'hb57f;
	#20
	A = 16'h3ae4;
	B = 16'h3845;
	ans = 16'h375b;
	#20
	A = 16'h38a6;
	B = 16'h3b46;
	ans = 16'h383a;
	#20
	A = 16'h34b6;
	B = 16'h3636;
	ans = 16'h2f51;
	#20
	A = 16'hb844;
	B = 16'hb5a9;
	ans = 16'h3209;
	#20
	A = 16'hb81b;
	B = 16'h366f;
	ans = 16'hb29a;
	#20
	A = 16'h342d;
	B = 16'hadb4;
	ans = 16'ha5f4;
	#20
	A = 16'hb18d;
	B = 16'hbbbf;
	ans = 16'h3160;
	#20
	A = 16'hb847;
	B = 16'h389d;
	ans = 16'hb4ef;
	#20
	A = 16'hb8de;
	B = 16'h2c6a;
	ans = 16'ha95f;
	#20
	A = 16'h362d;
	B = 16'h2ac3;
	ans = 16'h2538;
	#20
	A = 16'h3484;
	B = 16'h3843;
	ans = 16'h30d0;
	#20
	A = 16'h38bb;
	B = 16'h2814;
	ans = 16'h24d3;
	#20
	A = 16'hbb56;
	B = 16'hb8b6;
	ans = 16'h3852;
	#20
	A = 16'hb782;
	B = 16'hb6e0;
	ans = 16'h3274;
	#20
	A = 16'hafef;
	B = 16'h351c;
	ans = 16'ha911;
	#20
	A = 16'hb9b5;
	B = 16'hbba9;
	ans = 16'h3977;
	#20
	A = 16'h387e;
	B = 16'hb7fe;
	ans = 16'hb47d;
	#20
	A = 16'hbbd4;
	B = 16'h33fa;
	ans = 16'hb3ce;
	#20
	A = 16'h38ad;
	B = 16'h3aad;
	ans = 16'h37ce;
	#20
	A = 16'hac8b;
	B = 16'hbb0f;
	ans = 16'h2c02;
	#20
	A = 16'ha75e;
	B = 16'hbbb3;
	ans = 16'h2717;
	#20
	A = 16'h3422;
	B = 16'h37ff;
	ans = 16'h3021;
	#20
	A = 16'h34a3;
	B = 16'h3753;
	ans = 16'h303f;
	#20
	A = 16'hb152;
	B = 16'hb45c;
	ans = 16'h29cc;
	#20
	A = 16'h2888;
	B = 16'h3823;
	ans = 16'h24b0;
	#20
	A = 16'ha0eb;
	B = 16'h3981;
	ans = 16'h9ec4;
	#20
	A = 16'hb823;
	B = 16'h3bd1;
	ans = 16'hb80b;
	#20
	A = 16'h31a9;
	B = 16'h3a59;
	ans = 16'h307e;
	#20
	A = 16'h36b8;
	B = 16'hb8d3;
	ans = 16'hb40d;
	#20
	A = 16'hb284;
	B = 16'hb32d;
	ans = 16'h29d8;
	#20
	A = 16'hb769;
	B = 16'h397b;
	ans = 16'hb514;
	#20
	A = 16'habbe;
	B = 16'h37ef;
	ans = 16'ha7ae;
	#20
	A = 16'hb687;
	B = 16'hb9e1;
	ans = 16'h34cc;
	#20
	A = 16'h3b25;
	B = 16'h3a4f;
	ans = 16'h39a2;
	#20
	A = 16'h32be;
	B = 16'hb185;
	ans = 16'ha8a7;
	#20
	A = 16'hb880;
	B = 16'h39bf;
	ans = 16'hb677;
	#20
	A = 16'hb4c0;
	B = 16'hb6de;
	ans = 16'h3014;
	#20
	A = 16'hb820;
	B = 16'h3603;
	ans = 16'hb233;
	#20
	A = 16'h34d2;
	B = 16'h3a9f;
	ans = 16'h33fb;
	#20
	A = 16'h3b9a;
	B = 16'h3729;
	ans = 16'h36ce;
	#20
	A = 16'h3b00;
	B = 16'h39b9;
	ans = 16'h3902;
	#20
	A = 16'h2fd9;
	B = 16'h3a97;
	ans = 16'h2e77;
	#20
	A = 16'h3957;
	B = 16'hba3d;
	ans = 16'hb82a;
	#20
	A = 16'hba9f;
	B = 16'h39d0;
	ans = 16'hb8d0;
	#20
	A = 16'hb5eb;
	B = 16'hbae6;
	ans = 16'h351a;
	#20
	A = 16'h36e7;
	B = 16'hb528;
	ans = 16'hb073;
	#20
	A = 16'hba1e;
	B = 16'h3a92;
	ans = 16'hb906;
	#20
	A = 16'h3471;
	B = 16'hbb6f;
	ans = 16'hb420;
	#20
	A = 16'had8a;
	B = 16'hb7cb;
	ans = 16'h2965;
	#20
	A = 16'hb165;
	B = 16'h381d;
	ans = 16'had8c;
	#20
	A = 16'hab9d;
	B = 16'hb844;
	ans = 16'h280f;
	#20
	A = 16'h3537;
	B = 16'h2d09;
	ans = 16'h2690;
	#20
	A = 16'hbb39;
	B = 16'hb08f;
	ans = 16'h301e;
	#20
	A = 16'hb825;
	B = 16'hb763;
	ans = 16'h33a7;
	#20
	A = 16'hb91d;
	B = 16'hbb47;
	ans = 16'h38a7;
	#20
	A = 16'hb6de;
	B = 16'h391e;
	ans = 16'hb465;
	#20
	A = 16'h39f2;
	B = 16'hb224;
	ans = 16'hb090;
	#20
	A = 16'h9f27;
	B = 16'hb8b4;
	ans = 16'h1c34;
	#20
	A = 16'h3a3f;
	B = 16'hb4ae;
	ans = 16'hb34f;
	#20
	A = 16'h37c2;
	B = 16'h3b1f;
	ans = 16'h36e8;
	#20
	A = 16'hbacf;
	B = 16'hba55;
	ans = 16'h3964;
	#20
	A = 16'hb36d;
	B = 16'h38a0;
	ans = 16'hb04b;
	#20
	A = 16'hbba4;
	B = 16'hbaeb;
	ans = 16'h3a9b;
	#20
	A = 16'h3430;
	B = 16'h3a73;
	ans = 16'h32c0;
	#20
	A = 16'h2898;
	B = 16'hb850;
	ans = 16'ha4f4;
	#20
	A = 16'h3930;
	B = 16'hb13b;
	ans = 16'haec9;
	#20
	A = 16'h3b0c;
	B = 16'h3b78;
	ans = 16'h3a94;
	#20
	A = 16'h3b5a;
	B = 16'h32b1;
	ans = 16'h3226;
	#20
	A = 16'h3a0b;
	B = 16'haa14;
	ans = 16'ha897;
	#20
	A = 16'h3664;
	B = 16'h36a1;
	ans = 16'h314c;
	#20
	A = 16'hb5a8;
	B = 16'hba4a;
	ans = 16'h3472;
	#20
	A = 16'hb9c1;
	B = 16'hb899;
	ans = 16'h369d;
	#20
	A = 16'hb873;
	B = 16'h332a;
	ans = 16'haff8;
	#20
	A = 16'h3ae2;
	B = 16'hae5e;
	ans = 16'had7a;
	#20
	A = 16'hb06f;
	B = 16'hb48d;
	ans = 16'h290b;
	#20
	A = 16'h3acf;
	B = 16'h2fcc;
	ans = 16'h2ea3;
	#20
	A = 16'h3743;
	B = 16'hbb4c;
	ans = 16'hb6a0;
	#20
	A = 16'hbb6b;
	B = 16'h35af;
	ans = 16'hb545;
	#20
	A = 16'h3ba7;
	B = 16'h3941;
	ans = 16'h3907;
	#20
	A = 16'h3974;
	B = 16'h260d;
	ans = 16'h2420;
	#20
	A = 16'hb43b;
	B = 16'hba33;
	ans = 16'h328e;
	#20
	A = 16'hba3c;
	B = 16'h3b58;
	ans = 16'hb9b9;
	#20
	A = 16'hae53;
	B = 16'hbb47;
	ans = 16'h2dc1;
	#20
	A = 16'h3a06;
	B = 16'h393b;
	ans = 16'h37e0;
	#20
	A = 16'h1c31;
	B = 16'hb183;
	ans = 16'h91c7;
	#20
	A = 16'h342e;
	B = 16'h2d4a;
	ans = 16'h2587;
	#20
	A = 16'h3b85;
	B = 16'h3443;
	ans = 16'h3401;
	#20
	A = 16'hbb3a;
	B = 16'hb293;
	ans = 16'h31f0;
	#20
	A = 16'hb2a8;
	B = 16'h30d5;
	ans = 16'ha805;
	#20
	A = 16'hbb39;
	B = 16'hb8fd;
	ans = 16'h3881;
	#20
	A = 16'hb777;
	B = 16'h3759;
	ans = 16'hb2db;
	#20
	A = 16'h351b;
	B = 16'hb8fa;
	ans = 16'hb25a;
	#20
	A = 16'h3401;
	B = 16'hb1f1;
	ans = 16'ha9f2;
	#20
	A = 16'h3512;
	B = 16'h37fb;
	ans = 16'h310f;
	#20
	A = 16'h2de7;
	B = 16'h388f;
	ans = 16'h2aba;
	#20
	A = 16'h2f54;
	B = 16'hbb3e;
	ans = 16'haea2;
	#20
	A = 16'hb946;
	B = 16'h34b5;
	ans = 16'hb235;
	#20
	A = 16'hb80d;
	B = 16'h3544;
	ans = 16'hb155;
	#20
	A = 16'h390c;
	B = 16'hb7ab;
	ans = 16'hb4d6;
	#20
	A = 16'h9451;
	B = 16'h2c57;
	ans = 16'h84af;
	#20
	A = 16'h3b32;
	B = 16'h3452;
	ans = 16'h33c6;
	#20
	A = 16'h2b67;
	B = 16'hb3dd;
	ans = 16'ha347;
	#20
	A = 16'h395d;
	B = 16'h3781;
	ans = 16'h3508;
	#20
	A = 16'hbaa0;
	B = 16'hb8ee;
	ans = 16'h3815;
	#20
	A = 16'h358a;
	B = 16'h3a8a;
	ans = 16'h3487;
	#20
	A = 16'h3844;
	B = 16'h3533;
	ans = 16'h318b;
	#20
	A = 16'ha5e4;
	B = 16'hb8fa;
	ans = 16'h2354;
	#20
	A = 16'hb2af;
	B = 16'hb8b3;
	ans = 16'h2fda;
	#20
	A = 16'hbb66;
	B = 16'hba17;
	ans = 16'h39a2;
	#20
	A = 16'h3b63;
	B = 16'h3233;
	ans = 16'h31b9;
	#20
	A = 16'h3b58;
	B = 16'hb420;
	ans = 16'hb393;
	#20
	A = 16'hbb38;
	B = 16'h3a18;
	ans = 16'hb980;
	#20
	A = 16'hb60c;
	B = 16'h3633;
	ans = 16'hb0b0;
	#20
	A = 16'h3a63;
	B = 16'hb620;
	ans = 16'hb4e4;
	#20
	A = 16'hb8c3;
	B = 16'hb53a;
	ans = 16'h3239;
	#20
	A = 16'h39a2;
	B = 16'hbaf9;
	ans = 16'hb8e9;
	#20
	A = 16'hb4d8;
	B = 16'h38e5;
	ans = 16'hb1ed;
	#20
	A = 16'hb4cc;
	B = 16'h2f76;
	ans = 16'ha879;
	#20
	A = 16'hbbb2;
	B = 16'hab56;
	ans = 16'h2b0e;
	#20
	A = 16'h2ecd;
	B = 16'h353e;
	ans = 16'h2875;
	#20
	A = 16'h396b;
	B = 16'h3739;
	ans = 16'h34e4;
	#20
	A = 16'hb915;
	B = 16'h31ac;
	ans = 16'haf35;
	#20
	A = 16'h396f;
	B = 16'hb982;
	ans = 16'hb77b;
	#20
	A = 16'hb8c6;
	B = 16'h3707;
	ans = 16'hb431;
	#20
	A = 16'h3837;
	B = 16'hb683;
	ans = 16'hb2dd;
	#20
	A = 16'hb5ba;
	B = 16'h3265;
	ans = 16'hac94;
	#20
	A = 16'h3378;
	B = 16'h385b;
	ans = 16'h3011;
	#20
	A = 16'h3a5e;
	B = 16'hb86b;
	ans = 16'hb708;
	#20
	A = 16'hac85;
	B = 16'haccd;
	ans = 16'h1d6d;
	#20
	A = 16'hb65c;
	B = 16'h36d0;
	ans = 16'hb16a;
	#20
	A = 16'hbba7;
	B = 16'hbb92;
	ans = 16'h3b3e;
	#20
	A = 16'hb412;
	B = 16'h3b03;
	ans = 16'hb323;
	#20
	A = 16'hba95;
	B = 16'h3814;
	ans = 16'hb6b6;
	#20
	A = 16'h386b;
	B = 16'h3bb7;
	ans = 16'h3843;
	#20
	A = 16'h2a0a;
	B = 16'h2f3a;
	ans = 16'h1d75;
	#20
	A = 16'hb6bc;
	B = 16'h297e;
	ans = 16'ha4a0;
	#20
	A = 16'hb33f;
	B = 16'hbb75;
	ans = 16'h32c1;
	#20
	A = 16'hb11e;
	B = 16'h3214;
	ans = 16'ha7c7;
	#20
	A = 16'hbb6f;
	B = 16'hab1c;
	ans = 16'h2a9b;
	#20
	A = 16'hb82a;
	B = 16'h3a25;
	ans = 16'hb666;
	#20
	A = 16'hb455;
	B = 16'hbbaf;
	ans = 16'h3429;
	#20
	A = 16'h34e6;
	B = 16'h3ab0;
	ans = 16'h3418;
	#20
	A = 16'hb48d;
	B = 16'h3269;
	ans = 16'hab4b;
	#20
	A = 16'hb644;
	B = 16'hb105;
	ans = 16'h2bdd;
	#20
	A = 16'hb8a2;
	B = 16'h37fb;
	ans = 16'hb49f;
	#20
	A = 16'h3bc4;
	B = 16'hb88f;
	ans = 16'hb86d;
	#20
	A = 16'hb806;
	B = 16'h3338;
	ans = 16'haf43;
	#20
	A = 16'h3544;
	B = 16'h393f;
	ans = 16'h32e8;
	#20
	A = 16'h2ef7;
	B = 16'hb73f;
	ans = 16'haa4f;
	#20
	A = 16'hb9f8;
	B = 16'hba0c;
	ans = 16'h3883;
	#20
	A = 16'h35ed;
	B = 16'hb5fd;
	ans = 16'hb070;
	#20
	A = 16'h2cb3;
	B = 16'h3a8e;
	ans = 16'h2bb3;
	#20
	A = 16'hb48e;
	B = 16'h3884;
	ans = 16'hb124;
	#20
	A = 16'h3b1b;
	B = 16'h3bda;
	ans = 16'h3af9;
	#20
	A = 16'hb578;
	B = 16'hb2c2;
	ans = 16'h2c9f;
	#20
	A = 16'h38f3;
	B = 16'h3502;
	ans = 16'h3232;
	#20
	A = 16'hb7e8;
	B = 16'h365b;
	ans = 16'hb248;
	#20
	A = 16'hb544;
	B = 16'h3ab6;
	ans = 16'hb46b;
	#20
	A = 16'hb50a;
	B = 16'hb8b7;
	ans = 16'h31f1;
	#20
	A = 16'h37eb;
	B = 16'h3ade;
	ans = 16'h36cc;
	#20
	A = 16'h2af4;
	B = 16'hb019;
	ans = 16'h9f1f;
	#20
	A = 16'h35ce;
	B = 16'hb4b6;
	ans = 16'haed6;
	#20
	A = 16'h3a7e;
	B = 16'h363d;
	ans = 16'h3510;
	#20
	A = 16'hb053;
	B = 16'hb8ba;
	ans = 16'h2d1c;
	#20
	A = 16'h394a;
	B = 16'hb488;
	ans = 16'hb1fe;
	#20
	A = 16'hbb55;
	B = 16'hb95c;
	ans = 16'h38e9;
	#20
	A = 16'h3806;
	B = 16'h2ff6;
	ans = 16'h2c01;
	#20
	A = 16'h343e;
	B = 16'h2dcf;
	ans = 16'h2629;
	#20
	A = 16'h3517;
	B = 16'hb9cc;
	ans = 16'hb360;
	#20
	A = 16'h3913;
	B = 16'h3bda;
	ans = 16'h38fb;
	#20
	A = 16'hae14;
	B = 16'h3181;
	ans = 16'ha42f;
	#20
	A = 16'hb9c3;
	B = 16'h32f9;
	ans = 16'hb106;
	#20
	A = 16'haee6;
	B = 16'h39f8;
	ans = 16'had26;
	#20
	A = 16'h3119;
	B = 16'h3614;
	ans = 16'h2bbf;
	#20
	A = 16'hae73;
	B = 16'hba95;
	ans = 16'h2d4e;
	#20
	A = 16'h396b;
	B = 16'haf13;
	ans = 16'hacca;
	#20
	A = 16'hbb01;
	B = 16'hb828;
	ans = 16'h3747;
	#20
	A = 16'h38f7;
	B = 16'hb887;
	ans = 16'hb59f;
	#20
	A = 16'habbc;
	B = 16'ha471;
	ans = 16'h144b;
	#20
	A = 16'h2785;
	B = 16'h38ea;
	ans = 16'h249e;
	#20
	A = 16'h3ae7;
	B = 16'hb729;
	ans = 16'hb62d;
	#20
	A = 16'h3490;
	B = 16'h3b50;
	ans = 16'h342c;
	#20
	A = 16'h2de1;
	B = 16'hbb31;
	ans = 16'had49;
	#20
	A = 16'hb996;
	B = 16'h3762;
	ans = 16'hb528;
	#20
	A = 16'h3792;
	B = 16'hb116;
	ans = 16'hacd0;
	#20
	A = 16'h2d33;
	B = 16'h1852;
	ans = 16'h99e;
	#20
	A = 16'h3a56;
	B = 16'hb401;
	ans = 16'hb258;
	#20
	A = 16'hab04;
	B = 16'h39c5;
	ans = 16'ha90f;
	#20
	A = 16'h3190;
	B = 16'h3b74;
	ans = 16'h312f;
	#20
	A = 16'hb80b;
	B = 16'ha8f0;
	ans = 16'h24fe;
	#20
	A = 16'hb9af;
	B = 16'hb265;
	ans = 16'h308b;
	#20
	A = 16'h3bb3;
	B = 16'hadac;
	ans = 16'had75;
	#20
	A = 16'hb9b5;
	B = 16'h3ab4;
	ans = 16'hb8c8;
	#20
	A = 16'h2c46;
	B = 16'h2de4;
	ans = 16'h1e4b;
	#20
	A = 16'h2a11;
	B = 16'h3a42;
	ans = 16'h28bf;
	#20
	A = 16'h37d8;
	B = 16'hb08e;
	ans = 16'hac77;
	#20
	A = 16'h3a8e;
	B = 16'h346e;
	ans = 16'h3342;
	#20
	A = 16'hb5f8;
	B = 16'h329e;
	ans = 16'hacf0;
	#20
	A = 16'hb5a1;
	B = 16'ha51a;
	ans = 16'h1f2e;
	#20
	A = 16'hb0fa;
	B = 16'hb9c2;
	ans = 16'h2f2a;
	#20
	A = 16'hb705;
	B = 16'hb433;
	ans = 16'h2f5e;
	#20
	A = 16'h2ee6;
	B = 16'h32a7;
	ans = 16'h25bd;
	#20
	A = 16'h3455;
	B = 16'ha1a8;
	ans = 16'h9a20;
	#20
	A = 16'hb54a;
	B = 16'hb940;
	ans = 16'h32f1;
	#20
	A = 16'h3aa2;
	B = 16'h2c6e;
	ans = 16'h2b58;
	#20
	A = 16'h3584;
	B = 16'hb5bd;
	ans = 16'hafea;
	#20
	A = 16'h387f;
	B = 16'h2fb0;
	ans = 16'h2c52;
	#20
	A = 16'hb1ff;
	B = 16'hac73;
	ans = 16'h22ab;
	#20
	A = 16'h3a7a;
	B = 16'h3ba5;
	ans = 16'h3a30;
	#20
	A = 16'h22c4;
	B = 16'hbbe4;
	ans = 16'ha2ac;
	#20
	A = 16'hb4a3;
	B = 16'h3371;
	ans = 16'hac50;
	#20
	A = 16'hb888;
	B = 16'hb22e;
	ans = 16'h2f00;
	#20
	A = 16'h3b36;
	B = 16'hb80c;
	ans = 16'hb74c;
	#20
	A = 16'h39fa;
	B = 16'hb451;
	ans = 16'hb273;
	#20
	A = 16'h39c4;
	B = 16'h3227;
	ans = 16'h306f;
	#20
	A = 16'h3a2c;
	B = 16'h3997;
	ans = 16'h3850;
	#20
	A = 16'h301e;
	B = 16'h2c7c;
	ans = 16'h209e;
	#20
	A = 16'hadc8;
	B = 16'h39ab;
	ans = 16'hac19;
	#20
	A = 16'hb8d5;
	B = 16'hac6b;
	ans = 16'h2956;
	#20
	A = 16'h3917;
	B = 16'h3104;
	ans = 16'h2e62;
	#20
	A = 16'hb814;
	B = 16'h3641;
	ans = 16'hb260;
	#20
	A = 16'h3be4;
	B = 16'hb59c;
	ans = 16'hb588;
	#20
	A = 16'h2613;
	B = 16'hbade;
	ans = 16'ha537;
	#20
	A = 16'h3a79;
	B = 16'hb4d5;
	ans = 16'hb3d2;
	#20
	A = 16'h3be6;
	B = 16'hb621;
	ans = 16'hb60d;
	#20
	A = 16'h356a;
	B = 16'hb728;
	ans = 16'hb0d8;
	#20
	A = 16'haa88;
	B = 16'h392a;
	ans = 16'ha837;
	#20
	A = 16'hb750;
	B = 16'h1da9;
	ans = 16'h992c;
	#20
	A = 16'h3aad;
	B = 16'hbaff;
	ans = 16'hb9d7;
	#20
	A = 16'h2ff6;
	B = 16'h3354;
	ans = 16'h274b;
	#20
	A = 16'hbae2;
	B = 16'hb633;
	ans = 16'h3555;
	#20
	A = 16'h34c7;
	B = 16'hba4d;
	ans = 16'hb386;
	#20
	A = 16'hb9cd;
	B = 16'hba44;
	ans = 16'h388b;
	#20
	A = 16'hb9a1;
	B = 16'h398b;
	ans = 16'hb7cd;
	#20
	A = 16'hab1a;
	B = 16'h3626;
	ans = 16'ha575;
	#20
	A = 16'hb56e;
	B = 16'h3479;
	ans = 16'hae12;
	#20
	A = 16'hb83c;
	B = 16'hb7b6;
	ans = 16'h3415;
	#20
	A = 16'hadcc;
	B = 16'h3956;
	ans = 16'habbc;
	#20
	A = 16'hbad2;
	B = 16'hb7be;
	ans = 16'h369a;
	#20
	A = 16'h3104;
	B = 16'h3a02;
	ans = 16'h2f89;
	#20
	A = 16'h38bc;
	B = 16'hba80;
	ans = 16'hb7b2;
	#20
	A = 16'hb246;
	B = 16'hb8fb;
	ans = 16'h2fd0;
	#20
	A = 16'h3a9e;
	B = 16'h37b6;
	ans = 16'h3661;
	#20
	A = 16'hbaae;
	B = 16'hb985;
	ans = 16'h389c;
	#20
	A = 16'h3a16;
	B = 16'hba7a;
	ans = 16'hb8ed;
	#20
	A = 16'hba8b;
	B = 16'h3aea;
	ans = 16'hb9a8;
	#20
	A = 16'h3419;
	B = 16'hb8a2;
	ans = 16'hb0bf;
	#20
	A = 16'hb2c7;
	B = 16'hbb94;
	ans = 16'h326c;
	#20
	A = 16'h3af0;
	B = 16'ha382;
	ans = 16'ha283;
	#20
	A = 16'hba0e;
	B = 16'hbbdb;
	ans = 16'h39f2;
	#20
	A = 16'h3845;
	B = 16'hb5c2;
	ans = 16'hb225;
	#20
	A = 16'haada;
	B = 16'h2f3a;
	ans = 16'h9e30;
	#20
	A = 16'h3661;
	B = 16'hbbd8;
	ans = 16'hb641;
	#20
	A = 16'hbb29;
	B = 16'h360a;
	ans = 16'hb568;
	#20
	A = 16'h261e;
	B = 16'hb904;
	ans = 16'ha3ac;
	#20
	A = 16'hb075;
	B = 16'h36e0;
	ans = 16'haba9;
	#20
	A = 16'hb8ee;
	B = 16'hb980;
	ans = 16'h36c7;
	#20
	A = 16'hbbde;
	B = 16'hab3e;
	ans = 16'h2b1f;
	#20
	A = 16'hb5ab;
	B = 16'h3879;
	ans = 16'hb256;
	#20
	A = 16'h2d91;
	B = 16'h306a;
	ans = 16'h2225;
	#20
	A = 16'h2d6e;
	B = 16'h3b48;
	ans = 16'h2cf1;
	#20
	A = 16'h3b3d;
	B = 16'h3548;
	ans = 16'h34c7;
	#20
	A = 16'h3575;
	B = 16'h3825;
	ans = 16'h31a7;
	#20
	A = 16'hb8bc;
	B = 16'hb422;
	ans = 16'h30e4;
	#20
	A = 16'hb88d;
	B = 16'hbaeb;
	ans = 16'h37df;
	#20
	A = 16'h368b;
	B = 16'hb3c7;
	ans = 16'hae5c;
	#20
	A = 16'h3a3e;
	B = 16'hba24;
	ans = 16'hb8cb;
	#20
	A = 16'hb9e9;
	B = 16'hb893;
	ans = 16'h36c2;
	#20
	A = 16'hb2b0;
	B = 16'hba45;
	ans = 16'h313e;
	#20
	A = 16'hb889;
	B = 16'hb8eb;
	ans = 16'h3593;
	#20
	A = 16'h3876;
	B = 16'h368a;
	ans = 16'h334b;
	#20
	A = 16'h3234;
	B = 16'h3a97;
	ans = 16'h311c;
	#20
	A = 16'h3ae1;
	B = 16'h2cc6;
	ans = 16'h2c1b;
	#20
	A = 16'h390a;
	B = 16'hb864;
	ans = 16'hb588;
	#20
	A = 16'hb843;
	B = 16'h38e3;
	ans = 16'hb535;
	#20
	A = 16'h3b3a;
	B = 16'h2fbe;
	ans = 16'h2efe;
	#20
	A = 16'hb84d;
	B = 16'h3a7a;
	ans = 16'hb6f7;
	#20
	A = 16'hb0b1;
	B = 16'hb616;
	ans = 16'h2b23;
	#20
	A = 16'hb88f;
	B = 16'hb848;
	ans = 16'h34e1;
	#20
	A = 16'h2f30;
	B = 16'h3678;
	ans = 16'h29d0;
	#20
	A = 16'h3b3b;
	B = 16'h34c5;
	ans = 16'h3450;
	#20
	A = 16'h3811;
	B = 16'h2292;
	ans = 16'h1eae;
	#20
	A = 16'hba46;
	B = 16'h3a55;
	ans = 16'hb8f7;
	#20
	A = 16'hba77;
	B = 16'ha930;
	ans = 16'h2831;
	#20
	A = 16'h38be;
	B = 16'hb583;
	ans = 16'hb289;
	#20
	A = 16'hbaf4;
	B = 16'hb9c9;
	ans = 16'h3907;
	#20
	A = 16'hb993;
	B = 16'h36f8;
	ans = 16'hb4db;
	#20
	A = 16'h3222;
	B = 16'h393b;
	ans = 16'h3002;
	#20
	A = 16'h3b13;
	B = 16'hb1f1;
	ans = 16'hb141;
	#20
	A = 16'h38c5;
	B = 16'hb455;
	ans = 16'hb12a;
	#20
	A = 16'h2a71;
	B = 16'ha952;
	ans = 16'h9849;
	#20
	A = 16'h3a27;
	B = 16'hb027;
	ans = 16'hae63;
	#20
	A = 16'h3bde;
	B = 16'hbb13;
	ans = 16'hbaf5;
	#20
	A = 16'hb04a;
	B = 16'hbb7f;
	ans = 16'h3005;
	#20
	A = 16'hbb6d;
	B = 16'hba5c;
	ans = 16'h39e7;
	#20
	A = 16'h3220;
	B = 16'h3643;
	ans = 16'h2ccb;
	#20
	A = 16'hb02c;
	B = 16'h3886;
	ans = 16'hacb8;
	#20
	A = 16'h3b3d;
	B = 16'h350e;
	ans = 16'h3493;
	#20
	A = 16'h3308;
	B = 16'h32b6;
	ans = 16'h29e6;
	#20
	A = 16'hb9b9;
	B = 16'hb7b3;
	ans = 16'h3582;
	#20
	A = 16'hb3e6;
	B = 16'h3b85;
	ans = 16'hb36d;
	#20
	A = 16'h3bd5;
	B = 16'h29f4;
	ans = 16'h29d4;
	#20
	A = 16'h3404;
	B = 16'h3bb6;
	ans = 16'h33be;
	#20
	A = 16'hb59b;
	B = 16'h3466;
	ans = 16'hae2a;
	#20
	A = 16'hb117;
	B = 16'h32f2;
	ans = 16'ha86b;
	#20
	A = 16'h37ac;
	B = 16'h3a5a;
	ans = 16'h3617;
	#20
	A = 16'hb9ce;
	B = 16'h2bdc;
	ans = 16'ha9b4;
	#20
	A = 16'hb49e;
	B = 16'hb7e1;
	ans = 16'h308c;
	#20
	A = 16'hb6e3;
	B = 16'hafa7;
	ans = 16'h2a96;
	#20
	A = 16'hb8d7;
	B = 16'h3a6e;
	ans = 16'hb7c8;
	#20
	A = 16'hb9c2;
	B = 16'h327f;
	ans = 16'hb0ad;
	#20
	A = 16'hb85d;
	B = 16'h3435;
	ans = 16'hb097;
	#20
	A = 16'ha822;
	B = 16'hbbdb;
	ans = 16'h280f;
	#20
	A = 16'h3b90;
	B = 16'hb538;
	ans = 16'hb4ef;
	#20
	A = 16'h3a72;
	B = 16'hb909;
	ans = 16'hb80f;
	#20
	A = 16'h3a78;
	B = 16'h3ad4;
	ans = 16'h3985;
	#20
	A = 16'h2bd9;
	B = 16'hbba7;
	ans = 16'hab82;
	#20
	A = 16'h2da0;
	B = 16'h37e8;
	ans = 16'h298f;
	#20
	A = 16'hbad1;
	B = 16'hb531;
	ans = 16'h346c;
	#20
	A = 16'h31cc;
	B = 16'h34e6;
	ans = 16'h2b19;
	#20
	A = 16'hbbc4;
	B = 16'hbb73;
	ans = 16'h3b3b;
	#20
	A = 16'hbae3;
	B = 16'h3026;
	ans = 16'haf24;
	#20
	A = 16'hb78e;
	B = 16'h2d21;
	ans = 16'ha8d8;
	#20
	A = 16'h3673;
	B = 16'h394f;
	ans = 16'h3448;
	#20
	A = 16'h3216;
	B = 16'hb696;
	ans = 16'had03;
	#20
	A = 16'habea;
	B = 16'h311e;
	ans = 16'ha110;
	#20
	A = 16'h389a;
	B = 16'hb118;
	ans = 16'haddc;
	#20
	A = 16'hb8fb;
	B = 16'h309c;
	ans = 16'hadbd;
	#20
	A = 16'hbb86;
	B = 16'h341a;
	ans = 16'hb3b7;
	#20
	A = 16'h3bc6;
	B = 16'h3833;
	ans = 16'h3815;
	#20
	A = 16'h3aa9;
	B = 16'h3826;
	ans = 16'h36e8;
	#20
	A = 16'h3923;
	B = 16'hbb31;
	ans = 16'hb89e;
	#20
	A = 16'h2eea;
	B = 16'h3a51;
	ans = 16'h2d76;
	#20
	A = 16'h35f3;
	B = 16'h3a16;
	ans = 16'h3487;
	#20
	A = 16'h38dd;
	B = 16'h310e;
	ans = 16'h2e25;
	#20
	A = 16'hb700;
	B = 16'hb9cf;
	ans = 16'h3515;
	#20
	A = 16'hb92a;
	B = 16'hbb3c;
	ans = 16'h38ab;
	#20
	A = 16'h3860;
	B = 16'h3516;
	ans = 16'h3190;
	#20
	A = 16'hb5a9;
	B = 16'hba69;
	ans = 16'h3489;
	#20
	A = 16'hb373;
	B = 16'h390c;
	ans = 16'hb0b3;
	#20
	A = 16'h3b5a;
	B = 16'hba90;
	ans = 16'hba08;
	#20
	A = 16'hb557;
	B = 16'h3ad6;
	ans = 16'hb490;
	#20
	A = 16'h3a5b;
	B = 16'h3149;
	ans = 16'h3033;
	#20
	A = 16'hb64b;
	B = 16'h3012;
	ans = 16'haa67;
	#20
	A = 16'hba79;
	B = 16'hb59b;
	ans = 16'h3489;
	#20
	A = 16'hbba1;
	B = 16'h3b45;
	ans = 16'hbaef;
	#20
	A = 16'hb079;
	B = 16'hbb72;
	ans = 16'h302a;
	#20
	A = 16'hba08;
	B = 16'h33d3;
	ans = 16'hb1e6;
	#20
	A = 16'hb8aa;
	B = 16'hba97;
	ans = 16'h37af;
	#20
	A = 16'h3a5e;
	B = 16'h1e88;
	ans = 16'h1d33;
	#20
	A = 16'h362b;
	B = 16'hacc6;
	ans = 16'ha75c;
	#20
	A = 16'h3879;
	B = 16'h3b3c;
	ans = 16'h380b;
	#20
	A = 16'hb913;
	B = 16'h377f;
	ans = 16'hb4c1;
	#20
	A = 16'hb149;
	B = 16'hb0ca;
	ans = 16'h2654;
	#20
	A = 16'hb9f3;
	B = 16'h34b2;
	ans = 16'hb2fc;
	#20
	A = 16'h39e4;
	B = 16'hb27e;
	ans = 16'hb0c8;
	#20
	A = 16'hb8fb;
	B = 16'h3512;
	ans = 16'hb250;
	#20
	A = 16'h3bbb;
	B = 16'hb958;
	ans = 16'hb92a;
	#20
	A = 16'h3a3d;
	B = 16'h34a3;
	ans = 16'h333b;
	#20
	A = 16'h3587;
	B = 16'hb6b3;
	ans = 16'hb0a1;
	#20
	A = 16'ha9de;
	B = 16'hbbb7;
	ans = 16'h29a8;
	#20
	A = 16'h3bf8;
	B = 16'h37ca;
	ans = 16'h37c2;
	#20
	A = 16'h3b20;
	B = 16'hbbaa;
	ans = 16'hbad3;
	#20
	A = 16'hb847;
	B = 16'hb986;
	ans = 16'h35e8;
	#20
	A = 16'h3b4b;
	B = 16'hb537;
	ans = 16'hb4c1;
	#20
	A = 16'h3869;
	B = 16'h35ce;
	ans = 16'h3266;
	#20
	A = 16'h390e;
	B = 16'h3470;
	ans = 16'h319c;
	#20
	A = 16'hadfa;
	B = 16'h389e;
	ans = 16'haae6;
	#20
	A = 16'h3a2a;
	B = 16'hab46;
	ans = 16'ha99b;
	#20
	A = 16'hb281;
	B = 16'h26b0;
	ans = 16'h9d70;
	#20
	A = 16'hb5f6;
	B = 16'hb660;
	ans = 16'h30c0;
	#20
	A = 16'hb983;
	B = 16'h38cc;
	ans = 16'hb69c;
	#20
	A = 16'h3300;
	B = 16'h3998;
	ans = 16'h30e5;
	#20
	A = 16'hbb18;
	B = 16'h2903;
	ans = 16'ha872;
	#20
	A = 16'h966d;
	B = 16'hafc3;
	ans = 16'ha3c;
	#20
	A = 16'haf4e;
	B = 16'h30f8;
	ans = 16'ha489;
	#20
	A = 16'hb8c9;
	B = 16'hb6a4;
	ans = 16'h33f2;
	#20
	A = 16'hb48b;
	B = 16'hbad6;
	ans = 16'h33c4;
	#20
	A = 16'h395e;
	B = 16'hba42;
	ans = 16'hb833;
	#20
	A = 16'h22ac;
	B = 16'hb87f;
	ans = 16'h9f80;
	#20
	A = 16'h395b;
	B = 16'hb8dc;
	ans = 16'hb682;
	#20
	A = 16'h373e;
	B = 16'h3866;
	ans = 16'h33f7;
	#20
	A = 16'ha150;
	B = 16'h33ba;
	ans = 16'h9922;
	#20
	A = 16'hb3b0;
	B = 16'hbb8c;
	ans = 16'h3341;
	#20
	A = 16'hb7b8;
	B = 16'hbb59;
	ans = 16'h3717;
	#20
	A = 16'h352c;
	B = 16'hade7;
	ans = 16'ha7a2;
	#20
	A = 16'hb759;
	B = 16'ha819;
	ans = 16'h2387;
	#20
	A = 16'hb556;
	B = 16'hb957;
	ans = 16'h3320;
	#20
	A = 16'hb498;
	B = 16'hb2a6;
	ans = 16'h2ba3;
	#20
	A = 16'hb9b1;
	B = 16'hb091;
	ans = 16'h2e7f;
	#20
	A = 16'ha9af;
	B = 16'h3b71;
	ans = 16'ha949;
	#20
	A = 16'hb932;
	B = 16'h33fd;
	ans = 16'hb130;
	#20
	A = 16'hb0f9;
	B = 16'hb59c;
	ans = 16'h2af9;
	#20
	A = 16'hb483;
	B = 16'hb02f;
	ans = 16'h28b8;
	#20
	A = 16'h36ee;
	B = 16'hb8bb;
	ans = 16'hb419;
	#20
	A = 16'h3965;
	B = 16'hb4dc;
	ans = 16'hb28e;
	#20
	A = 16'hb9f6;
	B = 16'h39a3;
	ans = 16'hb833;
	#20
	A = 16'h3b3c;
	B = 16'h36ea;
	ans = 16'h3641;
	#20
	A = 16'hbad2;
	B = 16'hb9b7;
	ans = 16'h38df;
	#20
	A = 16'h3b9b;
	B = 16'hbb2c;
	ans = 16'hbad1;
	#20
	A = 16'hb34d;
	B = 16'h33e4;
	ans = 16'hab33;
	#20
	A = 16'hba08;
	B = 16'h382d;
	ans = 16'hb64c;
	#20
	A = 16'h3413;
	B = 16'hb8a2;
	ans = 16'hb0b8;
	#20
	A = 16'h3bf7;
	B = 16'h3537;
	ans = 16'h3531;
	#20
	A = 16'h38dc;
	B = 16'hb2a9;
	ans = 16'hb00c;
	#20
	A = 16'h3a28;
	B = 16'h243d;
	ans = 16'h2286;
	#20
	A = 16'haf21;
	B = 16'h3bf6;
	ans = 16'haf18;
	#20
	A = 16'hb8fe;
	B = 16'hb9f8;
	ans = 16'h3773;
	#20
	A = 16'hbaae;
	B = 16'hbad1;
	ans = 16'h39b1;
	#20
	A = 16'hba77;
	B = 16'h3362;
	ans = 16'hb1f7;
	#20
	A = 16'h3a62;
	B = 16'h3708;
	ans = 16'h359c;
	#20
	A = 16'h3a6e;
	B = 16'hb8c5;
	ans = 16'hb7ab;
	#20
	A = 16'hb3e8;
	B = 16'hb78c;
	ans = 16'h2f75;
	#20
	A = 16'h3a4f;
	B = 16'h3833;
	ans = 16'h369f;
	#20
	A = 16'hbb50;
	B = 16'h3b3e;
	ans = 16'hba9f;
	#20
	A = 16'h3a0a;
	B = 16'hba85;
	ans = 16'hb8ec;
	#20
	A = 16'h391a;
	B = 16'h3baa;
	ans = 16'h38e3;
	#20
	A = 16'h3bec;
	B = 16'h3a46;
	ans = 16'h3a36;
	#20
	A = 16'h399a;
	B = 16'hba51;
	ans = 16'hb86c;
	#20
	A = 16'hac7c;
	B = 16'hb121;
	ans = 16'h21c0;
	#20
	A = 16'hbb88;
	B = 16'h348f;
	ans = 16'hb44b;
	#20
	A = 16'hb6fe;
	B = 16'h30da;
	ans = 16'hac3e;
	#20
	A = 16'hb69c;
	B = 16'h3427;
	ans = 16'haedc;
	#20
	A = 16'h3ae7;
	B = 16'hb9c9;
	ans = 16'hb8fe;
	#20
	A = 16'hbaf7;
	B = 16'hb726;
	ans = 16'h3639;
	#20
	A = 16'h3858;
	B = 16'hbb3f;
	ans = 16'hb7de;
	#20
	A = 16'hbaa5;
	B = 16'h3bb4;
	ans = 16'hba66;
	#20
	A = 16'hbabb;
	B = 16'h330d;
	ans = 16'hb1ef;
	#20
	A = 16'hb8ae;
	B = 16'h366a;
	ans = 16'hb381;
	#20
	A = 16'h393e;
	B = 16'hb32a;
	ans = 16'hb0b2;
	#20
	A = 16'hadfa;
	B = 16'hb0ec;
	ans = 16'h235b;
	#20
	A = 16'h3456;
	B = 16'hb8bd;
	ans = 16'hb123;
	#20
	A = 16'had5d;
	B = 16'h331d;
	ans = 16'ha4c5;
	#20
	A = 16'h3ae5;
	B = 16'hb684;
	ans = 16'hb59e;
	#20
	A = 16'h317e;
	B = 16'hb1bc;
	ans = 16'ha7e0;
	#20
	A = 16'hba2f;
	B = 16'hb98f;
	ans = 16'h384c;
	#20
	A = 16'h35d1;
	B = 16'h3bb3;
	ans = 16'h3599;
	#20
	A = 16'hba90;
	B = 16'hb918;
	ans = 16'h382e;
	#20
	A = 16'h325f;
	B = 16'hb935;
	ans = 16'hb026;
	#20
	A = 16'h3199;
	B = 16'h332a;
	ans = 16'h2903;
	#20
	A = 16'hb54b;
	B = 16'h2d58;
	ans = 16'ha712;
	#20
	A = 16'hb6a1;
	B = 16'h3bef;
	ans = 16'hb693;
	#20
	A = 16'h3349;
	B = 16'hb857;
	ans = 16'hafe7;
	#20
	A = 16'h396a;
	B = 16'h3428;
	ans = 16'h31a0;
	#20
	A = 16'h332c;
	B = 16'hba88;
	ans = 16'hb1db;
	#20
	A = 16'haf64;
	B = 16'h3ae0;
	ans = 16'hae5a;
	#20
	A = 16'hb52e;
	B = 16'h38f8;
	ans = 16'hb26f;
	#20
	A = 16'h3a8b;
	B = 16'h3346;
	ans = 16'h31f3;
	#20
	A = 16'h34d4;
	B = 16'hb904;
	ans = 16'hb20e;
	#20
	A = 16'hb988;
	B = 16'h3927;
	ans = 16'hb720;
	#20
	A = 16'h369b;
	B = 16'h2add;
	ans = 16'h25ab;
	#20
	A = 16'haf75;
	B = 16'hb569;
	ans = 16'h290b;
	#20
	A = 16'hb644;
	B = 16'hb780;
	ans = 16'h31e0;
	#20
	A = 16'h38b8;
	B = 16'haf38;
	ans = 16'hac42;
	#20
	A = 16'hb94f;
	B = 16'h3a3f;
	ans = 16'hb825;
	#20
	A = 16'hb833;
	B = 16'hbb33;
	ans = 16'h378f;
	#20
	A = 16'h32bc;
	B = 16'h3a6f;
	ans = 16'h316a;
	#20
	A = 16'hb863;
	B = 16'hb51e;
	ans = 16'h319d;
	#20
	A = 16'h34e1;
	B = 16'haef6;
	ans = 16'ha83f;
	#20
	A = 16'h3af0;
	B = 16'hb88f;
	ans = 16'hb7e8;
	#20
	A = 16'ha719;
	B = 16'hb8c1;
	ans = 16'h2438;
	#20
	A = 16'h3647;
	B = 16'hb940;
	ans = 16'hb41f;
	#20
	A = 16'hb585;
	B = 16'ha831;
	ans = 16'h21c9;
	#20
	A = 16'hb85f;
	B = 16'hb890;
	ans = 16'h34fc;
	#20
	A = 16'h348b;
	B = 16'h37f8;
	ans = 16'h3086;
	#20
	A = 16'haec0;
	B = 16'h3a68;
	ans = 16'had68;
	#20
	A = 16'h35ed;
	B = 16'hb225;
	ans = 16'hac8d;
	#20
	A = 16'h318e;
	B = 16'h3bf1;
	ans = 16'h3184;
	#20
	A = 16'hb73a;
	B = 16'ha0b4;
	ans = 16'h1c40;
	#20
	A = 16'h3810;
	B = 16'h3592;
	ans = 16'h31a8;
	#20
	A = 16'hac1b;
	B = 16'hac64;
	ans = 16'h1c82;
	#20
	A = 16'hb62a;
	B = 16'h2c05;
	ans = 16'ha632;
	#20
	A = 16'hb869;
	B = 16'h344b;
	ans = 16'hb0bc;
	#20
	A = 16'hb6e7;
	B = 16'h3690;
	ans = 16'hb1a9;
	#20
	A = 16'h34a1;
	B = 16'hbacf;
	ans = 16'hb3e1;
	#20
	A = 16'hb9f4;
	B = 16'h369f;
	ans = 16'hb4ed;
	#20
	A = 16'hb81d;
	B = 16'h392c;
	ans = 16'hb551;
	#20
	A = 16'h3640;
	B = 16'hb699;
	ans = 16'hb128;
	#20
	A = 16'h2c6c;
	B = 16'hb2da;
	ans = 16'ha393;
	#20
	A = 16'hb430;
	B = 16'hb728;
	ans = 16'h2f7e;
	#20
	A = 16'hb6a6;
	B = 16'h1e77;
	ans = 16'h995f;
	#20
	A = 16'h3b02;
	B = 16'h3158;
	ans = 16'h30ae;
	#20
	A = 16'h317a;
	B = 16'hb870;
	ans = 16'hae13;
	#20
	A = 16'hba42;
	B = 16'h3b2a;
	ans = 16'hb99b;
	#20
	A = 16'h347a;
	B = 16'hb387;
	ans = 16'hac36;
	#20
	A = 16'h3b90;
	B = 16'hb9c7;
	ans = 16'hb976;
	#20
	A = 16'h329e;
	B = 16'hbb15;
	ans = 16'hb1dc;
	#20
	A = 16'hb433;
	B = 16'hb020;
	ans = 16'h2855;
	#20
	A = 16'hb54f;
	B = 16'h2ac3;
	ans = 16'ha47d;
	#20
	A = 16'hb84a;
	B = 16'hb4c8;
	ans = 16'h3120;
	#20
	A = 16'hbadb;
	B = 16'hba80;
	ans = 16'h3992;
	#20
	A = 16'h3b2e;
	B = 16'hb60d;
	ans = 16'hb56e;
	#20
	A = 16'h3704;
	B = 16'h3b2d;
	ans = 16'h364b;
	#20
	A = 16'h36df;
	B = 16'h3bb8;
	ans = 16'h36a1;
	#20
	A = 16'hb8fb;
	B = 16'hb91c;
	ans = 16'h365d;
	#20
	A = 16'h39c5;
	B = 16'ha58;
	ans = 16'h893;
	#20
	A = 16'hbb9b;
	B = 16'h2ced;
	ans = 16'hacaf;
	#20
	A = 16'hb9bd;
	B = 16'hb679;
	ans = 16'h34a5;
	#20
	A = 16'hb652;
	B = 16'hba75;
	ans = 16'h351a;
	#20
	A = 16'h39ea;
	B = 16'hb8e2;
	ans = 16'hb738;
	#20
	A = 16'hbaa1;
	B = 16'hbaf7;
	ans = 16'h39c5;
	#20
	A = 16'h2ef6;
	B = 16'hb97f;
	ans = 16'hacc8;
	#20
	A = 16'h3a34;
	B = 16'h3afc;
	ans = 16'h396a;
	#20
	A = 16'h38e9;
	B = 16'hb65b;
	ans = 16'hb3cd;
	#20
	A = 16'hb0c5;
	B = 16'hb73a;
	ans = 16'h2c4f;
	#20
	A = 16'h3922;
	B = 16'h3952;
	ans = 16'h36d4;
	#20
	A = 16'hb9e1;
	B = 16'h355b;
	ans = 16'hb3df;
	#20
	A = 16'hb9ec;
	B = 16'hb8bc;
	ans = 16'h3702;
	#20
	A = 16'hb9ef;
	B = 16'hb8f6;
	ans = 16'h375c;
	#20
	A = 16'hb95f;
	B = 16'hb985;
	ans = 16'h3769;
	#20
	A = 16'hba96;
	B = 16'h31a6;
	ans = 16'hb0a6;
	#20
	A = 16'h393f;
	B = 16'h3ad2;
	ans = 16'h3879;
	#20
	A = 16'hb071;
	B = 16'hacb8;
	ans = 16'h213d;
	#20
	A = 16'hb9fc;
	B = 16'hba2c;
	ans = 16'h389e;
	#20
	A = 16'h39c2;
	B = 16'hb6a1;
	ans = 16'hb4c5;
	#20
	A = 16'hb76b;
	B = 16'hb649;
	ans = 16'h31d4;
	#20
	A = 16'hb8ce;
	B = 16'h3b8a;
	ans = 16'hb887;
	#20
	A = 16'hb9ac;
	B = 16'hbaeb;
	ans = 16'h38e8;
	#20
	A = 16'hb575;
	B = 16'h382c;
	ans = 16'hb1b1;
	#20
	A = 16'ha3b0;
	B = 16'hb782;
	ans = 16'h1f37;
	#20
	A = 16'hb86f;
	B = 16'haeec;
	ans = 16'h2bac;
	#20
	A = 16'hb8f7;
	B = 16'hb94c;
	ans = 16'h3693;
	#20
	A = 16'hb420;
	B = 16'habb2;
	ans = 16'h23f0;
	#20
	A = 16'h3b9e;
	B = 16'h3848;
	ans = 16'h3814;
	#20
	A = 16'h2c0c;
	B = 16'hb684;
	ans = 16'ha698;
	#20
	A = 16'h2856;
	B = 16'h3a96;
	ans = 16'h2724;
	#20
	A = 16'h33c2;
	B = 16'hb92a;
	ans = 16'hb102;
	#20
	A = 16'h3594;
	B = 16'hb919;
	ans = 16'hb31c;
	#20
	A = 16'h3be4;
	B = 16'h3865;
	ans = 16'h3856;
	#20
	A = 16'hb37f;
	B = 16'hb88d;
	ans = 16'h3044;
	#20
	A = 16'h36b4;
	B = 16'h2ee6;
	ans = 16'h29c8;
	#20
	A = 16'h3bb7;
	B = 16'hb250;
	ans = 16'hb216;
	#20
	A = 16'hace9;
	B = 16'h3849;
	ans = 16'ha943;
	#20
	A = 16'hb732;
	B = 16'h9fc4;
	ans = 16'h1afc;
	#20
	A = 16'h373d;
	B = 16'h3abe;
	ans = 16'h361a;
	#20
	A = 16'h3570;
	B = 16'hba49;
	ans = 16'hb446;
	#20
	A = 16'h3859;
	B = 16'hb771;
	ans = 16'hb40b;
	#20
	A = 16'hb307;
	B = 16'hb472;
	ans = 16'h2bcf;
	#20
	A = 16'hba84;
	B = 16'hb5ef;
	ans = 16'h34d5;
	#20
	A = 16'h39c0;
	B = 16'hb595;
	ans = 16'hb403;
	#20
	A = 16'h3ba0;
	B = 16'hba17;
	ans = 16'hb9ce;
	#20
	A = 16'haf3d;
	B = 16'hb900;
	ans = 16'h2c86;
	#20
	A = 16'hb7cc;
	B = 16'h278a;
	ans = 16'ha359;
	#20
	A = 16'hbaa6;
	B = 16'h38ae;
	ans = 16'hb7c7;
	#20
	A = 16'hb74d;
	B = 16'hb837;
	ans = 16'h33b1;
	#20
	A = 16'hb933;
	B = 16'h3bfa;
	ans = 16'hb92f;
	#20
	A = 16'h36ef;
	B = 16'hb90f;
	ans = 16'hb462;
	#20
	A = 16'hb6ec;
	B = 16'h2785;
	ans = 16'ha282;
	#20
	A = 16'hb3ed;
	B = 16'h39d2;
	ans = 16'hb1c4;
	#20
	A = 16'h3aac;
	B = 16'h3bb7;
	ans = 16'h3a6f;
	#20
	A = 16'h330b;
	B = 16'hbb43;
	ans = 16'hb265;
	#20
	A = 16'h3842;
	B = 16'h3b3a;
	ans = 16'h37b1;
	#20
	A = 16'h3a23;
	B = 16'h3487;
	ans = 16'h32f2;
	#20
	A = 16'h3b3a;
	B = 16'h3ab8;
	ans = 16'h3a12;
	#20
	A = 16'hb5aa;
	B = 16'hb42a;
	ans = 16'h2de5;
	#20
	A = 16'hb44f;
	B = 16'hb822;
	ans = 16'h3074;
	#20
	A = 16'h3425;
	B = 16'h3aea;
	ans = 16'h332a;
	#20
	A = 16'hb8b4;
	B = 16'h3926;
	ans = 16'hb60e;
	#20
	A = 16'hb840;
	B = 16'h3602;
	ans = 16'hb262;
	#20
	A = 16'h38a5;
	B = 16'hbbe1;
	ans = 16'hb893;
	#20
	A = 16'h3118;
	B = 16'hb9a3;
	ans = 16'haf2e;
	#20
	A = 16'h3542;
	B = 16'hb79d;
	ans = 16'hb101;
	#20
	A = 16'h3881;
	B = 16'hbacb;
	ans = 16'hb7a6;
	#20
	A = 16'hbb5d;
	B = 16'h21a1;
	ans = 16'ha12e;
	#20
	A = 16'h39b6;
	B = 16'h2cd6;
	ans = 16'h2ae8;
	#20
	A = 16'hb8e2;
	B = 16'h3a95;
	ans = 16'hb804;
	#20
	A = 16'h27b0;
	B = 16'h335c;
	ans = 16'h1f12;
	#20
	A = 16'h3593;
	B = 16'hb98f;
	ans = 16'hb3bf;
	#20
	A = 16'hbb24;
	B = 16'hb837;
	ans = 16'h3786;
	#20
	A = 16'h3714;
	B = 16'h39ce;
	ans = 16'h3523;
	#20
	A = 16'h2d9d;
	B = 16'hb72c;
	ans = 16'ha908;
	#20
	A = 16'hb9f0;
	B = 16'hbabb;
	ans = 16'h38ff;
	#20
	A = 16'h346d;
	B = 16'h3957;
	ans = 16'h31e9;
	#20
	A = 16'h3570;
	B = 16'hb167;
	ans = 16'hab58;
	#20
	A = 16'hb02a;
	B = 16'h3bd0;
	ans = 16'hb011;
	#20
	A = 16'h2a38;
	B = 16'h3821;
	ans = 16'h266b;
	#20
	A = 16'hb760;
	B = 16'h38ed;
	ans = 16'hb48a;
	#20
	A = 16'h3970;
	B = 16'h3b9f;
	ans = 16'h392e;
	#20
	A = 16'hba25;
	B = 16'h30ec;
	ans = 16'haf90;
	#20
	A = 16'hb2c1;
	B = 16'hb9f8;
	ans = 16'h310a;
	#20
	A = 16'h3247;
	B = 16'h313a;
	ans = 16'h281a;
	#20
	A = 16'hbbba;
	B = 16'hb585;
	ans = 16'h3555;
	#20
	A = 16'hbab2;
	B = 16'h20f7;
	ans = 16'ha028;
	#20
	A = 16'hb875;
	B = 16'hb7d9;
	ans = 16'h345f;
	#20
	A = 16'hacc5;
	B = 16'hb5e2;
	ans = 16'h2704;
	#20
	A = 16'hb976;
	B = 16'hb8df;
	ans = 16'h36a6;
	#20
	A = 16'ha0f2;
	B = 16'h363a;
	ans = 16'h9bb3;
	#20
	A = 16'h34bd;
	B = 16'h3811;
	ans = 16'h30d1;
	#20
	A = 16'ha92c;
	B = 16'hb958;
	ans = 16'h26e9;
	#20
	A = 16'h3917;
	B = 16'h3a4f;
	ans = 16'h3804;
	#20
	A = 16'h3971;
	B = 16'hb8e7;
	ans = 16'hb6ab;
	#20
	A = 16'hb85f;
	B = 16'h32ba;
	ans = 16'haf5a;
	#20
	A = 16'hb9ea;
	B = 16'hb4e2;
	ans = 16'h3338;
	#20
	A = 16'h3a22;
	B = 16'h32fb;
	ans = 16'h315a;
	#20
	A = 16'h3a8b;
	B = 16'h394d;
	ans = 16'h3856;
	#20
	A = 16'h34af;
	B = 16'h364a;
	ans = 16'h2f5d;
	#20
	A = 16'h3b14;
	B = 16'hb9f0;
	ans = 16'hb941;
	#20
	A = 16'h3875;
	B = 16'hb6b4;
	ans = 16'hb378;
	#20
	A = 16'hb4bb;
	B = 16'hb03e;
	ans = 16'h2904;
	#20
	A = 16'hb95d;
	B = 16'hb788;
	ans = 16'h350d;
	#20
	A = 16'hb5b0;
	B = 16'hb985;
	ans = 16'h33d9;
	#20
	A = 16'hb18d;
	B = 16'h398b;
	ans = 16'hafb1;
	#20
	A = 16'h3612;
	B = 16'h3904;
	ans = 16'h339d;
	#20
	A = 16'hba24;
	B = 16'hb8a2;
	ans = 16'h371d;
	#20
	A = 16'h3836;
	B = 16'hb4e2;
	ans = 16'hb124;
	#20
	A = 16'h95c6;
	B = 16'hb927;
	ans = 16'h1370;
	#20
	A = 16'hb9de;
	B = 16'hb9d3;
	ans = 16'h3845;
	#20
	A = 16'h3711;
	B = 16'hb354;
	ans = 16'hae79;
	#20
	A = 16'haf21;
	B = 16'h3ab1;
	ans = 16'hadf6;
	#20
	A = 16'hb2c2;
	B = 16'h36b9;
	ans = 16'hadae;
	#20
	A = 16'hb9cf;
	B = 16'h3bd2;
	ans = 16'hb9ae;
	#20
	A = 16'hb414;
	B = 16'h337f;
	ans = 16'haba4;
	#20
	A = 16'hbaff;
	B = 16'hbae3;
	ans = 16'h3a06;
	#20
	A = 16'h339c;
	B = 16'h3a16;
	ans = 16'h31ca;
	#20
	A = 16'h1d84;
	B = 16'hb6f3;
	ans = 16'h98cb;
	#20
	A = 16'h3bc3;
	B = 16'h370f;
	ans = 16'h36d9;
	#20
	A = 16'h379b;
	B = 16'h3a67;
	ans = 16'h3616;
	#20
	A = 16'hb80a;
	B = 16'hb479;
	ans = 16'h3084;
	#20
	A = 16'hb8db;
	B = 16'h351a;
	ans = 16'hb231;
	#20
	A = 16'hb8c8;
	B = 16'h9c16;
	ans = 16'h18e2;
	#20
	A = 16'h375d;
	B = 16'h32fa;
	ans = 16'h2e6c;
	#20
	A = 16'h3445;
	B = 16'hbaeb;
	ans = 16'hb362;
	#20
	A = 16'h2a48;
	B = 16'hb517;
	ans = 16'ha3fe;
	#20
	A = 16'h2d33;
	B = 16'h3b71;
	ans = 16'h2cd6;
	#20
	A = 16'h38e6;
	B = 16'h3492;
	ans = 16'h3199;
	#20
	A = 16'h3880;
	B = 16'hb864;
	ans = 16'hb4f0;
	#20
	A = 16'hb614;
	B = 16'hb6f9;
	ans = 16'h314c;
	#20
	A = 16'hbac8;
	B = 16'hb872;
	ans = 16'h3789;
	#20
	A = 16'h38ce;
	B = 16'hba93;
	ans = 16'hb7e6;
	#20
	A = 16'h3b64;
	B = 16'h39f0;
	ans = 16'h397c;
	#20
	A = 16'hb782;
	B = 16'h3527;
	ans = 16'hb0d6;
	#20
	A = 16'h317c;
	B = 16'h2c86;
	ans = 16'h2234;
	#20
	A = 16'h38a4;
	B = 16'h3768;
	ans = 16'h344c;
	#20
	A = 16'h346a;
	B = 16'h30d6;
	ans = 16'h2956;
	#20
	A = 16'haf00;
	B = 16'hb184;
	ans = 16'h24d4;
	#20
	A = 16'hae5c;
	B = 16'h3876;
	ans = 16'hab18;
	#20
	A = 16'hbb0d;
	B = 16'h3b08;
	ans = 16'hba32;
	#20
	A = 16'h3945;
	B = 16'h3a1c;
	ans = 16'h3806;
	#20
	A = 16'hb5b2;
	B = 16'h3b93;
	ans = 16'hb564;
	#20
	A = 16'h36a0;
	B = 16'hb446;
	ans = 16'haf14;
	#20
	A = 16'hb901;
	B = 16'h35a5;
	ans = 16'hb310;
	#20
	A = 16'hba02;
	B = 16'h3ab1;
	ans = 16'hb906;
	#20
	A = 16'hba61;
	B = 16'hb878;
	ans = 16'h3720;
	#20
	A = 16'hb990;
	B = 16'h3700;
	ans = 16'hb4de;
	#20
	A = 16'hbb88;
	B = 16'h380a;
	ans = 16'hb79b;
	#20
	A = 16'h30a8;
	B = 16'h3a57;
	ans = 16'h2f61;
	#20
	A = 16'h37a1;
	B = 16'hbad9;
	ans = 16'hb688;
	#20
	A = 16'hb9fa;
	B = 16'h35f6;
	ans = 16'hb474;
	#20
	A = 16'hb70b;
	B = 16'h2e2a;
	ans = 16'ha96d;
	#20
	A = 16'h3820;
	B = 16'hb660;
	ans = 16'hb293;
	#20
	A = 16'h3a1f;
	B = 16'h37fe;
	ans = 16'h361d;
	#20
	A = 16'h3133;
	B = 16'h3849;
	ans = 16'h2d92;
	#20
	A = 16'h2e3e;
	B = 16'hb38b;
	ans = 16'ha5e3;
	#20
	A = 16'h3314;
	B = 16'h3058;
	ans = 16'h27b0;
	#20
	A = 16'haba8;
	B = 16'hb7af;
	ans = 16'h275a;
	#20
	A = 16'hae8a;
	B = 16'hb9c4;
	ans = 16'h2cb6;
	#20
	A = 16'hbb2d;
	B = 16'h2ca4;
	ans = 16'hac2a;
	#20
	A = 16'hb900;
	B = 16'hb87c;
	ans = 16'h359b;
	#20
	A = 16'h36c5;
	B = 16'h3138;
	ans = 16'h2c6b;
	#20
	A = 16'h3440;
	B = 16'h35d2;
	ans = 16'h2e2f;
	#20
	A = 16'h3379;
	B = 16'h3b54;
	ans = 16'h32d8;
	#20
	A = 16'hbb17;
	B = 16'h2345;
	ans = 16'ha271;
	#20
	A = 16'hb7af;
	B = 16'h3599;
	ans = 16'hb160;
	#20
	A = 16'h34b6;
	B = 16'hb2bf;
	ans = 16'habf2;
	#20
	A = 16'h3bce;
	B = 16'h36dc;
	ans = 16'h36b1;
	#20
	A = 16'h343f;
	B = 16'hb418;
	ans = 16'hac58;
	#20
	A = 16'h3bf9;
	B = 16'hbb1f;
	ans = 16'hbb19;
	#20
	A = 16'hb5b3;
	B = 16'h3864;
	ans = 16'hb241;
	#20
	A = 16'h3919;
	B = 16'hb4e5;
	ans = 16'hb23d;
	#20
	A = 16'h3575;
	B = 16'hba6f;
	ans = 16'hb463;
	#20
	A = 16'h3b3a;
	B = 16'hbb07;
	ans = 16'hba59;
	#20
	A = 16'hb51e;
	B = 16'h3b20;
	ans = 16'hb48f;
	#20
	A = 16'h38c4;
	B = 16'h2d04;
	ans = 16'h29fa;
	#20
	A = 16'hb7ec;
	B = 16'hbaf7;
	ans = 16'h36e6;
	#20
	A = 16'hb517;
	B = 16'h37b5;
	ans = 16'hb0e7;
	#20
	A = 16'hb178;
	B = 16'haef6;
	ans = 16'h24c2;
	#20
	A = 16'h3683;
	B = 16'h2d0a;
	ans = 16'h281a;
	#20
	A = 16'hb6ac;
	B = 16'hb31b;
	ans = 16'h2ded;
	#20
	A = 16'hb8e6;
	B = 16'h348b;
	ans = 16'hb190;
	#20
	A = 16'hb9ff;
	B = 16'h32f4;
	ans = 16'hb136;
	#20
	A = 16'h3902;
	B = 16'hba25;
	ans = 16'hb7b1;
	#20
	A = 16'hb9ee;
	B = 16'hbb61;
	ans = 16'h3978;
	#20
	A = 16'hb9d9;
	B = 16'hae5f;
	ans = 16'h2ca8;
	#20
	A = 16'h3662;
	B = 16'h342d;
	ans = 16'h2eaa;
	#20
	A = 16'hb2db;
	B = 16'hb243;
	ans = 16'h295e;
	#20
	A = 16'h3625;
	B = 16'h3968;
	ans = 16'h3427;
	#20
	A = 16'hb244;
	B = 16'h3926;
	ans = 16'hb008;
	#20
	A = 16'h331a;
	B = 16'h3017;
	ans = 16'h2743;
	#20
	A = 16'hba9e;
	B = 16'hb88b;
	ans = 16'h3784;
	#20
	A = 16'hb237;
	B = 16'h37de;
	ans = 16'hae1d;
	#20
	A = 16'haf40;
	B = 16'h3205;
	ans = 16'ha575;
	#20
	A = 16'hbb68;
	B = 16'h388a;
	ans = 16'hb834;
	#20
	A = 16'h3613;
	B = 16'h3b96;
	ans = 16'h35c3;
	#20
	A = 16'h29e8;
	B = 16'hb7da;
	ans = 16'ha5cc;
	#20
	A = 16'hba1d;
	B = 16'h3497;
	ans = 16'hb304;
	#20
	A = 16'h3288;
	B = 16'hb9e8;
	ans = 16'hb0d2;
	#20
	A = 16'hb487;
	B = 16'hb292;
	ans = 16'h2b70;
	#20
	A = 16'hbb65;
	B = 16'hb9de;
	ans = 16'h396c;
	#20
	A = 16'h346b;
	B = 16'hb85a;
	ans = 16'hb0ce;
	#20
	A = 16'h2186;
	B = 16'hb82f;
	ans = 16'h9dc7;
	#20
	A = 16'h3632;
	B = 16'hb467;
	ans = 16'haed2;
	#20
	A = 16'hb5be;
	B = 16'hbbd8;
	ans = 16'h35a1;
	#20
	A = 16'hb5f2;
	B = 16'h3903;
	ans = 16'hb373;
	#20
	A = 16'hb6cb;
	B = 16'h399f;
	ans = 16'hb4c6;
	#20
	A = 16'h3707;
	B = 16'hb9fe;
	ans = 16'hb543;
	#20
	A = 16'hbbb9;
	B = 16'haff4;
	ans = 16'h2fad;
	#20
	A = 16'h34dc;
	B = 16'hb428;
	ans = 16'had0d;
	#20
	A = 16'hb482;
	B = 16'h3b0a;
	ans = 16'hb3ef;
	#20
	A = 16'h3b45;
	B = 16'h3aa8;
	ans = 16'h3a0c;
	#20
	A = 16'hba6c;
	B = 16'h33a4;
	ans = 16'hb222;
	#20
	A = 16'hb013;
	B = 16'hae7c;
	ans = 16'h229b;
	#20
	A = 16'hbac7;
	B = 16'hba83;
	ans = 16'h3984;
	#20
	A = 16'h2ee7;
	B = 16'h35c2;
	ans = 16'h28f8;
	#20
	A = 16'hb23b;
	B = 16'hbb24;
	ans = 16'h3190;
	#20
	A = 16'hb4e4;
	B = 16'h39a6;
	ans = 16'hb2e8;
	#20
	A = 16'h393c;
	B = 16'h309d;
	ans = 16'h2e09;
	#20
	A = 16'hb1c3;
	B = 16'hba82;
	ans = 16'h30b0;
	#20
	A = 16'h3b8d;
	B = 16'hb93e;
	ans = 16'hb8f3;
	#20
	A = 16'h38e8;
	B = 16'hbbd9;
	ans = 16'hb8d0;
	#20
	A = 16'hbba8;
	B = 16'hb31b;
	ans = 16'h32cd;
	#20
	A = 16'hbb5d;
	B = 16'hb323;
	ans = 16'h3292;
	#20
	A = 16'hbafa;
	B = 16'ha70c;
	ans = 16'h2625;
	#20
	A = 16'habab;
	B = 16'hbb3c;
	ans = 16'h2aef;
	#20
	A = 16'h3b05;
	B = 16'hb49b;
	ans = 16'hb40b;
	#20
	A = 16'hb610;
	B = 16'h3a7b;
	ans = 16'hb4e9;
	#20
	A = 16'h3b03;
	B = 16'h3802;
	ans = 16'h3707;
	#20
	A = 16'hb98b;
	B = 16'hb87d;
	ans = 16'h3638;
	#20
	A = 16'hb04e;
	B = 16'h395f;
	ans = 16'hadc8;
	#20
	A = 16'h3a2a;
	B = 16'hae3c;
	ans = 16'hacce;
	#20
	A = 16'hbae1;
	B = 16'hba95;
	ans = 16'h39a9;
	#20
	A = 16'h2ddf;
	B = 16'hb72a;
	ans = 16'ha942;
	#20
	A = 16'h38ab;
	B = 16'h393f;
	ans = 16'h361f;
	#20
	A = 16'hb427;
	B = 16'h3a4c;
	ans = 16'hb289;
	#20
	A = 16'h391c;
	B = 16'hbb88;
	ans = 16'hb8cf;
	#20
	A = 16'hba42;
	B = 16'h39a6;
	ans = 16'hb86b;
	#20
	A = 16'h3a63;
	B = 16'h35a8;
	ans = 16'h3484;
	#20
	A = 16'hb7a2;
	B = 16'hb1ff;
	ans = 16'h2db9;
	#20
	A = 16'hbb4b;
	B = 16'h332b;
	ans = 16'hb289;
	#20
	A = 16'hb9b9;
	B = 16'h2df7;
	ans = 16'hac44;
	#20
	A = 16'haca8;
	B = 16'h2f8c;
	ans = 16'ha064;
	#20
	A = 16'h393a;
	B = 16'hb891;
	ans = 16'hb5f7;
	#20
	A = 16'h3756;
	B = 16'hb6cf;
	ans = 16'hb23e;
	#20
	A = 16'h2db3;
	B = 16'hb9aa;
	ans = 16'hac09;
	#20
	A = 16'h3a03;
	B = 16'h393d;
	ans = 16'h37df;
	#20
	A = 16'h335d;
	B = 16'h35e8;
	ans = 16'h2d70;
	#20
	A = 16'hbbba;
	B = 16'h32e4;
	ans = 16'hb2a8;
	#20
	A = 16'h3a85;
	B = 16'h3a2a;
	ans = 16'h3906;
	#20
	A = 16'h39ad;
	B = 16'hbac8;
	ans = 16'hb8d0;
	#20
	A = 16'h3a75;
	B = 16'h373b;
	ans = 16'h35d6;
	#20
	A = 16'hb102;
	B = 16'hb85f;
	ans = 16'h2d79;
	#20
	A = 16'ha401;
	B = 16'h35a7;
	ans = 16'h9da8;
	#20
	A = 16'h39cc;
	B = 16'h362e;
	ans = 16'h347a;
	#20
	A = 16'h3671;
	B = 16'h3238;
	ans = 16'h2d02;
	#20
	A = 16'h3b49;
	B = 16'hba57;
	ans = 16'hb9c6;
	#20
	A = 16'hba8b;
	B = 16'h3a6a;
	ans = 16'hb93f;
	#20
	A = 16'h3b92;
	B = 16'h3b7d;
	ans = 16'h3b16;
	#20
	A = 16'hbb9b;
	B = 16'hb973;
	ans = 16'h392e;
	#20
	A = 16'h3a9d;
	B = 16'hbbe4;
	ans = 16'hba86;
	#20
	A = 16'hb938;
	B = 16'hb8db;
	ans = 16'h3656;
	#20
	A = 16'h39d5;
	B = 16'h3abb;
	ans = 16'h38e8;
	#20
	A = 16'h3937;
	B = 16'hb8f0;
	ans = 16'hb670;
	#20
	A = 16'h368d;
	B = 16'hb21c;
	ans = 16'had01;
	#20
	A = 16'h35f8;
	B = 16'h3871;
	ans = 16'h32a1;
	#20
	A = 16'h3880;
	B = 16'h3b9d;
	ans = 16'h3848;
	#20
	A = 16'h3a64;
	B = 16'h39f3;
	ans = 16'h38c1;
	#20
	A = 16'h2dc8;
	B = 16'hb955;
	ans = 16'habb5;
	#20
	A = 16'hb968;
	B = 16'hb434;
	ans = 16'h31ae;
	#20
	A = 16'h3963;
	B = 16'hb907;
	ans = 16'hb6c5;
	#20
	A = 16'hb13e;
	B = 16'h3942;
	ans = 16'haee4;
	#20
	A = 16'hb4cd;
	B = 16'h2d50;
	ans = 16'ha660;
	#20
	A = 16'h3901;
	B = 16'hbb07;
	ans = 16'hb865;
	#20
	A = 16'h3594;
	B = 16'h35ca;
	ans = 16'h3009;
	#20
	A = 16'h3b72;
	B = 16'h380b;
	ans = 16'h3786;
	#20
	A = 16'h3be5;
	B = 16'h31e0;
	ans = 16'h31cc;
	#20
	A = 16'h35ee;
	B = 16'h39b9;
	ans = 16'h343e;
	#20
	A = 16'h34b9;
	B = 16'h39d1;
	ans = 16'h32de;
	#20
	A = 16'hba52;
	B = 16'haab6;
	ans = 16'h294d;
	#20
	A = 16'h39fe;
	B = 16'h385f;
	ans = 16'h368c;
	#20
	A = 16'hbb07;
	B = 16'hb332;
	ans = 16'h3252;
	#20
	A = 16'hbafb;
	B = 16'hb240;
	ans = 16'h3174;
	#20
	A = 16'hbab4;
	B = 16'h3a6f;
	ans = 16'hb964;
	#20
	A = 16'hb5f9;
	B = 16'h36e1;
	ans = 16'hb123;
	#20
	A = 16'h3ab5;
	B = 16'h3b44;
	ans = 16'h3a17;
	#20
	A = 16'h35f8;
	B = 16'h30da;
	ans = 16'h2b3d;
	#20
	A = 16'hb6ea;
	B = 16'hb86f;
	ans = 16'h33aa;
	#20
	A = 16'hb644;
	B = 16'hb45c;
	ans = 16'h2ed4;
	#20
	A = 16'hbac7;
	B = 16'h3b46;
	ans = 16'hba29;
	#20
	A = 16'h3433;
	B = 16'h3810;
	ans = 16'h3044;
	#20
	A = 16'h39dd;
	B = 16'h351d;
	ans = 16'h337f;
	#20
	A = 16'hb2a3;
	B = 16'hb7c1;
	ans = 16'h2e6f;
	#20
	A = 16'hb391;
	B = 16'hb1d8;
	ans = 16'h2987;
	#20
	A = 16'hb0d4;
	B = 16'h3b10;
	ans = 16'hb043;
	#20
	A = 16'h388d;
	B = 16'h3334;
	ans = 16'h3019;
	#20
	A = 16'hbb30;
	B = 16'hba2c;
	ans = 16'h398c;
	#20
	A = 16'h3a28;
	B = 16'h3bc8;
	ans = 16'h39fd;
	#20
	A = 16'hb99e;
	B = 16'hbb8e;
	ans = 16'h394e;
	#20
	A = 16'hb9fc;
	B = 16'h393b;
	ans = 16'hb7d3;
	#20
	A = 16'hb81f;
	B = 16'h3812;
	ans = 16'hb432;
	#20
	A = 16'h3458;
	B = 16'hb893;
	ans = 16'hb0f8;
	#20
	A = 16'h39a8;
	B = 16'h39a0;
	ans = 16'h37f4;
	#20
	A = 16'h39a4;
	B = 16'h3506;
	ans = 16'h3315;
	#20
	A = 16'h3ad9;
	B = 16'h3a0e;
	ans = 16'h392f;
	#20
	A = 16'hb7a8;
	B = 16'h3694;
	ans = 16'hb24c;
	#20
	A = 16'h36a3;
	B = 16'h3826;
	ans = 16'h32e2;
	#20
	A = 16'h34bb;
	B = 16'h3265;
	ans = 16'h2b90;
	#20
	A = 16'hb6bf;
	B = 16'ha19a;
	ans = 16'h1cb9;
	#20
	A = 16'hb719;
	B = 16'h35b3;
	ans = 16'hb10e;
	#20
	A = 16'h3a0e;
	B = 16'hba64;
	ans = 16'hb8d6;
	#20
	A = 16'hb0b8;
	B = 16'hb9ea;
	ans = 16'h2efa;
	#20
	A = 16'h37a1;
	B = 16'hb4ab;
	ans = 16'hb074;
	#20
	A = 16'hb0c6;
	B = 16'hb892;
	ans = 16'h2d74;
	#20
	A = 16'hba5b;
	B = 16'hb7ad;
	ans = 16'h3619;
	#20
	A = 16'h3438;
	B = 16'h34a0;
	ans = 16'h2ce1;
	#20
	A = 16'hb47a;
	B = 16'hbbf4;
	ans = 16'h3473;
	#20
	A = 16'h3aca;
	B = 16'hb9ca;
	ans = 16'hb8ea;
	#20
	A = 16'h3abd;
	B = 16'hbaa9;
	ans = 16'hb99c;
	#20
	A = 16'h3ae6;
	B = 16'hbb80;
	ans = 16'hba78;
	#20
	A = 16'hbb08;
	B = 16'h3b50;
	ans = 16'hba6d;
	#20
	A = 16'h32a5;
	B = 16'hbbc5;
	ans = 16'hb274;
	#20
	A = 16'hb64d;
	B = 16'h3472;
	ans = 16'haf01;
	#20
	A = 16'ha96e;
	B = 16'h3bf4;
	ans = 16'ha966;
	#20
	A = 16'h30ce;
	B = 16'hb4e0;
	ans = 16'ha9db;
	#20
	A = 16'h30c1;
	B = 16'hb846;
	ans = 16'had14;
	#20
	A = 16'hbb12;
	B = 16'hb61b;
	ans = 16'h3565;
	#20
	A = 16'h2565;
	B = 16'h3ac3;
	ans = 16'h248f;
	#20
	A = 16'hb704;
	B = 16'hb416;
	ans = 16'h2f2b;
	#20
	A = 16'h3968;
	B = 16'hbbac;
	ans = 16'hb92f;
	#20
	A = 16'hbbaf;
	B = 16'h3843;
	ans = 16'hb818;
	#20
	A = 16'h3902;
	B = 16'hb97f;
	ans = 16'hb6e1;
	#20
	A = 16'h343b;
	B = 16'h312b;
	ans = 16'h2977;
	#20
	A = 16'h3a51;
	B = 16'h3a55;
	ans = 16'h3900;
	#20
	A = 16'hb8c8;
	B = 16'h3881;
	ans = 16'hb562;
	#20
	A = 16'haba8;
	B = 16'h3b46;
	ans = 16'haaf6;
	#20
	A = 16'h38e8;
	B = 16'hb976;
	ans = 16'hb6b3;
	#20
	A = 16'h384c;
	B = 16'h3086;
	ans = 16'h2cdc;
	#20
	A = 16'h3576;
	B = 16'h3956;
	ans = 16'h3349;
	#20
	A = 16'h3be1;
	B = 16'ha0e4;
	ans = 16'ha0d1;
	#20
	A = 16'h3aca;
	B = 16'h339d;
	ans = 16'h3276;
	#20
	A = 16'h2df0;
	B = 16'h34df;
	ans = 16'h273b;
	#20
	A = 16'hbb0e;
	B = 16'h3235;
	ans = 16'hb179;
	#20
	A = 16'h1e2f;
	B = 16'h3ad6;
	ans = 16'h1d49;
	#20
	A = 16'h3479;
	B = 16'hb762;
	ans = 16'hb021;
	#20
	A = 16'h3848;
	B = 16'h3547;
	ans = 16'h31a6;
	#20
	A = 16'h39e2;
	B = 16'hbae4;
	ans = 16'hb911;
	#20
	A = 16'h3b98;
	B = 16'hb8d1;
	ans = 16'hb892;
	#20
	A = 16'h35ef;
	B = 16'hba6d;
	ans = 16'hb4c4;
	#20
	A = 16'h2858;
	B = 16'h3847;
	ans = 16'h24a5;
	#20
	A = 16'h3bfc;
	B = 16'hb4ca;
	ans = 16'hb4c8;
	#20
	A = 16'h390b;
	B = 16'h3813;
	ans = 16'h3523;
	#20
	A = 16'hafe0;
	B = 16'hb639;
	ans = 16'h2a20;
	#20
	A = 16'h3a7f;
	B = 16'h373a;
	ans = 16'h35de;
	#20
	A = 16'hb89f;
	B = 16'h3549;
	ans = 16'hb21b;
	#20
	A = 16'h28d6;
	B = 16'h3ac8;
	ans = 16'h2819;
	#20
	A = 16'hba37;
	B = 16'h39dd;
	ans = 16'hb88e;
	#20
	A = 16'h3a09;
	B = 16'h3afd;
	ans = 16'h3946;
	#20
	A = 16'hbb77;
	B = 16'h2e53;
	ans = 16'hade7;
	#20
	A = 16'h39cf;
	B = 16'h3b00;
	ans = 16'h3915;
	#20
	A = 16'hb410;
	B = 16'ha63a;
	ans = 16'h1e53;
	#20
	A = 16'hb5ad;
	B = 16'hb91c;
	ans = 16'h3340;
	#20
	A = 16'hb9bc;
	B = 16'ha841;
	ans = 16'h2619;
	#20
	A = 16'hb686;
	B = 16'h3057;
	ans = 16'hab14;
	#20
	A = 16'hba43;
	B = 16'hba1e;
	ans = 16'h38ca;
	#20
	A = 16'h3965;
	B = 16'hb956;
	ans = 16'hb732;
	#20
	A = 16'h317a;
	B = 16'hbbcf;
	ans = 16'hb158;
	#20
	A = 16'hba96;
	B = 16'hba39;
	ans = 16'h391f;
	#20
	A = 16'h363f;
	B = 16'ha825;
	ans = 16'ha279;
	#20
	A = 16'h3a78;
	B = 16'h1d30;
	ans = 16'h1c32;
	#20
	A = 16'h3bfa;
	B = 16'hb885;
	ans = 16'hb882;
	#20
	A = 16'hb00b;
	B = 16'hae6a;
	ans = 16'h227c;
	#20
	A = 16'h331a;
	B = 16'hba8a;
	ans = 16'hb1ce;
	#20
	A = 16'h394c;
	B = 16'h3a09;
	ans = 16'h37fe;
	#20
	A = 16'h3b72;
	B = 16'hb60a;
	ans = 16'hb59f;
	#20
	A = 16'hba08;
	B = 16'hbad4;
	ans = 16'h3926;
	#20
	A = 16'hb8dd;
	B = 16'h2e17;
	ans = 16'hab67;
	#20
	A = 16'hae82;
	B = 16'h356f;
	ans = 16'ha86c;
	#20
	A = 16'h3416;
	B = 16'hb12c;
	ans = 16'ha948;
	#20
	A = 16'hb0e3;
	B = 16'h3969;
	ans = 16'hae9c;
	#20
	A = 16'h3a26;
	B = 16'hb498;
	ans = 16'hb310;
	#20
	A = 16'h3b93;
	B = 16'h3564;
	ans = 16'h351b;
	#20
	A = 16'hb4e4;
	B = 16'h2d20;
	ans = 16'ha644;
	#20
	A = 16'hac5f;
	B = 16'hb687;
	ans = 16'h2722;
	#20
	A = 16'hb714;
	B = 16'h3910;
	ans = 16'hb47b;
	#20
	A = 16'h2c62;
	B = 16'h32ac;
	ans = 16'h234f;
	#20
	A = 16'hb731;
	B = 16'hb981;
	ans = 16'h34f3;
	#20
	A = 16'h3a83;
	B = 16'hba0e;
	ans = 16'hb8ee;
	#20
	A = 16'h38e4;
	B = 16'h3941;
	ans = 16'h366c;
	#20
	A = 16'haa93;
	B = 16'hbab2;
	ans = 16'h2981;
	#20
	A = 16'h3b4e;
	B = 16'h39a1;
	ans = 16'h3924;
	#20
	A = 16'hb6ac;
	B = 16'h36fc;
	ans = 16'hb1d3;
	#20
	A = 16'h3387;
	B = 16'hb793;
	ans = 16'haf20;
	#20
	A = 16'hb808;
	B = 16'h3891;
	ans = 16'hb49a;
	#20
	A = 16'h3959;
	B = 16'h35ed;
	ans = 16'h33ec;
	#20
	A = 16'h3b90;
	B = 16'h3758;
	ans = 16'h36f1;
	#20
	A = 16'h3421;
	B = 16'h3432;
	ans = 16'h2c55;
	#20
	A = 16'h302b;
	B = 16'hb826;
	ans = 16'hac53;
	#20
	A = 16'h3a4f;
	B = 16'hada8;
	ans = 16'hac76;
	#20
	A = 16'h33b3;
	B = 16'hb960;
	ans = 16'hb12c;
	#20
	A = 16'h3b9b;
	B = 16'hb84d;
	ans = 16'hb817;
	#20
	A = 16'hbaa1;
	B = 16'hb5bd;
	ans = 16'h34c1;
	#20
	A = 16'h2ef3;
	B = 16'hbb26;
	ans = 16'hae36;
	#20
	A = 16'h3bd5;
	B = 16'h347a;
	ans = 16'h3462;
	#20
	A = 16'h3b93;
	B = 16'hb48c;
	ans = 16'hb44e;
	#20
	A = 16'h336d;
	B = 16'h325e;
	ans = 16'h29e9;
	#20
	A = 16'hbb91;
	B = 16'hb9a6;
	ans = 16'h3958;
	#20
	A = 16'h3843;
	B = 16'hac9e;
	ans = 16'ha8eb;
	#20
	A = 16'ha713;
	B = 16'h397e;
	ans = 16'ha4db;
	#20
	A = 16'h1d14;
	B = 16'hb3a1;
	ans = 16'h94d8;
	#20
	A = 16'h3716;
	B = 16'hbb87;
	ans = 16'hb6ab;
	#20
	A = 16'hbb24;
	B = 16'hac5d;
	ans = 16'h2bca;
	#20
	A = 16'hb56c;
	B = 16'h3948;
	ans = 16'hb329;
	#20
	A = 16'hb154;
	B = 16'h3b0f;
	ans = 16'hb0b3;
	#20
	A = 16'h39fe;
	B = 16'h3a63;
	ans = 16'h38c9;
	#20
	A = 16'h36e7;
	B = 16'hb84a;
	ans = 16'hb367;
	#20
	A = 16'h311c;
	B = 16'hb05f;
	ans = 16'ha595;
	#20
	A = 16'hb895;
	B = 16'hb81a;
	ans = 16'h34b3;
	#20
	A = 16'h3b73;
	B = 16'h2d27;
	ans = 16'h2ccc;
	#20
	A = 16'h309f;
	B = 16'h3366;
	ans = 16'h2846;
	#20
	A = 16'h3329;
	B = 16'h38e1;
	ans = 16'h305e;
	#20
	A = 16'hb888;
	B = 16'hb649;
	ans = 16'h331f;
	#20
	A = 16'h3779;
	B = 16'hba5d;
	ans = 16'hb5f2;
	#20
	A = 16'hbba1;
	B = 16'hbb24;
	ans = 16'h3acf;
	#20
	A = 16'h3be2;
	B = 16'hbbdf;
	ans = 16'hbbc1;
	#20
	A = 16'hb94d;
	B = 16'h37d9;
	ans = 16'hb533;
	#20
	A = 16'h3933;
	B = 16'ha6be;
	ans = 16'ha462;
	#20
	A = 16'h3b81;
	B = 16'h38f9;
	ans = 16'h38aa;
	#20
	A = 16'hb172;
	B = 16'h39bf;
	ans = 16'hafd3;
	#20
	A = 16'hbbc0;
	B = 16'h36e3;
	ans = 16'hb6ac;
	#20
	A = 16'h3bbf;
	B = 16'h3775;
	ans = 16'h3738;
	#20
	A = 16'hb1b7;
	B = 16'hb717;
	ans = 16'h2d11;
	#20
	A = 16'hba10;
	B = 16'hba08;
	ans = 16'h3892;
	#20
	A = 16'hb22f;
	B = 16'h3941;
	ans = 16'hb010;
	#20
	A = 16'h3743;
	B = 16'h35ed;
	ans = 16'h3161;
	#20
	A = 16'h3534;
	B = 16'h3a84;
	ans = 16'h343d;
	#20
	A = 16'hbb59;
	B = 16'hbad7;
	ans = 16'h3a48;
	#20
	A = 16'h2d29;
	B = 16'hb498;
	ans = 16'ha5ed;
	#20
	A = 16'hba71;
	B = 16'hb98e;
	ans = 16'h3879;
	#20
	A = 16'h3aee;
	B = 16'h3b6c;
	ans = 16'h3a6e;
	#20
	A = 16'h3850;
	B = 16'hb83b;
	ans = 16'hb490;
	#20
	A = 16'h3a7a;
	B = 16'hba01;
	ans = 16'hb8dc;
	#20
	A = 16'h3830;
	B = 16'hbb11;
	ans = 16'hb766;
	#20
	A = 16'hb8c7;
	B = 16'hb9f9;
	ans = 16'h3722;
	#20
	A = 16'hb9c6;
	B = 16'h2f84;
	ans = 16'had6d;
	#20
	A = 16'hb9b5;
	B = 16'h30cf;
	ans = 16'haedc;
	#20
	A = 16'h35e2;
	B = 16'hacd0;
	ans = 16'ha714;
	#20
	A = 16'hbad2;
	B = 16'h345a;
	ans = 16'hb36b;
	#20
	A = 16'hb63f;
	B = 16'h347b;
	ans = 16'haeff;
	#20
	A = 16'h2e15;
	B = 16'hb736;
	ans = 16'ha97b;
	#20
	A = 16'haec1;
	B = 16'hba42;
	ans = 16'h2d48;
	#20
	A = 16'h3387;
	B = 16'hb486;
	ans = 16'hac42;
	#20
	A = 16'hb934;
	B = 16'hb4cd;
	ans = 16'h323f;
	#20
	A = 16'hb488;
	B = 16'hb2b0;
	ans = 16'h2b93;
	#20
	A = 16'hb78f;
	B = 16'h3814;
	ans = 16'hb3b5;
	#20
	A = 16'hb6bd;
	B = 16'hb4bf;
	ans = 16'h2fff;
	#20
	A = 16'hb5c9;
	B = 16'h31b1;
	ans = 16'hac1e;
	#20
	A = 16'h37f9;
	B = 16'hb1f6;
	ans = 16'hadf1;
	#20
	A = 16'hbb55;
	B = 16'h39fb;
	ans = 16'hb97b;
	#20
	A = 16'hb8b1;
	B = 16'hba6a;
	ans = 16'h3786;
	#20
	A = 16'h3583;
	B = 16'hb66a;
	ans = 16'hb06b;
	#20
	A = 16'h386f;
	B = 16'hb7b5;
	ans = 16'hb445;
	#20
	A = 16'hb746;
	B = 16'hae85;
	ans = 16'h29ed;
	#20
	A = 16'hb955;
	B = 16'hb1fc;
	ans = 16'h2ffa;
	#20
	A = 16'h3b98;
	B = 16'hb8cc;
	ans = 16'hb88e;
	#20
	A = 16'h35b7;
	B = 16'h37df;
	ans = 16'h319f;
	#20
	A = 16'h37af;
	B = 16'haf22;
	ans = 16'haada;
	#20
	A = 16'hb8fb;
	B = 16'hbbb9;
	ans = 16'h38cf;
	#20
	A = 16'h3ae1;
	B = 16'h373f;
	ans = 16'h363b;
	#20
	A = 16'h3a45;
	B = 16'h3bc4;
	ans = 16'h3a16;
	#20
	A = 16'h3965;
	B = 16'hbb13;
	ans = 16'hb8c5;
	#20
	A = 16'hb99c;
	B = 16'h3abf;
	ans = 16'hb8bb;
	#20
	A = 16'h39ec;
	B = 16'hb5a0;
	ans = 16'hb42a;
	#20
	A = 16'h3651;
	B = 16'hba8a;
	ans = 16'hb52a;
	#20
	A = 16'hb049;
	B = 16'h3abc;
	ans = 16'haf37;
	#20
	A = 16'hb435;
	B = 16'h39c2;
	ans = 16'hb20e;
	#20
	A = 16'hbb29;
	B = 16'h30b3;
	ans = 16'hb035;
	#20
	A = 16'hb998;
	B = 16'hac12;
	ans = 16'h29b1;
	#20
	A = 16'hbb6c;
	B = 16'h3b5f;
	ans = 16'hbad7;
	#20
	A = 16'h3892;
	B = 16'h37a5;
	ans = 16'h345e;
	#20
	A = 16'h356e;
	B = 16'h2ba4;
	ans = 16'h2530;
	#20
	A = 16'hbab5;
	B = 16'hb667;
	ans = 16'h355e;
	#20
	A = 16'h38e1;
	B = 16'hb94f;
	ans = 16'hb67a;
	#20
	A = 16'hb83a;
	B = 16'hb80d;
	ans = 16'h3448;
	#20
	A = 16'hb98a;
	B = 16'h3a88;
	ans = 16'hb886;
	#20
	A = 16'hbb3e;
	B = 16'hb823;
	ans = 16'h377d;
	#20
	A = 16'h3aeb;
	B = 16'h3b6c;
	ans = 16'h3a6b;
	#20
	A = 16'h3990;
	B = 16'hb9a5;
	ans = 16'hb7d9;
	#20
	A = 16'hbb19;
	B = 16'hb7b3;
	ans = 16'h36d5;
	#20
	A = 16'haefb;
	B = 16'hba44;
	ans = 16'h2d78;
	#20
	A = 16'hb431;
	B = 16'h310b;
	ans = 16'ha949;
	#20
	A = 16'hb594;
	B = 16'h2ff1;
	ans = 16'ha98a;
	#20
	A = 16'hb3f3;
	B = 16'hbbea;
	ans = 16'h33dd;
	#20
	A = 16'h3457;
	B = 16'hb548;
	ans = 16'hadbb;
	#20
	A = 16'hb899;
	B = 16'hb68e;
	ans = 16'h3389;
	#20
	A = 16'h381a;
	B = 16'hba22;
	ans = 16'hb64a;
	#20
	A = 16'h3b3c;
	B = 16'h311e;
	ans = 16'h30a1;
	#20
	A = 16'h2e80;
	B = 16'hb987;
	ans = 16'hac7e;
	#20
	A = 16'hb06b;
	B = 16'hb462;
	ans = 16'h28d7;
	#20
	A = 16'hb8e9;
	B = 16'h3bd8;
	ans = 16'hb8d0;
	#20
	A = 16'hb866;
	B = 16'h394c;
	ans = 16'hb5d3;
	#20
	A = 16'hbbd3;
	B = 16'hba40;
	ans = 16'h3a1d;
	#20
	A = 16'hbbad;
	B = 16'hbbb0;
	ans = 16'h3b60;
	#20
	A = 16'hb149;
	B = 16'hb618;
	ans = 16'h2c07;
	#20
	A = 16'hb44f;
	B = 16'h3556;
	ans = 16'hadbf;
	#20
	A = 16'h3a9a;
	B = 16'h296e;
	ans = 16'h287b;
	#20
	A = 16'h35fb;
	B = 16'h381c;
	ans = 16'h3225;
	#20
	A = 16'h28fd;
	B = 16'hbb09;
	ans = 16'ha863;
	#20
	A = 16'hba04;
	B = 16'h3a78;
	ans = 16'hb8dd;
	#20
	A = 16'h3aca;
	B = 16'hb9be;
	ans = 16'hb8df;
	#20
	A = 16'h3b6c;
	B = 16'hb0a0;
	ans = 16'hb04a;
	#20
	A = 16'hb700;
	B = 16'h38c1;
	ans = 16'hb429;
	#20
	A = 16'hbbb6;
	B = 16'hb9f5;
	ans = 16'h39be;
	#20
	A = 16'h33cb;
	B = 16'h36d8;
	ans = 16'h2eab;
	#20
	A = 16'h327f;
	B = 16'hb90a;
	ans = 16'hb017;
	#20
	A = 16'h3871;
	B = 16'h3603;
	ans = 16'h32ad;
	#20
	A = 16'hb355;
	B = 16'ha657;
	ans = 16'h1dcf;
	#20
	A = 16'hb525;
	B = 16'hb913;
	ans = 16'h3287;
	#20
	A = 16'hb754;
	B = 16'h17d3;
	ans = 16'h932b;
	#20
	A = 16'hb976;
	B = 16'hade5;
	ans = 16'h2c06;
	#20
	A = 16'h3006;
	B = 16'h2754;
	ans = 16'h1b5f;
	#20
	A = 16'hacef;
	B = 16'hb4cd;
	ans = 16'h25ec;
	#20
	A = 16'hae12;
	B = 16'h3bfc;
	ans = 16'hae0f;
	#20
	A = 16'h34b1;
	B = 16'h3618;
	ans = 16'h2f26;
	#20
	A = 16'hb106;
	B = 16'h3bbc;
	ans = 16'hb0db;
	#20
	A = 16'h3954;
	B = 16'h32ea;
	ans = 16'h309b;
	#20
	A = 16'hb0d4;
	B = 16'h34cb;
	ans = 16'ha9c9;
	#20
	A = 16'hb8e4;
	B = 16'hbaa4;
	ans = 16'h380f;
	#20
	A = 16'hbbcb;
	B = 16'h3a31;
	ans = 16'hba08;
	#20
	A = 16'h3a91;
	B = 16'hb595;
	ans = 16'hb495;
	#20
	A = 16'h352e;
	B = 16'hb798;
	ans = 16'hb0eb;
	#20
	A = 16'h385f;
	B = 16'hb4be;
	ans = 16'hb12f;
	#20
	A = 16'hb3c5;
	B = 16'hb578;
	ans = 16'h2d50;
	#20
	A = 16'h38a5;
	B = 16'h3564;
	ans = 16'h3242;
	#20
	A = 16'hba0d;
	B = 16'h2cb0;
	ans = 16'hab17;
	#20
	A = 16'hb82e;
	B = 16'h2fb6;
	ans = 16'hac07;
	#20
	A = 16'hb88e;
	B = 16'h3b7e;
	ans = 16'hb844;
	#20
	A = 16'h3860;
	B = 16'hba47;
	ans = 16'hb6de;
	#20
	A = 16'hbb69;
	B = 16'h3a66;
	ans = 16'hb9ed;
	#20
	A = 16'hafd8;
	B = 16'ha232;
	ans = 16'h1613;
	#20
	A = 16'h2c77;
	B = 16'hb64b;
	ans = 16'ha706;
	#20
	A = 16'h3155;
	B = 16'hbae9;
	ans = 16'hb09b;
	#20
	A = 16'h3a19;
	B = 16'hbbc7;
	ans = 16'hb9ee;
	#20
	A = 16'ha687;
	B = 16'h3511;
	ans = 16'ha022;
	#20
	A = 16'habf8;
	B = 16'h262e;
	ans = 16'h9628;
	#20
	A = 16'hb09b;
	B = 16'hb2a6;
	ans = 16'h27a8;
	#20
	A = 16'hb8d1;
	B = 16'h3655;
	ans = 16'hb3a0;
	#20
	A = 16'h36f4;
	B = 16'h2129;
	ans = 16'h1c7c;
	#20
	A = 16'h3a40;
	B = 16'h3856;
	ans = 16'h36c6;
	#20
	A = 16'h3422;
	B = 16'ha786;
	ans = 16'h9fc6;
	#20
	A = 16'h38d4;
	B = 16'hacce;
	ans = 16'ha9cd;
	#20
	A = 16'hbb20;
	B = 16'h3baf;
	ans = 16'hbad8;
	#20
	A = 16'hb50b;
	B = 16'hb8f4;
	ans = 16'h323f;
	#20
	A = 16'h38d3;
	B = 16'h3825;
	ans = 16'h3500;
	#20
	A = 16'hb1b6;
	B = 16'h37cf;
	ans = 16'had93;
	#20
	A = 16'h3b87;
	B = 16'hb9d1;
	ans = 16'hb979;
	#20
	A = 16'hb5cf;
	B = 16'hb01f;
	ans = 16'h29fc;
	#20
	A = 16'h3874;
	B = 16'hb4f9;
	ans = 16'hb189;
	#20
	A = 16'h9bd0;
	B = 16'hb2f9;
	ans = 16'h12cf;
	#20
	A = 16'h3652;
	B = 16'hb720;
	ans = 16'hb1a1;
	#20
	A = 16'h2a3f;
	B = 16'h31d7;
	ans = 16'h208f;
	#20
	A = 16'hb746;
	B = 16'h39c4;
	ans = 16'hb53e;
	#20
	A = 16'ha5e6;
	B = 16'h3be3;
	ans = 16'ha5d1;
	#20
	A = 16'hb95c;
	B = 16'h36c6;
	ans = 16'hb48a;
	#20
	A = 16'hb663;
	B = 16'hb9dc;
	ans = 16'h34ae;
	#20
	A = 16'h3a3a;
	B = 16'h2ca5;
	ans = 16'h2b3b;
	#20
	A = 16'hbb98;
	B = 16'haa9a;
	ans = 16'h2a44;
	#20
	A = 16'h39ef;
	B = 16'hb719;
	ans = 16'hb544;
	#20
	A = 16'h3a6c;
	B = 16'h395e;
	ans = 16'h384f;
	#20
	A = 16'hba4f;
	B = 16'hb7e0;
	ans = 16'h3636;
	#20
	A = 16'hb38c;
	B = 16'hbbcb;
	ans = 16'h335a;
	#20
	A = 16'h3ba6;
	B = 16'h397e;
	ans = 16'h3940;
	#20
	A = 16'hb059;
	B = 16'h361b;
	ans = 16'haaa3;
	#20
	A = 16'h3564;
	B = 16'hb469;
	ans = 16'hadf2;
	#20
	A = 16'h3b53;
	B = 16'hb14e;
	ans = 16'hb0db;
	#20
	A = 16'hb40d;
	B = 16'hb8de;
	ans = 16'h30ee;
	#20
	A = 16'hba9e;
	B = 16'h385e;
	ans = 16'hb73a;
	#20
	A = 16'h3a2f;
	B = 16'h354b;
	ans = 16'h3417;
	#20
	A = 16'hb8e5;
	B = 16'hb77c;
	ans = 16'h3494;
	#20
	A = 16'h3748;
	B = 16'h3489;
	ans = 16'h3021;
	#20
	A = 16'h33a7;
	B = 16'h34e8;
	ans = 16'h2cb1;
	#20
	A = 16'hb3bc;
	B = 16'h31ee;
	ans = 16'ha9bc;
	#20
	A = 16'h2d61;
	B = 16'h37e5;
	ans = 16'h294f;
	#20
	A = 16'h38ed;
	B = 16'h39f4;
	ans = 16'h3755;
	#20
	A = 16'hbb92;
	B = 16'h3bfd;
	ans = 16'hbb8f;
	#20
	A = 16'h2f9a;
	B = 16'h38d7;
	ans = 16'h2c99;
	#20
	A = 16'h3380;
	B = 16'h3bdc;
	ans = 16'h335e;
	#20
	A = 16'hbba0;
	B = 16'hba4e;
	ans = 16'h3a02;
	#20
	A = 16'hbb42;
	B = 16'hba59;
	ans = 16'h39c2;
	#20
	A = 16'hb1ff;
	B = 16'hb514;
	ans = 16'h2b9d;
	#20
	A = 16'hb8a0;
	B = 16'hb71b;
	ans = 16'h341c;
	#20
	A = 16'hb9e6;
	B = 16'h2c01;
	ans = 16'ha9e7;
	#20
	A = 16'h30ec;
	B = 16'h38f6;
	ans = 16'h2e1b;
	#20
	A = 16'hb3b0;
	B = 16'hba1c;
	ans = 16'h31df;
	#20
	A = 16'h3090;
	B = 16'hb933;
	ans = 16'hadee;
	#20
	A = 16'haa0a;
	B = 16'hb495;
	ans = 16'h22eb;
	#20
	A = 16'h3043;
	B = 16'h3828;
	ans = 16'h2c6e;
	#20
	A = 16'h3ac2;
	B = 16'hb89b;
	ans = 16'hb7c8;
	#20
	A = 16'h3806;
	B = 16'hb6a0;
	ans = 16'hb2aa;
	#20
	A = 16'hb1b2;
	B = 16'h34a6;
	ans = 16'haa9e;
	#20
	A = 16'h395c;
	B = 16'h3bdb;
	ans = 16'h3943;
	#20
	A = 16'hb44e;
	B = 16'h3504;
	ans = 16'had66;
	#20
	A = 16'hb20d;
	B = 16'hb955;
	ans = 16'h3008;
	#20
	A = 16'h275d;
	B = 16'hb43a;
	ans = 16'h9fc8;
	#20
	A = 16'h3a25;
	B = 16'h3a04;
	ans = 16'h389f;
	#20
	A = 16'hbb16;
	B = 16'h36fd;
	ans = 16'hb631;
	#20
	A = 16'h36e0;
	B = 16'h3592;
	ans = 16'h30c9;
	#20
	A = 16'h3521;
	B = 16'h338a;
	ans = 16'h2cd5;
	#20
	A = 16'hb2ce;
	B = 16'h348f;
	ans = 16'habc1;
	#20
	A = 16'h3878;
	B = 16'h398b;
	ans = 16'h3631;
	#20
	A = 16'hb643;
	B = 16'hb692;
	ans = 16'h3125;
	#20
	A = 16'hb946;
	B = 16'hb447;
	ans = 16'h31a4;
	#20
	A = 16'h3962;
	B = 16'h3986;
	ans = 16'h376f;
	#20
	A = 16'hbb88;
	B = 16'h372c;
	ans = 16'hb6c0;
	#20
	A = 16'h2d5b;
	B = 16'h32dd;
	ans = 16'h2498;
	#20
	A = 16'h323c;
	B = 16'hbbd0;
	ans = 16'hb217;
	#20
	A = 16'hb51a;
	B = 16'h35e7;
	ans = 16'haf87;
	#20
	A = 16'h3bd9;
	B = 16'h3be9;
	ans = 16'h3bc2;
	#20
	A = 16'h29a6;
	B = 16'hb1cf;
	ans = 16'ha01a;
	#20
	A = 16'h2703;
	B = 16'h3982;
	ans = 16'h24d4;
	#20
	A = 16'h2c84;
	B = 16'h396a;
	ans = 16'h2a1d;
	#20
	A = 16'h3b0b;
	B = 16'h3347;
	ans = 16'h3268;
	#20
	A = 16'h9bf3;
	B = 16'hb5a1;
	ans = 16'h1598;
	#20
	A = 16'h2ca5;
	B = 16'hb6be;
	ans = 16'ha7d4;
	#20
	A = 16'hb923;
	B = 16'h3b75;
	ans = 16'hb8ca;
	#20
	A = 16'hb56d;
	B = 16'hb949;
	ans = 16'h332b;
	#20
	A = 16'hb41d;
	B = 16'h282a;
	ans = 16'ha048;
	#20
	A = 16'hafc9;
	B = 16'h364e;
	ans = 16'haa23;
	#20
	A = 16'hba99;
	B = 16'h3bf1;
	ans = 16'hba8d;
	#20
	A = 16'h3070;
	B = 16'h3a82;
	ans = 16'h2f38;
	#20
	A = 16'h39d5;
	B = 16'h3485;
	ans = 16'h3297;
	#20
	A = 16'hb5cc;
	B = 16'hb531;
	ans = 16'h2f86;
	#20
	A = 16'hb68c;
	B = 16'h3af5;
	ans = 16'hb5b1;
	#20
	A = 16'h3349;
	B = 16'hb4b0;
	ans = 16'hac45;
	#20
	A = 16'hba69;
	B = 16'h36c7;
	ans = 16'hb56e;
	#20
	A = 16'h30c6;
	B = 16'h38a3;
	ans = 16'h2d89;
	#20
	A = 16'h2e86;
	B = 16'hb4fd;
	ans = 16'ha811;
	#20
	A = 16'hb706;
	B = 16'hb41f;
	ans = 16'h2f3c;
	#20
	A = 16'hb7ca;
	B = 16'hb3eb;
	ans = 16'h2fb6;
	#20
	A = 16'h3a86;
	B = 16'hb9a2;
	ans = 16'hb898;
	#20
	A = 16'hb92c;
	B = 16'h34e2;
	ans = 16'hb250;
	#20
	A = 16'hbb9f;
	B = 16'hbb88;
	ans = 16'h3b2d;
	#20
	A = 16'hb137;
	B = 16'h326b;
	ans = 16'ha82f;
	#20
	A = 16'haa10;
	B = 16'h34cd;
	ans = 16'ha347;
	#20
	A = 16'ha6a1;
	B = 16'hb499;
	ans = 16'h1f9f;
	#20
	A = 16'h38bf;
	B = 16'haf15;
	ans = 16'hac34;
	#20
	A = 16'h2d83;
	B = 16'h9b48;
	ans = 16'h8d04;
	#20
	A = 16'hb465;
	B = 16'h3b6d;
	ans = 16'hb414;
	#20
	A = 16'h3834;
	B = 16'h309e;
	ans = 16'h2cda;
	#20
	A = 16'haabb;
	B = 16'h38da;
	ans = 16'ha815;
	#20
	A = 16'hb73f;
	B = 16'h1b84;
	ans = 16'h96cf;
	#20
	A = 16'h3930;
	B = 16'hbabc;
	ans = 16'hb85e;
	#20
	A = 16'h3a65;
	B = 16'hb970;
	ans = 16'hb859;
	#20
	A = 16'hb5ad;
	B = 16'ha839;
	ans = 16'h21fe;
	#20
	A = 16'h33d3;
	B = 16'hbbe1;
	ans = 16'hb3b5;
	#20
	A = 16'hb6e6;
	B = 16'hb472;
	ans = 16'h2fab;
	#20
	A = 16'h3a18;
	B = 16'hba87;
	ans = 16'hb8f9;
	#20
	A = 16'h2d0d;
	B = 16'h344b;
	ans = 16'h256c;
	#20
	A = 16'hb6ab;
	B = 16'h3a97;
	ans = 16'hb57e;
	#20
	A = 16'h3867;
	B = 16'hb7da;
	ans = 16'hb452;
	#20
	A = 16'hb959;
	B = 16'h30a6;
	ans = 16'hae37;
	#20
	A = 16'h38ab;
	B = 16'h3acf;
	ans = 16'h37f2;
	#20
	A = 16'h366c;
	B = 16'h395c;
	ans = 16'h344d;
	#20
	A = 16'hb966;
	B = 16'h3900;
	ans = 16'hb6c0;
	#20
	A = 16'hb79f;
	B = 16'hb6b3;
	ans = 16'h3262;
	#20
	A = 16'hb825;
	B = 16'h33ac;
	ans = 16'haff3;
	#20
	A = 16'h3a3a;
	B = 16'hb2d3;
	ans = 16'hb150;
	#20
	A = 16'hb4e8;
	B = 16'hba81;
	ans = 16'h33fa;
	#20
	A = 16'hb22e;
	B = 16'hba5f;
	ans = 16'h30ec;
	#20
	A = 16'hb5cb;
	B = 16'h32d7;
	ans = 16'hacf4;
	#20
	A = 16'h3bfd;
	B = 16'hb87e;
	ans = 16'hb87c;
	#20
	A = 16'h356c;
	B = 16'hb899;
	ans = 16'hb23b;
	#20
	A = 16'h3a75;
	B = 16'h3560;
	ans = 16'h3457;
	#20
	A = 16'hbbcd;
	B = 16'h9470;
	ans = 16'h1454;
	#20
	A = 16'h377f;
	B = 16'h388d;
	ans = 16'h3444;
	#20
	A = 16'hb8ed;
	B = 16'h397a;
	ans = 16'hb6be;
	#20
	A = 16'hbaae;
	B = 16'hb245;
	ans = 16'h313c;
	#20
	A = 16'hb940;
	B = 16'hbb17;
	ans = 16'h38a7;
	#20
	A = 16'hb34a;
	B = 16'hbb8c;
	ans = 16'h32e0;
	#20
	A = 16'hb854;
	B = 16'hbaee;
	ans = 16'h3780;
	#20
	A = 16'hbaba;
	B = 16'h3aff;
	ans = 16'hb9e2;
	#20
	A = 16'hae87;
	B = 16'h3a27;
	ans = 16'had05;
	#20
	A = 16'hb343;
	B = 16'hb51e;
	ans = 16'h2ca5;
	#20
	A = 16'h310f;
	B = 16'ha7aa;
	ans = 16'h9cd9;
	#20
	A = 16'hb417;
	B = 16'hacff;
	ans = 16'h251c;
	#20
	A = 16'hb4b4;
	B = 16'hbbd2;
	ans = 16'h3499;
	#20
	A = 16'h3978;
	B = 16'h3b6f;
	ans = 16'h3915;
	#20
	A = 16'hb8b8;
	B = 16'hb13c;
	ans = 16'h2e2d;
	#20
	A = 16'hbb4f;
	B = 16'h38af;
	ans = 16'hb847;
	#20
	A = 16'h35cd;
	B = 16'h39a3;
	ans = 16'h3416;
	#20
	A = 16'hb895;
	B = 16'hb72b;
	ans = 16'h341b;
	#20
	A = 16'hb2e6;
	B = 16'hb36f;
	ans = 16'h2a69;
	#20
	A = 16'hb721;
	B = 16'hb427;
	ans = 16'h2f67;
	#20
	A = 16'hb1e7;
	B = 16'h3b5c;
	ans = 16'hb16e;
	#20
	A = 16'h3175;
	B = 16'h3b4c;
	ans = 16'h30fa;
	#20
	A = 16'ha2c8;
	B = 16'h2164;
	ans = 16'h8892;
	#20
	A = 16'hb841;
	B = 16'haf6b;
	ans = 16'h2be4;
	#20
	A = 16'h3b7e;
	B = 16'hbb22;
	ans = 16'hbaae;
	#20
	A = 16'haffc;
	B = 16'h3b2a;
	ans = 16'haf26;
	#20
	A = 16'h3714;
	B = 16'hb664;
	ans = 16'hb1a7;
	#20
	A = 16'hb8d3;
	B = 16'h3990;
	ans = 16'hb6b5;
	#20
	A = 16'hb9dc;
	B = 16'h3513;
	ans = 16'hb36f;
	#20
	A = 16'h364c;
	B = 16'h3b8f;
	ans = 16'h35f3;
	#20
	A = 16'h294f;
	B = 16'hae39;
	ans = 16'h9c21;
	#20
	A = 16'hbb83;
	B = 16'h3a4d;
	ans = 16'hb9eb;
	#20
	A = 16'hb7b9;
	B = 16'h38ce;
	ans = 16'hb4a3;
	#20
	A = 16'hba20;
	B = 16'h33c2;
	ans = 16'hb1f1;
	#20
	A = 16'h3415;
	B = 16'h2b06;
	ans = 16'h232b;
	#20
	A = 16'hbafe;
	B = 16'hb5ec;
	ans = 16'h352d;
	#20
	A = 16'h3200;
	B = 16'hba0f;
	ans = 16'hb08b;
	#20
	A = 16'h3a00;
	B = 16'h3831;
	ans = 16'h364a;
	#20
	A = 16'hbbfc;
	B = 16'h39c0;
	ans = 16'hb9bd;
	#20
	A = 16'hbae6;
	B = 16'h3624;
	ans = 16'hb54c;
	#20
	A = 16'hb88c;
	B = 16'hb70a;
	ans = 16'h3400;
	#20
	A = 16'h3225;
	B = 16'ha90a;
	ans = 16'h9fbe;
	#20
	A = 16'hba5e;
	B = 16'hbb8b;
	ans = 16'h3a01;
	#20
	A = 16'h38c4;
	B = 16'h9442;
	ans = 16'h9113;
	#20
	A = 16'hb785;
	B = 16'h2f2b;
	ans = 16'haabd;
	#20
	A = 16'h3ab6;
	B = 16'h3748;
	ans = 16'h361c;
	#20
	A = 16'h2c47;
	B = 16'ha9b5;
	ans = 16'h9a1a;
	#20
	A = 16'hb592;
	B = 16'hb442;
	ans = 16'h2dee;
	#20
	A = 16'h3806;
	B = 16'hb94a;
	ans = 16'hb552;
	#20
	A = 16'h34b8;
	B = 16'hbbe1;
	ans = 16'hb4a6;
	#20
	A = 16'hb80d;
	B = 16'hb554;
	ans = 16'h3165;
	#20
	A = 16'h3840;
	B = 16'h38a5;
	ans = 16'h34ef;
	#20
	A = 16'hb88b;
	B = 16'h3348;
	ans = 16'hb023;
	#20
	A = 16'h398d;
	B = 16'hb6d6;
	ans = 16'hb4be;
	#20
	A = 16'hb851;
	B = 16'hb74c;
	ans = 16'h33e0;
	#20
	A = 16'h38f6;
	B = 16'h3a69;
	ans = 16'h37f3;
	#20
	A = 16'hbae4;
	B = 16'hb96e;
	ans = 16'h38ad;
	#20
	A = 16'hb031;
	B = 16'h388e;
	ans = 16'hacc6;
	#20
	A = 16'h399b;
	B = 16'hb90c;
	ans = 16'hb713;
	#20
	A = 16'hb7b1;
	B = 16'h3ac9;
	ans = 16'hb686;
	#20
	A = 16'h3820;
	B = 16'h30ab;
	ans = 16'h2cd0;
	#20
	A = 16'hb869;
	B = 16'hb989;
	ans = 16'h361a;
	#20
	A = 16'h35c6;
	B = 16'h3593;
	ans = 16'h3006;
	#20
	A = 16'hb434;
	B = 16'h36c0;
	ans = 16'haf18;
	#20
	A = 16'hb91b;
	B = 16'hba06;
	ans = 16'h37b0;
	#20
	A = 16'hbb38;
	B = 16'hbb70;
	ans = 16'h3ab6;
	#20
	A = 16'hbb55;
	B = 16'hbb4e;
	ans = 16'h3ab2;
	#20
	A = 16'h3966;
	B = 16'h38cb;
	ans = 16'h3678;
	#20
	A = 16'hb8a4;
	B = 16'ha697;
	ans = 16'h23a5;
	#20
	A = 16'hb596;
	B = 16'hb8b7;
	ans = 16'h3296;
	#20
	A = 16'hb91a;
	B = 16'h3787;
	ans = 16'hb4cd;
	#20
	A = 16'hb83c;
	B = 16'h3a1a;
	ans = 16'hb676;
	#20
	A = 16'h3bae;
	B = 16'h35a8;
	ans = 16'h356e;
	#20
	A = 16'hb876;
	B = 16'hb56f;
	ans = 16'h320f;
	#20
	A = 16'hbae4;
	B = 16'hb555;
	ans = 16'h3498;
	#20
	A = 16'hb545;
	B = 16'h340f;
	ans = 16'had59;
	#20
	A = 16'h3856;
	B = 16'h39c6;
	ans = 16'h3642;
	#20
	A = 16'hbbb3;
	B = 16'hb869;
	ans = 16'h383f;
	#20
	A = 16'hb4ca;
	B = 16'hb9b5;
	ans = 16'h32d5;
	#20
	A = 16'hb5f3;
	B = 16'hbb03;
	ans = 16'h3537;
	#20
	A = 16'ha2ca;
	B = 16'h38e8;
	ans = 16'ha02a;
	#20
	A = 16'h3a8e;
	B = 16'h3579;
	ans = 16'h347c;
	#20
	A = 16'hb5c6;
	B = 16'hb992;
	ans = 16'h3405;
	#20
	A = 16'haaf9;
	B = 16'h3a5f;
	ans = 16'ha98e;
	#20
	A = 16'h3b9e;
	B = 16'hb918;
	ans = 16'hb8da;
	#20
	A = 16'hb7c4;
	B = 16'h32bb;
	ans = 16'hae89;
	#20
	A = 16'h3a52;
	B = 16'hb973;
	ans = 16'hb84e;
	#20
	A = 16'h38de;
	B = 16'hb160;
	ans = 16'hae8a;
	#20
	A = 16'h351d;
	B = 16'h371d;
	ans = 16'h308c;
	#20
	A = 16'h3646;
	B = 16'h3a57;
	ans = 16'h34f9;
	#20
	A = 16'h3517;
	B = 16'ha931;
	ans = 16'ha29b;
	#20
	A = 16'hba13;
	B = 16'h3940;
	ans = 16'hb7f9;
	#20
	A = 16'hbb46;
	B = 16'hb78a;
	ans = 16'h36db;
	#20
	A = 16'hb7af;
	B = 16'hbbdd;
	ans = 16'h378d;
	#20
	A = 16'hb7d5;
	B = 16'hbb21;
	ans = 16'h36fb;
	#20
	A = 16'h3a85;
	B = 16'hbaaf;
	ans = 16'hb972;
	#20
	A = 16'hb93b;
	B = 16'hb5b5;
	ans = 16'h3376;
	#20
	A = 16'h3449;
	B = 16'h2bf9;
	ans = 16'h2445;
	#20
	A = 16'h39bd;
	B = 16'h1ae1;
	ans = 16'h18ef;
	#20
	A = 16'hbb3b;
	B = 16'hb846;
	ans = 16'h37ba;
	#20
	A = 16'h3bd1;
	B = 16'hbaa6;
	ans = 16'hba7f;
	#20
	A = 16'h3094;
	B = 16'h2f06;
	ans = 16'h2405;
	#20
	A = 16'hb3fa;
	B = 16'hba96;
	ans = 16'h3291;
	#20
	A = 16'hb518;
	B = 16'hb535;
	ans = 16'h2ea1;
	#20
	A = 16'hab7a;
	B = 16'hb802;
	ans = 16'h277e;
	#20
	A = 16'hb36d;
	B = 16'h3b26;
	ans = 16'hb2a3;
	#20
	A = 16'hbb23;
	B = 16'h3b1e;
	ans = 16'hba59;
	#20
	A = 16'hb597;
	B = 16'h3970;
	ans = 16'hb399;
	#20
	A = 16'h341c;
	B = 16'ha9a8;
	ans = 16'ha1d0;
	#20
	A = 16'hadbc;
	B = 16'hb94d;
	ans = 16'h2b99;
	#20
	A = 16'h3aec;
	B = 16'h3a32;
	ans = 16'h395c;
	#20
	A = 16'h3764;
	B = 16'h2d39;
	ans = 16'h28d3;
	#20
	A = 16'h3780;
	B = 16'h3b1f;
	ans = 16'h36ad;
	#20
	A = 16'hbbb3;
	B = 16'hb650;
	ans = 16'h3613;
	#20
	A = 16'h3a35;
	B = 16'h33ad;
	ans = 16'h31f5;
	#20
	A = 16'h357f;
	B = 16'h3b4c;
	ans = 16'h3503;
	#20
	A = 16'hb45a;
	B = 16'hb801;
	ans = 16'h305b;
	#20
	A = 16'had67;
	B = 16'hb8c7;
	ans = 16'h2a74;
	#20
	A = 16'hbae5;
	B = 16'hb8cb;
	ans = 16'h3821;
	#20
	A = 16'h3a07;
	B = 16'h34ee;
	ans = 16'h336e;
	#20
	A = 16'h30c1;
	B = 16'hb151;
	ans = 16'ha652;
	#20
	A = 16'h38fb;
	B = 16'h298b;
	ans = 16'h26e7;
	#20
	A = 16'hba10;
	B = 16'h230f;
	ans = 16'ha159;
	#20
	A = 16'h3908;
	B = 16'hadc1;
	ans = 16'hab3d;
	#20
	A = 16'hb975;
	B = 16'h3890;
	ans = 16'hb639;
	#20
	A = 16'h36e8;
	B = 16'hba6b;
	ans = 16'hb58a;
	#20
	A = 16'hba0a;
	B = 16'hb6ca;
	ans = 16'h3520;
	#20
	A = 16'hb963;
	B = 16'hbb6e;
	ans = 16'h3901;
	#20
	A = 16'hb168;
	B = 16'h39ec;
	ans = 16'hb000;
	#20
	A = 16'h3438;
	B = 16'had78;
	ans = 16'ha5c5;
	#20
	A = 16'h3bcc;
	B = 16'h3b73;
	ans = 16'h3b43;
	#20
	A = 16'hbb8c;
	B = 16'h394a;
	ans = 16'hb8fd;
	#20
	A = 16'hbabe;
	B = 16'h34c9;
	ans = 16'hb408;
	#20
	A = 16'hb8a4;
	B = 16'h38bd;
	ans = 16'hb57f;
	#20
	A = 16'hadad;
	B = 16'h3bcc;
	ans = 16'had88;
	#20
	A = 16'hb9f6;
	B = 16'hb107;
	ans = 16'h2f7e;
	#20
	A = 16'hac5a;
	B = 16'h2dbc;
	ans = 16'h9e3d;
	#20
	A = 16'hbb6e;
	B = 16'h35d4;
	ans = 16'hb56a;
	#20
	A = 16'hb9d6;
	B = 16'hb40f;
	ans = 16'h31ec;
	#20
	A = 16'hbb4e;
	B = 16'h3bde;
	ans = 16'hbb2f;
	#20
	A = 16'h39a5;
	B = 16'hbb5c;
	ans = 16'hb931;
	#20
	A = 16'hb638;
	B = 16'h367d;
	ans = 16'hb10b;
	#20
	A = 16'ha930;
	B = 16'h3b03;
	ans = 16'ha88c;
	#20
	A = 16'h38ab;
	B = 16'hb676;
	ans = 16'hb38a;
	#20
	A = 16'hb9d3;
	B = 16'h3701;
	ans = 16'hb519;
	#20
	A = 16'hb721;
	B = 16'h3251;
	ans = 16'hada1;
	#20
	A = 16'hb496;
	B = 16'hb4b1;
	ans = 16'h2d61;
	#20
	A = 16'hb461;
	B = 16'haf02;
	ans = 16'h27ac;
	#20
	A = 16'h3374;
	B = 16'h35b9;
	ans = 16'h2d55;
	#20
	A = 16'hb9a9;
	B = 16'h3931;
	ans = 16'hb759;
	#20
	A = 16'h368f;
	B = 16'h38f6;
	ans = 16'h3411;
	#20
	A = 16'hb829;
	B = 16'h2df1;
	ans = 16'haa2e;
	#20
	A = 16'h3196;
	B = 16'h3b82;
	ans = 16'h313e;
	#20
	A = 16'hb7a5;
	B = 16'h39c0;
	ans = 16'hb57f;
	#20
	A = 16'h39b0;
	B = 16'hba32;
	ans = 16'hb868;
	#20
	A = 16'hb9eb;
	B = 16'h3632;
	ans = 16'hb495;
	#20
	A = 16'h2cae;
	B = 16'hb932;
	ans = 16'haa14;
	#20
	A = 16'hb797;
	B = 16'hb670;
	ans = 16'h321c;
	#20
	A = 16'hba4d;
	B = 16'hbbfc;
	ans = 16'h3a4a;
	#20
	A = 16'hb7a7;
	B = 16'hb9e1;
	ans = 16'h35a0;
	#20
	A = 16'hb1e5;
	B = 16'h292a;
	ans = 16'h9f9c;
	#20
	A = 16'hbb61;
	B = 16'hb8c5;
	ans = 16'h3866;
	#20
	A = 16'hb1fa;
	B = 16'hb4b5;
	ans = 16'h2b08;
	#20
	A = 16'hb8cc;
	B = 16'h36f8;
	ans = 16'hb42e;
	#20
	A = 16'hb74d;
	B = 16'h1acb;
	ans = 16'h9633;
	#20
	A = 16'hb4fb;
	B = 16'ha932;
	ans = 16'h2278;
	#20
	A = 16'h3904;
	B = 16'h3a4c;
	ans = 16'h37e5;
	#20
	A = 16'h3177;
	B = 16'hb9e8;
	ans = 16'hb009;
	#20
	A = 16'hb16b;
	B = 16'hb64d;
	ans = 16'h2c44;
	#20
	A = 16'h3906;
	B = 16'hb860;
	ans = 16'hb57f;
	#20
	A = 16'hb018;
	B = 16'h307e;
	ans = 16'ha499;
	#20
	A = 16'hb0be;
	B = 16'hb20f;
	ans = 16'h272f;
	#20
	A = 16'hb488;
	B = 16'h2c62;
	ans = 16'ha4f7;
	#20
	A = 16'h3a67;
	B = 16'h33bb;
	ans = 16'h3230;
	#20
	A = 16'h3a7b;
	B = 16'hb09a;
	ans = 16'haf74;
	#20
	A = 16'hb689;
	B = 16'h35f0;
	ans = 16'hb0da;
	#20
	A = 16'h38ec;
	B = 16'h3379;
	ans = 16'h3099;
	#20
	A = 16'hb6f8;
	B = 16'hb826;
	ans = 16'h333a;
	#20
	A = 16'hbbfe;
	B = 16'h3bf7;
	ans = 16'hbbf5;
	#20
	A = 16'hbbb2;
	B = 16'h2f07;
	ans = 16'haec2;
	#20
	A = 16'h3be8;
	B = 16'hbb0c;
	ans = 16'hbaf7;
	#20
	A = 16'h2f5b;
	B = 16'hba59;
	ans = 16'hadd6;
	#20
	A = 16'hbb2b;
	B = 16'h3430;
	ans = 16'hb381;
	#20
	A = 16'h3026;
	B = 16'hb955;
	ans = 16'had88;
	#20
	A = 16'h3a53;
	B = 16'hb2dc;
	ans = 16'hb16c;
	#20
	A = 16'h3b40;
	B = 16'h38cb;
	ans = 16'h3858;
	#20
	A = 16'h3812;
	B = 16'hb612;
	ans = 16'hb22d;
	#20
	A = 16'h3bef;
	B = 16'h3a58;
	ans = 16'h3a4b;
	#20
	A = 16'hbb34;
	B = 16'h3a21;
	ans = 16'hb985;
	#20
	A = 16'hb7e4;
	B = 16'h34ae;
	ans = 16'hb09e;
	#20
	A = 16'h3bf4;
	B = 16'h3a60;
	ans = 16'h3a56;
	#20
	A = 16'hb5c7;
	B = 16'hb87d;
	ans = 16'h327c;
	#20
	A = 16'hb4f6;
	B = 16'h314e;
	ans = 16'haa94;
	#20
	A = 16'h3740;
	B = 16'hb50c;
	ans = 16'hb093;
	#20
	A = 16'hb45d;
	B = 16'hbae9;
	ans = 16'h338a;
	#20
	A = 16'hb959;
	B = 16'hb922;
	ans = 16'h36dd;
	#20
	A = 16'hb412;
	B = 16'h3ac9;
	ans = 16'hb2e8;
	#20
	A = 16'h2fec;
	B = 16'hb4d2;
	ans = 16'ha8c6;
	#20
	A = 16'h3be1;
	B = 16'ha7b9;
	ans = 16'ha79b;
	#20
	A = 16'hb270;
	B = 16'hb754;
	ans = 16'h2de6;
	#20
	A = 16'hb483;
	B = 16'hb7b1;
	ans = 16'h3056;
	#20
	A = 16'hb948;
	B = 16'h3908;
	ans = 16'hb6a5;
	#20
	A = 16'h2d79;
	B = 16'h362a;
	ans = 16'h2837;
	#20
	A = 16'h39bb;
	B = 16'hbb2a;
	ans = 16'hb922;
	#20
	A = 16'hb3e4;
	B = 16'h3407;
	ans = 16'habf2;
	#20
	A = 16'h3b17;
	B = 16'h23bf;
	ans = 16'h22dd;
	#20
	A = 16'h36fb;
	B = 16'hb4a4;
	ans = 16'hb00d;
	#20
	A = 16'h3b18;
	B = 16'h39f4;
	ans = 16'h3947;
	#20
	A = 16'hb9d8;
	B = 16'hbaa5;
	ans = 16'h38db;
	#20
	A = 16'hbba5;
	B = 16'h3bf3;
	ans = 16'hbb99;
	#20
	A = 16'h3973;
	B = 16'hbbe5;
	ans = 16'hb961;
	#20
	A = 16'h34ed;
	B = 16'hb979;
	ans = 16'hb2bd;
	#20
	A = 16'hbade;
	B = 16'h1c46;
	ans = 16'h9b56;
	#20
	A = 16'h3733;
	B = 16'h39c4;
	ans = 16'h3530;
	#20
	A = 16'h3488;
	B = 16'h32a7;
	ans = 16'h2b89;
	#20
	A = 16'hbb69;
	B = 16'h3a3e;
	ans = 16'hb9c8;
	#20
	A = 16'hb980;
	B = 16'haa39;
	ans = 16'h2847;
	#20
	A = 16'hb88e;
	B = 16'hba5e;
	ans = 16'h3740;
	#20
	A = 16'hba59;
	B = 16'hb184;
	ans = 16'h3060;
	#20
	A = 16'h2ec1;
	B = 16'h389f;
	ans = 16'h2bcd;
	#20
	A = 16'h2cf7;
	B = 16'hb338;
	ans = 16'ha47b;
	#20
	A = 16'ha697;
	B = 16'hba71;
	ans = 16'h254e;
	#20
	A = 16'hb777;
	B = 16'h34ad;
	ans = 16'hb05d;
	#20
	A = 16'h3681;
	B = 16'hb949;
	ans = 16'hb44c;
	#20
	A = 16'h3b4a;
	B = 16'h39af;
	ans = 16'h392e;
	#20
	A = 16'h38fd;
	B = 16'h3920;
	ans = 16'h3664;
	#20
	A = 16'h3b08;
	B = 16'hb8cc;
	ans = 16'hb837;
	#20
	A = 16'hb555;
	B = 16'hbb6f;
	ans = 16'h34f4;
	#20
	A = 16'h38bc;
	B = 16'h3af2;
	ans = 16'h381c;
	#20
	A = 16'h3053;
	B = 16'h366f;
	ans = 16'h2af4;
	#20
	A = 16'hacfb;
	B = 16'hb16d;
	ans = 16'h22c1;
	#20
	A = 16'hba63;
	B = 16'h3b17;
	ans = 16'hb9a9;
	#20
	A = 16'hb557;
	B = 16'hb79d;
	ans = 16'h3115;
	#20
	A = 16'haf09;
	B = 16'h3bee;
	ans = 16'haef9;
	#20
	A = 16'h39e3;
	B = 16'hb262;
	ans = 16'hb0b2;
	#20
	A = 16'h3444;
	B = 16'haf9c;
	ans = 16'ha80f;
	#20
	A = 16'h39f9;
	B = 16'hb169;
	ans = 16'hb00a;
	#20
	A = 16'h3a3b;
	B = 16'h3b17;
	ans = 16'h3986;
	#20
	A = 16'h3913;
	B = 16'hbb27;
	ans = 16'hb889;
	#20
	A = 16'h32e2;
	B = 16'h3408;
	ans = 16'h2af0;
	#20
	A = 16'h33a7;
	B = 16'h395c;
	ans = 16'h3120;
	#20
	A = 16'h39b5;
	B = 16'h35f4;
	ans = 16'h343f;
	#20
	A = 16'h3591;
	B = 16'h3a61;
	ans = 16'h3470;
	#20
	A = 16'h30f3;
	B = 16'h1bdf;
	ans = 16'h10df;
	#20
	A = 16'h3aa3;
	B = 16'h291f;
	ans = 16'h2840;
	#20
	A = 16'h3bc8;
	B = 16'h3baf;
	ans = 16'h3b79;
	#20
	A = 16'hb8ee;
	B = 16'h3b89;
	ans = 16'hb8a5;
	#20
	A = 16'h368d;
	B = 16'h3669;
	ans = 16'h3140;
	#20
	A = 16'hbbb1;
	B = 16'hb24f;
	ans = 16'h3211;
	#20
	A = 16'h350a;
	B = 16'hb627;
	ans = 16'hafc0;
	#20
	A = 16'hb826;
	B = 16'hb11b;
	ans = 16'h2d4c;
	#20
	A = 16'h344c;
	B = 16'hbb13;
	ans = 16'hb399;
	#20
	A = 16'hbb2c;
	B = 16'hb83b;
	ans = 16'h3796;
	#20
	A = 16'hb8bf;
	B = 16'h3b21;
	ans = 16'hb83b;
	#20
	A = 16'hbb28;
	B = 16'h3a6c;
	ans = 16'hb9bf;
	#20
	A = 16'h38f2;
	B = 16'hb83d;
	ans = 16'hb53d;
	#20
	A = 16'hb9c6;
	B = 16'hb9e8;
	ans = 16'h3843;
	#20
	A = 16'h38eb;
	B = 16'hb4a4;
	ans = 16'hb1b5;
	#20
	A = 16'h3a1f;
	B = 16'h38e6;
	ans = 16'h377f;
	#20
	A = 16'hb005;
	B = 16'h389a;
	ans = 16'haca0;
	#20
	A = 16'h38c6;
	B = 16'hb20b;
	ans = 16'haf36;
	#20
	A = 16'hb2a2;
	B = 16'h38c3;
	ans = 16'hafe5;
	#20
	A = 16'hb8cd;
	B = 16'hb32c;
	ans = 16'h304e;
	#20
	A = 16'h32df;
	B = 16'hb2e1;
	ans = 16'ha9e8;
	#20
	A = 16'hb243;
	B = 16'hb7b2;
	ans = 16'h2e06;
	#20
	A = 16'hb8d0;
	B = 16'h3396;
	ans = 16'hb090;
	#20
	A = 16'ha481;
	B = 16'h372d;
	ans = 16'ha00a;
	#20
	A = 16'h2ff6;
	B = 16'h3055;
	ans = 16'h2450;
	#20
	A = 16'hba26;
	B = 16'hb968;
	ans = 16'h3828;
	#20
	A = 16'hb800;
	B = 16'ha489;
	ans = 16'h2089;
	#20
	A = 16'hb8cd;
	B = 16'h3563;
	ans = 16'hb277;
	#20
	A = 16'hb8b4;
	B = 16'ha525;
	ans = 16'h220d;
	#20
	A = 16'h2f1d;
	B = 16'hb0e2;
	ans = 16'ha457;
	#20
	A = 16'hb97e;
	B = 16'h3918;
	ans = 16'hb6fe;
	#20
	A = 16'hb56b;
	B = 16'hb989;
	ans = 16'h337f;
	#20
	A = 16'hb8d0;
	B = 16'h3179;
	ans = 16'hae96;
	#20
	A = 16'hba78;
	B = 16'hacc3;
	ans = 16'h2bb3;
	#20
	A = 16'hb63b;
	B = 16'h305c;
	ans = 16'haaca;
	#20
	A = 16'h2fc6;
	B = 16'h371f;
	ans = 16'h2aeb;
	#20
	A = 16'hb978;
	B = 16'h1d16;
	ans = 16'h9af4;
	#20
	A = 16'h3aa2;
	B = 16'h1f37;
	ans = 16'h1dfb;
	#20
	A = 16'h38cf;
	B = 16'h383a;
	ans = 16'h3515;
	#20
	A = 16'h3a18;
	B = 16'hb505;
	ans = 16'hb3a6;
	#20
	A = 16'hb8c0;
	B = 16'h2ca3;
	ans = 16'ha982;
	#20
	A = 16'h3655;
	B = 16'hba12;
	ans = 16'hb4ce;
	#20
	A = 16'hb516;
	B = 16'h3a87;
	ans = 16'hb426;
	#20
	A = 16'hb830;
	B = 16'h34c8;
	ans = 16'hb101;
	#20
	A = 16'h3959;
	B = 16'hb88f;
	ans = 16'hb618;
	#20
	A = 16'h38ba;
	B = 16'hba06;
	ans = 16'hb71e;
	#20
	A = 16'hb855;
	B = 16'hafbc;
	ans = 16'h2c30;
	#20
	A = 16'h38fc;
	B = 16'h3638;
	ans = 16'h33c0;
	#20
	A = 16'hb81f;
	B = 16'hb785;
	ans = 16'h33bf;
	#20
	A = 16'h39e3;
	B = 16'h38af;
	ans = 16'h36e5;
	#20
	A = 16'h36dc;
	B = 16'hb869;
	ans = 16'hb390;
	#20
	A = 16'h314d;
	B = 16'hb957;
	ans = 16'haf14;
	#20
	A = 16'h3194;
	B = 16'hb761;
	ans = 16'had25;
	#20
	A = 16'h309f;
	B = 16'hb4c8;
	ans = 16'ha986;
	#20
	A = 16'hb68b;
	B = 16'hae07;
	ans = 16'h28ee;
	#20
	A = 16'h3a92;
	B = 16'hb930;
	ans = 16'hb843;
	#20
	A = 16'hbacd;
	B = 16'h3a51;
	ans = 16'hb95f;
	#20
	A = 16'hb21d;
	B = 16'h39c5;
	ans = 16'hb069;
	#20
	A = 16'h3b71;
	B = 16'haf07;
	ans = 16'hae89;
	#20
	A = 16'h3986;
	B = 16'hb873;
	ans = 16'hb625;
	#20
	A = 16'h3aac;
	B = 16'h3b02;
	ans = 16'h39d8;
	#20
	A = 16'hb87c;
	B = 16'h37a5;
	ans = 16'hb449;
	#20
	A = 16'hb930;
	B = 16'hbbd1;
	ans = 16'h3912;
	#20
	A = 16'h3acf;
	B = 16'h3964;
	ans = 16'h3896;
	#20
	A = 16'hb377;
	B = 16'h3b27;
	ans = 16'hb2ad;
	#20
	A = 16'hb95a;
	B = 16'hb94a;
	ans = 16'h3714;
	#20
	A = 16'hbb79;
	B = 16'h32ab;
	ans = 16'hb23a;
	#20
	A = 16'hba08;
	B = 16'hb51d;
	ans = 16'h33b6;
	#20
	A = 16'hb669;
	B = 16'hb6bd;
	ans = 16'h3166;
	#20
	A = 16'h2513;
	B = 16'hac3a;
	ans = 16'h955d;
	#20
	A = 16'h3a0e;
	B = 16'h36c6;
	ans = 16'h3520;
	#20
	A = 16'hbb88;
	B = 16'h371d;
	ans = 16'hb6b2;
	#20
	A = 16'h3963;
	B = 16'h2e96;
	ans = 16'h2c6f;
	#20
	A = 16'hb668;
	B = 16'hb8c5;
	ans = 16'h33a4;
	#20
	A = 16'h3866;
	B = 16'h35b7;
	ans = 16'h3249;
	#20
	A = 16'hb98f;
	B = 16'hb9b6;
	ans = 16'h37f0;
	#20
	A = 16'hb37b;
	B = 16'h36ed;
	ans = 16'hae7a;
	#20
	A = 16'h3445;
	B = 16'h3b55;
	ans = 16'h33d3;
	#20
	A = 16'h3a50;
	B = 16'h281d;
	ans = 16'h267e;
	#20
	A = 16'hbb1b;
	B = 16'h39d6;
	ans = 16'hb92f;
	#20
	A = 16'hb4c5;
	B = 16'hbb4d;
	ans = 16'h345a;
	#20
	A = 16'h3a37;
	B = 16'h35b4;
	ans = 16'h346e;
	#20
	A = 16'h37c9;
	B = 16'hb897;
	ans = 16'hb477;
	#20
	A = 16'h38ce;
	B = 16'hb7a2;
	ans = 16'hb496;
	#20
	A = 16'hb9f6;
	B = 16'h33a4;
	ans = 16'hb1b1;
	#20
	A = 16'h394c;
	B = 16'hb537;
	ans = 16'hb2e8;
	#20
	A = 16'hb6e5;
	B = 16'h37b0;
	ans = 16'hb2a0;
	#20
	A = 16'h31d8;
	B = 16'hb12c;
	ans = 16'ha78e;
	#20
	A = 16'h3b89;
	B = 16'h3b26;
	ans = 16'h3abc;
	#20
	A = 16'h3b01;
	B = 16'hb617;
	ans = 16'hb555;
	#20
	A = 16'h2a51;
	B = 16'hb93e;
	ans = 16'ha824;
	#20
	A = 16'h349a;
	B = 16'h2e82;
	ans = 16'h277d;
	#20
	A = 16'h36f2;
	B = 16'hb623;
	ans = 16'hb154;
	#20
	A = 16'h37e0;
	B = 16'h3b73;
	ans = 16'h3755;
	#20
	A = 16'h3922;
	B = 16'h38d7;
	ans = 16'h3636;
	#20
	A = 16'h3858;
	B = 16'h3af5;
	ans = 16'h378e;
	#20
	A = 16'h344e;
	B = 16'h38e0;
	ans = 16'h313f;
	#20
	A = 16'h3b01;
	B = 16'ha94a;
	ans = 16'ha8a1;
	#20
	A = 16'h3861;
	B = 16'h336c;
	ans = 16'h3010;
	#20
	A = 16'hb5c7;
	B = 16'h37bf;
	ans = 16'hb198;
	#20
	A = 16'h35fe;
	B = 16'h33ce;
	ans = 16'h2dd9;
	#20
	A = 16'hb34a;
	B = 16'hba96;
	ans = 16'h3200;
	#20
	A = 16'h348f;
	B = 16'hb3a9;
	ans = 16'hac5d;
	#20
	A = 16'hba4b;
	B = 16'hb8b3;
	ans = 16'h3765;
	#20
	A = 16'h3704;
	B = 16'h32be;
	ans = 16'h2dea;
	#20
	A = 16'h34a6;
	B = 16'hba64;
	ans = 16'hb36d;
	#20
	A = 16'hb6b0;
	B = 16'h3960;
	ans = 16'hb47e;
	#20
	A = 16'hb80b;
	B = 16'hbbcb;
	ans = 16'h37e0;
	#20
	A = 16'hbbee;
	B = 16'hb522;
	ans = 16'h3516;
	#20
	A = 16'h3afc;
	B = 16'h34ab;
	ans = 16'h3413;
	#20
	A = 16'h30a7;
	B = 16'hb5d3;
	ans = 16'haac6;
	#20
	A = 16'h1bee;
	B = 16'hb5ff;
	ans = 16'h95f2;
	#20
	A = 16'h3b27;
	B = 16'h3860;
	ans = 16'h37d3;
	#20
	A = 16'hbb73;
	B = 16'hb58a;
	ans = 16'h3528;
	#20
	A = 16'h32cc;
	B = 16'hb7aa;
	ans = 16'hae83;
	#20
	A = 16'hb51b;
	B = 16'hb6d5;
	ans = 16'h305c;
	#20
	A = 16'h38cf;
	B = 16'h2d19;
	ans = 16'h2a21;
	#20
	A = 16'h37d5;
	B = 16'h3975;
	ans = 16'h3558;
	#20
	A = 16'h3b6a;
	B = 16'hbb84;
	ans = 16'hbaf7;
	#20
	A = 16'hb3f7;
	B = 16'hb1fe;
	ans = 16'h29f7;
	#20
	A = 16'h2c05;
	B = 16'hbbcb;
	ans = 16'habd5;
	#20
	A = 16'h3945;
	B = 16'hba9d;
	ans = 16'hb85b;
	#20
	A = 16'hba33;
	B = 16'hb0af;
	ans = 16'h2f42;
	#20
	A = 16'h3b1c;
	B = 16'hb6f7;
	ans = 16'hb631;
	#20
	A = 16'hb7f3;
	B = 16'h3498;
	ans = 16'hb091;
	#20
	A = 16'h3970;
	B = 16'h37a2;
	ans = 16'h3530;
	#20
	A = 16'h2d36;
	B = 16'hb1fb;
	ans = 16'ha3ca;
	#20
	A = 16'hb674;
	B = 16'hb872;
	ans = 16'h332c;
	#20
	A = 16'ha89d;
	B = 16'hb6fa;
	ans = 16'h2406;
	#20
	A = 16'hba31;
	B = 16'hb950;
	ans = 16'h381d;
	#20
	A = 16'h3afe;
	B = 16'hb399;
	ans = 16'hb2a4;
	#20
	A = 16'h391f;
	B = 16'h31de;
	ans = 16'h2f83;
	#20
	A = 16'h3920;
	B = 16'h3717;
	ans = 16'h348b;
	#20
	A = 16'h382b;
	B = 16'hbb0b;
	ans = 16'hb757;
	#20
	A = 16'hb771;
	B = 16'hb4fb;
	ans = 16'h30a2;
	#20
	A = 16'hba99;
	B = 16'hb399;
	ans = 16'h3244;
	#20
	A = 16'hbae8;
	B = 16'hb281;
	ans = 16'h319d;
	#20
	A = 16'hbbbb;
	B = 16'h3467;
	ans = 16'hb441;
	#20
	A = 16'h3937;
	B = 16'hb998;
	ans = 16'hb74b;
	#20
	A = 16'hb54f;
	B = 16'h3b40;
	ans = 16'hb4d0;
	#20
	A = 16'h36ef;
	B = 16'hb6f7;
	ans = 16'hb209;
	#20
	A = 16'h38c7;
	B = 16'h3b08;
	ans = 16'h3833;
	#20
	A = 16'hb9d7;
	B = 16'hb93b;
	ans = 16'h37a3;
	#20
	A = 16'h3a31;
	B = 16'hb66b;
	ans = 16'hb4f8;
	#20
	A = 16'hb4d0;
	B = 16'hb9e0;
	ans = 16'h3312;
	#20
	A = 16'h3848;
	B = 16'h3b33;
	ans = 16'h37b5;
	#20
	A = 16'hb905;
	B = 16'h38cf;
	ans = 16'hb609;
	#20
	A = 16'h3a21;
	B = 16'hb957;
	ans = 16'hb817;
	#20
	A = 16'h3a49;
	B = 16'h2f6e;
	ans = 16'h2dd6;
	#20
	A = 16'hb81d;
	B = 16'h3986;
	ans = 16'hb5ae;
	#20
	A = 16'h3845;
	B = 16'hb5ce;
	ans = 16'hb232;
	#20
	A = 16'h3b5d;
	B = 16'hb9ba;
	ans = 16'hb945;
	#20
	A = 16'h3730;
	B = 16'hba00;
	ans = 16'hb564;
	#20
	A = 16'h37e6;
	B = 16'hb67d;
	ans = 16'hb268;
	#20
	A = 16'h3219;
	B = 16'h3af8;
	ans = 16'h3150;
	#20
	A = 16'hbbac;
	B = 16'hbb42;
	ans = 16'h3af6;
	#20
	A = 16'h3b30;
	B = 16'hb8ed;
	ans = 16'hb86d;
	#20
	A = 16'hb36e;
	B = 16'h3b93;
	ans = 16'hb309;
	#20
	A = 16'h3bbe;
	B = 16'hbbc1;
	ans = 16'hbb81;
	#20
	A = 16'hb75d;
	B = 16'h3485;
	ans = 16'hb029;
	#20
	A = 16'ha3b3;
	B = 16'hbbe0;
	ans = 16'h2394;
	#20
	A = 16'h3790;
	B = 16'h39a4;
	ans = 16'h3555;
	#20
	A = 16'h3291;
	B = 16'h38dd;
	ans = 16'h2ffc;
	#20
	A = 16'hb9c4;
	B = 16'hb387;
	ans = 16'h316d;
	#20
	A = 16'h273b;
	B = 16'hba9c;
	ans = 16'ha5f9;
	#20
	A = 16'hb57d;
	B = 16'h30b7;
	ans = 16'haa78;
	#20
	A = 16'hacc6;
	B = 16'h3637;
	ans = 16'ha76b;
	#20
	A = 16'hb4ff;
	B = 16'h369b;
	ans = 16'hb020;
	#20
	A = 16'h2ae4;
	B = 16'hb4cc;
	ans = 16'ha422;
	#20
	A = 16'h3a04;
	B = 16'hba9f;
	ans = 16'hb8fb;
	#20
	A = 16'h320a;
	B = 16'hb86e;
	ans = 16'haeb0;
	#20
	A = 16'hb78a;
	B = 16'haeb1;
	ans = 16'h2a4e;
	#20
	A = 16'hbb5e;
	B = 16'ha846;
	ans = 16'h27df;
	#20
	A = 16'h3970;
	B = 16'h39a7;
	ans = 16'h37af;
	#20
	A = 16'hb71a;
	B = 16'h373d;
	ans = 16'hb26d;
	#20
	A = 16'hb9ca;
	B = 16'h3860;
	ans = 16'hb655;
	#20
	A = 16'hbb42;
	B = 16'h3149;
	ans = 16'hb0cb;
	#20
	A = 16'hb92e;
	B = 16'h34a7;
	ans = 16'hb206;
	#20
	A = 16'hbbe4;
	B = 16'h36da;
	ans = 16'hb6c2;
	#20
	A = 16'hb2fc;
	B = 16'hb91a;
	ans = 16'h3074;
	#20
	A = 16'hbb08;
	B = 16'hbb51;
	ans = 16'h3a6e;
	#20
	A = 16'hbaaa;
	B = 16'hb9d6;
	ans = 16'h38dd;
	#20
	A = 16'hbb3c;
	B = 16'hbb74;
	ans = 16'h3abd;
	#20
	A = 16'h383d;
	B = 16'hb623;
	ans = 16'hb281;
	#20
	A = 16'hb603;
	B = 16'hb8d5;
	ans = 16'h3343;
	#20
	A = 16'h3bd0;
	B = 16'hb082;
	ans = 16'hb067;
	#20
	A = 16'h344e;
	B = 16'h34a7;
	ans = 16'h2d02;
	#20
	A = 16'hb91b;
	B = 16'hb9cc;
	ans = 16'h3766;
	#20
	A = 16'hacf7;
	B = 16'hb571;
	ans = 16'h26c1;
	#20
	A = 16'h36ae;
	B = 16'h36a8;
	ans = 16'h318f;
	#20
	A = 16'h3601;
	B = 16'h3a13;
	ans = 16'h348f;
	#20
	A = 16'hb93d;
	B = 16'h3389;
	ans = 16'hb0ef;
	#20
	A = 16'h3883;
	B = 16'hba09;
	ans = 16'hb6cf;
	#20
	A = 16'hba35;
	B = 16'h36bf;
	ans = 16'hb53c;
	#20
	A = 16'hb9fc;
	B = 16'h35c9;
	ans = 16'hb454;
	#20
	A = 16'h14ba;
	B = 16'hb9b4;
	ans = 16'h92bd;
	#20
	A = 16'h3844;
	B = 16'h3703;
	ans = 16'h337a;
	#20
	A = 16'hbbb2;
	B = 16'h38c8;
	ans = 16'hb899;
	#20
	A = 16'hb42b;
	B = 16'h3a6d;
	ans = 16'hb2b2;
	#20
	A = 16'hb40f;
	B = 16'h39e5;
	ans = 16'hb1fb;
	#20
	A = 16'h367a;
	B = 16'h35b3;
	ans = 16'h309d;
	#20
	A = 16'hb424;
	B = 16'h3436;
	ans = 16'hac5c;
	#20
	A = 16'hbbd1;
	B = 16'hbb0b;
	ans = 16'h3ae2;
	#20
	A = 16'hb7bb;
	B = 16'hb80a;
	ans = 16'h33ce;
	#20
	A = 16'h365f;
	B = 16'ha81e;
	ans = 16'ha28f;
	#20
	A = 16'h2996;
	B = 16'hb2e3;
	ans = 16'ha0cf;
	#20
	A = 16'h3793;
	B = 16'hb9f5;
	ans = 16'hb5a4;
	#20
	A = 16'hb981;
	B = 16'hbbec;
	ans = 16'h3973;
	#20
	A = 16'h33d4;
	B = 16'hadbb;
	ans = 16'ha59b;
	#20
	A = 16'h324d;
	B = 16'h3af4;
	ans = 16'h317a;
	#20
	A = 16'h381e;
	B = 16'haca6;
	ans = 16'ha8c9;
	#20
	A = 16'h349f;
	B = 16'hb919;
	ans = 16'hb1e4;
	#20
	A = 16'hb22e;
	B = 16'h3ab4;
	ans = 16'hb12e;
	#20
	A = 16'h3a7b;
	B = 16'h2f4f;
	ans = 16'h2dec;
	#20
	A = 16'h310a;
	B = 16'h3845;
	ans = 16'h2d61;
	#20
	A = 16'h33f3;
	B = 16'hb792;
	ans = 16'haf86;
	#20
	A = 16'h3445;
	B = 16'h3b35;
	ans = 16'h33b1;
	#20
	A = 16'hb555;
	B = 16'h3696;
	ans = 16'hb064;
	#20
	A = 16'h3958;
	B = 16'h395e;
	ans = 16'h372c;
	#20
	A = 16'hb929;
	B = 16'hbada;
	ans = 16'h386b;
	#20
	A = 16'h3815;
	B = 16'hb845;
	ans = 16'hb45b;
	#20
	A = 16'h39f3;
	B = 16'haba4;
	ans = 16'ha9af;
	#20
	A = 16'h3859;
	B = 16'h3134;
	ans = 16'h2da8;
	#20
	A = 16'h33b2;
	B = 16'hb962;
	ans = 16'hb12e;
	#20
	A = 16'h3b07;
	B = 16'h394b;
	ans = 16'h38a6;
	#20
	A = 16'h2db1;
	B = 16'h343b;
	ans = 16'h2605;
	#20
	A = 16'hba2b;
	B = 16'h3977;
	ans = 16'hb837;
	#20
	A = 16'h3a91;
	B = 16'h372a;
	ans = 16'h35e1;
	#20
	A = 16'h3a75;
	B = 16'hb8ff;
	ans = 16'hb808;
	#20
	A = 16'h311b;
	B = 16'h3b8a;
	ans = 16'h30d0;
	#20
	A = 16'hb891;
	B = 16'hb804;
	ans = 16'h3496;
	#20
	A = 16'h3860;
	B = 16'hbb95;
	ans = 16'hb825;
	#20
	A = 16'hba42;
	B = 16'h3a57;
	ans = 16'hb8f6;
	#20
	A = 16'h356d;
	B = 16'h3bbb;
	ans = 16'h353e;
	#20
	A = 16'h3628;
	B = 16'h3ad8;
	ans = 16'h3544;
	#20
	A = 16'hba8b;
	B = 16'hb92e;
	ans = 16'h383c;
	#20
	A = 16'h370f;
	B = 16'hb9ab;
	ans = 16'hb500;
	#20
	A = 16'h3458;
	B = 16'hb636;
	ans = 16'haebf;
	#20
	A = 16'h36f9;
	B = 16'h30ba;
	ans = 16'h2c1f;
	#20
	A = 16'h38ad;
	B = 16'h2829;
	ans = 16'h24dd;
	#20
	A = 16'hb95c;
	B = 16'hbbd4;
	ans = 16'h393f;
	#20
	A = 16'hbaff;
	B = 16'hb833;
	ans = 16'h3758;
	#20
	A = 16'hb8cb;
	B = 16'hb846;
	ans = 16'h351f;
	#20
	A = 16'h3902;
	B = 16'h31ac;
	ans = 16'h2f1a;
	#20
	A = 16'hb60a;
	B = 16'hbbca;
	ans = 16'h35e1;
	#20
	A = 16'h3044;
	B = 16'h3766;
	ans = 16'h2be4;
	#20
	A = 16'h32f8;
	B = 16'h33e7;
	ans = 16'h2ae2;
	#20
	A = 16'h373d;
	B = 16'h34b4;
	ans = 16'h3041;
	#20
	A = 16'h3b26;
	B = 16'hbbac;
	ans = 16'hbadb;
	#20
	A = 16'h3828;
	B = 16'h3b48;
	ans = 16'h3791;
	#20
	A = 16'haf88;
	B = 16'h334c;
	ans = 16'ha6df;
	#20
	A = 16'h3646;
	B = 16'hbae2;
	ans = 16'hb566;
	#20
	A = 16'hb34c;
	B = 16'hb51a;
	ans = 16'h2ca7;
	#20
	A = 16'hb9f4;
	B = 16'h3b2f;
	ans = 16'hb958;
	#20
	A = 16'h3885;
	B = 16'hb61b;
	ans = 16'hb2e6;
	#20
	A = 16'hb88d;
	B = 16'h3b8f;
	ans = 16'hb84d;
	#20
	A = 16'h3a4a;
	B = 16'hb9d5;
	ans = 16'hb896;
	#20
	A = 16'hb31d;
	B = 16'hb85c;
	ans = 16'h2fc1;
	#20
	A = 16'hb25b;
	B = 16'hb874;
	ans = 16'h2f13;
	#20
	A = 16'hb815;
	B = 16'hbb37;
	ans = 16'h375d;
	#20
	A = 16'hbb34;
	B = 16'hba88;
	ans = 16'h39e1;
	#20
	A = 16'hb3c0;
	B = 16'hb878;
	ans = 16'h3054;
	#20
	A = 16'hb85d;
	B = 16'hb56f;
	ans = 16'h31ed;
	#20
	A = 16'h2957;
	B = 16'h3bfd;
	ans = 16'h2955;
	#20
	A = 16'h35e1;
	B = 16'h3878;
	ans = 16'h3291;
	#20
	A = 16'hb96d;
	B = 16'hb98b;
	ans = 16'h3785;
	#20
	A = 16'h3a45;
	B = 16'hbad0;
	ans = 16'hb957;
	#20
	A = 16'hb368;
	B = 16'h37eb;
	ans = 16'haf55;
	#20
	A = 16'h3ad4;
	B = 16'h39f8;
	ans = 16'h3918;
	#20
	A = 16'hac02;
	B = 16'h2ed2;
	ans = 16'h9ed5;
	#20
	A = 16'h2df1;
	B = 16'h3a0a;
	ans = 16'h2c7c;
	#20
	A = 16'hb8c7;
	B = 16'hacff;
	ans = 16'h29f8;
	#20
	A = 16'hbb58;
	B = 16'hb829;
	ans = 16'h37a3;
	#20
	A = 16'h32e4;
	B = 16'h27ac;
	ans = 16'h1e9c;
	#20
	A = 16'hb663;
	B = 16'h2e00;
	ans = 16'ha8ca;
	#20
	A = 16'hb8de;
	B = 16'hb5bf;
	ans = 16'h32fe;
	#20
	A = 16'h3090;
	B = 16'hbb5c;
	ans = 16'hb032;
	#20
	A = 16'h36c6;
	B = 16'h3a35;
	ans = 16'h3541;
	#20
	A = 16'h3b77;
	B = 16'h3566;
	ans = 16'h350a;
	#20
	A = 16'h3afa;
	B = 16'h3963;
	ans = 16'h38b3;
	#20
	A = 16'h390c;
	B = 16'hb046;
	ans = 16'had64;
	#20
	A = 16'hb7ee;
	B = 16'hb80b;
	ans = 16'h3402;
	#20
	A = 16'hb787;
	B = 16'hb994;
	ans = 16'h3540;
	#20
	A = 16'hb813;
	B = 16'h25ba;
	ans = 16'ha1d5;
	#20
	A = 16'hbada;
	B = 16'ha9ab;
	ans = 16'h28db;
	#20
	A = 16'hb81a;
	B = 16'h3649;
	ans = 16'hb272;
	#20
	A = 16'h33d8;
	B = 16'h3949;
	ans = 16'h312f;
	#20
	A = 16'hb2e8;
	B = 16'h3bde;
	ans = 16'hb2cb;
	#20
	A = 16'hba18;
	B = 16'h222e;
	ans = 16'ha0b5;
	#20
	A = 16'h3428;
	B = 16'h3647;
	ans = 16'h2e86;
	#20
	A = 16'h3874;
	B = 16'h38ed;
	ans = 16'h357c;
	#20
	A = 16'hbbda;
	B = 16'h3655;
	ans = 16'hb637;
	#20
	A = 16'hb980;
	B = 16'hb8cd;
	ans = 16'h369a;
	#20
	A = 16'hb8d7;
	B = 16'hba3c;
	ans = 16'h378b;
	#20
	A = 16'h3713;
	B = 16'hb6e7;
	ans = 16'hb21b;
	#20
	A = 16'h3a4c;
	B = 16'h2ffe;
	ans = 16'h2e4a;
	#20
	A = 16'h3a2d;
	B = 16'h3a13;
	ans = 16'h38b0;
	#20
	A = 16'hb310;
	B = 16'hbb92;
	ans = 16'h32af;
	#20
	A = 16'h34ae;
	B = 16'h3526;
	ans = 16'h2e06;
	#20
	A = 16'hbbc4;
	B = 16'hbbd3;
	ans = 16'h3b98;
	#20
	A = 16'hba66;
	B = 16'ha88b;
	ans = 16'h2744;
	#20
	A = 16'hb8fb;
	B = 16'h33f5;
	ans = 16'hb0f4;
	#20
	A = 16'hb8fb;
	B = 16'hb268;
	ans = 16'h2ffa;
	#20
	A = 16'hb50b;
	B = 16'haf01;
	ans = 16'h286a;
	#20
	A = 16'hbbed;
	B = 16'hac3d;
	ans = 16'h2c33;
	#20
	A = 16'h3b55;
	B = 16'hb0ae;
	ans = 16'hb04a;
	#20
	A = 16'h34b8;
	B = 16'hb842;
	ans = 16'hb106;
	#20
	A = 16'h3640;
	B = 16'h3a9f;
	ans = 16'h352c;
	#20
	A = 16'ha9eb;
	B = 16'hb62d;
	ans = 16'h2492;
	#20
	A = 16'h38fe;
	B = 16'hb858;
	ans = 16'hb56c;
	#20
	A = 16'hb116;
	B = 16'hb95d;
	ans = 16'h2ed2;
	#20
	A = 16'hb5d2;
	B = 16'hb945;
	ans = 16'h33ab;
	#20
	A = 16'h3a56;
	B = 16'h380e;
	ans = 16'h366c;
	#20
	A = 16'h3b81;
	B = 16'h3b61;
	ans = 16'h3aec;
	#20
	A = 16'hb5a1;
	B = 16'hb417;
	ans = 16'h2dc1;
	#20
	A = 16'h3a72;
	B = 16'h39ec;
	ans = 16'h38c5;
	#20
	A = 16'hb3da;
	B = 16'h38dd;
	ans = 16'hb0c6;
	#20
	A = 16'hba2f;
	B = 16'hb2df;
	ans = 16'h3150;
	#20
	A = 16'hacc1;
	B = 16'haede;
	ans = 16'h2015;
	#20
	A = 16'h3b50;
	B = 16'h3418;
	ans = 16'h337c;
	#20
	A = 16'hab11;
	B = 16'h3504;
	ans = 16'ha46e;
	#20
	A = 16'h3622;
	B = 16'hb98d;
	ans = 16'hb441;
	#20
	A = 16'h3634;
	B = 16'h3b04;
	ans = 16'h3571;
	#20
	A = 16'h2b84;
	B = 16'hb0d5;
	ans = 16'ha08a;
	#20
	A = 16'hbb6d;
	B = 16'hb972;
	ans = 16'h390e;
	#20
	A = 16'h3a03;
	B = 16'hbbeb;
	ans = 16'hb9f3;
	#20
	A = 16'hb888;
	B = 16'hbb4d;
	ans = 16'h3823;
	#20
	A = 16'h3af0;
	B = 16'h397e;
	ans = 16'h38c3;
	#20
	A = 16'h3b0b;
	B = 16'h3519;
	ans = 16'h347d;
	#20
	A = 16'h3921;
	B = 16'h3a8d;
	ans = 16'h3833;
	#20
	A = 16'h3460;
	B = 16'haeeb;
	ans = 16'ha791;
	#20
	A = 16'h3253;
	B = 16'hb4d1;
	ans = 16'hab9d;
	#20
	A = 16'hb9c3;
	B = 16'h3bdf;
	ans = 16'hb9ab;
	#20
	A = 16'h3887;
	B = 16'hb9b3;
	ans = 16'hb673;
	#20
	A = 16'h3baf;
	B = 16'h3729;
	ans = 16'h36e1;
	#20
	A = 16'h2f63;
	B = 16'hb80d;
	ans = 16'hab7b;
	#20
	A = 16'h3aee;
	B = 16'h3807;
	ans = 16'h36fa;
	#20
	A = 16'hbb6b;
	B = 16'hb217;
	ans = 16'h31a6;
	#20
	A = 16'h2aee;
	B = 16'haeed;
	ans = 16'h9e00;
	#20
	A = 16'hb670;
	B = 16'h3451;
	ans = 16'haef2;
	#20
	A = 16'h3af3;
	B = 16'hbbb9;
	ans = 16'hbab5;
	#20
	A = 16'hbb36;
	B = 16'h38d6;
	ans = 16'hb85c;
	#20
	A = 16'h2d41;
	B = 16'hb9a7;
	ans = 16'hab6d;
	#20
	A = 16'h362c;
	B = 16'h35fe;
	ans = 16'h309f;
	#20
	A = 16'h36dd;
	B = 16'h3b42;
	ans = 16'h363a;
	#20
	A = 16'hb4ad;
	B = 16'h3a48;
	ans = 16'hb358;
	#20
	A = 16'hbb90;
	B = 16'h39a0;
	ans = 16'hb951;
	#20
	A = 16'h38fb;
	B = 16'hb4c4;
	ans = 16'hb1ef;
	#20
	A = 16'hb537;
	B = 16'hb759;
	ans = 16'h30ca;
	#20
	A = 16'h3054;
	B = 16'h38ce;
	ans = 16'h2d33;
	#20
	A = 16'h3624;
	B = 16'h39af;
	ans = 16'h345d;
	#20
	A = 16'ha9c7;
	B = 16'h3782;
	ans = 16'ha56c;
	#20
	A = 16'h38b5;
	B = 16'h30c8;
	ans = 16'h2da0;
	#20
	A = 16'hbb29;
	B = 16'hb5e9;
	ans = 16'h354a;
	#20
	A = 16'hb9c7;
	B = 16'h38e5;
	ans = 16'hb712;
	#20
	A = 16'hb4f3;
	B = 16'hb23b;
	ans = 16'h2bb6;
	#20
	A = 16'h3b5c;
	B = 16'h33fa;
	ans = 16'h3356;
	#20
	A = 16'h328a;
	B = 16'h33e0;
	ans = 16'h2a70;
	#20
	A = 16'h3784;
	B = 16'h3a71;
	ans = 16'h360d;
	#20
	A = 16'hbb89;
	B = 16'hba95;
	ans = 16'h3a33;
	#20
	A = 16'h3b5c;
	B = 16'hb5a0;
	ans = 16'hb52d;
	#20
	A = 16'hb4bc;
	B = 16'h3881;
	ans = 16'hb155;
	#20
	A = 16'hbb81;
	B = 16'hb918;
	ans = 16'h38c7;
	#20
	A = 16'hb905;
	B = 16'h36d7;
	ans = 16'hb44b;
	#20
	A = 16'h241c;
	B = 16'hbb56;
	ans = 16'ha389;
	#20
	A = 16'hb7bf;
	B = 16'h3bed;
	ans = 16'hb7ad;
	#20
	A = 16'h3384;
	B = 16'hb5e2;
	ans = 16'had87;
	#20
	A = 16'hb978;
	B = 16'h3135;
	ans = 16'haf1e;
	#20
	A = 16'h328c;
	B = 16'hb9bb;
	ans = 16'hb0b1;
	#20
	A = 16'hb3d8;
	B = 16'h381c;
	ans = 16'hb007;
	#20
	A = 16'h3887;
	B = 16'hab50;
	ans = 16'ha823;
	#20
	A = 16'hb9ff;
	B = 16'hae9e;
	ans = 16'h2cf6;
	#20
	A = 16'hb4dc;
	B = 16'hb8e0;
	ans = 16'h31ec;
	#20
	A = 16'hafde;
	B = 16'hb91a;
	ans = 16'h2d04;
	#20
	A = 16'hb93f;
	B = 16'hb4c4;
	ans = 16'h3240;
	#20
	A = 16'h39aa;
	B = 16'hb27b;
	ans = 16'hb097;
	#20
	A = 16'h3982;
	B = 16'h39d3;
	ans = 16'h3803;
	#20
	A = 16'h38c1;
	B = 16'h3b3d;
	ans = 16'h384d;
	#20
	A = 16'h37cc;
	B = 16'h3846;
	ans = 16'h342a;
	#20
	A = 16'h3852;
	B = 16'h35d7;
	ans = 16'h324f;
	#20
	A = 16'h3a6a;
	B = 16'h3bd3;
	ans = 16'h3a46;
	#20
	A = 16'haca5;
	B = 16'h3a18;
	ans = 16'hab13;
	#20
	A = 16'hb816;
	B = 16'h39e6;
	ans = 16'hb606;
	#20
	A = 16'h3aae;
	B = 16'h3bb0;
	ans = 16'h3a6b;
	#20
	A = 16'hb661;
	B = 16'h3b1c;
	ans = 16'hb5ab;
	#20
	A = 16'hb9a4;
	B = 16'h3a81;
	ans = 16'hb896;
	#20
	A = 16'h3381;
	B = 16'h388c;
	ans = 16'h3044;
	#20
	A = 16'hb523;
	B = 16'h3adb;
	ans = 16'hb467;
	#20
	A = 16'h38eb;
	B = 16'hbb3b;
	ans = 16'hb872;
	#20
	A = 16'h360f;
	B = 16'hb9e7;
	ans = 16'hb478;
	#20
	A = 16'hb03c;
	B = 16'h3350;
	ans = 16'ha7be;
	#20
	A = 16'hbbc1;
	B = 16'h3921;
	ans = 16'hb8f9;
	#20
	A = 16'hbacf;
	B = 16'hb16c;
	ans = 16'h309d;
	#20
	A = 16'hb4ab;
	B = 16'hb7d0;
	ans = 16'h308f;
	#20
	A = 16'hbac8;
	B = 16'h35a2;
	ans = 16'hb4c6;
	#20
	A = 16'h3984;
	B = 16'habb9;
	ans = 16'ha953;
	#20
	A = 16'ha280;
	B = 16'hbb5e;
	ans = 16'h21fc;
	#20
	A = 16'h3819;
	B = 16'hb84c;
	ans = 16'hb467;
	#20
	A = 16'hac20;
	B = 16'h2ba1;
	ans = 16'h9bde;
	#20
	A = 16'hb647;
	B = 16'h3880;
	ans = 16'hb310;
	#20
	A = 16'hb7f8;
	B = 16'hb88c;
	ans = 16'h3487;
	#20
	A = 16'hb8ce;
	B = 16'hb41f;
	ans = 16'h30f3;
	#20
	A = 16'h3719;
	B = 16'hb7fa;
	ans = 16'hb314;
	#20
	A = 16'hae83;
	B = 16'hb60a;
	ans = 16'h28ea;
	#20
	A = 16'hb713;
	B = 16'hb501;
	ans = 16'h306d;
	#20
	A = 16'hba05;
	B = 16'hafb5;
	ans = 16'h2dcd;
	#20
	A = 16'h3898;
	B = 16'h3192;
	ans = 16'h2e66;
	#20
	A = 16'hb79c;
	B = 16'hb9d0;
	ans = 16'h3587;
	#20
	A = 16'hb0d6;
	B = 16'h3acc;
	ans = 16'hb01c;
	#20
	A = 16'hb804;
	B = 16'hbb34;
	ans = 16'h373b;
	#20
	A = 16'hb648;
	B = 16'hbc00;
	ans = 16'h3648;
	#20
	A = 16'h3b23;
	B = 16'haa9d;
	ans = 16'ha9e6;
	#20
	A = 16'hb6a7;
	B = 16'hb8ac;
	ans = 16'h33c5;
	#20
	A = 16'h305c;
	B = 16'hba9a;
	ans = 16'haf32;
	#20
	A = 16'h3849;
	B = 16'h33fe;
	ans = 16'h3048;
	#20
	A = 16'h3a61;
	B = 16'hb0e7;
	ans = 16'hafd1;
	#20
	A = 16'h36ba;
	B = 16'h33e3;
	ans = 16'h2ea2;
	#20
	A = 16'hb9d0;
	B = 16'h3bd7;
	ans = 16'hb9b2;
	#20
	A = 16'hb53e;
	B = 16'hb2ca;
	ans = 16'h2c73;
	#20
	A = 16'hb269;
	B = 16'hb642;
	ans = 16'h2d04;
	#20
	A = 16'hb8bc;
	B = 16'h3b06;
	ans = 16'hb828;
	#20
	A = 16'hb09a;
	B = 16'h3235;
	ans = 16'ha724;
	#20
	A = 16'hb0ea;
	B = 16'hb8a6;
	ans = 16'h2db6;
	#20
	A = 16'hbabb;
	B = 16'h3a66;
	ans = 16'hb962;
	#20
	A = 16'hb9c7;
	B = 16'h386b;
	ans = 16'hb662;
	#20
	A = 16'hb950;
	B = 16'h2147;
	ans = 16'h9f02;
	#20
	A = 16'hba9f;
	B = 16'h3714;
	ans = 16'hb5dc;
	#20
	A = 16'h3906;
	B = 16'hb6cb;
	ans = 16'hb444;
	#20
	A = 16'h2b5f;
	B = 16'h3283;
	ans = 16'h2200;
	#20
	A = 16'hbba0;
	B = 16'hbb46;
	ans = 16'h3aef;
	#20
	A = 16'hb92c;
	B = 16'h39fb;
	ans = 16'hb7bc;
	#20
	A = 16'hb4c8;
	B = 16'hb6ba;
	ans = 16'h3005;
	#20
	A = 16'h3947;
	B = 16'hb815;
	ans = 16'hb563;
	#20
	A = 16'h3407;
	B = 16'h38fa;
	ans = 16'h3103;
	#20
	A = 16'hba94;
	B = 16'hb59f;
	ans = 16'h349f;
	#20
	A = 16'ha864;
	B = 16'h3a02;
	ans = 16'ha698;
	#20
	A = 16'hb045;
	B = 16'h37f6;
	ans = 16'hac40;
	#20
	A = 16'hbb6c;
	B = 16'h3949;
	ans = 16'hb8e7;
	#20
	A = 16'h39ed;
	B = 16'h336b;
	ans = 16'h317f;
	#20
	A = 16'h36e7;
	B = 16'h2f1d;
	ans = 16'h2a23;
	#20
	A = 16'h30ba;
	B = 16'hb9e8;
	ans = 16'haefb;
	#20
	A = 16'hb6ac;
	B = 16'hb083;
	ans = 16'h2b87;
	#20
	A = 16'hb73f;
	B = 16'h3460;
	ans = 16'hafed;
	#20
	A = 16'h339a;
	B = 16'hb2a1;
	ans = 16'haa4c;
	#20
	A = 16'hbb4d;
	B = 16'hbb7a;
	ans = 16'h3ad3;
	#20
	A = 16'h305b;
	B = 16'h394f;
	ans = 16'h2dc8;
	#20
	A = 16'h3754;
	B = 16'h368e;
	ans = 16'h3201;
	#20
	A = 16'h3b6b;
	B = 16'hba32;
	ans = 16'hb9bf;
	#20
	A = 16'h3a07;
	B = 16'h3a8e;
	ans = 16'h38f0;
	#20
	A = 16'h3952;
	B = 16'hafb5;
	ans = 16'had20;
	#20
	A = 16'h3914;
	B = 16'hb980;
	ans = 16'hb6fc;
	#20
	A = 16'hb46c;
	B = 16'hbbbd;
	ans = 16'h3447;
	#20
	A = 16'ha2bd;
	B = 16'h3550;
	ans = 16'h9c7a;
	#20
	A = 16'h3bf0;
	B = 16'hb982;
	ans = 16'hb977;
	#20
	A = 16'hb4c9;
	B = 16'h39e4;
	ans = 16'hb30c;
	#20
	A = 16'hb38b;
	B = 16'h3135;
	ans = 16'ha8e9;
	#20
	A = 16'h35c9;
	B = 16'h336e;
	ans = 16'h2d5f;
	#20
	A = 16'hbadf;
	B = 16'h35a8;
	ans = 16'hb4dc;
	#20
	A = 16'h3a13;
	B = 16'haa5b;
	ans = 16'ha8d3;
	#20
	A = 16'haa76;
	B = 16'hb41e;
	ans = 16'h22a6;
	#20
	A = 16'h2b19;
	B = 16'h28f1;
	ans = 16'h1862;
	#20
	A = 16'hb9f7;
	B = 16'hbb07;
	ans = 16'h393d;
	#20
	A = 16'hb9cb;
	B = 16'h37c6;
	ans = 16'hb5a1;
	#20
	A = 16'hbb4d;
	B = 16'h2f72;
	ans = 16'haecb;
	#20
	A = 16'h3b51;
	B = 16'h392d;
	ans = 16'h38bc;
	#20
	A = 16'had91;
	B = 16'h3b58;
	ans = 16'had1c;
	#20
	A = 16'hbb44;
	B = 16'h21b1;
	ans = 16'ha12b;
	#20
	A = 16'hb8f1;
	B = 16'h3bab;
	ans = 16'hb8bc;
	#20
	A = 16'haf59;
	B = 16'hb2d6;
	ans = 16'h2647;
	#20
	A = 16'hb8a8;
	B = 16'hb888;
	ans = 16'h3546;
	#20
	A = 16'h3b93;
	B = 16'h37ae;
	ans = 16'h3745;
	#20
	A = 16'hbaf3;
	B = 16'h388f;
	ans = 16'hb7eb;
	#20
	A = 16'hb98a;
	B = 16'hb4b6;
	ans = 16'h3286;
	#20
	A = 16'h3ab2;
	B = 16'h2ef9;
	ans = 16'h2dd6;
	#20
	A = 16'hb167;
	B = 16'h327d;
	ans = 16'ha862;
	#20
	A = 16'hb614;
	B = 16'hb603;
	ans = 16'h3091;
	#20
	A = 16'h3b7d;
	B = 16'hb9c8;
	ans = 16'hb969;
	#20
	A = 16'h3643;
	B = 16'h3863;
	ans = 16'h32de;
	#20
	A = 16'h30f6;
	B = 16'hb485;
	ans = 16'ha99b;
	#20
	A = 16'hb125;
	B = 16'ha886;
	ans = 16'h1dd1;
	#20
	A = 16'h315c;
	B = 16'h3b30;
	ans = 16'h30d1;
	#20
	A = 16'hbb7c;
	B = 16'h391d;
	ans = 16'hb8c9;
	#20
	A = 16'h3034;
	B = 16'hb8d2;
	ans = 16'had11;
	#20
	A = 16'hba37;
	B = 16'h3bbe;
	ans = 16'hba04;
	#20
	A = 16'h387c;
	B = 16'hb202;
	ans = 16'haebc;
	#20
	A = 16'h2d9d;
	B = 16'hb48a;
	ans = 16'ha65f;
	#20
	A = 16'hba5a;
	B = 16'h3b94;
	ans = 16'hba04;
	#20
	A = 16'hb975;
	B = 16'hb940;
	ans = 16'h372a;
	#20
	A = 16'h3570;
	B = 16'hb4f1;
	ans = 16'haeb8;
	#20
	A = 16'ha830;
	B = 16'hb82e;
	ans = 16'h2460;
	#20
	A = 16'h300e;
	B = 16'hb9c2;
	ans = 16'hadd6;
	#20
	A = 16'h377c;
	B = 16'hadd6;
	ans = 16'ha976;
	#20
	A = 16'hbb30;
	B = 16'h3aba;
	ans = 16'hba0b;
	#20
	A = 16'haea3;
	B = 16'h3be8;
	ans = 16'hae8f;
	#20
	A = 16'hb7d1;
	B = 16'hb832;
	ans = 16'h3419;
	#20
	A = 16'h3543;
	B = 16'h31de;
	ans = 16'h2bb8;
	#20
	A = 16'hbbcb;
	B = 16'h3b5b;
	ans = 16'hbb2a;
	#20
	A = 16'h2213;
	B = 16'h3bf6;
	ans = 16'h220b;
	#20
	A = 16'hb50a;
	B = 16'hb660;
	ans = 16'h3004;
	#20
	A = 16'h8f1e;
	B = 16'h364d;
	ans = 16'h899b;
	#20
	A = 16'hb9d4;
	B = 16'h306e;
	ans = 16'hae74;
	#20
	A = 16'h39a5;
	B = 16'hb72e;
	ans = 16'hb511;
	#20
	A = 16'h3af9;
	B = 16'h2fae;
	ans = 16'h2eb2;
	#20
	A = 16'hb80f;
	B = 16'hbadb;
	ans = 16'h36f5;
	#20
	A = 16'h3bf4;
	B = 16'h3bf2;
	ans = 16'h3be6;
	#20
	A = 16'hb5b8;
	B = 16'hb742;
	ans = 16'h3130;
	#20
	A = 16'hba0d;
	B = 16'hb14f;
	ans = 16'h3004;
	#20
	A = 16'h3bc8;
	B = 16'hb0e8;
	ans = 16'hb0c6;
	#20
	A = 16'h3753;
	B = 16'h3b0b;
	ans = 16'h3673;
	#20
	A = 16'hba98;
	B = 16'hb3a7;
	ans = 16'h324f;
	#20
	A = 16'hb62f;
	B = 16'h3b27;
	ans = 16'hb587;
	#20
	A = 16'h3827;
	B = 16'hb77f;
	ans = 16'hb3c8;
	#20
	A = 16'h2f98;
	B = 16'h34db;
	ans = 16'h289c;
	#20
	A = 16'hb7fa;
	B = 16'hb1cb;
	ans = 16'h2dc7;
	#20
	A = 16'hbbde;
	B = 16'hbb5e;
	ans = 16'h3b3f;
	#20
	A = 16'h3a9b;
	B = 16'h3824;
	ans = 16'h36d6;
	#20
	A = 16'ha45a;
	B = 16'hbb4a;
	ans = 16'h23ee;
	#20
	A = 16'hb602;
	B = 16'h388d;
	ans = 16'hb2d6;
	#20
	A = 16'haefc;
	B = 16'h36a8;
	ans = 16'ha9d0;
	#20
	A = 16'h3a55;
	B = 16'h3948;
	ans = 16'h382e;
	#20
	A = 16'h3a18;
	B = 16'hb9c5;
	ans = 16'hb865;
	#20
	A = 16'h2d88;
	B = 16'hb086;
	ans = 16'ha241;
	#20
	A = 16'h359a;
	B = 16'h3695;
	ans = 16'h309c;
	#20
	A = 16'h3758;
	B = 16'h3af1;
	ans = 16'h365f;
	#20
	A = 16'h3780;
	B = 16'h3406;
	ans = 16'h2f8b;
	#20
	A = 16'hb383;
	B = 16'hb857;
	ans = 16'h3013;
	#20
	A = 16'h3b11;
	B = 16'h3287;
	ans = 16'h31c4;
	#20
	A = 16'h2b72;
	B = 16'h3629;
	ans = 16'h25bc;
	#20
	A = 16'hbbd1;
	B = 16'h3640;
	ans = 16'hb61b;
	#20
	A = 16'h3bac;
	B = 16'h3b83;
	ans = 16'h3b34;
	#20
	A = 16'hb95f;
	B = 16'h363a;
	ans = 16'hb42e;
	#20
	A = 16'hba6e;
	B = 16'hbb93;
	ans = 16'h3a16;
	#20
	A = 16'h392d;
	B = 16'h391c;
	ans = 16'h369c;
	#20
	A = 16'hb934;
	B = 16'hb38b;
	ans = 16'h30e8;
	#20
	A = 16'hb71f;
	B = 16'h3a35;
	ans = 16'hb586;
	#20
	A = 16'hb957;
	B = 16'hb4fe;
	ans = 16'h32aa;
	#20
	A = 16'hb53b;
	B = 16'h34a0;
	ans = 16'hae0c;
	#20
	A = 16'ha2f3;
	B = 16'h3ab4;
	ans = 16'ha1d3;
	#20
	A = 16'h2fad;
	B = 16'hb9c9;
	ans = 16'had8d;
	#20
	A = 16'hb814;
	B = 16'h3975;
	ans = 16'hb590;
	#20
	A = 16'hb72d;
	B = 16'hac80;
	ans = 16'h2809;
	#20
	A = 16'hba4f;
	B = 16'ha69f;
	ans = 16'h2539;
	#20
	A = 16'h3b59;
	B = 16'h3ac4;
	ans = 16'h3a37;
	#20
	A = 16'h2d1e;
	B = 16'h3456;
	ans = 16'h258c;
	#20
	A = 16'h312c;
	B = 16'h3bfc;
	ans = 16'h3129;
	#20
	A = 16'hbb37;
	B = 16'h378a;
	ans = 16'hb6cd;
	#20
	A = 16'hbaee;
	B = 16'h3b81;
	ans = 16'hba80;
	#20
	A = 16'hba79;
	B = 16'hbaf1;
	ans = 16'h399e;
	#20
	A = 16'hb812;
	B = 16'h3b24;
	ans = 16'hb744;
	#20
	A = 16'h359e;
	B = 16'haede;
	ans = 16'ha8d2;
	#20
	A = 16'h3b1b;
	B = 16'h34d5;
	ans = 16'h344b;
	#20
	A = 16'h3649;
	B = 16'hb836;
	ans = 16'hb29e;
	#20
	A = 16'hbaf6;
	B = 16'hba63;
	ans = 16'h398f;
	#20
	A = 16'h384f;
	B = 16'hb359;
	ans = 16'hafea;
	#20
	A = 16'h2d02;
	B = 16'hbbe6;
	ans = 16'hacf2;
	#20
	A = 16'hb28f;
	B = 16'hbaea;
	ans = 16'h31ab;
	#20
	A = 16'hb422;
	B = 16'h3ab0;
	ans = 16'hb2e9;
	#20
	A = 16'h336f;
	B = 16'hb66f;
	ans = 16'hadfa;
	#20
	A = 16'h3a6e;
	B = 16'hb882;
	ans = 16'hb73f;
	#20
	A = 16'h2eef;
	B = 16'h3642;
	ans = 16'h296c;
	#20
	A = 16'hba57;
	B = 16'hb3a3;
	ans = 16'h320d;
	#20
	A = 16'hb436;
	B = 16'h3bf9;
	ans = 16'hb432;
	#20
	A = 16'hb361;
	B = 16'h34c9;
	ans = 16'hac6a;
	#20
	A = 16'ha8b9;
	B = 16'hba1a;
	ans = 16'h2734;
	#20
	A = 16'hb84f;
	B = 16'hb664;
	ans = 16'h32e2;
	#20
	A = 16'h37bb;
	B = 16'h3091;
	ans = 16'h2c6a;
	#20
	A = 16'h396f;
	B = 16'h35d7;
	ans = 16'h33ef;
	#20
	A = 16'h2c57;
	B = 16'hb5b5;
	ans = 16'ha631;
	#20
	A = 16'h24ae;
	B = 16'hba17;
	ans = 16'ha320;
	#20
	A = 16'hb028;
	B = 16'h3072;
	ans = 16'ha49e;
	#20
	A = 16'hb398;
	B = 16'hb656;
	ans = 16'h2e04;
	#20
	A = 16'h337b;
	B = 16'hb4df;
	ans = 16'hac8e;
	#20
	A = 16'haf95;
	B = 16'hb59b;
	ans = 16'h2950;
	#20
	A = 16'h39b8;
	B = 16'hb91d;
	ans = 16'hb74f;
	#20
	A = 16'hb775;
	B = 16'h3057;
	ans = 16'hac0c;
	#20
	A = 16'h3b8b;
	B = 16'h3237;
	ans = 16'h31dc;
	#20
	A = 16'h38e1;
	B = 16'h2caa;
	ans = 16'h29b0;
	#20
	A = 16'h3416;
	B = 16'h2c29;
	ans = 16'h2440;
	#20
	A = 16'ha66c;
	B = 16'h399a;
	ans = 16'ha47f;
	#20
	A = 16'h3a5d;
	B = 16'h3844;
	ans = 16'h36c9;
	#20
	A = 16'hbbcc;
	B = 16'h2099;
	ans = 16'ha07b;
	#20
	A = 16'hb873;
	B = 16'h3336;
	ans = 16'hb003;
	#20
	A = 16'hb710;
	B = 16'h34a6;
	ans = 16'hb01b;
	#20
	A = 16'h3980;
	B = 16'hb450;
	ans = 16'hb1ee;
	#20
	A = 16'h368e;
	B = 16'h36d8;
	ans = 16'h319b;
	#20
	A = 16'hbb06;
	B = 16'hb856;
	ans = 16'h379d;
	#20
	A = 16'h2927;
	B = 16'h3ae5;
	ans = 16'h2871;
	#20
	A = 16'hbb7b;
	B = 16'hbb64;
	ans = 16'h3ae9;
	#20
	A = 16'hb1b9;
	B = 16'h3aee;
	ans = 16'hb0f5;
	#20
	A = 16'had6c;
	B = 16'hb5f8;
	ans = 16'h280c;
	#20
	A = 16'hb0b1;
	B = 16'h3033;
	ans = 16'ha4ed;
	#20
	A = 16'h3b75;
	B = 16'h38c5;
	ans = 16'h3872;
	#20
	A = 16'hb5c5;
	B = 16'hbb85;
	ans = 16'h356c;
	#20
	A = 16'had54;
	B = 16'h369c;
	ans = 16'ha867;
	#20
	A = 16'hb559;
	B = 16'h3ad6;
	ans = 16'hb492;
	#20
	A = 16'hbb84;
	B = 16'habce;
	ans = 16'h2b55;
	#20
	A = 16'h3945;
	B = 16'h38b2;
	ans = 16'h362f;
	#20
	A = 16'h2e9f;
	B = 16'h2fa4;
	ans = 16'h2253;
	#20
	A = 16'hbb3d;
	B = 16'hb3b4;
	ans = 16'h32f8;
	#20
	A = 16'h37bc;
	B = 16'hbb78;
	ans = 16'hb739;
	#20
	A = 16'h3476;
	B = 16'hbb65;
	ans = 16'hb420;
	#20
	A = 16'h339a;
	B = 16'hbbf6;
	ans = 16'hb390;
	#20
	A = 16'h3ba5;
	B = 16'h38c7;
	ans = 16'h3891;
	#20
	A = 16'h38de;
	B = 16'h39d5;
	ans = 16'h3719;
	#20
	A = 16'h3736;
	B = 16'h281c;
	ans = 16'h2368;
	#20
	A = 16'hba58;
	B = 16'hb091;
	ans = 16'h2f3e;
	#20
	A = 16'habc6;
	B = 16'hb6fd;
	ans = 16'h26ca;
	#20
	A = 16'h3ad1;
	B = 16'hba49;
	ans = 16'hb95b;
	#20
	A = 16'hb024;
	B = 16'haed3;
	ans = 16'h2310;
	#20
	A = 16'hb9fe;
	B = 16'hac20;
	ans = 16'h2a2e;
	#20
	A = 16'hb9a6;
	B = 16'h3315;
	ans = 16'hb100;
	#20
	A = 16'h3437;
	B = 16'hba59;
	ans = 16'hb2b0;
	#20
	A = 16'hafc1;
	B = 16'hb6c3;
	ans = 16'h2a8e;
	#20
	A = 16'hb91f;
	B = 16'h3894;
	ans = 16'hb5dc;
	#20
	A = 16'h3b7c;
	B = 16'hba7b;
	ans = 16'hba10;
	#20
	A = 16'h3a47;
	B = 16'h2a88;
	ans = 16'h2920;
	#20
	A = 16'h3444;
	B = 16'hb118;
	ans = 16'ha96f;
	#20
	A = 16'h2cfd;
	B = 16'h2f08;
	ans = 16'h2062;
	#20
	A = 16'ha64e;
	B = 16'hb5c1;
	ans = 16'h2089;
	#20
	A = 16'hb12d;
	B = 16'hbaf8;
	ans = 16'h3082;
	#20
	A = 16'h33c1;
	B = 16'h3b5c;
	ans = 16'h3322;
	#20
	A = 16'hb483;
	B = 16'h3b93;
	ans = 16'hb446;
	#20
	A = 16'h2c5f;
	B = 16'hb0ad;
	ans = 16'ha11c;
	#20
	A = 16'hb74a;
	B = 16'h3ad9;
	ans = 16'hb63d;
	#20
	A = 16'h380d;
	B = 16'hae74;
	ans = 16'haa89;
	#20
	A = 16'h383a;
	B = 16'h343f;
	ans = 16'h307d;
	#20
	A = 16'h3bf1;
	B = 16'h326a;
	ans = 16'h325e;
	#20
	A = 16'h31db;
	B = 16'hb49f;
	ans = 16'haac4;
	#20
	A = 16'hb0a1;
	B = 16'h320e;
	ans = 16'ha702;
	#20
	A = 16'hb7d5;
	B = 16'h2537;
	ans = 16'ha11b;
	#20
	A = 16'h9408;
	B = 16'hbb44;
	ans = 16'h1353;
	#20
	A = 16'h38bd;
	B = 16'h32c0;
	ans = 16'h2fff;
	#20
	A = 16'h3732;
	B = 16'hb841;
	ans = 16'hb3a7;
	#20
	A = 16'hb9aa;
	B = 16'hb3df;
	ans = 16'h3193;
	#20
	A = 16'hb84d;
	B = 16'hb77b;
	ans = 16'h3405;
	#20
	A = 16'hb5b7;
	B = 16'hb14d;
	ans = 16'h2b93;
	#20
	A = 16'h3823;
	B = 16'hb85f;
	ans = 16'hb485;
	#20
	A = 16'h3785;
	B = 16'h36ce;
	ans = 16'h3265;
	#20
	A = 16'hb81d;
	B = 16'hba3e;
	ans = 16'h366b;
	#20
	A = 16'hba4d;
	B = 16'hb427;
	ans = 16'h328a;
	#20
	A = 16'hb771;
	B = 16'hb9e5;
	ans = 16'h357c;
	#20
	A = 16'hb908;
	B = 16'h28a6;
	ans = 16'ha5d9;
	#20
	A = 16'hbbed;
	B = 16'hb327;
	ans = 16'h3316;
	#20
	A = 16'hb8e2;
	B = 16'hb96d;
	ans = 16'h36a0;
	#20
	A = 16'hb46a;
	B = 16'h372a;
	ans = 16'hafe8;
	#20
	A = 16'h322b;
	B = 16'hb604;
	ans = 16'haca3;
	#20
	A = 16'hb9f6;
	B = 16'hb5e7;
	ans = 16'h3466;
	#20
	A = 16'h3adc;
	B = 16'hb544;
	ans = 16'hb484;
	#20
	A = 16'h3813;
	B = 16'h3a2e;
	ans = 16'h364b;
	#20
	A = 16'h35f3;
	B = 16'hb8d8;
	ans = 16'hb334;
	#20
	A = 16'hae7b;
	B = 16'haf95;
	ans = 16'h2224;
	#20
	A = 16'hb308;
	B = 16'h39b2;
	ans = 16'hb101;
	#20
	A = 16'h37cf;
	B = 16'h3897;
	ans = 16'h347b;
	#20
	A = 16'h3309;
	B = 16'h3b3a;
	ans = 16'h325b;
	#20
	A = 16'hbbe5;
	B = 16'ha6f5;
	ans = 16'h26de;
	#20
	A = 16'h31ce;
	B = 16'hbbcf;
	ans = 16'hb1aa;
	#20
	A = 16'hb352;
	B = 16'h3bc7;
	ans = 16'hb31e;
	#20
	A = 16'hbb4a;
	B = 16'hb42b;
	ans = 16'h3398;
	#20
	A = 16'hbb72;
	B = 16'hb041;
	ans = 16'h2feb;
	#20
	A = 16'hb9c2;
	B = 16'h3985;
	ans = 16'hb7f2;
	#20
	A = 16'h383c;
	B = 16'hbb6c;
	ans = 16'hb7db;
	#20
	A = 16'haa38;
	B = 16'h399c;
	ans = 16'ha85c;
	#20
	A = 16'h3a4d;
	B = 16'hb9bc;
	ans = 16'hb884;
	#20
	A = 16'h3984;
	B = 16'h35d2;
	ans = 16'h3403;
	#20
	A = 16'hbb3e;
	B = 16'h3193;
	ans = 16'hb10c;
	#20
	A = 16'h368d;
	B = 16'hb830;
	ans = 16'hb2dc;
	#20
	A = 16'hb5dd;
	B = 16'h354c;
	ans = 16'hafc4;
	#20
	A = 16'hb124;
	B = 16'h36ba;
	ans = 16'hac53;
	#20
	A = 16'hab27;
	B = 16'h3bc7;
	ans = 16'haaf4;
	#20
	A = 16'hb704;
	B = 16'h9ddb;
	ans = 16'h1923;
	#20
	A = 16'ha3b6;
	B = 16'hb07b;
	ans = 16'h1852;
	#20
	A = 16'hb73e;
	B = 16'h3b90;
	ans = 16'hb6d9;
	#20
	A = 16'h3a0e;
	B = 16'hb76f;
	ans = 16'hb5a0;
	#20
	A = 16'h385e;
	B = 16'hb86f;
	ans = 16'hb4d7;
	#20
	A = 16'h3bd3;
	B = 16'h3523;
	ans = 16'h3506;
	#20
	A = 16'hb70b;
	B = 16'h3ae2;
	ans = 16'hb60f;
	#20
	A = 16'h350b;
	B = 16'hb324;
	ans = 16'hac80;
	#20
	A = 16'h39b1;
	B = 16'hb220;
	ans = 16'hb05c;
	#20
	A = 16'h27d2;
	B = 16'hb952;
	ans = 16'ha533;
	#20
	A = 16'haf8b;
	B = 16'h33d7;
	ans = 16'ha764;
	#20
	A = 16'hb413;
	B = 16'h3a13;
	ans = 16'hb230;
	#20
	A = 16'hb539;
	B = 16'h3164;
	ans = 16'hab0a;
	#20
	A = 16'h2fb3;
	B = 16'h36eb;
	ans = 16'h2aa8;
	#20
	A = 16'hb724;
	B = 16'h2763;
	ans = 16'ha298;
	#20
	A = 16'hba67;
	B = 16'hbb9c;
	ans = 16'h3a17;
	#20
	A = 16'hb703;
	B = 16'h3a54;
	ans = 16'hb58c;
	#20
	A = 16'h3124;
	B = 16'h3459;
	ans = 16'h2996;
	#20
	A = 16'hb861;
	B = 16'hb1e6;
	ans = 16'h2e75;
	#20
	A = 16'h34c0;
	B = 16'ha52d;
	ans = 16'h9e25;
	#20
	A = 16'h32c4;
	B = 16'h3755;
	ans = 16'h2e33;
	#20
	A = 16'h36e9;
	B = 16'hbb73;
	ans = 16'hb66f;
	#20
	A = 16'hb9dc;
	B = 16'h3431;
	ans = 16'hb224;
	#20
	A = 16'hb417;
	B = 16'hb8a1;
	ans = 16'h30bc;
	#20
	A = 16'h3a07;
	B = 16'ha046;
	ans = 16'h9e70;
	#20
	A = 16'h3b59;
	B = 16'h32d5;
	ans = 16'h3246;
	#20
	A = 16'h3836;
	B = 16'h3bb6;
	ans = 16'h380f;
	#20
	A = 16'h3ba4;
	B = 16'h3671;
	ans = 16'h3627;
	#20
	A = 16'h355e;
	B = 16'h3971;
	ans = 16'h334d;
	#20
	A = 16'ha793;
	B = 16'h340c;
	ans = 16'h9faa;
	#20
	A = 16'hb871;
	B = 16'h35b3;
	ans = 16'hb254;
	#20
	A = 16'hb841;
	B = 16'h386d;
	ans = 16'hb4b5;
	#20
	A = 16'h3436;
	B = 16'h3bf0;
	ans = 16'h342e;
	#20
	A = 16'hb461;
	B = 16'hb8ff;
	ans = 16'h3178;
	#20
	A = 16'h3a63;
	B = 16'h3109;
	ans = 16'h3005;
	#20
	A = 16'hb8ce;
	B = 16'hb370;
	ans = 16'h3078;
	#20
	A = 16'hbb66;
	B = 16'h38b6;
	ans = 16'hb85b;
	#20
	A = 16'hb691;
	B = 16'h3b13;
	ans = 16'hb5ce;
	#20
	A = 16'hb95d;
	B = 16'hb4e6;
	ans = 16'h3291;
	#20
	A = 16'h35af;
	B = 16'hb183;
	ans = 16'habd5;
	#20
	A = 16'h3bee;
	B = 16'hbaad;
	ans = 16'hba9e;
	#20
	A = 16'hb089;
	B = 16'hb9b2;
	ans = 16'h2e75;
	#20
	A = 16'h38dd;
	B = 16'hbabb;
	ans = 16'hb817;
	#20
	A = 16'h35df;
	B = 16'hb92e;
	ans = 16'hb39a;
	#20
	A = 16'h385b;
	B = 16'h144a;
	ans = 16'h10ac;
	#20
	A = 16'hb941;
	B = 16'h3842;
	ans = 16'hb598;
	#20
	A = 16'h38ce;
	B = 16'h38ff;
	ans = 16'h3600;
	#20
	A = 16'hbabc;
	B = 16'h32fc;
	ans = 16'hb1e1;
	#20
	A = 16'hb92d;
	B = 16'h385b;
	ans = 16'hb5a3;
	#20
	A = 16'h32c9;
	B = 16'h2466;
	ans = 16'h1b76;
	#20
	A = 16'h28b2;
	B = 16'h32b9;
	ans = 16'h1fe4;
	#20
	A = 16'hb70d;
	B = 16'hbae9;
	ans = 16'h3617;
	#20
	A = 16'h34f0;
	B = 16'h3baa;
	ans = 16'h34bb;
	#20
	A = 16'hb40f;
	B = 16'hb72c;
	ans = 16'h2f47;
	#20
	A = 16'h34fd;
	B = 16'ha509;
	ans = 16'h9e47;
	#20
	A = 16'h3aed;
	B = 16'hb9f9;
	ans = 16'hb92c;
	#20
	A = 16'h3397;
	B = 16'h3817;
	ans = 16'h2fc3;
	#20
	A = 16'hb197;
	B = 16'h37ae;
	ans = 16'had5e;
	#20
	A = 16'h389a;
	B = 16'ha56a;
	ans = 16'ha23a;
	#20
	A = 16'hbbfa;
	B = 16'hb0f6;
	ans = 16'h30f2;
	#20
	A = 16'h3766;
	B = 16'h3b29;
	ans = 16'h369f;
	#20
	A = 16'hb999;
	B = 16'h3b82;
	ans = 16'hb941;
	#20
	A = 16'h32f4;
	B = 16'hbabe;
	ans = 16'hb1dc;
	#20
	A = 16'h2d7f;
	B = 16'hb90a;
	ans = 16'haaec;
	#20
	A = 16'h3904;
	B = 16'h3b12;
	ans = 16'h386f;
	#20
	A = 16'h3058;
	B = 16'hb147;
	ans = 16'ha5bb;
	#20
	A = 16'h3983;
	B = 16'hbb49;
	ans = 16'hb905;
	#20
	A = 16'h34d7;
	B = 16'h2dad;
	ans = 16'h26de;
	#20
	A = 16'hb924;
	B = 16'h3272;
	ans = 16'hb024;
	#20
	A = 16'h2dea;
	B = 16'hbbd6;
	ans = 16'hadcb;
	#20
	A = 16'hb824;
	B = 16'h3bda;
	ans = 16'hb810;
	#20
	A = 16'h363b;
	B = 16'hbb8e;
	ans = 16'hb5e2;
	#20
	A = 16'hb352;
	B = 16'h3b92;
	ans = 16'hb2ed;
	#20
	A = 16'h3a00;
	B = 16'h37e1;
	ans = 16'h35e9;
	#20
	A = 16'hbaa8;
	B = 16'hbae4;
	ans = 16'h39bc;
	#20
	A = 16'ha4d3;
	B = 16'hb8ac;
	ans = 16'h21a2;
	#20
	A = 16'haf31;
	B = 16'hb1cc;
	ans = 16'h2536;
	#20
	A = 16'hb983;
	B = 16'h3682;
	ans = 16'hb47c;
	#20
	A = 16'hb9e7;
	B = 16'h3a87;
	ans = 16'hb8d1;
	#20
	A = 16'h3a42;
	B = 16'hb528;
	ans = 16'hb409;
	#20
	A = 16'hb842;
	B = 16'hb8b4;
	ans = 16'h3502;
	#20
	A = 16'hb41a;
	B = 16'hba88;
	ans = 16'h32b2;
	#20
	A = 16'h3b67;
	B = 16'hb87a;
	ans = 16'hb824;
	#20
	A = 16'hb2ec;
	B = 16'h3912;
	ans = 16'hb063;
	#20
	A = 16'hb841;
	B = 16'hb700;
	ans = 16'h3372;
	#20
	A = 16'hb601;
	B = 16'h3bdf;
	ans = 16'hb5e8;
	#20
	A = 16'hbaee;
	B = 16'ha9e9;
	ans = 16'h291f;
	#20
	A = 16'h27d5;
	B = 16'h3591;
	ans = 16'h2173;
	#20
	A = 16'h38cc;
	B = 16'hb8eb;
	ans = 16'hb5e6;
	#20
	A = 16'hb277;
	B = 16'h31db;
	ans = 16'ha8bb;
	#20
	A = 16'ha522;
	B = 16'hb6ff;
	ans = 16'h207d;
	#20
	A = 16'hb725;
	B = 16'hb624;
	ans = 16'h317c;
	#20
	A = 16'hb4aa;
	B = 16'h3864;
	ans = 16'hb11f;
	#20
	A = 16'hb286;
	B = 16'hb226;
	ans = 16'h2903;
	#20
	A = 16'hb327;
	B = 16'hac21;
	ans = 16'h2362;
	#20
	A = 16'h1f1d;
	B = 16'hb824;
	ans = 16'h9b5d;
	#20
	A = 16'h3bf1;
	B = 16'hb631;
	ans = 16'hb625;
	#20
	A = 16'h3298;
	B = 16'hb0ec;
	ans = 16'ha80f;
	#20
	A = 16'h3391;
	B = 16'hbacb;
	ans = 16'hb26d;
	#20
	A = 16'h3480;
	B = 16'h3349;
	ans = 16'h2c19;
	#20
	A = 16'h3438;
	B = 16'h3a0b;
	ans = 16'h3260;
	#20
	A = 16'h266b;
	B = 16'hbb4c;
	ans = 16'ha5db;
	#20
	A = 16'hb2e8;
	B = 16'hbab6;
	ans = 16'h31cb;
	#20
	A = 16'hb8f6;
	B = 16'h3ab3;
	ans = 16'hb828;
	#20
	A = 16'hb899;
	B = 16'h32df;
	ans = 16'hafe6;
	#20
	A = 16'hb81d;
	B = 16'hba2e;
	ans = 16'h365b;
	#20
	A = 16'h38c7;
	B = 16'hb9ca;
	ans = 16'hb6ea;
	#20
	A = 16'hbbd2;
	B = 16'h39ad;
	ans = 16'hb98c;
	#20
	A = 16'haa77;
	B = 16'hb0da;
	ans = 16'h1fd7;
	#20
	A = 16'hbab4;
	B = 16'hb786;
	ans = 16'h364e;
	#20
	A = 16'h1c86;
	B = 16'hb365;
	ans = 16'h942e;
	#20
	A = 16'h385a;
	B = 16'h3729;
	ans = 16'h33ca;
	#20
	A = 16'h39dd;
	B = 16'h340b;
	ans = 16'h31ed;
	#20
	A = 16'h3b59;
	B = 16'hbb55;
	ans = 16'hbabc;
	#20
	A = 16'hb6c8;
	B = 16'h3180;
	ans = 16'hacaa;
	#20
	A = 16'hba68;
	B = 16'h26d4;
	ans = 16'ha578;
	#20
	A = 16'hb8bc;
	B = 16'hb852;
	ans = 16'h351d;
	#20
	A = 16'h3499;
	B = 16'hb477;
	ans = 16'had22;
	#20
	A = 16'h3474;
	B = 16'h35e9;
	ans = 16'h2e94;
	#20
	A = 16'hb815;
	B = 16'h390d;
	ans = 16'hb528;
	#20
	A = 16'h3a93;
	B = 16'hb981;
	ans = 16'hb886;
	#20
	A = 16'haa3d;
	B = 16'hbaae;
	ans = 16'h2935;
	#20
	A = 16'hba7a;
	B = 16'h3388;
	ans = 16'hb219;
	#20
	A = 16'hb2b7;
	B = 16'hbbb9;
	ans = 16'h327b;
	#20
	A = 16'hb89c;
	B = 16'h3693;
	ans = 16'hb393;
	#20
	A = 16'hb28a;
	B = 16'hb954;
	ans = 16'h305b;
	#20
	A = 16'h30fa;
	B = 16'h37cd;
	ans = 16'h2cda;
	#20
	A = 16'hab0c;
	B = 16'hb436;
	ans = 16'h236b;
	#20
	A = 16'hb52c;
	B = 16'h3035;
	ans = 16'ha971;
	#20
	A = 16'h9bcf;
	B = 16'hb9f3;
	ans = 16'h19cf;
	#20
	A = 16'h39e2;
	B = 16'hb9ca;
	ans = 16'hb842;
	#20
	A = 16'hadae;
	B = 16'hb39e;
	ans = 16'h2568;
	#20
	A = 16'h3acc;
	B = 16'h3ba7;
	ans = 16'h3a80;
	#20
	A = 16'hb14b;
	B = 16'h298b;
	ans = 16'h9f56;
	#20
	A = 16'ha867;
	B = 16'h371b;
	ans = 16'ha3d2;
	#20
	A = 16'h3823;
	B = 16'hb6b0;
	ans = 16'hb2eb;
	#20
	A = 16'hba46;
	B = 16'hb28b;
	ans = 16'h3122;
	#20
	A = 16'h3b2b;
	B = 16'hb5ed;
	ans = 16'hb54f;
	#20
	A = 16'hb5f4;
	B = 16'hb0dc;
	ans = 16'h2b3b;
	#20
	A = 16'hbbc0;
	B = 16'h38ac;
	ans = 16'hb887;
	#20
	A = 16'h3a19;
	B = 16'hb6a9;
	ans = 16'hb514;
	#20
	A = 16'hb8fc;
	B = 16'h3aef;
	ans = 16'hb852;
	#20
	A = 16'h3917;
	B = 16'h3312;
	ans = 16'h3080;
	#20
	A = 16'h3ae9;
	B = 16'h3b92;
	ans = 16'h3a8a;
	#20
	A = 16'hb872;
	B = 16'h3441;
	ans = 16'hb0ba;
	#20
	A = 16'h3a30;
	B = 16'h20e7;
	ans = 16'h1f95;
	#20
	A = 16'h3a49;
	B = 16'h34ce;
	ans = 16'h338d;
	#20
	A = 16'hba9c;
	B = 16'h3766;
	ans = 16'hb61d;
	#20
	A = 16'hba32;
	B = 16'hb87c;
	ans = 16'h36f2;
	#20
	A = 16'hb726;
	B = 16'h32a4;
	ans = 16'hadef;
	#20
	A = 16'h3298;
	B = 16'hb98d;
	ans = 16'hb093;
	#20
	A = 16'hb5cc;
	B = 16'h3958;
	ans = 16'hb3bf;
	#20
	A = 16'h38c9;
	B = 16'hb8c0;
	ans = 16'hb5af;
	#20
	A = 16'h3b39;
	B = 16'h3775;
	ans = 16'h36bc;
	#20
	A = 16'hb883;
	B = 16'hb925;
	ans = 16'h35cd;
	#20
	A = 16'hb829;
	B = 16'h3b78;
	ans = 16'hb7c5;
	#20
	A = 16'hbb15;
	B = 16'hafbc;
	ans = 16'h2ed9;
	#20
	A = 16'had8b;
	B = 16'h3bc1;
	ans = 16'had5f;
	#20
	A = 16'h393a;
	B = 16'hb3c7;
	ans = 16'hb115;
	#20
	A = 16'hb900;
	B = 16'h37b3;
	ans = 16'hb4d0;
	#20
	A = 16'h29c9;
	B = 16'h34a3;
	ans = 16'h22b5;
	#20
	A = 16'h392a;
	B = 16'hbafc;
	ans = 16'hb882;
	#20
	A = 16'h374a;
	B = 16'h3a75;
	ans = 16'h35e2;
	#20
	A = 16'h34ad;
	B = 16'ha919;
	ans = 16'ha1f5;
	#20
	A = 16'hb1bb;
	B = 16'hb5ae;
	ans = 16'h2c12;
	#20
	A = 16'hb901;
	B = 16'hb321;
	ans = 16'h3076;
	#20
	A = 16'hb1de;
	B = 16'hbbbd;
	ans = 16'h31ad;
	#20
	A = 16'hb7dc;
	B = 16'h3014;
	ans = 16'hac02;
	#20
	A = 16'hba0d;
	B = 16'h34b2;
	ans = 16'hb31a;
	#20
	A = 16'h3656;
	B = 16'h390b;
	ans = 16'h33fd;
	#20
	A = 16'h3b76;
	B = 16'hbba6;
	ans = 16'hbb22;
	#20
	A = 16'h379b;
	B = 16'h35fd;
	ans = 16'h31b1;
	#20
	A = 16'h39ba;
	B = 16'hb4f0;
	ans = 16'hb312;
	#20
	A = 16'hb62e;
	B = 16'hb888;
	ans = 16'h3300;
	#20
	A = 16'h3ace;
	B = 16'h3831;
	ans = 16'h3721;
	#20
	A = 16'h3afa;
	B = 16'h3a6f;
	ans = 16'h399c;
	#20
	A = 16'h3b90;
	B = 16'hbb3f;
	ans = 16'hbada;
	#20
	A = 16'hb930;
	B = 16'h3666;
	ans = 16'hb426;
	#20
	A = 16'hbb62;
	B = 16'h303d;
	ans = 16'hafd3;
	#20
	A = 16'h38f2;
	B = 16'h3969;
	ans = 16'h36b0;
	#20
	A = 16'h370a;
	B = 16'hb759;
	ans = 16'hb277;
	#20
	A = 16'hbbcf;
	B = 16'hbb17;
	ans = 16'h3aec;
	#20
	A = 16'h37d6;
	B = 16'hb6c9;
	ans = 16'hb2a5;
	#20
	A = 16'h39eb;
	B = 16'hba5a;
	ans = 16'hb8b3;
	#20
	A = 16'h3ab8;
	B = 16'h377e;
	ans = 16'h364b;
	#20
	A = 16'hb313;
	B = 16'h2ea5;
	ans = 16'ha5e0;
	#20
	A = 16'hb1b2;
	B = 16'h3800;
	ans = 16'hadb2;
	#20
	A = 16'h3876;
	B = 16'h3524;
	ans = 16'h31bc;
	#20
	A = 16'hb673;
	B = 16'hb4c1;
	ans = 16'h2faa;
	#20
	A = 16'hadcc;
	B = 16'hb6af;
	ans = 16'h28d8;
	#20
	A = 16'h3569;
	B = 16'h38d2;
	ans = 16'h3285;
	#20
	A = 16'h338f;
	B = 16'h368e;
	ans = 16'h2e31;
	#20
	A = 16'hb643;
	B = 16'h33ee;
	ans = 16'hae35;
	#20
	A = 16'h3b15;
	B = 16'h3bab;
	ans = 16'h3aca;
	#20
	A = 16'hb9f2;
	B = 16'hbbf8;
	ans = 16'h39ec;
	#20
	A = 16'h32a0;
	B = 16'h3a85;
	ans = 16'h3166;
	#20
	A = 16'h35b0;
	B = 16'hb067;
	ans = 16'haa42;
	#20
	A = 16'h3802;
	B = 16'h39a9;
	ans = 16'h35ac;
	#20
	A = 16'h38da;
	B = 16'h35fa;
	ans = 16'h3340;
	#20
	A = 16'h381d;
	B = 16'habd9;
	ans = 16'ha809;
	#20
	A = 16'hbb69;
	B = 16'h3839;
	ans = 16'hb7d3;
	#20
	A = 16'hb938;
	B = 16'h3439;
	ans = 16'hb182;
	#20
	A = 16'hb97f;
	B = 16'hb793;
	ans = 16'h3534;
	#20
	A = 16'hb8e0;
	B = 16'h3ae2;
	ans = 16'hb832;
	#20
	A = 16'hbb10;
	B = 16'h3af8;
	ans = 16'hba27;
	#20
	A = 16'h3a69;
	B = 16'h39e0;
	ans = 16'h38b5;
	#20
	A = 16'h2f18;
	B = 16'h3a3a;
	ans = 16'h2d85;
	#20
	A = 16'hb62d;
	B = 16'h378d;
	ans = 16'hb1d4;
	#20
	A = 16'h39e4;
	B = 16'hbbda;
	ans = 16'hb9c8;
	#20
	A = 16'hb85b;
	B = 16'hb40d;
	ans = 16'h3069;
	#20
	A = 16'h37c0;
	B = 16'hb659;
	ans = 16'hb226;
	#20
	A = 16'h323f;
	B = 16'hae9e;
	ans = 16'ha52b;
	#20
	A = 16'ha56c;
	B = 16'h39b7;
	ans = 16'ha3bf;
	#20
	A = 16'hba7d;
	B = 16'h38a8;
	ans = 16'hb78e;
	#20
	A = 16'h392a;
	B = 16'hb533;
	ans = 16'hb2b6;
	#20
	A = 16'hb9ae;
	B = 16'h38c8;
	ans = 16'hb6ca;
	#20
	A = 16'hb623;
	B = 16'hb777;
	ans = 16'h31ba;
	#20
	A = 16'h35cf;
	B = 16'hb9e3;
	ans = 16'hb446;
	#20
	A = 16'hb753;
	B = 16'hb71e;
	ans = 16'h3284;
	#20
	A = 16'h3b49;
	B = 16'hb888;
	ans = 16'hb820;
	#20
	A = 16'hb4ad;
	B = 16'hb932;
	ans = 16'h3213;
	#20
	A = 16'hba38;
	B = 16'hb506;
	ans = 16'h33cf;
	#20
	A = 16'h3b31;
	B = 16'hb81b;
	ans = 16'hb762;
	#20
	A = 16'h3437;
	B = 16'hb87b;
	ans = 16'hb0b9;
	#20
	A = 16'hb4ae;
	B = 16'h3bfb;
	ans = 16'hb4ab;
	#20
	A = 16'hb7fb;
	B = 16'h3b9e;
	ans = 16'hb799;
	#20
	A = 16'hba04;
	B = 16'hacfd;
	ans = 16'h2b80;
	#20
	A = 16'hb88d;
	B = 16'hb832;
	ans = 16'h34c6;
	#20
	A = 16'hbb4c;
	B = 16'h31e3;
	ans = 16'hb15f;
	#20
	A = 16'h30fd;
	B = 16'hb787;
	ans = 16'hacb2;
	#20
	A = 16'h3abf;
	B = 16'hbba6;
	ans = 16'hba73;
	#20
	A = 16'hbbd2;
	B = 16'h3959;
	ans = 16'hb93a;
	#20
	A = 16'h34f3;
	B = 16'h3b56;
	ans = 16'h348a;
	#20
	A = 16'hb7a9;
	B = 16'h3629;
	ans = 16'hb1e6;
	#20
	A = 16'hb691;
	B = 16'hb5d6;
	ans = 16'h30ca;
	#20
	A = 16'h3b78;
	B = 16'h3bd9;
	ans = 16'h3b54;
	#20
	A = 16'h31c4;
	B = 16'hbb0b;
	ans = 16'hb113;
	#20
	A = 16'hbb92;
	B = 16'h3a1a;
	ans = 16'hb9c6;
	#20
	A = 16'hbb1c;
	B = 16'hb80c;
	ans = 16'h3731;
	#20
	A = 16'h3312;
	B = 16'hb8af;
	ans = 16'hb024;
	#20
	A = 16'hbb56;
	B = 16'h3277;
	ans = 16'hb1ee;
	#20
	A = 16'h3883;
	B = 16'hb9b8;
	ans = 16'hb673;
	#20
	A = 16'haf33;
	B = 16'h30a1;
	ans = 16'ha42a;
	#20
	A = 16'hbaf8;
	B = 16'h39a8;
	ans = 16'hb8ed;
	#20
	A = 16'h3a02;
	B = 16'hb438;
	ans = 16'hb256;
	#20
	A = 16'hb2d6;
	B = 16'h3445;
	ans = 16'hab4c;
	#20
	A = 16'h3582;
	B = 16'h2d87;
	ans = 16'h279c;
	#20
	A = 16'hb245;
	B = 16'hbb35;
	ans = 16'h31a6;
	#20
	A = 16'h3adc;
	B = 16'h391a;
	ans = 16'h3860;
	#20
	A = 16'hb832;
	B = 16'h2447;
	ans = 16'ha07c;
	#20
	A = 16'h3561;
	B = 16'h385e;
	ans = 16'h31df;
	#20
	A = 16'hbb43;
	B = 16'h3395;
	ans = 16'hb2e2;
	#20
	A = 16'h2ce8;
	B = 16'hb5d0;
	ans = 16'ha721;
	#20
	A = 16'h3a35;
	B = 16'hb3d4;
	ans = 16'hb213;
	#20
	A = 16'hba92;
	B = 16'h3977;
	ans = 16'hb87d;
	#20
	A = 16'h381e;
	B = 16'hb1b9;
	ans = 16'hade4;
	#20
	A = 16'h32e2;
	B = 16'hb0be;
	ans = 16'ha814;
	#20
	A = 16'haf1b;
	B = 16'h387c;
	ans = 16'habf7;
	#20
	A = 16'h3ab6;
	B = 16'hb550;
	ans = 16'hb475;
	#20
	A = 16'hb435;
	B = 16'h3964;
	ans = 16'hb1ab;
	#20
	A = 16'h37fa;
	B = 16'hba41;
	ans = 16'hb63c;
	#20
	A = 16'hb962;
	B = 16'ha67f;
	ans = 16'h245f;
	#20
	A = 16'h393d;
	B = 16'h372c;
	ans = 16'h34b2;
	#20
	A = 16'hb9d1;
	B = 16'h2882;
	ans = 16'ha68e;
	#20
	A = 16'h370b;
	B = 16'h374f;
	ans = 16'h326f;
	#20
	A = 16'hb500;
	B = 16'h3ba3;
	ans = 16'hb4c6;
	#20
	A = 16'hbbda;
	B = 16'h24be;
	ans = 16'ha4a7;
	#20
	A = 16'h392f;
	B = 16'h3a63;
	ans = 16'h3823;
	#20
	A = 16'h3a64;
	B = 16'hb173;
	ans = 16'hb05a;
	#20
	A = 16'h37a6;
	B = 16'hb85a;
	ans = 16'hb429;
	#20
	A = 16'hbaad;
	B = 16'h3b77;
	ans = 16'hba3b;
	#20
	A = 16'h3114;
	B = 16'hba0b;
	ans = 16'hafac;
	#20
	A = 16'h3b69;
	B = 16'h388d;
	ans = 16'h3837;
	#20
	A = 16'hb51a;
	B = 16'hb71a;
	ans = 16'h3087;
	#20
	A = 16'h3abc;
	B = 16'h3998;
	ans = 16'h38b5;
	#20
	A = 16'h1ccb;
	B = 16'hb3e0;
	ans = 16'h94b8;
	#20
	A = 16'h3940;
	B = 16'hb902;
	ans = 16'hb693;
	#20
	A = 16'hb81a;
	B = 16'h3486;
	ans = 16'hb0a3;
	#20
	A = 16'hbae7;
	B = 16'hb96d;
	ans = 16'h38ae;
	#20
	A = 16'h3a07;
	B = 16'h3210;
	ans = 16'h3091;
	#20
	A = 16'hb878;
	B = 16'hba43;
	ans = 16'h36ff;
	#20
	A = 16'ha5fe;
	B = 16'h36e7;
	ans = 16'ha12c;
	#20
	A = 16'h39e6;
	B = 16'hb8b3;
	ans = 16'hb6ee;
	#20
	A = 16'hb1bf;
	B = 16'h3a3f;
	ans = 16'hb07d;
	#20
	A = 16'h31ee;
	B = 16'h32cd;
	ans = 16'h290a;
	#20
	A = 16'h383c;
	B = 16'h355a;
	ans = 16'h31aa;
	#20
	A = 16'hbb4b;
	B = 16'h3278;
	ans = 16'hb1e6;
	#20
	A = 16'h3a93;
	B = 16'h3b2b;
	ans = 16'h39e4;
	#20
	A = 16'h3437;
	B = 16'h399b;
	ans = 16'h31e8;
	#20
	A = 16'hbb65;
	B = 16'hba7a;
	ans = 16'h39fd;
	#20
	A = 16'h379b;
	B = 16'habd3;
	ans = 16'ha770;
	#20
	A = 16'h3240;
	B = 16'hb512;
	ans = 16'habec;
	#20
	A = 16'h3af5;
	B = 16'h3aa2;
	ans = 16'h39c5;
	#20
	A = 16'hb580;
	B = 16'h27f6;
	ans = 16'ha179;
	#20
	A = 16'hb755;
	B = 16'h3904;
	ans = 16'hb499;
	#20
	A = 16'h3978;
	B = 16'h36fb;
	ans = 16'h34c6;
	#20
	A = 16'hbbb4;
	B = 16'hbb84;
	ans = 16'h3b3d;
	#20
	A = 16'hb481;
	B = 16'hb608;
	ans = 16'h2ecb;
	#20
	A = 16'h3951;
	B = 16'hbb04;
	ans = 16'hb8aa;
	#20
	A = 16'h355c;
	B = 16'h37cb;
	ans = 16'h3138;
	#20
	A = 16'h3a7e;
	B = 16'h2f58;
	ans = 16'h2df6;
	#20
	A = 16'h15e6;
	B = 16'hb83f;
	ans = 16'h9243;
	#20
	A = 16'h383f;
	B = 16'hb824;
	ans = 16'hb465;
	#20
	A = 16'h3901;
	B = 16'h34e1;
	ans = 16'h321a;
	#20
	A = 16'hbad7;
	B = 16'haf67;
	ans = 16'h2e54;
	#20
	A = 16'hb739;
	B = 16'hba32;
	ans = 16'h3598;
	#20
	A = 16'hb94c;
	B = 16'hb840;
	ans = 16'h35a1;
	#20
	A = 16'hb5d4;
	B = 16'hbb30;
	ans = 16'h353c;
	#20
	A = 16'hb7ec;
	B = 16'hb8fc;
	ans = 16'h34f0;
	#20
	A = 16'h3830;
	B = 16'hbab5;
	ans = 16'hb705;
	#20
	A = 16'h39c5;
	B = 16'hb03b;
	ans = 16'hae1a;
	#20
	A = 16'h382d;
	B = 16'h357a;
	ans = 16'h31b8;
	#20
	A = 16'hb857;
	B = 16'h37a6;
	ans = 16'hb426;
	#20
	A = 16'h356c;
	B = 16'hb828;
	ans = 16'hb1a2;
	#20
	A = 16'h3bbc;
	B = 16'h3034;
	ans = 16'h3010;
	#20
	A = 16'h3945;
	B = 16'h391e;
	ans = 16'h36be;
	#20
	A = 16'h33e1;
	B = 16'h35e4;
	ans = 16'h2dcd;
	#20
	A = 16'h2f6d;
	B = 16'hba00;
	ans = 16'had92;
	#20
	A = 16'ha3e2;
	B = 16'hb34d;
	ans = 16'h1b32;
	#20
	A = 16'h3a2c;
	B = 16'hbb3d;
	ans = 16'hb996;
	#20
	A = 16'h3605;
	B = 16'h3b68;
	ans = 16'h3593;
	#20
	A = 16'hac2d;
	B = 16'h3a77;
	ans = 16'haac0;
	#20
	A = 16'h3952;
	B = 16'hb52a;
	ans = 16'hb2de;
	#20
	A = 16'h2d30;
	B = 16'h354e;
	ans = 16'h26e1;
	#20
	A = 16'hb95c;
	B = 16'hab6c;
	ans = 16'h28f9;
	#20
	A = 16'h38d7;
	B = 16'haec4;
	ans = 16'hac18;
	#20
	A = 16'h304a;
	B = 16'hb5a6;
	ans = 16'haa0e;
	#20
	A = 16'hb2a7;
	B = 16'h39ae;
	ans = 16'hb0b9;
	#20
	A = 16'h37ce;
	B = 16'hbad7;
	ans = 16'hb6ac;
	#20
	A = 16'h3bff;
	B = 16'hb7c3;
	ans = 16'hb7c2;
	#20
	A = 16'h3428;
	B = 16'hb8a4;
	ans = 16'hb0d2;
	#20
	A = 16'h33bb;
	B = 16'h3375;
	ans = 16'h2b35;
	#20
	A = 16'h2c0a;
	B = 16'h391b;
	ans = 16'h2928;
	#20
	A = 16'hbbb1;
	B = 16'hba28;
	ans = 16'h39eb;
	#20
	A = 16'hbab3;
	B = 16'hb5ce;
	ans = 16'h34dc;
	#20
	A = 16'hb373;
	B = 16'h313e;
	ans = 16'ha8e2;
	#20
	A = 16'hb208;
	B = 16'hb8ae;
	ans = 16'h2f0e;
	#20
	A = 16'hb93f;
	B = 16'h396f;
	ans = 16'hb720;
	#20
	A = 16'hb166;
	B = 16'h3b31;
	ans = 16'hb0da;
	#20
	A = 16'h3704;
	B = 16'h3af5;
	ans = 16'h361a;
	#20
	A = 16'h2703;
	B = 16'h3b19;
	ans = 16'h2639;
	#20
	A = 16'h30ba;
	B = 16'ha4f0;
	ans = 16'h99d6;
	#20
	A = 16'h3379;
	B = 16'hbac9;
	ans = 16'hb257;
	#20
	A = 16'h2cd9;
	B = 16'hb222;
	ans = 16'ha36f;
	#20
	A = 16'hb0a8;
	B = 16'h24d3;
	ans = 16'h999e;
	#20
	A = 16'hb6f8;
	B = 16'h3928;
	ans = 16'hb47e;
	#20
	A = 16'hb560;
	B = 16'h385e;
	ans = 16'hb1de;
	#20
	A = 16'h3983;
	B = 16'h3a33;
	ans = 16'h3845;
	#20
	A = 16'hb3da;
	B = 16'hb84f;
	ans = 16'h303b;
	#20
	A = 16'h3679;
	B = 16'h3bdc;
	ans = 16'h365c;
	#20
	A = 16'hb9df;
	B = 16'h3a26;
	ans = 16'hb883;
	#20
	A = 16'h3a59;
	B = 16'h3928;
	ans = 16'h3817;
	#20
	A = 16'hb116;
	B = 16'h32f5;
	ans = 16'ha86c;
	#20
	A = 16'h38c1;
	B = 16'h385b;
	ans = 16'h352d;
	#20
	A = 16'h3b99;
	B = 16'hbafd;
	ans = 16'hbaa3;
	#20
	A = 16'hb74a;
	B = 16'h2e01;
	ans = 16'ha978;
	#20
	A = 16'hba70;
	B = 16'hbb5a;
	ans = 16'h39ea;
	#20
	A = 16'hba90;
	B = 16'hba8c;
	ans = 16'h395f;
	#20
	A = 16'h3afc;
	B = 16'hb563;
	ans = 16'hb4b4;
	#20
	A = 16'h38ea;
	B = 16'h2aaf;
	ans = 16'h281b;
	#20
	A = 16'h36e3;
	B = 16'h3734;
	ans = 16'h3233;
	#20
	A = 16'h31d1;
	B = 16'h3531;
	ans = 16'h2b8d;
	#20
	A = 16'hbb50;
	B = 16'hb42a;
	ans = 16'h339d;
	#20
	A = 16'h3b31;
	B = 16'hb9f4;
	ans = 16'hb95a;
	#20
	A = 16'h310d;
	B = 16'hbac2;
	ans = 16'hb044;
	#20
	A = 16'h3af7;
	B = 16'h383d;
	ans = 16'h3761;
	#20
	A = 16'hb6a7;
	B = 16'hb913;
	ans = 16'h3438;
	#20
	A = 16'h2d4a;
	B = 16'hb77b;
	ans = 16'ha8f2;
	#20
	A = 16'hbabf;
	B = 16'hb8d7;
	ans = 16'h3815;
	#20
	A = 16'h3a75;
	B = 16'hb41f;
	ans = 16'hb2a7;
	#20
	A = 16'hba76;
	B = 16'hb92f;
	ans = 16'h3830;
	#20
	A = 16'hb523;
	B = 16'h395e;
	ans = 16'hb2e4;
	#20
	A = 16'ha87d;
	B = 16'h2d97;
	ans = 16'h9a46;
	#20
	A = 16'h3bb4;
	B = 16'hb4be;
	ans = 16'hb491;
	#20
	A = 16'hac4d;
	B = 16'h393e;
	ans = 16'ha9a3;
	#20
	A = 16'h2ceb;
	B = 16'hb88f;
	ans = 16'ha99b;
	#20
	A = 16'h3979;
	B = 16'hb422;
	ans = 16'hb1a8;
	#20
	A = 16'h2dc7;
	B = 16'h3bc3;
	ans = 16'h2d9b;
	#20
	A = 16'h2b87;
	B = 16'hb7b4;
	ans = 16'ha73f;
	#20
	A = 16'hb1d5;
	B = 16'h3988;
	ans = 16'hb008;
	#20
	A = 16'hba50;
	B = 16'hb763;
	ans = 16'h35d4;
	#20
	A = 16'h2848;
	B = 16'h3ab7;
	ans = 16'h2730;
	#20
	A = 16'hb19e;
	B = 16'hb62d;
	ans = 16'h2c56;
	#20
	A = 16'h3900;
	B = 16'hae31;
	ans = 16'habbd;
	#20
	A = 16'h379b;
	B = 16'h38a7;
	ans = 16'h346c;
	#20
	A = 16'h2fd5;
	B = 16'h2f5e;
	ans = 16'h2336;
	#20
	A = 16'h3b94;
	B = 16'hb829;
	ans = 16'hb7e2;
	#20
	A = 16'hb980;
	B = 16'h2f0b;
	ans = 16'hacd8;
	#20
	A = 16'h3873;
	B = 16'h3a28;
	ans = 16'h36d9;
	#20
	A = 16'h2166;
	B = 16'hb5df;
	ans = 16'h9bec;
	#20
	A = 16'h30b3;
	B = 16'h38ed;
	ans = 16'h2dc9;
	#20
	A = 16'hb818;
	B = 16'hb929;
	ans = 16'h3548;
	#20
	A = 16'hbaba;
	B = 16'h36e5;
	ans = 16'hb5cc;
	#20
	A = 16'hb764;
	B = 16'hb366;
	ans = 16'h2ed6;
	#20
	A = 16'h3578;
	B = 16'hbb4b;
	ans = 16'hb4fc;
	#20
	A = 16'h2ce3;
	B = 16'h28dc;
	ans = 16'h19f0;
	#20
	A = 16'h3944;
	B = 16'h318d;
	ans = 16'h2f4f;
	#20
	A = 16'h3672;
	B = 16'h2f64;
	ans = 16'h29f4;
	#20
	A = 16'h36c6;
	B = 16'h3aba;
	ans = 16'h35b2;
	#20
	A = 16'h1f52;
	B = 16'hbbc6;
	ans = 16'h9f1d;
	#20
	A = 16'h3951;
	B = 16'hbbfd;
	ans = 16'hb94f;
	#20
	A = 16'h3857;
	B = 16'h3987;
	ans = 16'h35ff;
	#20
	A = 16'h3aae;
	B = 16'hb99e;
	ans = 16'hb8b1;
	#20
	A = 16'hb57d;
	B = 16'h3829;
	ans = 16'hb1b5;
	#20
	A = 16'hb4c3;
	B = 16'h38c3;
	ans = 16'hb1ab;
	#20
	A = 16'h3bd1;
	B = 16'hb603;
	ans = 16'hb5e0;
	#20
	A = 16'hb4b8;
	B = 16'h3665;
	ans = 16'haf8b;
	#20
	A = 16'h3689;
	B = 16'h39a4;
	ans = 16'h349c;
	#20
	A = 16'h36e4;
	B = 16'hb2eb;
	ans = 16'hadf5;
	#20
	A = 16'hb1d9;
	B = 16'h3923;
	ans = 16'haf82;
	#20
	A = 16'h371c;
	B = 16'h2db1;
	ans = 16'h290f;
	#20
	A = 16'h3985;
	B = 16'hb975;
	ans = 16'hb788;
	#20
	A = 16'hb9c8;
	B = 16'hb97d;
	ans = 16'h37ef;
	#20
	A = 16'h3b71;
	B = 16'hb31a;
	ans = 16'hb29b;
	#20
	A = 16'h3bca;
	B = 16'hbad1;
	ans = 16'hbaa3;
	#20
	A = 16'h3893;
	B = 16'hb81d;
	ans = 16'hb4b4;
	#20
	A = 16'hb528;
	B = 16'h375c;
	ans = 16'hb0be;
	#20
	A = 16'hb777;
	B = 16'ha937;
	ans = 16'h24de;
	#20
	A = 16'hb650;
	B = 16'h38a4;
	ans = 16'hb353;
	#20
	A = 16'h348f;
	B = 16'hb001;
	ans = 16'ha890;
	#20
	A = 16'hb6e5;
	B = 16'h341e;
	ans = 16'haf19;
	#20
	A = 16'h3448;
	B = 16'hb903;
	ans = 16'hb15d;
	#20
	A = 16'h396b;
	B = 16'hb5aa;
	ans = 16'hb3ac;
	#20
	A = 16'ha827;
	B = 16'hb8e3;
	ans = 16'h2513;
	#20
	A = 16'hb7ed;
	B = 16'hbad3;
	ans = 16'h36c3;
	#20
	A = 16'hb99b;
	B = 16'h3bbd;
	ans = 16'hb96c;
	#20
	A = 16'hb7a4;
	B = 16'h3990;
	ans = 16'hb550;
	#20
	A = 16'h3a30;
	B = 16'hb371;
	ans = 16'hb1c1;
	#20
	A = 16'hb216;
	B = 16'h3b51;
	ans = 16'hb191;
	#20
	A = 16'h3b79;
	B = 16'hb724;
	ans = 16'hb6ac;
	#20
	A = 16'hbb0d;
	B = 16'h3a3a;
	ans = 16'hb97d;
	#20
	A = 16'h3a19;
	B = 16'hb67e;
	ans = 16'hb4f3;
	#20
	A = 16'hb576;
	B = 16'h3480;
	ans = 16'hae25;
	#20
	A = 16'h2cbf;
	B = 16'hb796;
	ans = 16'ha880;
	#20
	A = 16'hb425;
	B = 16'hb1bd;
	ans = 16'h29f2;
	#20
	A = 16'h3a5f;
	B = 16'h3b58;
	ans = 16'h39d9;
	#20
	A = 16'h29fb;
	B = 16'h3960;
	ans = 16'h2805;
	#20
	A = 16'hb3ba;
	B = 16'haccb;
	ans = 16'h24a1;
	#20
	A = 16'had93;
	B = 16'hb6e5;
	ans = 16'h28ce;
	#20
	A = 16'hb9e4;
	B = 16'hafbe;
	ans = 16'h2db3;
	#20
	A = 16'hb84d;
	B = 16'hba42;
	ans = 16'h36ba;
	#20
	A = 16'hbb9a;
	B = 16'hb91b;
	ans = 16'h38da;
	#20
	A = 16'h32a2;
	B = 16'h398c;
	ans = 16'h3099;
	#20
	A = 16'hbba3;
	B = 16'h2f9e;
	ans = 16'haf45;
	#20
	A = 16'h39de;
	B = 16'hb3c6;
	ans = 16'hb1b3;
	#20
	A = 16'hb40a;
	B = 16'hb95e;
	ans = 16'h316b;
	#20
	A = 16'hb473;
	B = 16'h33e1;
	ans = 16'hac62;
	#20
	A = 16'h3809;
	B = 16'h30a2;
	ans = 16'h2cac;
	#20
	A = 16'hb41c;
	B = 16'hb967;
	ans = 16'h318d;
	#20
	A = 16'hba3a;
	B = 16'h3974;
	ans = 16'hb83f;
	#20
	A = 16'h3b66;
	B = 16'hb072;
	ans = 16'hb01c;
	#20
	A = 16'h388b;
	B = 16'hb5b0;
	ans = 16'hb276;
	#20
	A = 16'haa79;
	B = 16'h304f;
	ans = 16'h9ef9;
	#20
	A = 16'hb98d;
	B = 16'h2c6e;
	ans = 16'haa26;
	#20
	A = 16'hb6bc;
	B = 16'h3613;
	ans = 16'hb11d;
	#20
	A = 16'h321e;
	B = 16'hb8d6;
	ans = 16'haf65;
	#20
	A = 16'h386c;
	B = 16'h392b;
	ans = 16'h35b7;
	#20
	A = 16'hb1a7;
	B = 16'h3bbd;
	ans = 16'hb178;
	#20
	A = 16'hb4db;
	B = 16'h32d9;
	ans = 16'hac28;
	#20
	A = 16'h3bd1;
	B = 16'hb527;
	ans = 16'hb509;
	#20
	A = 16'h2c15;
	B = 16'h3a79;
	ans = 16'h2a9b;
	#20
	A = 16'h3562;
	B = 16'hbb4b;
	ans = 16'hb4e8;
	#20
	A = 16'hb7aa;
	B = 16'hb5ae;
	ans = 16'h3171;
	#20
	A = 16'h32df;
	B = 16'h3b07;
	ans = 16'h3209;
	#20
	A = 16'h363b;
	B = 16'h39ad;
	ans = 16'h346c;
	#20
	A = 16'hb5e7;
	B = 16'hb8af;
	ans = 16'h32e9;
	#20
	A = 16'h361b;
	B = 16'hb8e7;
	ans = 16'hb37c;
	#20
	A = 16'hb5ef;
	B = 16'hb1f9;
	ans = 16'h2c6e;
	#20
	A = 16'hb169;
	B = 16'hb5f7;
	ans = 16'h2c09;
	#20
	A = 16'h3432;
	B = 16'h3411;
	ans = 16'h2c44;
	#20
	A = 16'h39e7;
	B = 16'h3b6c;
	ans = 16'h397a;
	#20
	A = 16'hbabd;
	B = 16'h2ab8;
	ans = 16'ha9a9;
	#20
	A = 16'hb97b;
	B = 16'h34d9;
	ans = 16'hb2a4;
	#20
	A = 16'hb8be;
	B = 16'h3a11;
	ans = 16'hb731;
	#20
	A = 16'hb976;
	B = 16'h38f7;
	ans = 16'hb6c7;
	#20
	A = 16'hae3e;
	B = 16'h348c;
	ans = 16'ha718;
	#20
	A = 16'hb743;
	B = 16'h3b7b;
	ans = 16'hb6ca;
	#20
	A = 16'hb464;
	B = 16'hb8e7;
	ans = 16'h3162;
	#20
	A = 16'h3436;
	B = 16'haeab;
	ans = 16'ha705;
	#20
	A = 16'hbb81;
	B = 16'h3b15;
	ans = 16'hbaa5;
	#20
	A = 16'hafc3;
	B = 16'hbbdd;
	ans = 16'h2fa1;
	#20
	A = 16'h2a05;
	B = 16'h321f;
	ans = 16'h209b;
	#20
	A = 16'h3828;
	B = 16'h380a;
	ans = 16'h3432;
	#20
	A = 16'h37d0;
	B = 16'hb865;
	ans = 16'hb44b;
	#20
	A = 16'h386e;
	B = 16'h3923;
	ans = 16'h35b0;
	#20
	A = 16'h303a;
	B = 16'hb0f8;
	ans = 16'ha540;
	#20
	A = 16'hb658;
	B = 16'h37cc;
	ans = 16'hb22f;
	#20
	A = 16'h2bc2;
	B = 16'h351d;
	ans = 16'h24f5;
	#20
	A = 16'h3b88;
	B = 16'h344f;
	ans = 16'h340e;
	#20
	A = 16'hab28;
	B = 16'h3b19;
	ans = 16'haa59;
	#20
	A = 16'h37d2;
	B = 16'hbaac;
	ans = 16'hb686;
	#20
	A = 16'hb88f;
	B = 16'hb134;
	ans = 16'h2dee;
	#20
	A = 16'hb6f9;
	B = 16'h365e;
	ans = 16'hb18d;
	#20
	A = 16'h3a8d;
	B = 16'hb81f;
	ans = 16'hb6c0;
	#20
	A = 16'h3572;
	B = 16'h3bc8;
	ans = 16'h354c;
	#20
	A = 16'h399b;
	B = 16'hb808;
	ans = 16'hb5a6;
	#20
	A = 16'h3abe;
	B = 16'hb49c;
	ans = 16'hb3c5;
	#20
	A = 16'h3a67;
	B = 16'h3817;
	ans = 16'h368c;
	#20
	A = 16'hb740;
	B = 16'h3730;
	ans = 16'hb284;
	#20
	A = 16'hba16;
	B = 16'hbbad;
	ans = 16'h39d7;
	#20
	A = 16'h3b1f;
	B = 16'h36a5;
	ans = 16'h35ea;
	#20
	A = 16'h3471;
	B = 16'hab41;
	ans = 16'ha407;
	#20
	A = 16'h3b18;
	B = 16'had66;
	ans = 16'hacc9;
	#20
	A = 16'h3428;
	B = 16'h37e7;
	ans = 16'h301b;
	#20
	A = 16'h3723;
	B = 16'hb0df;
	ans = 16'hac58;
	#20
	A = 16'hbb29;
	B = 16'hb04d;
	ans = 16'h2fb3;
	#20
	A = 16'hb7af;
	B = 16'hb09b;
	ans = 16'h2c6c;
	#20
	A = 16'hb34b;
	B = 16'hb901;
	ans = 16'h3090;
	#20
	A = 16'h3290;
	B = 16'h321c;
	ans = 16'h2903;
	#20
	A = 16'h3b01;
	B = 16'hb4c3;
	ans = 16'hb42b;
	#20
	A = 16'hbad4;
	B = 16'hb031;
	ans = 16'h2f28;
	#20
	A = 16'had1d;
	B = 16'h3ab6;
	ans = 16'hac4a;
	#20
	A = 16'h3821;
	B = 16'hb67c;
	ans = 16'hb2b1;
	#20
	A = 16'hb227;
	B = 16'hbbae;
	ans = 16'h31e8;
	#20
	A = 16'h3b66;
	B = 16'h1a4e;
	ans = 16'h19d5;
	#20
	A = 16'h35f1;
	B = 16'hb7d7;
	ans = 16'hb1d3;
	#20
	A = 16'h31fe;
	B = 16'h9e68;
	ans = 16'h94cc;
	#20
	A = 16'hb828;
	B = 16'hb9ee;
	ans = 16'h3629;
	#20
	A = 16'h3694;
	B = 16'h339f;
	ans = 16'h2e44;
	#20
	A = 16'ha82a;
	B = 16'h35db;
	ans = 16'ha218;
	#20
	A = 16'hb971;
	B = 16'hb642;
	ans = 16'h3442;
	#20
	A = 16'hb830;
	B = 16'h3b46;
	ans = 16'hb79d;
	#20
	A = 16'hba0c;
	B = 16'hb6ce;
	ans = 16'h3525;
	#20
	A = 16'hb68a;
	B = 16'hbb81;
	ans = 16'h3622;
	#20
	A = 16'hb64f;
	B = 16'hb8cc;
	ans = 16'h3391;
	#20
	A = 16'hb752;
	B = 16'h3aba;
	ans = 16'hb628;
	#20
	A = 16'h352e;
	B = 16'h3bc7;
	ans = 16'h3509;
	#20
	A = 16'hb545;
	B = 16'h39ca;
	ans = 16'hb3a0;
	#20
	A = 16'hb066;
	B = 16'h39a4;
	ans = 16'hae34;
	#20
	A = 16'h36e5;
	B = 16'h3b42;
	ans = 16'h3641;
	#20
	A = 16'hafed;
	B = 16'h3bc8;
	ans = 16'hafb6;
	#20
	A = 16'h3b64;
	B = 16'h3038;
	ans = 16'h2fcb;
	#20
	A = 16'hba10;
	B = 16'h39e5;
	ans = 16'hb878;
	#20
	A = 16'h35d2;
	B = 16'hb856;
	ans = 16'hb24f;
	#20
	A = 16'h3312;
	B = 16'hb08a;
	ans = 16'ha803;
	#20
	A = 16'hb5a4;
	B = 16'hb79a;
	ans = 16'h315c;
	#20
	A = 16'hba41;
	B = 16'h34bc;
	ans = 16'hb367;
	#20
	A = 16'h39fb;
	B = 16'h3be9;
	ans = 16'h39ea;
	#20
	A = 16'hb516;
	B = 16'hb524;
	ans = 16'h2e89;
	#20
	A = 16'h38ab;
	B = 16'h3784;
	ans = 16'h3463;
	#20
	A = 16'h9c1a;
	B = 16'hb0e9;
	ans = 16'h1109;
	#20
	A = 16'hb4ca;
	B = 16'ha8f6;
	ans = 16'h21f1;
	#20
	A = 16'hbb62;
	B = 16'h3b6d;
	ans = 16'hbada;
	#20
	A = 16'hb83a;
	B = 16'h350c;
	ans = 16'hb155;
	#20
	A = 16'hb29e;
	B = 16'h9f7f;
	ans = 16'h1633;
	#20
	A = 16'hb72e;
	B = 16'hb8e2;
	ans = 16'h3462;
	#20
	A = 16'h3a35;
	B = 16'hb4bf;
	ans = 16'hb35d;
	#20
	A = 16'h1ee8;
	B = 16'h3a11;
	ans = 16'h1d3d;
	#20
	A = 16'h399a;
	B = 16'hb29d;
	ans = 16'hb0a1;
	#20
	A = 16'h2ca8;
	B = 16'hb860;
	ans = 16'ha918;
	#20
	A = 16'h3a1c;
	B = 16'hb8d9;
	ans = 16'hb767;
	#20
	A = 16'h39e6;
	B = 16'hba19;
	ans = 16'hb87f;
	#20
	A = 16'ha6d3;
	B = 16'hb752;
	ans = 16'h223f;
	#20
	A = 16'h383c;
	B = 16'haf0d;
	ans = 16'hab77;
	#20
	A = 16'hbb99;
	B = 16'hbae4;
	ans = 16'h3a8b;
	#20
	A = 16'h2ad5;
	B = 16'hb8f2;
	ans = 16'ha839;
	#20
	A = 16'h3016;
	B = 16'had78;
	ans = 16'ha196;
	#20
	A = 16'h3538;
	B = 16'hb724;
	ans = 16'hb0a8;
	#20
	A = 16'h3aaf;
	B = 16'hb97c;
	ans = 16'hb895;
	#20
	A = 16'h38bf;
	B = 16'hb8da;
	ans = 16'hb5c2;
	#20
	A = 16'hba43;
	B = 16'h383c;
	ans = 16'hb6a1;
	#20
	A = 16'h3a03;
	B = 16'h37ab;
	ans = 16'h35c3;
	#20
	A = 16'hb9f1;
	B = 16'h34af;
	ans = 16'hb2f5;
	#20
	A = 16'h22ed;
	B = 16'hb2ca;
	ans = 16'h99e1;
	#20
	A = 16'h3671;
	B = 16'h3599;
	ans = 16'h3082;
	#20
	A = 16'hb894;
	B = 16'hb2c3;
	ans = 16'h2fbd;
	#20
	A = 16'h31a7;
	B = 16'hba67;
	ans = 16'hb086;
	#20
	A = 16'hb82c;
	B = 16'h3ae0;
	ans = 16'hb72c;
	#20
	A = 16'h3b82;
	B = 16'hba0b;
	ans = 16'hb9ac;
	#20
	A = 16'h2d3b;
	B = 16'h352f;
	ans = 16'h26c7;
	#20
	A = 16'hb68a;
	B = 16'hb981;
	ans = 16'h3480;
	#20
	A = 16'hb86e;
	B = 16'hb55b;
	ans = 16'h31ee;
	#20
	A = 16'h385c;
	B = 16'h3268;
	ans = 16'h2efb;
	#20
	A = 16'h1fd1;
	B = 16'hb281;
	ans = 16'h965b;
	#20
	A = 16'h2387;
	B = 16'h3a56;
	ans = 16'h21f6;
	#20
	A = 16'hb115;
	B = 16'h39b1;
	ans = 16'haf3b;
	#20
	A = 16'h34ce;
	B = 16'h37c3;
	ans = 16'h30a9;
	#20
	A = 16'hbb6c;
	B = 16'h2364;
	ans = 16'ha2db;
	#20
	A = 16'hb9f1;
	B = 16'h3b35;
	ans = 16'hb95a;
	#20
	A = 16'hb855;
	B = 16'h2eaf;
	ans = 16'hab3d;
	#20
	A = 16'hae41;
	B = 16'h3b77;
	ans = 16'hadd6;
	#20
	A = 16'hb187;
	B = 16'h39be;
	ans = 16'hafef;
	#20
	A = 16'h36b8;
	B = 16'h34fc;
	ans = 16'h3030;
	#20
	A = 16'had2d;
	B = 16'hb9d5;
	ans = 16'h2b8c;
	#20
	A = 16'h3bfb;
	B = 16'h3abf;
	ans = 16'h3abb;
	#20
	A = 16'hb313;
	B = 16'hb3f5;
	ans = 16'h2b09;
	#20
	A = 16'hb648;
	B = 16'h38ef;
	ans = 16'hb3bf;
	#20
	A = 16'hac27;
	B = 16'hbb3c;
	ans = 16'h2b83;
	#20
	A = 16'h3b83;
	B = 16'hb5f9;
	ans = 16'hb59c;
	#20
	A = 16'h3409;
	B = 16'h38b8;
	ans = 16'h30c3;
	#20
	A = 16'hbb90;
	B = 16'h3207;
	ans = 16'hb1b3;
	#20
	A = 16'h3b1e;
	B = 16'hbaa5;
	ans = 16'hb9e9;
	#20
	A = 16'h322c;
	B = 16'hb85b;
	ans = 16'haeb8;
	#20
	A = 16'hba40;
	B = 16'hb99a;
	ans = 16'h3860;
	#20
	A = 16'h248f;
	B = 16'hb027;
	ans = 16'h98bb;
	#20
	A = 16'h30ac;
	B = 16'hb5ba;
	ans = 16'haab0;
	#20
	A = 16'h3159;
	B = 16'h2806;
	ans = 16'h1d61;
	#20
	A = 16'h3bf1;
	B = 16'hb97c;
	ans = 16'hb972;
	#20
	A = 16'hb40e;
	B = 16'h3a31;
	ans = 16'hb247;
	#20
	A = 16'h37b0;
	B = 16'h2693;
	ans = 16'h2251;
	#20
	A = 16'hb54d;
	B = 16'h9f68;
	ans = 16'h18e8;
	#20
	A = 16'hb0c6;
	B = 16'hbbe1;
	ans = 16'h30b4;
	#20
	A = 16'h39c1;
	B = 16'hb659;
	ans = 16'hb491;
	#20
	A = 16'h3627;
	B = 16'h380d;
	ans = 16'h323b;
	#20
	A = 16'h333d;
	B = 16'h3490;
	ans = 16'h2c21;
	#20
	A = 16'hb6ab;
	B = 16'h32b0;
	ans = 16'had93;
	#20
	A = 16'h36ea;
	B = 16'h3ab4;
	ans = 16'h35cb;
	#20
	A = 16'hb95e;
	B = 16'hb9fc;
	ans = 16'h3804;
	#20
	A = 16'hba5b;
	B = 16'hb69c;
	ans = 16'h3540;
	#20
	A = 16'h3a76;
	B = 16'hbb21;
	ans = 16'hb9c2;
	#20
	A = 16'hbb40;
	B = 16'hb356;
	ans = 16'h32a6;
	#20
	A = 16'hbb70;
	B = 16'h3674;
	ans = 16'hb600;
	#20
	A = 16'h349b;
	B = 16'hb156;
	ans = 16'haa25;
	#20
	A = 16'h389c;
	B = 16'h32ab;
	ans = 16'h2faf;
	#20
	A = 16'hb3aa;
	B = 16'hb8ea;
	ans = 16'h30b5;
	#20
	A = 16'hbb56;
	B = 16'hbb37;
	ans = 16'h3a9e;
	#20
	A = 16'h3919;
	B = 16'h398d;
	ans = 16'h3713;
	#20
	A = 16'hb6f9;
	B = 16'hb4c7;
	ans = 16'h302a;
	#20
	A = 16'hb36d;
	B = 16'h39ce;
	ans = 16'hb163;
	#20
	A = 16'h35a5;
	B = 16'h3b86;
	ans = 16'h354f;
	#20
	A = 16'h9e8d;
	B = 16'h3b1b;
	ans = 16'h9dd1;
	#20
	A = 16'hb4fd;
	B = 16'hb926;
	ans = 16'h326c;
	#20
	A = 16'hb807;
	B = 16'h24f7;
	ans = 16'ha100;
	#20
	A = 16'h3a36;
	B = 16'h3962;
	ans = 16'h382e;
	#20
	A = 16'h3b84;
	B = 16'h3b3d;
	ans = 16'h3acd;
	#20
	A = 16'hb5aa;
	B = 16'hb673;
	ans = 16'h3091;
	#20
	A = 16'hbb4c;
	B = 16'hb9a7;
	ans = 16'h3928;
	#20
	A = 16'hb965;
	B = 16'hb49b;
	ans = 16'h3236;
	#20
	A = 16'hb7b0;
	B = 16'h3914;
	ans = 16'hb4e1;
	#20
	A = 16'h3488;
	B = 16'h3a7f;
	ans = 16'h335c;
	#20
	A = 16'h37dd;
	B = 16'h3423;
	ans = 16'h3011;
	#20
	A = 16'h2c43;
	B = 16'hbb59;
	ans = 16'habd4;
	#20
	A = 16'h39d7;
	B = 16'hb82d;
	ans = 16'hb619;
	#20
	A = 16'h3a7e;
	B = 16'h356b;
	ans = 16'h3466;
	#20
	A = 16'hb95a;
	B = 16'h3843;
	ans = 16'hb5b4;
	#20
	A = 16'hac3e;
	B = 16'h3734;
	ans = 16'ha7a4;
	#20
	A = 16'h266f;
	B = 16'h3be4;
	ans = 16'h2658;
	#20
	A = 16'hb512;
	B = 16'h2ff0;
	ans = 16'ha908;
	#20
	A = 16'hb996;
	B = 16'h98bc;
	ans = 16'h169d;
	#20
	A = 16'hb4f4;
	B = 16'h3aa6;
	ans = 16'hb41e;
	#20
	A = 16'h38ec;
	B = 16'hb5c2;
	ans = 16'hb316;
	#20
	A = 16'h397a;
	B = 16'hb979;
	ans = 16'hb77e;
	#20
	A = 16'h3bb8;
	B = 16'hb5c6;
	ans = 16'hb592;
	#20
	A = 16'h3bdc;
	B = 16'hb936;
	ans = 16'hb91f;
	#20
	A = 16'hbb4e;
	B = 16'h394d;
	ans = 16'hb8d7;
	#20
	A = 16'h3119;
	B = 16'h3346;
	ans = 16'h28a2;
	#20
	A = 16'h3be3;
	B = 16'hb888;
	ans = 16'hb878;
	#20
	A = 16'hbb98;
	B = 16'hbc00;
	ans = 16'h3b98;
	#20
	A = 16'hb25a;
	B = 16'h380c;
	ans = 16'hae6d;
	#20
	A = 16'hbbd5;
	B = 16'hbaf0;
	ans = 16'h3acb;
	#20
	A = 16'hb5d5;
	B = 16'ha8ae;
	ans = 16'h22d3;
	#20
	A = 16'h375b;
	B = 16'h3a7b;
	ans = 16'h35f5;
	#20
	A = 16'hbbcc;
	B = 16'h3a74;
	ans = 16'hba4a;
	#20
	A = 16'h2d2b;
	B = 16'h1d7f;
	ans = 16'hf1a;
	#20
	A = 16'h2942;
	B = 16'hba79;
	ans = 16'ha841;
	#20
	A = 16'hb763;
	B = 16'hb8e8;
	ans = 16'h3488;
	#20
	A = 16'hb146;
	B = 16'h36f0;
	ans = 16'hac93;
	#20
	A = 16'hacbd;
	B = 16'hb982;
	ans = 16'h2a86;
	#20
	A = 16'hba2f;
	B = 16'hb833;
	ans = 16'h367e;
	#20
	A = 16'hb337;
	B = 16'h2807;
	ans = 16'h9f44;
	#20
	A = 16'h3a48;
	B = 16'hb1e9;
	ans = 16'hb0a4;
	#20
	A = 16'hb912;
	B = 16'h3bbf;
	ans = 16'hb8e9;
	#20
	A = 16'h3ae9;
	B = 16'h3b65;
	ans = 16'h3a63;
	#20
	A = 16'h39f4;
	B = 16'hb6fa;
	ans = 16'hb531;
	#20
	A = 16'h32c1;
	B = 16'hb284;
	ans = 16'ha980;
	#20
	A = 16'hb51a;
	B = 16'h3845;
	ans = 16'hb172;
	#20
	A = 16'hba5f;
	B = 16'h3515;
	ans = 16'hb40c;
	#20
	A = 16'hb8bc;
	B = 16'h303d;
	ans = 16'had04;
	#20
	A = 16'h367b;
	B = 16'h3568;
	ans = 16'h3061;
	#20
	A = 16'hb15a;
	B = 16'hb119;
	ans = 16'h26d2;
	#20
	A = 16'h349c;
	B = 16'h3801;
	ans = 16'h309d;
	#20
	A = 16'h272b;
	B = 16'h2fa5;
	ans = 16'h1ad9;
	#20
	A = 16'h2daa;
	B = 16'h342e;
	ans = 16'h25eb;
	#20
	A = 16'h349f;
	B = 16'hba1d;
	ans = 16'hb310;
	#20
	A = 16'haf60;
	B = 16'hb738;
	ans = 16'h2aa8;
	#20
	A = 16'hb53a;
	B = 16'h3b43;
	ans = 16'hb4bf;
	#20
	A = 16'h36ea;
	B = 16'hb966;
	ans = 16'hb4aa;
	#20
	A = 16'h370d;
	B = 16'hbbd8;
	ans = 16'hb6ea;
	#20
	A = 16'hb966;
	B = 16'h3b99;
	ans = 16'hb920;
	#20
	A = 16'h3bd2;
	B = 16'h3aac;
	ans = 16'h3a86;
	#20
	A = 16'hb99e;
	B = 16'hb824;
	ans = 16'h35d1;
	#20
	A = 16'hb21e;
	B = 16'hb66d;
	ans = 16'h2cea;
	#20
	A = 16'hb8e6;
	B = 16'h3a91;
	ans = 16'hb805;
	#20
	A = 16'h38eb;
	B = 16'hafca;
	ans = 16'hacca;
	#20
	A = 16'hb818;
	B = 16'h3a44;
	ans = 16'hb66a;
	#20
	A = 16'hb0f1;
	B = 16'hb7f4;
	ans = 16'h2cea;
	#20
	A = 16'hb866;
	B = 16'h382c;
	ans = 16'hb496;
	#20
	A = 16'hbb0a;
	B = 16'h34b6;
	ans = 16'hb425;
	#20
	A = 16'hb26b;
	B = 16'hb5a5;
	ans = 16'h2c87;
	#20
	A = 16'hb809;
	B = 16'hb7b8;
	ans = 16'h33c9;
	#20
	A = 16'hb0fb;
	B = 16'h36d0;
	ans = 16'hac3e;
	#20
	A = 16'hbbc7;
	B = 16'h35c3;
	ans = 16'hb59a;
	#20
	A = 16'hb2a4;
	B = 16'h34b7;
	ans = 16'habd4;
	#20
	A = 16'hb2d9;
	B = 16'hb94c;
	ans = 16'h3089;
	#20
	A = 16'hb96f;
	B = 16'hb6a2;
	ans = 16'h3481;
	#20
	A = 16'haf07;
	B = 16'h3912;
	ans = 16'hac74;
	#20
	A = 16'hb1d3;
	B = 16'hb014;
	ans = 16'h25f0;
	#20
	A = 16'h3ae0;
	B = 16'h3a4d;
	ans = 16'h396a;
	#20
	A = 16'h3643;
	B = 16'h24d1;
	ans = 16'h1f8a;
	#20
	A = 16'h35b2;
	B = 16'h344a;
	ans = 16'h2e1b;
	#20
	A = 16'h351c;
	B = 16'hba39;
	ans = 16'hb3f3;
	#20
	A = 16'hb8dc;
	B = 16'hbba7;
	ans = 16'h38a6;
	#20
	A = 16'h2d05;
	B = 16'h2da0;
	ans = 16'h1f0f;
	#20
	A = 16'hb1d4;
	B = 16'hbad7;
	ans = 16'h30fc;
	#20
	A = 16'hba3d;
	B = 16'hb8b2;
	ans = 16'h3753;
	#20
	A = 16'h35bb;
	B = 16'h3545;
	ans = 16'h2f8d;
	#20
	A = 16'hb7aa;
	B = 16'hbbad;
	ans = 16'h375a;
	#20
	A = 16'hbba8;
	B = 16'h30c3;
	ans = 16'hb08f;
	#20
	A = 16'h365b;
	B = 16'hba3f;
	ans = 16'hb4f6;
	#20
	A = 16'hb98d;
	B = 16'h367b;
	ans = 16'hb47f;
	#20
	A = 16'h36ff;
	B = 16'hb47f;
	ans = 16'hafdd;
	#20
	A = 16'h3808;
	B = 16'h357e;
	ans = 16'h3189;
	#20
	A = 16'h368c;
	B = 16'h368b;
	ans = 16'h315b;
	#20
	A = 16'h3afe;
	B = 16'h3ac2;
	ans = 16'h39e8;
	#20
	A = 16'hb5cd;
	B = 16'h3709;
	ans = 16'hb11a;
	#20
	A = 16'hb7b1;
	B = 16'h38fb;
	ans = 16'hb4ca;
	#20
	A = 16'hb9b2;
	B = 16'hb8e0;
	ans = 16'h36f1;
	#20
	A = 16'h3a2d;
	B = 16'hb5c0;
	ans = 16'hb470;
	#20
	A = 16'h36e7;
	B = 16'h38a6;
	ans = 16'h3403;
	#20
	A = 16'hba8b;
	B = 16'h369e;
	ans = 16'hb569;
	#20
	A = 16'h3158;
	B = 16'hb699;
	ans = 16'hac68;
	#20
	A = 16'h2d8a;
	B = 16'h2fd7;
	ans = 16'h216e;
	#20
	A = 16'hafb9;
	B = 16'h35ab;
	ans = 16'ha979;
	#20
	A = 16'h3b41;
	B = 16'hb902;
	ans = 16'hb88a;
	#20
	A = 16'h3936;
	B = 16'hb0e5;
	ans = 16'hae60;
	#20
	A = 16'h324a;
	B = 16'hbb93;
	ans = 16'hb1f4;
	#20
	A = 16'hb73a;
	B = 16'h342d;
	ans = 16'haf8b;
	#20
	A = 16'h38cd;
	B = 16'hb07d;
	ans = 16'had63;
	#20
	A = 16'h38b4;
	B = 16'h38fe;
	ans = 16'h35df;
	#20
	A = 16'h3b60;
	B = 16'h38ee;
	ans = 16'h388b;
	#20
	A = 16'h39e8;
	B = 16'hb51e;
	ans = 16'hb38e;
	#20
	A = 16'h38ea;
	B = 16'h355f;
	ans = 16'h3299;
	#20
	A = 16'hbb10;
	B = 16'hb7c7;
	ans = 16'h36de;
	#20
	A = 16'hb28a;
	B = 16'hbbcf;
	ans = 16'h3262;
	#20
	A = 16'h32c9;
	B = 16'h3a3a;
	ans = 16'h3148;
	#20
	A = 16'h3376;
	B = 16'h372b;
	ans = 16'h2eaf;
	#20
	A = 16'h3164;
	B = 16'hbb12;
	ans = 16'hb0c4;
	#20
	A = 16'h3bc9;
	B = 16'hb17d;
	ans = 16'hb157;
	#20
	A = 16'h373a;
	B = 16'hb978;
	ans = 16'hb4f1;
	#20
	A = 16'hb2ee;
	B = 16'h377b;
	ans = 16'hae7b;
	#20
	A = 16'hba95;
	B = 16'hb8db;
	ans = 16'h37fd;
	#20
	A = 16'h3b37;
	B = 16'hb859;
	ans = 16'hb7d8;
	#20
	A = 16'h3a2f;
	B = 16'h399e;
	ans = 16'h3858;
	#20
	A = 16'hbbcc;
	B = 16'hb779;
	ans = 16'h3748;
	#20
	A = 16'h3429;
	B = 16'hacf4;
	ans = 16'ha527;
	#20
	A = 16'ha837;
	B = 16'h3a11;
	ans = 16'ha664;
	#20
	A = 16'h35c7;
	B = 16'hb80e;
	ans = 16'hb1db;
	#20
	A = 16'hba5c;
	B = 16'h38b4;
	ans = 16'hb77a;
	#20
	A = 16'hb226;
	B = 16'h312d;
	ans = 16'ha7f5;
	#20
	A = 16'hb752;
	B = 16'h3843;
	ans = 16'hb3cd;
	#20
	A = 16'h39d9;
	B = 16'h2ef3;
	ans = 16'h2d14;
	#20
	A = 16'hb79f;
	B = 16'hb779;
	ans = 16'h331e;
	#20
	A = 16'h3aec;
	B = 16'h39ca;
	ans = 16'h3902;
	#20
	A = 16'h3bab;
	B = 16'haef8;
	ans = 16'haeae;
	#20
	A = 16'h33d0;
	B = 16'hb9b0;
	ans = 16'hb18e;
	#20
	A = 16'h38e0;
	B = 16'hb910;
	ans = 16'hb62c;
	#20
	A = 16'hafb2;
	B = 16'h31b1;
	ans = 16'ha57a;
	#20
	A = 16'h303d;
	B = 16'hb975;
	ans = 16'hadc8;
	#20
	A = 16'h345a;
	B = 16'hb4ec;
	ans = 16'had5b;
	#20
	A = 16'h3537;
	B = 16'h39cc;
	ans = 16'h338f;
	#20
	A = 16'hbaa9;
	B = 16'ha8bd;
	ans = 16'h27e4;
	#20
	A = 16'ha02c;
	B = 16'h3906;
	ans = 16'h9d3d;
	#20
	A = 16'hbb9d;
	B = 16'h2f84;
	ans = 16'haf27;
	#20
	A = 16'hb8d4;
	B = 16'h373f;
	ans = 16'hb460;
	#20
	A = 16'hba1c;
	B = 16'hbb3a;
	ans = 16'h3985;
	#20
	A = 16'hbbb7;
	B = 16'hb893;
	ans = 16'h3869;
	#20
	A = 16'h3b54;
	B = 16'hb9c6;
	ans = 16'hb94a;
	#20
	A = 16'hbb02;
	B = 16'h3af4;
	ans = 16'hba17;
	#20
	A = 16'hb814;
	B = 16'hb47c;
	ans = 16'h3092;
	#20
	A = 16'h38f8;
	B = 16'h36a8;
	ans = 16'h3422;
	#20
	A = 16'hb978;
	B = 16'h2a9c;
	ans = 16'ha885;
	#20
	A = 16'h3be1;
	B = 16'hb23f;
	ans = 16'hb227;
	#20
	A = 16'h39bb;
	B = 16'hbb58;
	ans = 16'hb943;
	#20
	A = 16'h386d;
	B = 16'hb951;
	ans = 16'hb5e2;
	#20
	A = 16'hb9a7;
	B = 16'h3530;
	ans = 16'hb355;
	#20
	A = 16'h39c3;
	B = 16'h3855;
	ans = 16'h363d;
	#20
	A = 16'h172c;
	B = 16'h3b80;
	ans = 16'h16b9;
	#20
	A = 16'h3bc1;
	B = 16'hb442;
	ans = 16'hb420;
	#20
	A = 16'hbb33;
	B = 16'h3bb2;
	ans = 16'hbaed;
	#20
	A = 16'h3792;
	B = 16'h305b;
	ans = 16'h2c1f;
	#20
	A = 16'hb1ae;
	B = 16'h3bd3;
	ans = 16'hb18e;
	#20
	A = 16'h3724;
	B = 16'h3824;
	ans = 16'h3364;
	#20
	A = 16'hb0e3;
	B = 16'h3ae5;
	ans = 16'hb036;
	#20
	A = 16'h3833;
	B = 16'h3821;
	ans = 16'h3456;
	#20
	A = 16'hb9db;
	B = 16'hb4e6;
	ans = 16'h332c;
	#20
	A = 16'h3984;
	B = 16'hb4c0;
	ans = 16'hb28d;
	#20
	A = 16'hba38;
	B = 16'hb256;
	ans = 16'h30ed;
	#20
	A = 16'had0b;
	B = 16'hb71b;
	ans = 16'h287b;
	#20
	A = 16'h3b1e;
	B = 16'h3bde;
	ans = 16'h3b00;
	#20
	A = 16'h3749;
	B = 16'h3997;
	ans = 16'h3517;
	#20
	A = 16'h3606;
	B = 16'h3114;
	ans = 16'h2ba6;
	#20
	A = 16'hb3f4;
	B = 16'hb877;
	ans = 16'h3070;
	#20
	A = 16'h3b81;
	B = 16'h3877;
	ans = 16'h3830;
	#20
	A = 16'h35f9;
	B = 16'hb8d6;
	ans = 16'hb339;
	#20
	A = 16'hb790;
	B = 16'h34a7;
	ans = 16'hb066;
	#20
	A = 16'h3831;
	B = 16'hae5e;
	ans = 16'haaac;
	#20
	A = 16'hba94;
	B = 16'hb9ef;
	ans = 16'h38e1;
	#20
	A = 16'hae18;
	B = 16'h3aac;
	ans = 16'had15;
	#20
	A = 16'h3284;
	B = 16'hadb0;
	ans = 16'ha4a2;
	#20
	A = 16'h2d84;
	B = 16'h351d;
	ans = 16'h270d;
	#20
	A = 16'hb132;
	B = 16'hb7bc;
	ans = 16'h2d06;
	#20
	A = 16'haf04;
	B = 16'hb671;
	ans = 16'h29a6;
	#20
	A = 16'hb67a;
	B = 16'hab7a;
	ans = 16'h260e;
	#20
	A = 16'h3877;
	B = 16'h2488;
	ans = 16'h210f;
	#20
	A = 16'h3a7a;
	B = 16'h321c;
	ans = 16'h30f2;
	#20
	A = 16'hba84;
	B = 16'h38a5;
	ans = 16'hb791;
	#20
	A = 16'h3b88;
	B = 16'h37a4;
	ans = 16'h3731;
	#20
	A = 16'h3a15;
	B = 16'h3b22;
	ans = 16'h396c;
	#20
	A = 16'hb539;
	B = 16'h3b41;
	ans = 16'hb4bc;
	#20
	A = 16'haff9;
	B = 16'hb8cf;
	ans = 16'h2ccb;
	#20
	A = 16'hb341;
	B = 16'hb743;
	ans = 16'h2e96;
	#20
	A = 16'hb7d1;
	B = 16'hb847;
	ans = 16'h342e;
	#20
	A = 16'hbb6f;
	B = 16'h3bd0;
	ans = 16'hbb42;
	#20
	A = 16'h3623;
	B = 16'h3a16;
	ans = 16'h34ab;
	#20
	A = 16'h34d1;
	B = 16'h2dc0;
	ans = 16'h26ec;
	#20
	A = 16'h38a4;
	B = 16'hb475;
	ans = 16'hb12c;
	#20
	A = 16'h31e9;
	B = 16'hb34b;
	ans = 16'ha963;
	#20
	A = 16'hbb59;
	B = 16'h3529;
	ans = 16'hb4bd;
	#20
	A = 16'h38e5;
	B = 16'h359d;
	ans = 16'h32de;
	#20
	A = 16'hb88d;
	B = 16'hb941;
	ans = 16'h35fa;
	#20
	A = 16'hb481;
	B = 16'hb9ef;
	ans = 16'h32ae;
	#20
	A = 16'h344e;
	B = 16'hb8bc;
	ans = 16'hb118;
	#20
	A = 16'h3613;
	B = 16'hba6d;
	ans = 16'hb4e1;
	#20
	A = 16'hb95e;
	B = 16'h2e33;
	ans = 16'hac29;
	#20
	A = 16'hac11;
	B = 16'hbb92;
	ans = 16'h2bb2;
	#20
	A = 16'hbbd2;
	B = 16'hb47d;
	ans = 16'h3463;
	#20
	A = 16'h39b2;
	B = 16'hac37;
	ans = 16'haa00;
	#20
	A = 16'hb817;
	B = 16'h3aa0;
	ans = 16'hb6c6;
	#20
	A = 16'hb19a;
	B = 16'hbbce;
	ans = 16'h3177;
	#20
	A = 16'h3b0a;
	B = 16'hb18f;
	ans = 16'hb0e4;
	#20
	A = 16'hb357;
	B = 16'h3516;
	ans = 16'hacab;
	#20
	A = 16'h3b78;
	B = 16'hb777;
	ans = 16'hb6f8;
	#20
	A = 16'h372f;
	B = 16'h3467;
	ans = 16'h2fe8;
	#20
	A = 16'hb920;
	B = 16'h3bd1;
	ans = 16'hb902;
	#20
	A = 16'ha755;
	B = 16'hb524;
	ans = 16'h20b6;
	#20
	A = 16'h3a60;
	B = 16'hbbf8;
	ans = 16'hba5a;
	#20
	A = 16'h34f7;
	B = 16'hbbc8;
	ans = 16'hb4d4;
	#20
	A = 16'hbba5;
	B = 16'hb8c4;
	ans = 16'h388e;
	#20
	A = 16'h3527;
	B = 16'h3589;
	ans = 16'h2f21;
	#20
	A = 16'hbbe4;
	B = 16'ha887;
	ans = 16'h2877;
	#20
	A = 16'hb3e8;
	B = 16'hb70d;
	ans = 16'h2ef8;
	#20
	A = 16'h3409;
	B = 16'h30f9;
	ans = 16'h2904;
	#20
	A = 16'h38f0;
	B = 16'h3ad3;
	ans = 16'h3836;
	#20
	A = 16'h2aed;
	B = 16'hbb16;
	ans = 16'haa22;
	#20
	A = 16'hbad5;
	B = 16'h396f;
	ans = 16'hb8a4;
	#20
	A = 16'h3ac4;
	B = 16'hb9cd;
	ans = 16'hb8e8;
	#20
	A = 16'hbb9d;
	B = 16'hba5b;
	ans = 16'h3a0c;
	#20
	A = 16'h3348;
	B = 16'hb0f7;
	ans = 16'ha885;
	#20
	A = 16'hb538;
	B = 16'h38e3;
	ans = 16'hb260;
	#20
	A = 16'h39e3;
	B = 16'h3ba4;
	ans = 16'h399f;
	#20
	A = 16'hba3c;
	B = 16'h3b7d;
	ans = 16'hb9d6;
	#20
	A = 16'hb6bc;
	B = 16'h3abe;
	ans = 16'hb5ad;
	#20
	A = 16'h35cb;
	B = 16'h3001;
	ans = 16'h29cc;
	#20
	A = 16'h3829;
	B = 16'h383b;
	ans = 16'h3466;
	#20
	A = 16'hb82b;
	B = 16'habc8;
	ans = 16'h280e;
	#20
	A = 16'hb4c0;
	B = 16'h3ba4;
	ans = 16'hb489;
	#20
	A = 16'hb7d6;
	B = 16'hb8f7;
	ans = 16'h34dd;
	#20
	A = 16'hb9cb;
	B = 16'h2f66;
	ans = 16'had5b;
	#20
	A = 16'hba3f;
	B = 16'h32c0;
	ans = 16'hb145;
	#20
	A = 16'hb39d;
	B = 16'hbab9;
	ans = 16'h3266;
	#20
	A = 16'hb32a;
	B = 16'h347c;
	ans = 16'hac04;
	#20
	A = 16'hb445;
	B = 16'hb0bf;
	ans = 16'h2911;
	#20
	A = 16'h3a32;
	B = 16'hb262;
	ans = 16'hb0f1;
	#20
	A = 16'hbbbb;
	B = 16'h38f9;
	ans = 16'hb8ce;
	#20
	A = 16'hb664;
	B = 16'hba8e;
	ans = 16'h353c;
	#20
	A = 16'h3835;
	B = 16'hb92b;
	ans = 16'hb56f;
	#20
	A = 16'hb95d;
	B = 16'hb429;
	ans = 16'h3194;
	#20
	A = 16'h3649;
	B = 16'h32bf;
	ans = 16'h2d4d;
	#20
	A = 16'hbb56;
	B = 16'h2f00;
	ans = 16'hae6b;
	#20
	A = 16'hbb91;
	B = 16'h3ab5;
	ans = 16'hba58;
	#20
	A = 16'h3150;
	B = 16'h3a0d;
	ans = 16'h3005;
	#20
	A = 16'hba77;
	B = 16'h3bd1;
	ans = 16'hba51;
	#20
	A = 16'hb89b;
	B = 16'h31d5;
	ans = 16'haeb7;
	#20
	A = 16'hbbbf;
	B = 16'h399f;
	ans = 16'hb971;
	#20
	A = 16'hbb0c;
	B = 16'hb430;
	ans = 16'h3361;
	#20
	A = 16'h3673;
	B = 16'h313c;
	ans = 16'h2c38;
	#20
	A = 16'haa49;
	B = 16'h3a3a;
	ans = 16'ha8e4;
	#20
	A = 16'h397c;
	B = 16'hb660;
	ans = 16'hb45f;
	#20
	A = 16'h37d5;
	B = 16'h2067;
	ans = 16'h1c4f;
	#20
	A = 16'hb75e;
	B = 16'h3198;
	ans = 16'had27;
	#20
	A = 16'h3aaf;
	B = 16'hb203;
	ans = 16'hb106;
	#20
	A = 16'h3b4e;
	B = 16'ha52f;
	ans = 16'ha4bc;
	#20
	A = 16'h3975;
	B = 16'h3b48;
	ans = 16'h38f7;
	#20
	A = 16'h39b1;
	B = 16'h3b4a;
	ans = 16'h3930;
	#20
	A = 16'h3b48;
	B = 16'hb5a3;
	ans = 16'hb521;
	#20
	A = 16'hb4d2;
	B = 16'h3bb6;
	ans = 16'hb4a5;
	#20
	A = 16'hb9a2;
	B = 16'h3055;
	ans = 16'hae1a;
	#20
	A = 16'h34e8;
	B = 16'h3067;
	ans = 16'h2966;
	#20
	A = 16'h308b;
	B = 16'h35a1;
	ans = 16'h2a65;
	#20
	A = 16'hb99e;
	B = 16'h3919;
	ans = 16'hb729;
	#20
	A = 16'hb680;
	B = 16'h3b7f;
	ans = 16'hb617;
	#20
	A = 16'h3aa0;
	B = 16'hb9e5;
	ans = 16'hb8e2;
	#20
	A = 16'haa82;
	B = 16'hb6eb;
	ans = 16'h25a1;
	#20
	A = 16'h3833;
	B = 16'hbb81;
	ans = 16'hb7e1;
	#20
	A = 16'h3563;
	B = 16'hae64;
	ans = 16'ha84e;
	#20
	A = 16'h371b;
	B = 16'h3a78;
	ans = 16'h35bf;
	#20
	A = 16'h3bc5;
	B = 16'hb4b2;
	ans = 16'hb48f;
	#20
	A = 16'hbad0;
	B = 16'hb902;
	ans = 16'h3844;
	#20
	A = 16'hbb3e;
	B = 16'h38ac;
	ans = 16'hb83b;
	#20
	A = 16'h3a22;
	B = 16'h3576;
	ans = 16'h3430;
	#20
	A = 16'hb285;
	B = 16'hb646;
	ans = 16'h2d1d;
	#20
	A = 16'hb994;
	B = 16'hbb15;
	ans = 16'h38f0;
	#20
	A = 16'h30c7;
	B = 16'h3470;
	ans = 16'h294d;
	#20
	A = 16'hb812;
	B = 16'hb8be;
	ans = 16'h34d3;
	#20
	A = 16'hb601;
	B = 16'hb7fd;
	ans = 16'h31ff;
	#20
	A = 16'hb9f3;
	B = 16'hb947;
	ans = 16'h37d9;
	#20
	A = 16'h32b6;
	B = 16'h3095;
	ans = 16'h27b0;
	#20
	A = 16'h3953;
	B = 16'hb922;
	ans = 16'hb6d5;
	#20
	A = 16'hbadb;
	B = 16'h2d10;
	ans = 16'hac57;
	#20
	A = 16'hb117;
	B = 16'haa04;
	ans = 16'h1fa8;
	#20
	A = 16'hb2fb;
	B = 16'hb587;
	ans = 16'h2cd3;
	#20
	A = 16'ha5e0;
	B = 16'hb989;
	ans = 16'h2411;
	#20
	A = 16'h3a5f;
	B = 16'hba87;
	ans = 16'hb933;
	#20
	A = 16'haf75;
	B = 16'h3688;
	ans = 16'haa17;
	#20
	A = 16'h38fb;
	B = 16'h3b49;
	ans = 16'h3889;
	#20
	A = 16'hb0e4;
	B = 16'hb0be;
	ans = 16'h25cc;
	#20
	A = 16'h3808;
	B = 16'hb8da;
	ans = 16'hb4e4;
	#20
	A = 16'hbb76;
	B = 16'h3907;
	ans = 16'hb8b0;
	#20
	A = 16'h3b64;
	B = 16'h35c7;
	ans = 16'h3556;
	#20
	A = 16'h3909;
	B = 16'hb56b;
	ans = 16'hb2d2;
	#20
	A = 16'hb7d5;
	B = 16'h390b;
	ans = 16'hb4f0;
	#20
	A = 16'h3933;
	B = 16'hb8b2;
	ans = 16'hb61a;
	#20
	A = 16'h3b90;
	B = 16'h3a34;
	ans = 16'h39dd;
	#20
	A = 16'h2fe1;
	B = 16'h3422;
	ans = 16'h2812;
	#20
	A = 16'hb967;
	B = 16'h3342;
	ans = 16'hb0e7;
	#20
	A = 16'hb562;
	B = 16'h3a9e;
	ans = 16'hb474;
	#20
	A = 16'hb8d8;
	B = 16'h395d;
	ans = 16'hb67f;
	#20
	A = 16'hb83a;
	B = 16'hb913;
	ans = 16'h355d;
	#20
	A = 16'hb694;
	B = 16'hb4e4;
	ans = 16'h3005;
	#20
	A = 16'hb963;
	B = 16'haeb2;
	ans = 16'h2c82;
	#20
	A = 16'h32b3;
	B = 16'hb7ef;
	ans = 16'haea5;
	#20
	A = 16'ha599;
	B = 16'hbb23;
	ans = 16'h24fe;
	#20
	A = 16'h30bb;
	B = 16'hbb72;
	ans = 16'hb067;
	#20
	A = 16'hbb87;
	B = 16'h35cd;
	ans = 16'hb575;
	#20
	A = 16'hbb36;
	B = 16'hb745;
	ans = 16'h368d;
	#20
	A = 16'hbbe5;
	B = 16'h3a74;
	ans = 16'hba5e;
	#20
	A = 16'h368d;
	B = 16'h3131;
	ans = 16'h2c40;
	#20
	A = 16'hb29b;
	B = 16'hb7b9;
	ans = 16'h2e60;
	#20
	A = 16'hb676;
	B = 16'hba39;
	ans = 16'h3507;
	#20
	A = 16'h30e3;
	B = 16'h38b7;
	ans = 16'h2dc3;
	#20
	A = 16'h36f7;
	B = 16'h38ac;
	ans = 16'h3411;
	#20
	A = 16'h39c5;
	B = 16'h34bb;
	ans = 16'h32d3;
	#20
	A = 16'hb7a8;
	B = 16'h2940;
	ans = 16'ha506;
	#20
	A = 16'hb854;
	B = 16'h38ea;
	ans = 16'hb551;
	#20
	A = 16'hb30d;
	B = 16'hba13;
	ans = 16'h315a;
	#20
	A = 16'h307f;
	B = 16'h2cd5;
	ans = 16'h216e;
	#20
	A = 16'h3a82;
	B = 16'hbaf9;
	ans = 16'hb9ac;
	#20
	A = 16'hb8e7;
	B = 16'hb408;
	ans = 16'h30f1;
	#20
	A = 16'h31ae;
	B = 16'hac72;
	ans = 16'ha250;
	#20
	A = 16'h37db;
	B = 16'hb8ad;
	ans = 16'hb497;
	#20
	A = 16'hb02f;
	B = 16'h3575;
	ans = 16'ha9b5;
	#20
	A = 16'h3368;
	B = 16'hbbc0;
	ans = 16'hb32d;
	#20
	A = 16'hb5bd;
	B = 16'h34e5;
	ans = 16'haf06;
	#20
	A = 16'h3ae9;
	B = 16'h2f08;
	ans = 16'h2e13;
	#20
	A = 16'h34d3;
	B = 16'hb5e2;
	ans = 16'haf18;
	#20
	A = 16'h3057;
	B = 16'hb847;
	ans = 16'haca4;
	#20
	A = 16'hba6b;
	B = 16'hb90b;
	ans = 16'h380c;
	#20
	A = 16'hb7d5;
	B = 16'h3a66;
	ans = 16'hb644;
	#20
	A = 16'hb609;
	B = 16'h395c;
	ans = 16'hb40b;
	#20
	A = 16'h333f;
	B = 16'ha9e8;
	ans = 16'ha15a;
	#20
	A = 16'hb90e;
	B = 16'hb02e;
	ans = 16'h2d48;
	#20
	A = 16'hb693;
	B = 16'h39f2;
	ans = 16'hb4e3;
	#20
	A = 16'hb9ac;
	B = 16'had59;
	ans = 16'h2b95;
	#20
	A = 16'hb905;
	B = 16'hb893;
	ans = 16'h35bd;
	#20
	A = 16'hb89d;
	B = 16'hbafc;
	ans = 16'h3807;
	#20
	A = 16'h31e2;
	B = 16'hb93c;
	ans = 16'hafb3;
	#20
	A = 16'h3532;
	B = 16'h2fc3;
	ans = 16'h290a;
	#20
	A = 16'hb409;
	B = 16'h392c;
	ans = 16'hb138;
	#20
	A = 16'hb971;
	B = 16'hbb8d;
	ans = 16'h3923;
	#20
	A = 16'hacb9;
	B = 16'h367d;
	ans = 16'ha7a9;
	#20
	A = 16'hb7be;
	B = 16'h3706;
	ans = 16'hb2cc;
	#20
	A = 16'hb48a;
	B = 16'h3836;
	ans = 16'hb0c7;
	#20
	A = 16'hbb21;
	B = 16'h2db3;
	ans = 16'had14;
	#20
	A = 16'hb568;
	B = 16'hb809;
	ans = 16'h3174;
	#20
	A = 16'h2f4d;
	B = 16'h3439;
	ans = 16'h27b5;
	#20
	A = 16'h32e3;
	B = 16'h3480;
	ans = 16'h2bbf;
	#20
	A = 16'h3861;
	B = 16'h3baf;
	ans = 16'h3835;
	#20
	A = 16'hb978;
	B = 16'h2fe7;
	ans = 16'had67;
	#20
	A = 16'hb1c6;
	B = 16'hba17;
	ans = 16'h3065;
	#20
	A = 16'hb85a;
	B = 16'h388c;
	ans = 16'hb4f2;
	#20
	A = 16'h32b3;
	B = 16'hb99d;
	ans = 16'hb0b3;
	#20
	A = 16'hb84c;
	B = 16'hbada;
	ans = 16'h375c;
	#20
	A = 16'hb9cb;
	B = 16'h38e2;
	ans = 16'hb712;
	#20
	A = 16'hb839;
	B = 16'hb4b2;
	ans = 16'h30f5;
	#20
	A = 16'hb584;
	B = 16'h3aff;
	ans = 16'hb4d3;
	#20
	A = 16'hb991;
	B = 16'h39a2;
	ans = 16'hb7d7;
	#20
	A = 16'h365f;
	B = 16'hb8de;
	ans = 16'hb3c1;
	#20
	A = 16'hb9d2;
	B = 16'ha6ab;
	ans = 16'h24da;
	#20
	A = 16'h36e7;
	B = 16'h392e;
	ans = 16'h3478;
	#20
	A = 16'h3987;
	B = 16'hac77;
	ans = 16'haa2b;
	#20
	A = 16'h38fd;
	B = 16'h3b82;
	ans = 16'h38ae;
	#20
	A = 16'hb8cc;
	B = 16'hb99d;
	ans = 16'h36bb;
	#20
	A = 16'h33c5;
	B = 16'hacb3;
	ans = 16'ha490;
	#20
	A = 16'h33b6;
	B = 16'h3a5b;
	ans = 16'h3220;
	#20
	A = 16'h3bf6;
	B = 16'h2dc7;
	ans = 16'h2dc0;
	#20
	A = 16'hb856;
	B = 16'h2c86;
	ans = 16'ha8e7;
	#20
	A = 16'h283b;
	B = 16'hb225;
	ans = 16'h9e80;
	#20
	A = 16'h365d;
	B = 16'h3a75;
	ans = 16'h3523;
	#20
	A = 16'h3a04;
	B = 16'h3095;
	ans = 16'h2ee4;
	#20
	A = 16'h3a61;
	B = 16'h3373;
	ans = 16'h31f1;
	#20
	A = 16'hba9e;
	B = 16'h3004;
	ans = 16'haea5;
	#20
	A = 16'haf75;
	B = 16'h3b2b;
	ans = 16'haeae;
	#20
	A = 16'h30d2;
	B = 16'h398b;
	ans = 16'h2eae;
	#20
	A = 16'h3b1f;
	B = 16'h3854;
	ans = 16'h37b5;
	#20
	A = 16'hb9dd;
	B = 16'h3b68;
	ans = 16'hb96e;
	#20
	A = 16'hb91c;
	B = 16'h3974;
	ans = 16'hb6f7;
	#20
	A = 16'hb2fb;
	B = 16'hb880;
	ans = 16'h2fda;
	#20
	A = 16'h3474;
	B = 16'h3598;
	ans = 16'h2e3a;
	#20
	A = 16'hb2fe;
	B = 16'h35f2;
	ans = 16'had32;
	#20
	A = 16'h356f;
	B = 16'h3a16;
	ans = 16'h3422;
	#20
	A = 16'h3230;
	B = 16'hb3b2;
	ans = 16'ha9f4;
	#20
	A = 16'h3913;
	B = 16'h3bd2;
	ans = 16'h38f6;
	#20
	A = 16'hba8d;
	B = 16'hbbc6;
	ans = 16'h3a5e;
	#20
	A = 16'hbb32;
	B = 16'h3b60;
	ans = 16'hbaa2;
	#20
	A = 16'h3a9f;
	B = 16'hb9de;
	ans = 16'hb8db;
	#20
	A = 16'h36ea;
	B = 16'h2abf;
	ans = 16'h25d5;
	#20
	A = 16'h3a0f;
	B = 16'hb62b;
	ans = 16'hb4ac;
	#20
	A = 16'h3976;
	B = 16'hb4e2;
	ans = 16'hb2ab;
	#20
	A = 16'h305c;
	B = 16'hb4ce;
	ans = 16'ha93d;
	#20
	A = 16'hbad7;
	B = 16'hba87;
	ans = 16'h3995;
	#20
	A = 16'hb839;
	B = 16'hb838;
	ans = 16'h3474;
	#20
	A = 16'h2c83;
	B = 16'had0b;
	ans = 16'h9db0;
	#20
	A = 16'hbabc;
	B = 16'h2d54;
	ans = 16'hac7c;
	#20
	A = 16'h3adf;
	B = 16'h2cc9;
	ans = 16'h2c1c;
	#20
	A = 16'h3aa7;
	B = 16'h322f;
	ans = 16'h3124;
	#20
	A = 16'hb6ec;
	B = 16'hb880;
	ans = 16'h33ca;
	#20
	A = 16'hbbeb;
	B = 16'hb281;
	ans = 16'h3270;
	#20
	A = 16'h254d;
	B = 16'h3451;
	ans = 16'h1db8;
	#20
	A = 16'hb06d;
	B = 16'h354c;
	ans = 16'ha9dc;
	#20
	A = 16'h38a3;
	B = 16'hb854;
	ans = 16'hb504;
	#20
	A = 16'hbb60;
	B = 16'h390e;
	ans = 16'hb8a9;
	#20
	A = 16'hba71;
	B = 16'h9e9a;
	ans = 16'h1d51;
	#20
	A = 16'ha9f0;
	B = 16'h3bd1;
	ans = 16'ha9cd;
	#20
	A = 16'h3790;
	B = 16'hb41d;
	ans = 16'hafc7;
	#20
	A = 16'hb99a;
	B = 16'h36d7;
	ans = 16'hb4ca;
	#20
	A = 16'hb976;
	B = 16'hbbc0;
	ans = 16'h394a;
	#20
	A = 16'hbb1e;
	B = 16'hb538;
	ans = 16'h34a5;
	#20
	A = 16'hb724;
	B = 16'hbab6;
	ans = 16'h35fd;
	#20
	A = 16'h3976;
	B = 16'h3297;
	ans = 16'h3080;
	#20
	A = 16'h35e8;
	B = 16'hb072;
	ans = 16'haa90;
	#20
	A = 16'h396a;
	B = 16'hb848;
	ans = 16'hb5cb;
	#20
	A = 16'hac0b;
	B = 16'hb90a;
	ans = 16'h2918;
	#20
	A = 16'h3594;
	B = 16'ha8a9;
	ans = 16'ha280;
	#20
	A = 16'h35fb;
	B = 16'hb5d8;
	ans = 16'hb05e;
	#20
	A = 16'hb797;
	B = 16'h2ff7;
	ans = 16'hab8e;
	#20
	A = 16'h365d;
	B = 16'hb8eb;
	ans = 16'hb3d3;
	#20
	A = 16'hb2f9;
	B = 16'h3444;
	ans = 16'hab70;
	#20
	A = 16'hbb57;
	B = 16'h3655;
	ans = 16'hb5cf;
	#20
	A = 16'h3545;
	B = 16'hb82f;
	ans = 16'hb183;
	#20
	A = 16'hb938;
	B = 16'h341b;
	ans = 16'hb15b;
	#20
	A = 16'h3929;
	B = 16'h9a54;
	ans = 16'h9815;
	#20
	A = 16'h392c;
	B = 16'hb9e3;
	ans = 16'hb79d;
	#20
	A = 16'h3a7c;
	B = 16'hba34;
	ans = 16'hb907;
	#20
	A = 16'hb365;
	B = 16'hb841;
	ans = 16'h2fdd;
	#20
	A = 16'h39dc;
	B = 16'h39ce;
	ans = 16'h3840;
	#20
	A = 16'hb982;
	B = 16'h3a1e;
	ans = 16'hb836;
	#20
	A = 16'h3b8a;
	B = 16'hb920;
	ans = 16'hb8d4;
	#20
	A = 16'h3434;
	B = 16'h3bc2;
	ans = 16'h3413;
	#20
	A = 16'h371d;
	B = 16'h3b60;
	ans = 16'h368f;
	#20
	A = 16'hb992;
	B = 16'h2aee;
	ans = 16'ha8d3;
	#20
	A = 16'hb88d;
	B = 16'hbbf3;
	ans = 16'h3886;
	#20
	A = 16'hae7f;
	B = 16'h3791;
	ans = 16'haa25;
	#20
	A = 16'h39d6;
	B = 16'h3b78;
	ans = 16'h3973;
	#20
	A = 16'hb347;
	B = 16'h37a6;
	ans = 16'haef5;
	#20
	A = 16'h3136;
	B = 16'h3438;
	ans = 16'h297f;
	#20
	A = 16'h38b4;
	B = 16'h39da;
	ans = 16'h36e1;
	#20
	A = 16'h3620;
	B = 16'hb6f3;
	ans = 16'hb152;
	#20
	A = 16'h3563;
	B = 16'hb596;
	ans = 16'haf86;
	#20
	A = 16'hbb3b;
	B = 16'hb038;
	ans = 16'h2fa0;
	#20
	A = 16'h2dc1;
	B = 16'h36cc;
	ans = 16'h28e3;
	#20
	A = 16'h38cd;
	B = 16'h3928;
	ans = 16'h3630;
	#20
	A = 16'h37af;
	B = 16'hbbc0;
	ans = 16'hb772;
	#20
	A = 16'h39f9;
	B = 16'h39b6;
	ans = 16'h3844;
	#20
	A = 16'h3b5a;
	B = 16'h281f;
	ans = 16'h2793;
	#20
	A = 16'h345e;
	B = 16'h35f7;
	ans = 16'h2e83;
	#20
	A = 16'h3b49;
	B = 16'h3b84;
	ans = 16'h3ad8;
	#20
	A = 16'hbac3;
	B = 16'h34fd;
	ans = 16'hb437;
	#20
	A = 16'h3990;
	B = 16'hacf0;
	ans = 16'haade;
	#20
	A = 16'h2b90;
	B = 16'h318a;
	ans = 16'h213c;
	#20
	A = 16'hb825;
	B = 16'h3972;
	ans = 16'hb5a4;
	#20
	A = 16'h39d7;
	B = 16'hb3e5;
	ans = 16'hb1c3;
	#20
	A = 16'hba00;
	B = 16'hbab5;
	ans = 16'h3908;
	#20
	A = 16'hb9b2;
	B = 16'h3abe;
	ans = 16'hb8cd;
	#20
	A = 16'h3bf1;
	B = 16'h3b2b;
	ans = 16'h3b1e;
	#20
	A = 16'hbbe8;
	B = 16'hac17;
	ans = 16'h2c0b;
	#20
	A = 16'h37ae;
	B = 16'hb84a;
	ans = 16'hb41e;
	#20
	A = 16'h3041;
	B = 16'h3983;
	ans = 16'h2ddd;
	#20
	A = 16'hb649;
	B = 16'h3ad2;
	ans = 16'hb55c;
	#20
	A = 16'hbab6;
	B = 16'hbabd;
	ans = 16'h39a7;
	#20
	A = 16'h37ca;
	B = 16'hb118;
	ans = 16'hacf6;
	#20
	A = 16'h2ce6;
	B = 16'h3716;
	ans = 16'h2857;
	#20
	A = 16'hb0c0;
	B = 16'hb8a7;
	ans = 16'h2d86;
	#20
	A = 16'hb4d5;
	B = 16'h38a0;
	ans = 16'hb196;
	#20
	A = 16'haeed;
	B = 16'h380c;
	ans = 16'hab02;
	#20
	A = 16'h3b24;
	B = 16'h2894;
	ans = 16'h2816;
	#20
	A = 16'h39d9;
	B = 16'hb830;
	ans = 16'hb61f;
	#20
	A = 16'h3876;
	B = 16'h3970;
	ans = 16'h3610;
	#20
	A = 16'hb816;
	B = 16'hb121;
	ans = 16'h2d3d;
	#20
	A = 16'hb482;
	B = 16'h33e1;
	ans = 16'hac71;
	#20
	A = 16'h3869;
	B = 16'hbb59;
	ans = 16'hb80d;
	#20
	A = 16'h3886;
	B = 16'hb9c0;
	ans = 16'hb681;
	#20
	A = 16'hb876;
	B = 16'hb929;
	ans = 16'h35c1;
	#20
	A = 16'h14fd;
	B = 16'hb95d;
	ans = 16'h92b0;
	#20
	A = 16'hb863;
	B = 16'h3031;
	ans = 16'hac99;
	#20
	A = 16'hb7d3;
	B = 16'hb4a1;
	ans = 16'h3087;
	#20
	A = 16'h3b6f;
	B = 16'hb9f9;
	ans = 16'hb98d;
	#20
	A = 16'hafe9;
	B = 16'hb941;
	ans = 16'h2d32;
	#20
	A = 16'hb4d2;
	B = 16'h3a78;
	ans = 16'hb3cc;
	#20
	A = 16'h352b;
	B = 16'h398c;
	ans = 16'h332b;
	#20
	A = 16'h37ce;
	B = 16'h3a23;
	ans = 16'h35fd;
	#20
	A = 16'h385e;
	B = 16'h3365;
	ans = 16'h3009;
	#20
	A = 16'h3514;
	B = 16'h35be;
	ans = 16'h2f4a;
	#20
	A = 16'h3920;
	B = 16'hb38d;
	ans = 16'hb0d6;
	#20
	A = 16'h36d2;
	B = 16'hb8d4;
	ans = 16'hb41e;
	#20
	A = 16'hbace;
	B = 16'hb599;
	ans = 16'h34c3;
	#20
	A = 16'hb90a;
	B = 16'hb9cc;
	ans = 16'h374d;
	#20
	A = 16'hb8b9;
	B = 16'hbbc5;
	ans = 16'h3896;
	#20
	A = 16'hb9a9;
	B = 16'h3a8c;
	ans = 16'hb8a2;
	#20
	A = 16'h2964;
	B = 16'h36f8;
	ans = 16'h24b2;
	#20
	A = 16'h3978;
	B = 16'hb798;
	ans = 16'hb531;
	#20
	A = 16'h3ad4;
	B = 16'hb494;
	ans = 16'hb3d1;
	#20
	A = 16'hba62;
	B = 16'h36f6;
	ans = 16'hb58e;
	#20
	A = 16'h3815;
	B = 16'hb439;
	ans = 16'hb04f;
	#20
	A = 16'h3a37;
	B = 16'h358c;
	ans = 16'h344f;
	#20
	A = 16'hb516;
	B = 16'hb638;
	ans = 16'h2fe8;
	#20
	A = 16'hb08a;
	B = 16'hb0a9;
	ans = 16'h254a;
	#20
	A = 16'hb22f;
	B = 16'hb58b;
	ans = 16'h2c49;
	#20
	A = 16'hbb6f;
	B = 16'hbbb3;
	ans = 16'h3b27;
	#20
	A = 16'h3bb2;
	B = 16'hb6de;
	ans = 16'hb69b;
	#20
	A = 16'h3b54;
	B = 16'hbb60;
	ans = 16'hbac1;
	#20
	A = 16'h3862;
	B = 16'h3319;
	ans = 16'h2fc7;
	#20
	A = 16'h3427;
	B = 16'hba22;
	ans = 16'hb25e;
	#20
	A = 16'hb664;
	B = 16'hb867;
	ans = 16'h3309;
	#20
	A = 16'h3bd6;
	B = 16'h36dd;
	ans = 16'h36b9;
	#20
	A = 16'h2dc0;
	B = 16'h393a;
	ans = 16'h2b83;
	#20
	A = 16'hb93e;
	B = 16'h3442;
	ans = 16'hb194;
	#20
	A = 16'h3034;
	B = 16'h22ca;
	ans = 16'h1722;
	#20
	A = 16'h365d;
	B = 16'hac23;
	ans = 16'ha695;
	#20
	A = 16'h3702;
	B = 16'hbaaf;
	ans = 16'hb5db;
	#20
	A = 16'h36b6;
	B = 16'h39d5;
	ans = 16'h34e4;
	#20
	A = 16'hbac5;
	B = 16'hbbfd;
	ans = 16'h3ac2;
	#20
	A = 16'h350e;
	B = 16'hb9a7;
	ans = 16'hb325;
	#20
	A = 16'h3b72;
	B = 16'hbb6d;
	ans = 16'hbae9;
	#20
	A = 16'h3a04;
	B = 16'h3383;
	ans = 16'h31a6;
	#20
	A = 16'h3b87;
	B = 16'h33e0;
	ans = 16'h3369;
	#20
	A = 16'h3873;
	B = 16'hb8d6;
	ans = 16'hb561;
	#20
	A = 16'hba3a;
	B = 16'hb897;
	ans = 16'h3725;
	#20
	A = 16'h39ff;
	B = 16'h3820;
	ans = 16'h362f;
	#20
	A = 16'h33d8;
	B = 16'hb7e8;
	ans = 16'hafc0;
	#20
	A = 16'haefc;
	B = 16'hb326;
	ans = 16'h263e;
	#20
	A = 16'hbb85;
	B = 16'hba0c;
	ans = 16'h39af;
	#20
	A = 16'h3bd1;
	B = 16'hb8aa;
	ans = 16'hb88f;
	#20
	A = 16'h334f;
	B = 16'hbae6;
	ans = 16'hb24d;
	#20
	A = 16'h3aad;
	B = 16'hb432;
	ans = 16'hb300;
	#20
	A = 16'hb111;
	B = 16'hbbce;
	ans = 16'h30f1;
	#20
	A = 16'haeb9;
	B = 16'hb940;
	ans = 16'h2c69;
	#20
	A = 16'h2792;
	B = 16'h334b;
	ans = 16'h1ee7;
	#20
	A = 16'h3904;
	B = 16'haccf;
	ans = 16'haa08;
	#20
	A = 16'hbb2e;
	B = 16'h3ad2;
	ans = 16'hba1f;
	#20
	A = 16'h3514;
	B = 16'hbbdb;
	ans = 16'hb4fd;
	#20
	A = 16'h32d5;
	B = 16'hb7c3;
	ans = 16'haea1;
	#20
	A = 16'h39f2;
	B = 16'h3852;
	ans = 16'h366c;
	#20
	A = 16'h3bf6;
	B = 16'hb14d;
	ans = 16'hb146;
	#20
	A = 16'hb809;
	B = 16'h3aae;
	ans = 16'hb6bd;
	#20
	A = 16'h2a21;
	B = 16'ha906;
	ans = 16'h97b2;
	#20
	A = 16'hb8fc;
	B = 16'hab3c;
	ans = 16'h2882;
	#20
	A = 16'h3aa9;
	B = 16'hb9c4;
	ans = 16'hb8cd;
	#20
	A = 16'h3913;
	B = 16'h3980;
	ans = 16'h36fa;
	#20
	A = 16'h3aee;
	B = 16'h3625;
	ans = 16'h3553;
	#20
	A = 16'h399e;
	B = 16'h3b17;
	ans = 16'h38fa;
	#20
	A = 16'h3959;
	B = 16'hb390;
	ans = 16'hb10e;
	#20
	A = 16'hbbb8;
	B = 16'h3bfc;
	ans = 16'hbbb4;
	#20
	A = 16'h3869;
	B = 16'h394f;
	ans = 16'h35da;
	#20
	A = 16'hbb37;
	B = 16'h340b;
	ans = 16'hb34b;
	#20
	A = 16'h39c3;
	B = 16'h37d3;
	ans = 16'h35a3;
	#20
	A = 16'h367f;
	B = 16'h3ba8;
	ans = 16'h3638;
	#20
	A = 16'hb4a1;
	B = 16'hba43;
	ans = 16'h333f;
	#20
	A = 16'h3a75;
	B = 16'hbb8f;
	ans = 16'hba1a;
	#20
	A = 16'h3345;
	B = 16'h370f;
	ans = 16'h2e6a;
	#20
	A = 16'h3831;
	B = 16'hb568;
	ans = 16'hb1aa;
	#20
	A = 16'h3852;
	B = 16'h2fdd;
	ans = 16'h2c3f;
	#20
	A = 16'h3a3a;
	B = 16'h3803;
	ans = 16'h363f;
	#20
	A = 16'h3b5d;
	B = 16'h35e9;
	ans = 16'h3571;
	#20
	A = 16'hb930;
	B = 16'h2db1;
	ans = 16'hab62;
	#20
	A = 16'h356b;
	B = 16'hba28;
	ans = 16'hb42b;
	#20
	A = 16'hb9b4;
	B = 16'h3b9c;
	ans = 16'hb96d;
	#20
	A = 16'hb3eb;
	B = 16'hb462;
	ans = 16'h2c56;
	#20
	A = 16'hbaad;
	B = 16'h3a25;
	ans = 16'hb921;
	#20
	A = 16'h3985;
	B = 16'h3a30;
	ans = 16'h3845;
	#20
	A = 16'h3b25;
	B = 16'h31c4;
	ans = 16'h3126;
	#20
	A = 16'h3416;
	B = 16'h3abe;
	ans = 16'h32e3;
	#20
	A = 16'hb6e1;
	B = 16'h350b;
	ans = 16'hb056;
	#20
	A = 16'hb913;
	B = 16'hbbbe;
	ans = 16'h38e9;
	#20
	A = 16'h315c;
	B = 16'hb9ff;
	ans = 16'hb004;
	#20
	A = 16'h3586;
	B = 16'hbae1;
	ans = 16'hb4c0;
	#20
	A = 16'hb589;
	B = 16'hb141;
	ans = 16'h2b45;
	#20
	A = 16'h3a5a;
	B = 16'h3bd3;
	ans = 16'h3a36;
	#20
	A = 16'hbb18;
	B = 16'hb499;
	ans = 16'h3414;
	#20
	A = 16'hbaeb;
	B = 16'hb7f7;
	ans = 16'h36e3;
	#20
	A = 16'h31d5;
	B = 16'hac5f;
	ans = 16'ha260;
	#20
	A = 16'hb39c;
	B = 16'haa54;
	ans = 16'h2205;
	#20
	A = 16'hb98e;
	B = 16'hbb0e;
	ans = 16'h38e6;
	#20
	A = 16'h2e63;
	B = 16'h394c;
	ans = 16'h2c3b;
	#20
	A = 16'hbbb8;
	B = 16'h343e;
	ans = 16'hb418;
	#20
	A = 16'hbb59;
	B = 16'hb61f;
	ans = 16'h359f;
	#20
	A = 16'h3a98;
	B = 16'hb581;
	ans = 16'hb489;
	#20
	A = 16'hb8e7;
	B = 16'hbb80;
	ans = 16'h3899;
	#20
	A = 16'h3975;
	B = 16'h368c;
	ans = 16'h3477;
	#20
	A = 16'hba29;
	B = 16'h39cc;
	ans = 16'hb877;
	#20
	A = 16'hac60;
	B = 16'h31e6;
	ans = 16'ha274;
	#20
	A = 16'h35bb;
	B = 16'hae0c;
	ans = 16'ha855;
	#20
	A = 16'hb89b;
	B = 16'hb126;
	ans = 16'h2dee;
	#20
	A = 16'hac84;
	B = 16'hbb77;
	ans = 16'h2c37;
	#20
	A = 16'hb51f;
	B = 16'hb005;
	ans = 16'h2925;
	#20
	A = 16'hb655;
	B = 16'h2dbc;
	ans = 16'ha88a;
	#20
	A = 16'hbbf7;
	B = 16'h98a2;
	ans = 16'h189d;
	#20
	A = 16'h303c;
	B = 16'h3862;
	ans = 16'h2ca4;
	#20
	A = 16'hb62f;
	B = 16'h385d;
	ans = 16'hb2bf;
	#20
	A = 16'h3158;
	B = 16'hb908;
	ans = 16'haeb9;
	#20
	A = 16'hafb7;
	B = 16'hbae7;
	ans = 16'h2ea8;
	#20
	A = 16'h2e4a;
	B = 16'hb5c9;
	ans = 16'ha88c;
	#20
	A = 16'h3b8e;
	B = 16'hb3d1;
	ans = 16'hb362;
	#20
	A = 16'hbbfb;
	B = 16'h37f2;
	ans = 16'hb7ed;
	#20
	A = 16'h396b;
	B = 16'h2fbc;
	ans = 16'h2d3d;
	#20
	A = 16'hba42;
	B = 16'h381c;
	ans = 16'hb66e;
	#20
	A = 16'h3489;
	B = 16'h3599;
	ans = 16'h2e59;
	#20
	A = 16'h2469;
	B = 16'h34ae;
	ans = 16'h1d29;
	#20
	A = 16'hb60e;
	B = 16'hb9c9;
	ans = 16'h3461;
	#20
	A = 16'h3b13;
	B = 16'h368c;
	ans = 16'h35ca;
	#20
	A = 16'hb63b;
	B = 16'hb6f4;
	ans = 16'h316a;
	#20
	A = 16'h3bfe;
	B = 16'ha07a;
	ans = 16'ha079;
	#20
	A = 16'hb976;
	B = 16'h38db;
	ans = 16'hb6a1;
	#20
	A = 16'h3924;
	B = 16'hb24d;
	ans = 16'hb00c;
	#20
	A = 16'hb380;
	B = 16'hb904;
	ans = 16'h30b4;
	#20
	A = 16'h3b84;
	B = 16'h3bdf;
	ans = 16'h3b65;
	#20
	A = 16'h38f0;
	B = 16'h3aa8;
	ans = 16'h381c;
	#20
	A = 16'h33f6;
	B = 16'h39f0;
	ans = 16'h31e9;
	#20
	A = 16'hb875;
	B = 16'h373a;
	ans = 16'hb407;
	#20
	A = 16'h2a84;
	B = 16'hb44f;
	ans = 16'ha305;
	#20
	A = 16'h3a24;
	B = 16'hb102;
	ans = 16'hafb0;
	#20
	A = 16'h3a76;
	B = 16'h3af4;
	ans = 16'h399e;
	#20
	A = 16'hbbf0;
	B = 16'hb446;
	ans = 16'h343d;
	#20
	A = 16'h37d7;
	B = 16'hb97b;
	ans = 16'hb55f;
	#20
	A = 16'h3855;
	B = 16'hb402;
	ans = 16'hb057;
	#20
	A = 16'h3749;
	B = 16'h3710;
	ans = 16'h326e;
	#20
	A = 16'h34fa;
	B = 16'h3905;
	ans = 16'h323f;
	#20
	A = 16'h333e;
	B = 16'h3ab3;
	ans = 16'h3211;
	#20
	A = 16'h3ade;
	B = 16'hac49;
	ans = 16'hab5b;
	#20
	A = 16'hb867;
	B = 16'hb6ab;
	ans = 16'h3357;
	#20
	A = 16'h30ad;
	B = 16'ha4be;
	ans = 16'h998b;
	#20
	A = 16'ha47e;
	B = 16'h318a;
	ans = 16'h9a38;
	#20
	A = 16'h3a6b;
	B = 16'hb3cf;
	ans = 16'hb244;
	#20
	A = 16'h318c;
	B = 16'h3961;
	ans = 16'h2f76;
	#20
	A = 16'hb833;
	B = 16'hb442;
	ans = 16'h3078;
	#20
	A = 16'hb892;
	B = 16'h31fa;
	ans = 16'haed4;
	#20
	A = 16'hbb55;
	B = 16'hb4d7;
	ans = 16'h3470;
	#20
	A = 16'h388f;
	B = 16'h2b93;
	ans = 16'h2851;
	#20
	A = 16'hba8d;
	B = 16'hb883;
	ans = 16'h3764;
	#20
	A = 16'hbb5b;
	B = 16'haa40;
	ans = 16'h29bf;
	#20
	A = 16'hbbe5;
	B = 16'ha96a;
	ans = 16'h2958;
	#20
	A = 16'h3902;
	B = 16'h3502;
	ans = 16'h3245;
	#20
	A = 16'hb607;
	B = 16'ha75d;
	ans = 16'h218c;
	#20
	A = 16'hb62f;
	B = 16'hb2e5;
	ans = 16'h2d54;
	#20
	A = 16'h3b98;
	B = 16'h2cba;
	ans = 16'h2c7d;
	#20
	A = 16'hb5e9;
	B = 16'hafd7;
	ans = 16'h29cb;
	#20
	A = 16'h389a;
	B = 16'hb981;
	ans = 16'hb655;
	#20
	A = 16'h3567;
	B = 16'h2e1c;
	ans = 16'h2820;
	#20
	A = 16'hb19c;
	B = 16'h3149;
	ans = 16'ha769;
	#20
	A = 16'hb52e;
	B = 16'h3a45;
	ans = 16'hb40f;
	#20
	A = 16'hb98b;
	B = 16'hb986;
	ans = 16'h37a7;
	#20
	A = 16'hb1ae;
	B = 16'hbbce;
	ans = 16'h318b;
	#20
	A = 16'hbaa6;
	B = 16'hb594;
	ans = 16'h34a3;
	#20
	A = 16'h3539;
	B = 16'h340a;
	ans = 16'h2d46;
	#20
	A = 16'hb08d;
	B = 16'h398f;
	ans = 16'hae53;
	#20
	A = 16'hb6c7;
	B = 16'h319a;
	ans = 16'hacbf;
	#20
	A = 16'h3602;
	B = 16'h3a99;
	ans = 16'h34f4;
	#20
	A = 16'haf73;
	B = 16'h3abc;
	ans = 16'hae45;
	#20
	A = 16'haf83;
	B = 16'hb978;
	ans = 16'h2d23;
	#20
	A = 16'hb3ae;
	B = 16'hae4f;
	ans = 16'h260e;
	#20
	A = 16'hbbd3;
	B = 16'hb46a;
	ans = 16'h3451;
	#20
	A = 16'hb00a;
	B = 16'h39ce;
	ans = 16'haddd;
	#20
	A = 16'h3a8e;
	B = 16'h3b7e;
	ans = 16'h3a23;
	#20
	A = 16'h3879;
	B = 16'hac8a;
	ans = 16'ha913;
	#20
	A = 16'h3784;
	B = 16'h3b8c;
	ans = 16'h3717;
	#20
	A = 16'h29ad;
	B = 16'h388b;
	ans = 16'h2672;
	#20
	A = 16'h381e;
	B = 16'h30e8;
	ans = 16'h2d0d;
	#20
	A = 16'hbab5;
	B = 16'hb8d8;
	ans = 16'h3810;
	#20
	A = 16'hb0f9;
	B = 16'h3ac1;
	ans = 16'hb033;
	#20
	A = 16'h3b6c;
	B = 16'hb8a8;
	ans = 16'hb852;
	#20
	A = 16'h365f;
	B = 16'h3140;
	ans = 16'h2c2e;
	#20
	A = 16'h3ba0;
	B = 16'h3829;
	ans = 16'h37ee;
	#20
	A = 16'hbb18;
	B = 16'hae1f;
	ans = 16'h2d6d;
	#20
	A = 16'hba53;
	B = 16'h3790;
	ans = 16'hb5fa;
	#20
	A = 16'h3948;
	B = 16'hb737;
	ans = 16'hb4c3;
	#20
	A = 16'hb813;
	B = 16'h3825;
	ans = 16'hb439;
	#20
	A = 16'hba10;
	B = 16'h3829;
	ans = 16'hb64e;
	#20
	A = 16'hbab3;
	B = 16'hb95e;
	ans = 16'h387f;
	#20
	A = 16'hb9af;
	B = 16'had32;
	ans = 16'h2b62;
	#20
	A = 16'h346c;
	B = 16'h3104;
	ans = 16'h298b;
	#20
	A = 16'hba3b;
	B = 16'hb079;
	ans = 16'h2ef7;
	#20
	A = 16'h38aa;
	B = 16'hadd1;
	ans = 16'haac8;
	#20
	A = 16'hb978;
	B = 16'hb683;
	ans = 16'h3474;
	#20
	A = 16'h3acc;
	B = 16'hbb7d;
	ans = 16'hba5d;
	#20
	A = 16'h3859;
	B = 16'hb9b3;
	ans = 16'hb632;
	#20
	A = 16'hbbee;
	B = 16'h2b4e;
	ans = 16'hab3e;
	#20
	A = 16'h37dd;
	B = 16'hbb72;
	ans = 16'hb751;
	#20
	A = 16'h3b6d;
	B = 16'h3772;
	ans = 16'h36e9;
	#20
	A = 16'h3300;
	B = 16'hb96d;
	ans = 16'hb0bf;
	#20
	A = 16'hb1ee;
	B = 16'h39e2;
	ans = 16'hb05c;
	#20
	A = 16'h3bb1;
	B = 16'h387a;
	ans = 16'h384e;
	#20
	A = 16'h38f9;
	B = 16'h38d4;
	ans = 16'h3601;
	#20
	A = 16'h3bb8;
	B = 16'hb8fa;
	ans = 16'hb8cd;
	#20
	A = 16'h3972;
	B = 16'h3ae9;
	ans = 16'h38b4;
	#20
	A = 16'h3729;
	B = 16'hb481;
	ans = 16'hb008;
	#20
	A = 16'hb4bf;
	B = 16'h3940;
	ans = 16'hb23b;
	#20
	A = 16'hb47e;
	B = 16'h309b;
	ans = 16'ha92c;
	#20
	A = 16'h35db;
	B = 16'h3a71;
	ans = 16'h34b7;
	#20
	A = 16'hb6f4;
	B = 16'h33a9;
	ans = 16'haea8;
	#20
	A = 16'hbb7d;
	B = 16'h2918;
	ans = 16'ha8c5;
	#20
	A = 16'hb19b;
	B = 16'hb755;
	ans = 16'h2d23;
	#20
	A = 16'hb9f3;
	B = 16'hba3e;
	ans = 16'h38a4;
	#20
	A = 16'h3819;
	B = 16'h3408;
	ans = 16'h3021;
	#20
	A = 16'h39a4;
	B = 16'h3831;
	ans = 16'h35e9;
	#20
	A = 16'h3bc3;
	B = 16'h34a1;
	ans = 16'h347e;
	#20
	A = 16'h3b7a;
	B = 16'h35f6;
	ans = 16'h3592;
	#20
	A = 16'h3793;
	B = 16'h392f;
	ans = 16'h34e8;
	#20
	A = 16'hb666;
	B = 16'h3abf;
	ans = 16'hb565;
	#20
	A = 16'h3af0;
	B = 16'h2736;
	ans = 16'h2641;
	#20
	A = 16'hb05a;
	B = 16'hb8bd;
	ans = 16'h2d28;
	#20
	A = 16'hb53a;
	B = 16'h354c;
	ans = 16'haeec;
	#20
	A = 16'h3be0;
	B = 16'hb2d9;
	ans = 16'hb2be;
	#20
	A = 16'h3b52;
	B = 16'h3574;
	ans = 16'h34fd;
	#20
	A = 16'h3862;
	B = 16'hb69b;
	ans = 16'hb33d;
	#20
	A = 16'hb565;
	B = 16'hbbca;
	ans = 16'h3541;
	#20
	A = 16'hb885;
	B = 16'hb9ba;
	ans = 16'h3678;
	#20
	A = 16'h374a;
	B = 16'h37ef;
	ans = 16'h333b;
	#20
	A = 16'h3964;
	B = 16'h3a5d;
	ans = 16'h384a;
	#20
	A = 16'hb985;
	B = 16'h38d9;
	ans = 16'hb6b0;
	#20
	A = 16'hb505;
	B = 16'hb692;
	ans = 16'h301f;
	#20
	A = 16'h3a3a;
	B = 16'h3358;
	ans = 16'h31b7;
	#20
	A = 16'h3674;
	B = 16'h30d1;
	ans = 16'h2bc5;
	#20
	A = 16'hb3b9;
	B = 16'h3b25;
	ans = 16'hb2e6;
	#20
	A = 16'hb8ac;
	B = 16'h3a09;
	ans = 16'hb70d;
	#20
	A = 16'h3831;
	B = 16'ha6a1;
	ans = 16'ha2f2;
	#20
	A = 16'hbac7;
	B = 16'hb017;
	ans = 16'h2eee;
	#20
	A = 16'hb149;
	B = 16'h35a2;
	ans = 16'hab71;
	#20
	A = 16'h32fa;
	B = 16'h27a3;
	ans = 16'h1ea9;
	#20
	A = 16'h3b6f;
	B = 16'hb8e1;
	ans = 16'hb889;
	#20
	A = 16'h39d4;
	B = 16'hb952;
	ans = 16'hb7c0;
	#20
	A = 16'hb7d3;
	B = 16'h376a;
	ans = 16'hb340;
	#20
	A = 16'h3766;
	B = 16'hb1f5;
	ans = 16'had82;
	#20
	A = 16'h3896;
	B = 16'h3943;
	ans = 16'h3608;
	#20
	A = 16'h32ed;
	B = 16'hadff;
	ans = 16'ha531;
	#20
	A = 16'h3bb4;
	B = 16'hba2c;
	ans = 16'hb9f1;
	#20
	A = 16'h3acd;
	B = 16'h3293;
	ans = 16'h3197;
	#20
	A = 16'hba7b;
	B = 16'h39cf;
	ans = 16'hb8b5;
	#20
	A = 16'h3511;
	B = 16'hb9c3;
	ans = 16'hb34c;
	#20
	A = 16'h3b68;
	B = 16'h37ff;
	ans = 16'h3767;
	#20
	A = 16'hb858;
	B = 16'hbbbc;
	ans = 16'h3833;
	#20
	A = 16'h3939;
	B = 16'h2d32;
	ans = 16'h2ac9;
	#20
	A = 16'h3867;
	B = 16'h334f;
	ans = 16'h3006;
	#20
	A = 16'hb91e;
	B = 16'hb9aa;
	ans = 16'h373f;
	#20
	A = 16'hb479;
	B = 16'hb1a4;
	ans = 16'h2a4f;
	#20
	A = 16'hb395;
	B = 16'h309c;
	ans = 16'ha85e;
	#20
	A = 16'hb547;
	B = 16'h39f4;
	ans = 16'hb3db;
	#20
	A = 16'hb833;
	B = 16'hb9d8;
	ans = 16'h3623;
	#20
	A = 16'hb9a2;
	B = 16'hbb62;
	ans = 16'h3933;
	#20
	A = 16'hb79b;
	B = 16'h33df;
	ans = 16'haf7c;
	#20
	A = 16'hb100;
	B = 16'h3540;
	ans = 16'haa90;
	#20
	A = 16'hb0aa;
	B = 16'h3a26;
	ans = 16'haf2b;
	#20
	A = 16'hb93f;
	B = 16'hb6fc;
	ans = 16'h3495;
	#20
	A = 16'h362e;
	B = 16'hb1dd;
	ans = 16'hac87;
	#20
	A = 16'hbabd;
	B = 16'h3ad1;
	ans = 16'hb9be;
	#20
	A = 16'hb967;
	B = 16'hb7b3;
	ans = 16'h3533;
	#20
	A = 16'h3906;
	B = 16'hb2d7;
	ans = 16'hb04c;
	#20
	A = 16'had44;
	B = 16'hb866;
	ans = 16'h29ca;
	#20
	A = 16'hb52e;
	B = 16'hb1fb;
	ans = 16'h2bbf;
	#20
	A = 16'hb394;
	B = 16'haf0e;
	ans = 16'h26af;
	#20
	A = 16'h368c;
	B = 16'hbb84;
	ans = 16'hb627;
	#20
	A = 16'hb03e;
	B = 16'habcf;
	ans = 16'h2024;
	#20
	A = 16'haf85;
	B = 16'hba61;
	ans = 16'h2dff;
	#20
	A = 16'hb9e9;
	B = 16'h3a8b;
	ans = 16'hb8d5;
	#20
	A = 16'hb8db;
	B = 16'h3035;
	ans = 16'had1b;
	#20
	A = 16'h386e;
	B = 16'hb73c;
	ans = 16'hb401;
	#20
	A = 16'hae0c;
	B = 16'h3b12;
	ans = 16'had58;
	#20
	A = 16'hb8f6;
	B = 16'hb856;
	ans = 16'h3561;
	#20
	A = 16'hbb15;
	B = 16'h3b06;
	ans = 16'hba38;
	#20
	A = 16'hb1d1;
	B = 16'h3a6c;
	ans = 16'hb0ab;
	#20
	A = 16'hbbcb;
	B = 16'hb968;
	ans = 16'h3944;
	#20
	A = 16'hb644;
	B = 16'h3b94;
	ans = 16'hb5ef;
	#20
	A = 16'h3461;
	B = 16'h3716;
	ans = 16'h2fc2;
	#20
	A = 16'hb585;
	B = 16'hb602;
	ans = 16'h3025;
	#20
	A = 16'hba70;
	B = 16'hba82;
	ans = 16'h393d;
	#20
	A = 16'h356d;
	B = 16'h3065;
	ans = 16'h29f6;
	#20
	A = 16'h3b07;
	B = 16'h3bd5;
	ans = 16'h3ae1;
	#20
	A = 16'h39dd;
	B = 16'h2f10;
	ans = 16'h2d2d;
	#20
	A = 16'h3a2b;
	B = 16'h338b;
	ans = 16'h31d1;
	#20
	A = 16'hb0f7;
	B = 16'h3aee;
	ans = 16'hb04d;
	#20
	A = 16'h3bfd;
	B = 16'h356a;
	ans = 16'h3568;
	#20
	A = 16'h3bf7;
	B = 16'h39fe;
	ans = 16'h39f7;
	#20
	A = 16'hb28c;
	B = 16'h3a2b;
	ans = 16'hb10c;
	#20
	A = 16'hb0aa;
	B = 16'hb88d;
	ans = 16'h2d4e;
	#20
	A = 16'h38b6;
	B = 16'hbb44;
	ans = 16'hb847;
	#20
	A = 16'h393b;
	B = 16'h32c7;
	ans = 16'h306e;
	#20
	A = 16'h3609;
	B = 16'hbb93;
	ans = 16'hb5b7;
	#20
	A = 16'hb9a4;
	B = 16'h2c2b;
	ans = 16'ha9e1;
	#20
	A = 16'h3a4f;
	B = 16'hbb36;
	ans = 16'hb9b0;
	#20
	A = 16'h3506;
	B = 16'ha1ae;
	ans = 16'h9b22;
	#20
	A = 16'hb8a5;
	B = 16'h2dff;
	ans = 16'haaf6;
	#20
	A = 16'h266a;
	B = 16'h3816;
	ans = 16'h228d;
	#20
	A = 16'h3016;
	B = 16'hb906;
	ans = 16'had22;
	#20
	A = 16'hae96;
	B = 16'h37fa;
	ans = 16'haa91;
	#20
	A = 16'h38e2;
	B = 16'h3884;
	ans = 16'h3583;
	#20
	A = 16'haab1;
	B = 16'hb13e;
	ans = 16'h2062;
	#20
	A = 16'hb5e0;
	B = 16'h3842;
	ans = 16'hb241;
	#20
	A = 16'hb822;
	B = 16'h365c;
	ans = 16'hb292;
	#20
	A = 16'hbbd9;
	B = 16'h35f9;
	ans = 16'hb5dc;
	#20
	A = 16'hb21a;
	B = 16'hb6c9;
	ans = 16'h2d2d;
	#20
	A = 16'hbadd;
	B = 16'haab2;
	ans = 16'h29be;
	#20
	A = 16'hb569;
	B = 16'h3a43;
	ans = 16'hb43c;
	#20
	A = 16'h262d;
	B = 16'hab22;
	ans = 16'h9582;
	#20
	A = 16'hb0c1;
	B = 16'h384d;
	ans = 16'had1d;
	#20
	A = 16'hba65;
	B = 16'h3833;
	ans = 16'hb6b7;
	#20
	A = 16'hb5ca;
	B = 16'h3164;
	ans = 16'habcd;
	#20
	A = 16'hb236;
	B = 16'h35ac;
	ans = 16'hac67;
	#20
	A = 16'h37fa;
	B = 16'hb76e;
	ans = 16'hb368;
	#20
	A = 16'h3762;
	B = 16'h3517;
	ans = 16'h30b2;
	#20
	A = 16'h360c;
	B = 16'h36e2;
	ans = 16'h3134;
	#20
	A = 16'hbb92;
	B = 16'h3bcb;
	ans = 16'hbb60;
	#20
	A = 16'hb02c;
	B = 16'h3217;
	ans = 16'ha65a;
	#20
	A = 16'hbbc1;
	B = 16'h9d29;
	ans = 16'h1d00;
	#20
	A = 16'hb7a5;
	B = 16'h390d;
	ans = 16'hb4d4;
	#20
	A = 16'hb771;
	B = 16'hb962;
	ans = 16'h3502;
	#20
	A = 16'hab44;
	B = 16'h3bfe;
	ans = 16'hab42;
	#20
	A = 16'h3702;
	B = 16'hb8e9;
	ans = 16'hb44d;
	#20
	A = 16'h3a4f;
	B = 16'h38ed;
	ans = 16'h37c5;
	#20
	A = 16'h2c16;
	B = 16'hb8cc;
	ans = 16'ha8e6;
	#20
	A = 16'h3a97;
	B = 16'hba41;
	ans = 16'hb927;
	#20
	A = 16'h310c;
	B = 16'h3b8f;
	ans = 16'h30c5;
	#20
	A = 16'hba40;
	B = 16'h3832;
	ans = 16'hb68e;
	#20
	A = 16'h3618;
	B = 16'h337d;
	ans = 16'h2db4;
	#20
	A = 16'h3a01;
	B = 16'h351f;
	ans = 16'h33b0;
	#20
	A = 16'h3b7b;
	B = 16'hb41c;
	ans = 16'hb3af;
	#20
	A = 16'h3719;
	B = 16'hba69;
	ans = 16'hb5b0;
	#20
	A = 16'h39de;
	B = 16'h3741;
	ans = 16'h3552;
	#20
	A = 16'haf6a;
	B = 16'h3a22;
	ans = 16'hadaf;
	#20
	A = 16'h3a2a;
	B = 16'h3bd9;
	ans = 16'h3a0c;
	#20
	A = 16'hb40f;
	B = 16'h38ed;
	ans = 16'hb0ff;
	#20
	A = 16'h3af9;
	B = 16'h39b8;
	ans = 16'h38fc;
	#20
	A = 16'h3957;
	B = 16'hb860;
	ans = 16'hb5d7;
	#20
	A = 16'h346a;
	B = 16'hb99b;
	ans = 16'hb230;
	#20
	A = 16'hbb11;
	B = 16'hbb84;
	ans = 16'h3aa3;
	#20
	A = 16'h2aee;
	B = 16'h277f;
	ans = 16'h167e;
	#20
	A = 16'ha8b9;
	B = 16'hb5d8;
	ans = 16'h22e6;
	#20
	A = 16'h3ad4;
	B = 16'h3b2f;
	ans = 16'h3a22;
	#20
	A = 16'hb37c;
	B = 16'hb440;
	ans = 16'h2bf4;
	#20
	A = 16'h3509;
	B = 16'h37d0;
	ans = 16'h30eb;
	#20
	A = 16'h3a21;
	B = 16'h3b44;
	ans = 16'h3991;
	#20
	A = 16'h387c;
	B = 16'hb7a0;
	ans = 16'hb446;
	#20
	A = 16'h361e;
	B = 16'h38c7;
	ans = 16'h334e;
	#20
	A = 16'h3ba5;
	B = 16'hb7d0;
	ans = 16'hb777;
	#20
	A = 16'h9b92;
	B = 16'h352f;
	ans = 16'h94e8;
	#20
	A = 16'hafbe;
	B = 16'hb433;
	ans = 16'h2810;
	#20
	A = 16'hb9e2;
	B = 16'haf96;
	ans = 16'h2d94;
	#20
	A = 16'hbaa8;
	B = 16'h372d;
	ans = 16'hb5f8;
	#20
	A = 16'hb5c0;
	B = 16'h3262;
	ans = 16'hac96;
	#20
	A = 16'h3bb2;
	B = 16'h36d5;
	ans = 16'h3692;
	#20
	A = 16'h3b1c;
	B = 16'hbb17;
	ans = 16'hba4d;
	#20
	A = 16'hb95d;
	B = 16'h3999;
	ans = 16'hb781;
	#20
	A = 16'hb4ec;
	B = 16'h3baa;
	ans = 16'hb4b7;
	#20
	A = 16'hb99c;
	B = 16'h3365;
	ans = 16'hb12f;
	#20
	A = 16'h330e;
	B = 16'h3b9f;
	ans = 16'h32b8;
	#20
	A = 16'h32e4;
	B = 16'h3882;
	ans = 16'h2fc4;
	#20
	A = 16'hbace;
	B = 16'hba3a;
	ans = 16'h394c;
	#20
	A = 16'hbb23;
	B = 16'h353f;
	ans = 16'hb4ae;
	#20
	A = 16'h3371;
	B = 16'hbad8;
	ans = 16'hb25e;
	#20
	A = 16'hbaee;
	B = 16'hb35b;
	ans = 16'h325f;
	#20
	A = 16'hb749;
	B = 16'hb599;
	ans = 16'h3119;
	#20
	A = 16'h3933;
	B = 16'hb726;
	ans = 16'hb4a5;
	#20
	A = 16'hb9bd;
	B = 16'hba64;
	ans = 16'h3895;
	#20
	A = 16'hae26;
	B = 16'h3458;
	ans = 16'ha6ad;
	#20
	A = 16'h347f;
	B = 16'h369f;
	ans = 16'h2f71;
	#20
	A = 16'ha96a;
	B = 16'hb7f6;
	ans = 16'h2563;
	#20
	A = 16'h32fc;
	B = 16'h3548;
	ans = 16'h2c9c;
	#20
	A = 16'h3b8c;
	B = 16'hb9c3;
	ans = 16'hb96f;
	#20
	A = 16'h3b31;
	B = 16'h3b1d;
	ans = 16'h3a65;
	#20
	A = 16'hb745;
	B = 16'ha9c9;
	ans = 16'h2542;
	#20
	A = 16'hba95;
	B = 16'h3908;
	ans = 16'hb824;
	#20
	A = 16'hb82f;
	B = 16'hb226;
	ans = 16'h2e6e;
	#20
	A = 16'hba49;
	B = 16'hb9f3;
	ans = 16'h38ad;
	#20
	A = 16'hb762;
	B = 16'ha20a;
	ans = 16'h1d93;
	#20
	A = 16'h3665;
	B = 16'hbad9;
	ans = 16'hb579;
	#20
	A = 16'hb67c;
	B = 16'hb7f3;
	ans = 16'h3271;
	#20
	A = 16'h2a86;
	B = 16'h3788;
	ans = 16'h2624;
	#20
	A = 16'h3a72;
	B = 16'h943a;
	ans = 16'h92cf;
	#20
	A = 16'h3837;
	B = 16'h3b31;
	ans = 16'h3794;
	#20
	A = 16'h3453;
	B = 16'h3712;
	ans = 16'h2fa5;
	#20
	A = 16'hb821;
	B = 16'hb705;
	ans = 16'h333f;
	#20
	A = 16'h398e;
	B = 16'h3bd8;
	ans = 16'h3972;
	#20
	A = 16'hbb4d;
	B = 16'habe4;
	ans = 16'h2b33;
	#20
	A = 16'h35c5;
	B = 16'hbbd8;
	ans = 16'hb5a8;
	#20
	A = 16'hb3e8;
	B = 16'hbbf5;
	ans = 16'h33dd;
	#20
	A = 16'hb211;
	B = 16'h3a7a;
	ans = 16'hb0e9;
	#20
	A = 16'hb774;
	B = 16'h377e;
	ans = 16'hb2fb;
	#20
	A = 16'h288e;
	B = 16'hba84;
	ans = 16'ha76b;
	#20
	A = 16'habbd;
	B = 16'hb97f;
	ans = 16'h2951;
	#20
	A = 16'h387a;
	B = 16'h39f5;
	ans = 16'h36ab;
	#20
	A = 16'h39f4;
	B = 16'h3878;
	ans = 16'h36a7;
	#20
	A = 16'h398f;
	B = 16'hb7ef;
	ans = 16'hb583;
	#20
	A = 16'hb0f8;
	B = 16'hb8a5;
	ans = 16'h2dc5;
	#20
	A = 16'h307f;
	B = 16'h36a4;
	ans = 16'h2b77;
	#20
	A = 16'hb7c1;
	B = 16'h36a9;
	ans = 16'hb275;
	#20
	A = 16'hbb7a;
	B = 16'h396a;
	ans = 16'hb90f;
	#20
	A = 16'h37ae;
	B = 16'h3af9;
	ans = 16'h36b2;
	#20
	A = 16'hae11;
	B = 16'hb9f5;
	ans = 16'h2c84;
	#20
	A = 16'h3a96;
	B = 16'hb981;
	ans = 16'hb888;
	#20
	A = 16'hb020;
	B = 16'h301d;
	ans = 16'ha43e;
	#20
	A = 16'hb991;
	B = 16'h3818;
	ans = 16'hb5b2;
	#20
	A = 16'hb5ca;
	B = 16'h3969;
	ans = 16'hb3d4;
	#20
	A = 16'h3b0d;
	B = 16'hb4aa;
	ans = 16'hb41c;
	#20
	A = 16'hbbb3;
	B = 16'hb7db;
	ans = 16'h378f;
	#20
	A = 16'h3b4b;
	B = 16'hbaf5;
	ans = 16'hba58;
	#20
	A = 16'h3106;
	B = 16'h380e;
	ans = 16'h2d18;
	#20
	A = 16'h35f1;
	B = 16'haa83;
	ans = 16'ha4d6;
	#20
	A = 16'hbaee;
	B = 16'hb7ed;
	ans = 16'h36de;
	#20
	A = 16'hb978;
	B = 16'hbba9;
	ans = 16'h393d;
	#20
	A = 16'h36a4;
	B = 16'hb968;
	ans = 16'hb47d;
	#20
	A = 16'hb8ef;
	B = 16'hbab2;
	ans = 16'h3821;
	#20
	A = 16'hb8c5;
	B = 16'ha7e4;
	ans = 16'h24b4;
	#20
	A = 16'h3093;
	B = 16'hb64a;
	ans = 16'hab31;
	#20
	A = 16'h386f;
	B = 16'h1d08;
	ans = 16'h1994;
	#20
	A = 16'h3a61;
	B = 16'h3924;
	ans = 16'h3819;
	#20
	A = 16'hb844;
	B = 16'h3b07;
	ans = 16'hb77e;
	#20
	A = 16'hb023;
	B = 16'hba5c;
	ans = 16'h2e94;
	#20
	A = 16'hbb6a;
	B = 16'hb70f;
	ans = 16'h368b;
	#20
	A = 16'hb420;
	B = 16'h3256;
	ans = 16'haa89;
	#20
	A = 16'hbb27;
	B = 16'hbbc1;
	ans = 16'h3aef;
	#20
	A = 16'h372e;
	B = 16'hb9b4;
	ans = 16'hb51e;
	#20
	A = 16'hb25e;
	B = 16'hb52e;
	ans = 16'h2c1f;
	#20
	A = 16'hbb68;
	B = 16'h376e;
	ans = 16'hb6e1;
	#20
	A = 16'h39c8;
	B = 16'h3a8c;
	ans = 16'h38bb;
	#20
	A = 16'h2cbf;
	B = 16'hba13;
	ans = 16'hab35;
	#20
	A = 16'hb9a6;
	B = 16'h39fe;
	ans = 16'hb83b;
	#20
	A = 16'h397f;
	B = 16'hb85f;
	ans = 16'hb602;
	#20
	A = 16'h1c95;
	B = 16'h3811;
	ans = 16'h18a8;
	#20
	A = 16'h3872;
	B = 16'hb94f;
	ans = 16'hb5e6;
	#20
	A = 16'h3861;
	B = 16'hb5d0;
	ans = 16'hb25d;
	#20
	A = 16'h37d5;
	B = 16'hb848;
	ans = 16'hb431;
	#20
	A = 16'h3a8f;
	B = 16'h3514;
	ans = 16'h342a;
	#20
	A = 16'haa10;
	B = 16'hb3fa;
	ans = 16'h220b;
	#20
	A = 16'hb1d5;
	B = 16'h2e5e;
	ans = 16'ha4a4;
	#20
	A = 16'h39fc;
	B = 16'hadf8;
	ans = 16'hac77;
	#20
	A = 16'h39b2;
	B = 16'h3bd2;
	ans = 16'h3991;
	#20
	A = 16'hb747;
	B = 16'h3aa9;
	ans = 16'hb60f;
	#20
	A = 16'h31f4;
	B = 16'hb8ab;
	ans = 16'haef2;
	#20
	A = 16'hb86b;
	B = 16'h3bea;
	ans = 16'hb85f;
	#20
	A = 16'h37f6;
	B = 16'hb604;
	ans = 16'hb1fc;
	#20
	A = 16'hbb20;
	B = 16'h39dd;
	ans = 16'hb939;
	#20
	A = 16'hb9b6;
	B = 16'h3b53;
	ans = 16'hb93b;
	#20
	A = 16'h3417;
	B = 16'h358c;
	ans = 16'h2dac;
	#20
	A = 16'ha967;
	B = 16'hb677;
	ans = 16'h245e;
	#20
	A = 16'ha746;
	B = 16'h2b99;
	ans = 16'h96e8;
	#20
	A = 16'hb93e;
	B = 16'h3502;
	ans = 16'hb290;
	#20
	A = 16'hbb9c;
	B = 16'h154a;
	ans = 16'h9508;
	#20
	A = 16'h36d9;
	B = 16'hb7ea;
	ans = 16'hb2c6;
	#20
	A = 16'hb96c;
	B = 16'h3464;
	ans = 16'hb1f4;
	#20
	A = 16'ha9de;
	B = 16'ha832;
	ans = 16'h1627;
	#20
	A = 16'hbb0b;
	B = 16'hb5bf;
	ans = 16'h350f;
	#20
	A = 16'hb378;
	B = 16'hb80c;
	ans = 16'h2f8e;
	#20
	A = 16'hb125;
	B = 16'hb363;
	ans = 16'h28c0;
	#20
	A = 16'hb5d1;
	B = 16'h320d;
	ans = 16'hac66;
	#20
	A = 16'h3622;
	B = 16'hbb30;
	ans = 16'hb583;
	#20
	A = 16'hbb53;
	B = 16'hb1f2;
	ans = 16'h3171;
	#20
	A = 16'hb8e2;
	B = 16'h3b9d;
	ans = 16'hb8a6;
	#20
	A = 16'h38d3;
	B = 16'h35e3;
	ans = 16'h331a;
	#20
	A = 16'h385c;
	B = 16'hbb50;
	ans = 16'hb7f8;
	#20
	A = 16'h388e;
	B = 16'h29bc;
	ans = 16'h2688;
	#20
	A = 16'hb8a5;
	B = 16'hb9fe;
	ans = 16'h36f5;
	#20
	A = 16'h2c67;
	B = 16'h39ee;
	ans = 16'h2a87;
	#20
	A = 16'hb862;
	B = 16'h3325;
	ans = 16'hafd4;
	#20
	A = 16'hac15;
	B = 16'hb23a;
	ans = 16'h225b;
	#20
	A = 16'h2ed7;
	B = 16'h36e6;
	ans = 16'h29e6;
	#20
	A = 16'hba5f;
	B = 16'h3988;
	ans = 16'hb868;
	#20
	A = 16'hb791;
	B = 16'h335e;
	ans = 16'haef8;
	#20
	A = 16'h39b6;
	B = 16'h3a4b;
	ans = 16'h387e;
	#20
	A = 16'h2718;
	B = 16'hb9a5;
	ans = 16'ha501;
	#20
	A = 16'hb8a2;
	B = 16'hbb0e;
	ans = 16'h3816;
	#20
	A = 16'hb15d;
	B = 16'h3a2f;
	ans = 16'hb025;
	#20
	A = 16'hb935;
	B = 16'h3aaa;
	ans = 16'hb856;
	#20
	A = 16'h3565;
	B = 16'h3735;
	ans = 16'h30dc;
	#20
	A = 16'hb3cf;
	B = 16'hb9ee;
	ans = 16'h31ca;
	#20
	A = 16'hb6ce;
	B = 16'hba83;
	ans = 16'h358a;
	#20
	A = 16'hb77a;
	B = 16'h3922;
	ans = 16'hb4cc;
	#20
	A = 16'hba0a;
	B = 16'hb541;
	ans = 16'h33ef;
	#20
	A = 16'h36ae;
	B = 16'h3794;
	ans = 16'h3254;
	#20
	A = 16'h39a5;
	B = 16'h14e8;
	ans = 16'h12ec;
	#20
	A = 16'h39d3;
	B = 16'h30ab;
	ans = 16'h2ecc;
	#20
	A = 16'hb809;
	B = 16'h378f;
	ans = 16'hb3a0;
	#20
	A = 16'h37e9;
	B = 16'hbb13;
	ans = 16'hb6ff;
	#20
	A = 16'h3474;
	B = 16'h3818;
	ans = 16'h308f;
	#20
	A = 16'hbb72;
	B = 16'hbab7;
	ans = 16'h3a40;
	#20
	A = 16'hb401;
	B = 16'h3931;
	ans = 16'hb132;
	#20
	A = 16'h390b;
	B = 16'h380a;
	ans = 16'h3518;
	#20
	A = 16'h3a7a;
	B = 16'hbad8;
	ans = 16'hb98a;
	#20
	A = 16'h346f;
	B = 16'ha883;
	ans = 16'ha100;
	#20
	A = 16'hb85c;
	B = 16'hb902;
	ans = 16'h3575;
	#20
	A = 16'hbb96;
	B = 16'hb9bf;
	ans = 16'h3973;
	#20
	A = 16'hb75f;
	B = 16'hbbb4;
	ans = 16'h3719;
	#20
	A = 16'h3b0a;
	B = 16'h37cc;
	ans = 16'h36dc;
	#20
	A = 16'h321f;
	B = 16'hba02;
	ans = 16'hb099;
	#20
	A = 16'h378e;
	B = 16'h38d2;
	ans = 16'h348d;
	#20
	A = 16'hb9c1;
	B = 16'h3b26;
	ans = 16'hb924;
	#20
	A = 16'h39cb;
	B = 16'hb3d7;
	ans = 16'hb1ad;
	#20
	A = 16'hbb89;
	B = 16'h3625;
	ans = 16'hb5ca;
	#20
	A = 16'h386b;
	B = 16'hb7cc;
	ans = 16'hb44e;
	#20
	A = 16'had26;
	B = 16'h3786;
	ans = 16'ha8d7;
	#20
	A = 16'hb921;
	B = 16'hbb9e;
	ans = 16'h38e2;
	#20
	A = 16'h39fb;
	B = 16'h3953;
	ans = 16'h37f6;
	#20
	A = 16'hb517;
	B = 16'h2b92;
	ans = 16'ha4d1;
	#20
	A = 16'hb13c;
	B = 16'hbb98;
	ans = 16'h30f8;
	#20
	A = 16'h34ac;
	B = 16'hb859;
	ans = 16'hb114;
	#20
	A = 16'hb843;
	B = 16'h315c;
	ans = 16'hadb6;
	#20
	A = 16'hb9c3;
	B = 16'h36f0;
	ans = 16'hb4ff;
	#20
	A = 16'h3b3b;
	B = 16'h3b96;
	ans = 16'h3adb;
	#20
	A = 16'h3783;
	B = 16'hb9ce;
	ans = 16'hb573;
	#20
	A = 16'h396e;
	B = 16'h2e0f;
	ans = 16'h2c1d;
	#20
	A = 16'h39ef;
	B = 16'hb95b;
	ans = 16'hb7f2;
	#20
	A = 16'h38ef;
	B = 16'hba13;
	ans = 16'hb77e;
	#20
	A = 16'h3899;
	B = 16'hb9d0;
	ans = 16'hb6ae;
	#20
	A = 16'hba04;
	B = 16'hb41c;
	ans = 16'h322e;
	#20
	A = 16'h3b2a;
	B = 16'h373e;
	ans = 16'h367c;
	#20
	A = 16'hb6ff;
	B = 16'hb826;
	ans = 16'h3341;
	#20
	A = 16'hbbff;
	B = 16'h2e85;
	ans = 16'hae84;
	#20
	A = 16'hbac9;
	B = 16'hba7b;
	ans = 16'h397f;
	#20
	A = 16'hb098;
	B = 16'h3107;
	ans = 16'ha5c6;
	#20
	A = 16'h358b;
	B = 16'ha50a;
	ans = 16'h9efc;
	#20
	A = 16'h3aac;
	B = 16'h3900;
	ans = 16'h382c;
	#20
	A = 16'hb8dd;
	B = 16'h3973;
	ans = 16'hb6a0;
	#20
	A = 16'h3bba;
	B = 16'h39a7;
	ans = 16'h3976;
	#20
	A = 16'hbbcc;
	B = 16'hb422;
	ans = 16'h3407;
	#20
	A = 16'h3bfe;
	B = 16'h39ab;
	ans = 16'h39aa;
	#20
	A = 16'h37ea;
	B = 16'h3806;
	ans = 16'h33f6;
	#20
	A = 16'h2500;
	B = 16'hb864;
	ans = 16'ha17d;
	#20
	A = 16'hb8ff;
	B = 16'h353a;
	ans = 16'hb287;
	#20
	A = 16'h30a9;
	B = 16'hb730;
	ans = 16'hac30;
	#20
	A = 16'h3047;
	B = 16'hb441;
	ans = 16'ha88d;
	#20
	A = 16'h25a7;
	B = 16'hb938;
	ans = 16'ha360;
	#20
	A = 16'hbb9f;
	B = 16'h3bcf;
	ans = 16'hbb70;
	#20
	A = 16'h3874;
	B = 16'h37e0;
	ans = 16'h3462;
	#20
	A = 16'h39cd;
	B = 16'h3481;
	ans = 16'h3288;
	#20
	A = 16'h347d;
	B = 16'h38a1;
	ans = 16'h3132;
	#20
	A = 16'hb53b;
	B = 16'h399f;
	ans = 16'hb35a;
	#20
	A = 16'h3aab;
	B = 16'hb198;
	ans = 16'hb0aa;
	#20
	A = 16'h2e0d;
	B = 16'h9f72;
	ans = 16'h91a2;
	#20
	A = 16'h3807;
	B = 16'hb8b5;
	ans = 16'hb4bd;
	#20
	A = 16'hb571;
	B = 16'h199b;
	ans = 16'h93a0;
	#20
	A = 16'h3922;
	B = 16'hb673;
	ans = 16'hb423;
	#20
	A = 16'h3812;
	B = 16'hb985;
	ans = 16'hb59e;
	#20
	A = 16'hbaa3;
	B = 16'h3842;
	ans = 16'hb711;
	#20
	A = 16'h36fc;
	B = 16'hb648;
	ans = 16'hb17c;
	#20
	A = 16'h33a1;
	B = 16'ha1c6;
	ans = 16'h9981;
	#20
	A = 16'hb7a0;
	B = 16'h38c2;
	ans = 16'hb489;
	#20
	A = 16'h30ba;
	B = 16'h37df;
	ans = 16'h2ca7;
	#20
	A = 16'h2c37;
	B = 16'hb8b0;
	ans = 16'ha8f0;
	#20
	A = 16'hade6;
	B = 16'hb2e8;
	ans = 16'h2518;
	#20
	A = 16'h343a;
	B = 16'h296b;
	ans = 16'h21ba;
	#20
	A = 16'hba0f;
	B = 16'hb8b2;
	ans = 16'h371d;
	#20
	A = 16'hbac8;
	B = 16'h34bd;
	ans = 16'hb404;
	#20
	A = 16'h395e;
	B = 16'h379d;
	ans = 16'h351c;
	#20
	A = 16'hbb3f;
	B = 16'hb01f;
	ans = 16'h2f77;
	#20
	A = 16'hba43;
	B = 16'hba15;
	ans = 16'h38c3;
	#20
	A = 16'h34c2;
	B = 16'hbbe1;
	ans = 16'hb4b0;
	#20
	A = 16'h38d7;
	B = 16'hb92a;
	ans = 16'hb640;
	#20
	A = 16'h32ab;
	B = 16'h2a41;
	ans = 16'h2136;
	#20
	A = 16'h24c6;
	B = 16'h39d8;
	ans = 16'h22f9;
	#20
	A = 16'h3909;
	B = 16'h3919;
	ans = 16'h366b;
	#20
	A = 16'h3a7a;
	B = 16'h3a0a;
	ans = 16'h38e4;
	#20
	A = 16'h3b32;
	B = 16'hb5fd;
	ans = 16'hb563;
	#20
	A = 16'h3a54;
	B = 16'hb7ad;
	ans = 16'hb612;
	#20
	A = 16'h3291;
	B = 16'hb552;
	ans = 16'hac5e;
	#20
	A = 16'hb61c;
	B = 16'h27fb;
	ans = 16'ha218;
	#20
	A = 16'h34e7;
	B = 16'h35c2;
	ans = 16'h2f0f;
	#20
	A = 16'h3690;
	B = 16'had3c;
	ans = 16'ha84b;
	#20
	A = 16'h338f;
	B = 16'hb1e4;
	ans = 16'ha991;
	#20
	A = 16'hb5d9;
	B = 16'h39fe;
	ans = 16'hb461;
	#20
	A = 16'h3990;
	B = 16'hb5d8;
	ans = 16'hb410;
	#20
	A = 16'hba5e;
	B = 16'hb8bd;
	ans = 16'h378b;
	#20
	A = 16'hb5d3;
	B = 16'h377e;
	ans = 16'hb174;
	#20
	A = 16'h37d8;
	B = 16'hb999;
	ans = 16'hb57d;
	#20
	A = 16'h3b41;
	B = 16'h366a;
	ans = 16'h35d1;
	#20
	A = 16'hb017;
	B = 16'hbaec;
	ans = 16'h2f14;
	#20
	A = 16'hbba3;
	B = 16'hb74f;
	ans = 16'h36fa;
	#20
	A = 16'hbaec;
	B = 16'haf20;
	ans = 16'h2e2a;
	#20
	A = 16'hb0f6;
	B = 16'h3a39;
	ans = 16'hafb8;
	#20
	A = 16'h360f;
	B = 16'h3b52;
	ans = 16'h358b;
	#20
	A = 16'h34d5;
	B = 16'hb975;
	ans = 16'hb298;
	#20
	A = 16'h2c6b;
	B = 16'h2e60;
	ans = 16'h1f0b;
	#20
	A = 16'h3b4c;
	B = 16'h38e8;
	ans = 16'h387a;
	#20
	A = 16'hbbf0;
	B = 16'h3500;
	ans = 16'hb4f6;
	#20
	A = 16'hb127;
	B = 16'hb54f;
	ans = 16'h2ad7;
	#20
	A = 16'hb18f;
	B = 16'hb752;
	ans = 16'h2d16;
	#20
	A = 16'hb914;
	B = 16'h38b0;
	ans = 16'hb5f3;
	#20
	A = 16'h9da7;
	B = 16'h39ea;
	ans = 16'h9c2e;
	#20
	A = 16'hb2c1;
	B = 16'hb029;
	ans = 16'h2706;
	#20
	A = 16'h344b;
	B = 16'had9b;
	ans = 16'ha604;
	#20
	A = 16'h389b;
	B = 16'h3bf5;
	ans = 16'h3895;
	#20
	A = 16'hb833;
	B = 16'hb77a;
	ans = 16'h33d9;
	#20
	A = 16'hacd4;
	B = 16'hbb69;
	ans = 16'h2c79;
	#20
	A = 16'h382e;
	B = 16'h3705;
	ans = 16'h3356;
	#20
	A = 16'h38bd;
	B = 16'hba13;
	ans = 16'hb732;
	#20
	A = 16'h34d4;
	B = 16'h345c;
	ans = 16'h2d43;
	#20
	A = 16'h390b;
	B = 16'hb397;
	ans = 16'hb0c9;
	#20
	A = 16'h387c;
	B = 16'h34d4;
	ans = 16'h316a;
	#20
	A = 16'ha37d;
	B = 16'ha9dd;
	ans = 16'h117d;
	#20
	A = 16'h39b2;
	B = 16'h2f6c;
	ans = 16'h2d49;
	#20
	A = 16'hbb67;
	B = 16'h3b33;
	ans = 16'hbaa9;
	#20
	A = 16'h3960;
	B = 16'hb5e9;
	ans = 16'hb3f1;
	#20
	A = 16'h2fc3;
	B = 16'h36d2;
	ans = 16'h2a9e;
	#20
	A = 16'h3662;
	B = 16'hb832;
	ans = 16'hb2b2;
	#20
	A = 16'hb5a0;
	B = 16'h2bd9;
	ans = 16'ha585;
	#20
	A = 16'hb492;
	B = 16'hba51;
	ans = 16'h3338;
	#20
	A = 16'hb93a;
	B = 16'hb708;
	ans = 16'h3498;
	#20
	A = 16'h379a;
	B = 16'hb848;
	ans = 16'hb411;
	#20
	A = 16'hb4cf;
	B = 16'h2f33;
	ans = 16'ha854;
	#20
	A = 16'h39a2;
	B = 16'hb634;
	ans = 16'hb45e;
	#20
	A = 16'hb1ec;
	B = 16'h392d;
	ans = 16'hafaa;
	#20
	A = 16'hab8a;
	B = 16'h3a76;
	ans = 16'haa17;
	#20
	A = 16'h2c27;
	B = 16'hb86d;
	ans = 16'ha898;
	#20
	A = 16'hbabe;
	B = 16'hb9d9;
	ans = 16'h38ee;
	#20
	A = 16'hba4b;
	B = 16'hb187;
	ans = 16'h3059;
	#20
	A = 16'h37ee;
	B = 16'hba64;
	ans = 16'hb656;
	#20
	A = 16'h3210;
	B = 16'hb5a0;
	ans = 16'hac43;
	#20
	A = 16'h39e4;
	B = 16'h3324;
	ans = 16'h3142;
	#20
	A = 16'h3b47;
	B = 16'h33f2;
	ans = 16'h333a;
	#20
	A = 16'h3967;
	B = 16'hbbec;
	ans = 16'hb959;
	#20
	A = 16'h2e5b;
	B = 16'hb89a;
	ans = 16'hab50;
	#20
	A = 16'hbab5;
	B = 16'h3524;
	ans = 16'hb44f;
	#20
	A = 16'h3478;
	B = 16'h3a5a;
	ans = 16'h3319;
	#20
	A = 16'h3954;
	B = 16'hb963;
	ans = 16'hb72d;
	#20
	A = 16'hb4a7;
	B = 16'hb665;
	ans = 16'h2f70;
	#20
	A = 16'h2e63;
	B = 16'h31f9;
	ans = 16'h24c5;
	#20
	A = 16'hb8b1;
	B = 16'hbbb4;
	ans = 16'h3884;
	#20
	A = 16'h3710;
	B = 16'haf40;
	ans = 16'haa66;
	#20
	A = 16'hb0e2;
	B = 16'hb667;
	ans = 16'h2bd1;
	#20
	A = 16'hb890;
	B = 16'h3bf0;
	ans = 16'hb887;
	#20
	A = 16'hbb28;
	B = 16'ha83e;
	ans = 16'h2797;
	#20
	A = 16'h3944;
	B = 16'h29aa;
	ans = 16'h2775;
	#20
	A = 16'hb6bb;
	B = 16'hb50b;
	ans = 16'h303e;
	#20
	A = 16'h3aa9;
	B = 16'hba54;
	ans = 16'hb945;
	#20
	A = 16'hb9da;
	B = 16'h383a;
	ans = 16'hb62f;
	#20
	A = 16'hacd4;
	B = 16'hb88f;
	ans = 16'h2981;
	#20
	A = 16'h365a;
	B = 16'hb988;
	ans = 16'hb464;
	#20
	A = 16'hb549;
	B = 16'h3270;
	ans = 16'hac41;
	#20
	A = 16'h3ac8;
	B = 16'hb646;
	ans = 16'hb551;
	#20
	A = 16'h395d;
	B = 16'hba4c;
	ans = 16'hb839;
	#20
	A = 16'h2d18;
	B = 16'h3b09;
	ans = 16'h2c7b;
	#20
	A = 16'hb813;
	B = 16'h3a6f;
	ans = 16'hb68e;
	#20
	A = 16'h39ad;
	B = 16'h313f;
	ans = 16'h2f72;
	#20
	A = 16'hbb8d;
	B = 16'hbb27;
	ans = 16'h3ac0;
	#20
	A = 16'hb173;
	B = 16'hbaf5;
	ans = 16'h30bd;
	#20
	A = 16'h3457;
	B = 16'hbab5;
	ans = 16'hb347;
	#20
	A = 16'hb9ce;
	B = 16'h345c;
	ans = 16'hb254;
	#20
	A = 16'h3b32;
	B = 16'hba7b;
	ans = 16'hb9d4;
	#20
	A = 16'hba64;
	B = 16'hb357;
	ans = 16'h31dd;
	#20
	A = 16'hb4c7;
	B = 16'hb09d;
	ans = 16'h2983;
	#20
	A = 16'h3a0c;
	B = 16'h3928;
	ans = 16'h37cb;
	#20
	A = 16'hb9be;
	B = 16'hbb6a;
	ans = 16'h3952;
	#20
	A = 16'had9d;
	B = 16'h9dbc;
	ans = 16'h1006;
	#20
	A = 16'h39e0;
	B = 16'h3913;
	ans = 16'h3774;
	#20
	A = 16'habc6;
	B = 16'hb4f7;
	ans = 16'h24d3;
	#20
	A = 16'h36af;
	B = 16'hafe0;
	ans = 16'haa94;
	#20
	A = 16'h3862;
	B = 16'hb3b4;
	ans = 16'hb038;
	#20
	A = 16'h1cee;
	B = 16'h3b9e;
	ans = 16'h1cb2;
	#20
	A = 16'hba6f;
	B = 16'h3440;
	ans = 16'hb2d6;
	#20
	A = 16'h392f;
	B = 16'h36e2;
	ans = 16'h3476;
	#20
	A = 16'h39d2;
	B = 16'hbb7b;
	ans = 16'hb971;
	#20
	A = 16'hb994;
	B = 16'hba1c;
	ans = 16'h3843;
	#20
	A = 16'hb1b0;
	B = 16'h3204;
	ans = 16'ha847;
	#20
	A = 16'h35b0;
	B = 16'h3393;
	ans = 16'h2d63;
	#20
	A = 16'hb3f6;
	B = 16'h2e74;
	ans = 16'ha66c;
	#20
	A = 16'h39da;
	B = 16'hbae0;
	ans = 16'hb907;
	#20
	A = 16'h38f1;
	B = 16'hb5c8;
	ans = 16'hb324;
	#20
	A = 16'h3427;
	B = 16'hb842;
	ans = 16'hb06c;
	#20
	A = 16'h2a2c;
	B = 16'ha9c0;
	ans = 16'h9870;
	#20
	A = 16'h3a83;
	B = 16'h3868;
	ans = 16'h372c;
	#20
	A = 16'hb431;
	B = 16'h380e;
	ans = 16'hb040;
	#20
	A = 16'h39f8;
	B = 16'hbba8;
	ans = 16'hb9b6;
	#20
	A = 16'h38b0;
	B = 16'hb95e;
	ans = 16'hb64a;
	#20
	A = 16'h3a60;
	B = 16'hb006;
	ans = 16'hae6a;
	#20
	A = 16'hb208;
	B = 16'h3a26;
	ans = 16'hb0a3;
	#20
	A = 16'h37ea;
	B = 16'hbaa7;
	ans = 16'hb695;
	#20
	A = 16'h321a;
	B = 16'hbbea;
	ans = 16'hb209;
	#20
	A = 16'h3a40;
	B = 16'hb5ab;
	ans = 16'hb46e;
	#20
	A = 16'hb87f;
	B = 16'had03;
	ans = 16'h29a2;
	#20
	A = 16'h2c16;
	B = 16'h3b07;
	ans = 16'h2b2e;
	#20
	A = 16'h3a99;
	B = 16'hb650;
	ans = 16'hb535;
	#20
	A = 16'h38d0;
	B = 16'h3b09;
	ans = 16'h383b;
	#20
	A = 16'hbbe7;
	B = 16'hb239;
	ans = 16'h3226;
	#20
	A = 16'h35ca;
	B = 16'hbb29;
	ans = 16'hb52e;
	#20
	A = 16'hb018;
	B = 16'h33b5;
	ans = 16'ha7e3;
	#20
	A = 16'h36d8;
	B = 16'hb92c;
	ans = 16'hb46d;
	#20
	A = 16'h37b6;
	B = 16'hba55;
	ans = 16'hb61a;
	#20
	A = 16'hb06a;
	B = 16'h3891;
	ans = 16'had0a;
	#20
	A = 16'h3942;
	B = 16'h3871;
	ans = 16'h35d7;
	#20
	A = 16'hb6d4;
	B = 16'h348b;
	ans = 16'hafc1;
	#20
	A = 16'hb9fc;
	B = 16'hac20;
	ans = 16'h2a2c;
	#20
	A = 16'h386d;
	B = 16'hbba6;
	ans = 16'hb83b;
	#20
	A = 16'ha5c0;
	B = 16'hb55b;
	ans = 16'h1fb3;
	#20
	A = 16'hb713;
	B = 16'hb88d;
	ans = 16'h3406;
	#20
	A = 16'hbb4e;
	B = 16'hb8a5;
	ans = 16'h383e;
	#20
	A = 16'hb6c3;
	B = 16'hb988;
	ans = 16'h34ad;
	#20
	A = 16'h3bbb;
	B = 16'hb62b;
	ans = 16'hb5f6;
	#20
	A = 16'h3808;
	B = 16'hb55f;
	ans = 16'hb16a;
	#20
	A = 16'h3665;
	B = 16'hb537;
	ans = 16'hb02b;
	#20
	A = 16'h33dd;
	B = 16'h3bc8;
	ans = 16'h33a6;
	#20
	A = 16'h3a08;
	B = 16'hb301;
	ans = 16'hb148;
	#20
	A = 16'h38e9;
	B = 16'hb953;
	ans = 16'hb689;
	#20
	A = 16'h2cb6;
	B = 16'hb7ea;
	ans = 16'ha8a9;
	#20
	A = 16'h364a;
	B = 16'hb445;
	ans = 16'haeb6;
	#20
	A = 16'h38da;
	B = 16'hb450;
	ans = 16'hb13b;
	#20
	A = 16'hb6ba;
	B = 16'ha8ec;
	ans = 16'h2423;
	#20
	A = 16'hb9c6;
	B = 16'h3887;
	ans = 16'hb689;
	#20
	A = 16'h3bb4;
	B = 16'hb959;
	ans = 16'hb926;
	#20
	A = 16'hae4a;
	B = 16'ha2d2;
	ans = 16'h155d;
	#20
	A = 16'hbaa8;
	B = 16'ha9dd;
	ans = 16'h28e1;
	#20
	A = 16'hb96d;
	B = 16'hb511;
	ans = 16'h32df;
	#20
	A = 16'h3a4d;
	B = 16'h2dbd;
	ans = 16'h2c85;
	#20
	A = 16'h39d8;
	B = 16'hb9b6;
	ans = 16'hb82c;
	#20
	A = 16'h3996;
	B = 16'hb8a3;
	ans = 16'hb67a;
	#20
	A = 16'h3850;
	B = 16'h3b61;
	ans = 16'h37f5;
	#20
	A = 16'hb50d;
	B = 16'hbbda;
	ans = 16'h34f5;
	#20
	A = 16'hbad1;
	B = 16'h3644;
	ans = 16'hb557;
	#20
	A = 16'hb5c7;
	B = 16'h3b08;
	ans = 16'hb514;
	#20
	A = 16'h3add;
	B = 16'hbbb6;
	ans = 16'hba9e;
	#20
	A = 16'hb8c9;
	B = 16'h3b3c;
	ans = 16'hb854;
	#20
	A = 16'h3802;
	B = 16'h3a4a;
	ans = 16'h364d;
	#20
	A = 16'h3610;
	B = 16'h3af0;
	ans = 16'h3542;
	#20
	A = 16'hbaf5;
	B = 16'h2bdf;
	ans = 16'haad8;
	#20
	A = 16'h3986;
	B = 16'hae1a;
	ans = 16'hac36;
	#20
	A = 16'h2e27;
	B = 16'hb9f0;
	ans = 16'hac91;
	#20
	A = 16'h3ac9;
	B = 16'h2a39;
	ans = 16'h2947;
	#20
	A = 16'h39b6;
	B = 16'hb757;
	ans = 16'hb53d;
	#20
	A = 16'hbbc2;
	B = 16'hb56f;
	ans = 16'h3545;
	#20
	A = 16'hb8fd;
	B = 16'hac64;
	ans = 16'h297a;
	#20
	A = 16'hb867;
	B = 16'hb68e;
	ans = 16'h3337;
	#20
	A = 16'h39ba;
	B = 16'h3513;
	ans = 16'h3344;
	#20
	A = 16'hb7d2;
	B = 16'hbaa8;
	ans = 16'h3682;
	#20
	A = 16'hb5de;
	B = 16'hb5f1;
	ans = 16'h305b;
	#20
	A = 16'h3815;
	B = 16'h3403;
	ans = 16'h3018;
	#20
	A = 16'hbbf4;
	B = 16'hb89c;
	ans = 16'h3895;
	#20
	A = 16'hb8cc;
	B = 16'hbb6b;
	ans = 16'h3873;
	#20
	A = 16'hb98e;
	B = 16'hb948;
	ans = 16'h3755;
	#20
	A = 16'hb188;
	B = 16'hb82e;
	ans = 16'h2dc8;
	#20
	A = 16'hb0d1;
	B = 16'h3af2;
	ans = 16'hb02e;
	#20
	A = 16'h3450;
	B = 16'hac4a;
	ans = 16'ha4a0;
	#20
	A = 16'h36e8;
	B = 16'hb687;
	ans = 16'hb1a3;
	#20
	A = 16'hb677;
	B = 16'h354b;
	ans = 16'hb047;
	#20
	A = 16'h2516;
	B = 16'hbbd2;
	ans = 16'ha4f9;
	#20
	A = 16'h3800;
	B = 16'h384c;
	ans = 16'h344c;
	#20
	A = 16'h381f;
	B = 16'hb14d;
	ans = 16'had76;
	#20
	A = 16'hbb41;
	B = 16'had7c;
	ans = 16'h2cf9;
	#20
	A = 16'h29d5;
	B = 16'hb831;
	ans = 16'ha61c;
	#20
	A = 16'h3028;
	B = 16'hb70b;
	ans = 16'hab51;
	#20
	A = 16'h3b12;
	B = 16'hb788;
	ans = 16'hb6a8;
	#20
	A = 16'h3442;
	B = 16'ha9f2;
	ans = 16'ha254;
	#20
	A = 16'hb54c;
	B = 16'h3790;
	ans = 16'hb102;
	#20
	A = 16'hb8ef;
	B = 16'hb6f3;
	ans = 16'h3449;
	#20
	A = 16'hb405;
	B = 16'h3ac0;
	ans = 16'hb2c8;
	#20
	A = 16'h35a8;
	B = 16'h3960;
	ans = 16'h339a;
	#20
	A = 16'h3a6b;
	B = 16'h2975;
	ans = 16'h2861;
	#20
	A = 16'hb292;
	B = 16'hacdb;
	ans = 16'h23fa;
	#20
	A = 16'hb092;
	B = 16'hac7a;
	ans = 16'h211d;
	#20
	A = 16'h3b63;
	B = 16'hba61;
	ans = 16'hb9e4;
	#20
	A = 16'h3ac9;
	B = 16'h2d3c;
	ans = 16'h2c71;
	#20
	A = 16'h3a6d;
	B = 16'h3b3e;
	ans = 16'h39d1;
	#20
	A = 16'hb639;
	B = 16'h395a;
	ans = 16'hb42a;
	#20
	A = 16'hbb8b;
	B = 16'h30c5;
	ans = 16'hb07f;
	#20
	A = 16'h3bf7;
	B = 16'hb4f1;
	ans = 16'hb4eb;
	#20
	A = 16'h3218;
	B = 16'h312e;
	ans = 16'h27e4;
	#20
	A = 16'hb0af;
	B = 16'had6b;
	ans = 16'h2258;
	#20
	A = 16'h3470;
	B = 16'hbae6;
	ans = 16'hb3a7;
	#20
	A = 16'hb3f5;
	B = 16'h36bf;
	ans = 16'haeb6;
	#20
	A = 16'h339f;
	B = 16'hb73d;
	ans = 16'haee5;
	#20
	A = 16'h2e30;
	B = 16'h349b;
	ans = 16'h2720;
	#20
	A = 16'h3a00;
	B = 16'h3850;
	ans = 16'h3678;
	#20
	A = 16'h366d;
	B = 16'hbbed;
	ans = 16'hb65e;
	#20
	A = 16'h3220;
	B = 16'h31a9;
	ans = 16'h2855;
	#20
	A = 16'hbab1;
	B = 16'hb46c;
	ans = 16'h3366;
	#20
	A = 16'hba88;
	B = 16'hb963;
	ans = 16'h3866;
	#20
	A = 16'hb933;
	B = 16'hba03;
	ans = 16'h37d0;
	#20
	A = 16'hb5e9;
	B = 16'h2caa;
	ans = 16'ha6e4;
	#20
	A = 16'h229b;
	B = 16'hb59e;
	ans = 16'h9ca3;
	#20
	A = 16'h32ac;
	B = 16'h336f;
	ans = 16'h2a33;
	#20
	A = 16'hb91d;
	B = 16'h36b4;
	ans = 16'hb449;
	#20
	A = 16'h3786;
	B = 16'h307f;
	ans = 16'h2c3a;
	#20
	A = 16'hb9a2;
	B = 16'hb4ef;
	ans = 16'h32f3;
	#20
	A = 16'hb3a7;
	B = 16'hb8d1;
	ans = 16'h309b;
	#20
	A = 16'h36f6;
	B = 16'h233b;
	ans = 16'h1e4b;
	#20
	A = 16'hba5d;
	B = 16'h3972;
	ans = 16'hb855;
	#20
	A = 16'h3b19;
	B = 16'hb920;
	ans = 16'hb88c;
	#20
	A = 16'h3b3d;
	B = 16'hb59c;
	ans = 16'hb513;
	#20
	A = 16'hba4e;
	B = 16'hb095;
	ans = 16'h2f39;
	#20
	A = 16'h3bc7;
	B = 16'hba31;
	ans = 16'hba05;
	#20
	A = 16'h3b3f;
	B = 16'ha9a3;
	ans = 16'ha91b;
	#20
	A = 16'h330e;
	B = 16'hb71a;
	ans = 16'hae43;
	#20
	A = 16'hb717;
	B = 16'hb9de;
	ans = 16'h3533;
	#20
	A = 16'hb9c8;
	B = 16'hb57d;
	ans = 16'h33ef;
	#20
	A = 16'hb9e7;
	B = 16'hb81b;
	ans = 16'h360f;
	#20
	A = 16'h3abe;
	B = 16'hb608;
	ans = 16'hb515;
	#20
	A = 16'h39c5;
	B = 16'hb7d3;
	ans = 16'hb5a5;
	#20
	A = 16'hb844;
	B = 16'h2cc4;
	ans = 16'ha915;
	#20
	A = 16'hbb1f;
	B = 16'hb5b9;
	ans = 16'h3518;
	#20
	A = 16'h3817;
	B = 16'haef7;
	ans = 16'hab1f;
	#20
	A = 16'hb6dd;
	B = 16'hba31;
	ans = 16'h3550;
	#20
	A = 16'h1c28;
	B = 16'h3bf5;
	ans = 16'h1c22;
	#20
	A = 16'hb983;
	B = 16'h385a;
	ans = 16'hb5ff;
	#20
	A = 16'h3901;
	B = 16'h33ad;
	ans = 16'h30cd;
	#20
	A = 16'hb3d7;
	B = 16'h38a1;
	ans = 16'hb089;
	#20
	A = 16'h3bef;
	B = 16'h3828;
	ans = 16'h381f;
	#20
	A = 16'h3093;
	B = 16'hb944;
	ans = 16'hae06;
	#20
	A = 16'h2947;
	B = 16'h3a0c;
	ans = 16'h27fa;
	#20
	A = 16'hb4c8;
	B = 16'h385b;
	ans = 16'hb135;
	#20
	A = 16'h35ed;
	B = 16'h36a1;
	ans = 16'h30e9;
	#20
	A = 16'hbbd4;
	B = 16'h3b97;
	ans = 16'hbb6d;
	#20
	A = 16'h18e5;
	B = 16'h3b54;
	ans = 16'h187c;
	#20
	A = 16'h387d;
	B = 16'h3be9;
	ans = 16'h3870;
	#20
	A = 16'hb6b9;
	B = 16'h340f;
	ans = 16'haed2;
	#20
	A = 16'h31cd;
	B = 16'h39ee;
	ans = 16'h304d;
	#20
	A = 16'hb647;
	B = 16'h390d;
	ans = 16'hb3ed;
	#20
	A = 16'h351c;
	B = 16'hb94d;
	ans = 16'hb2c5;
	#20
	A = 16'hb0d8;
	B = 16'hbb32;
	ans = 16'h305b;
	#20
	A = 16'hb319;
	B = 16'hb19e;
	ans = 16'h28fc;
	#20
	A = 16'h3b2c;
	B = 16'h362f;
	ans = 16'h358b;
	#20
	A = 16'h3a50;
	B = 16'ha91a;
	ans = 16'ha807;
	#20
	A = 16'h3030;
	B = 16'h3b7a;
	ans = 16'h2fd4;
	#20
	A = 16'h3803;
	B = 16'h37f0;
	ans = 16'h33f6;
	#20
	A = 16'h3834;
	B = 16'hb857;
	ans = 16'hb48f;
	#20
	A = 16'h3ba7;
	B = 16'hb5f9;
	ans = 16'hb5b7;
	#20
	A = 16'h3a01;
	B = 16'h3652;
	ans = 16'h34be;
	#20
	A = 16'hb75d;
	B = 16'h34ad;
	ans = 16'hb04e;
	#20
	A = 16'hb3f9;
	B = 16'h3ab7;
	ans = 16'hb2b1;
	#20
	A = 16'h3940;
	B = 16'h30cf;
	ans = 16'h2e50;
	#20
	A = 16'hb63e;
	B = 16'h372e;
	ans = 16'hb19a;
	#20
	A = 16'h34b6;
	B = 16'h3529;
	ans = 16'h2e14;
	#20
	A = 16'ha9a6;
	B = 16'ha84d;
	ans = 16'h1613;
	#20
	A = 16'hb523;
	B = 16'h302f;
	ans = 16'ha95f;
	#20
	A = 16'h3826;
	B = 16'h3ad0;
	ans = 16'h3711;
	#20
	A = 16'hb28c;
	B = 16'h3b9e;
	ans = 16'hb23c;
	#20
	A = 16'hb023;
	B = 16'h3b17;
	ans = 16'haf55;
	#20
	A = 16'hbb3f;
	B = 16'h3bf7;
	ans = 16'hbb37;
	#20
	A = 16'h389c;
	B = 16'h3068;
	ans = 16'h2d14;
	#20
	A = 16'h3859;
	B = 16'hb24a;
	ans = 16'haed6;
	#20
	A = 16'h3523;
	B = 16'h34e6;
	ans = 16'h2e4a;
	#20
	A = 16'h3795;
	B = 16'hb0e1;
	ans = 16'haca0;
	#20
	A = 16'h3968;
	B = 16'h3191;
	ans = 16'h2f86;
	#20
	A = 16'hb999;
	B = 16'hba4a;
	ans = 16'h3867;
	#20
	A = 16'hba7b;
	B = 16'hb433;
	ans = 16'h32ce;
	#20
	A = 16'h3b99;
	B = 16'hbbde;
	ans = 16'hbb79;
	#20
	A = 16'h2760;
	B = 16'h2f3f;
	ans = 16'h1aae;
	#20
	A = 16'hb98c;
	B = 16'h2e19;
	ans = 16'hac3a;
	#20
	A = 16'hb0fc;
	B = 16'h3653;
	ans = 16'habe1;
	#20
	A = 16'haa0f;
	B = 16'h2dd1;
	ans = 16'h9c68;
	#20
	A = 16'hbb64;
	B = 16'h9d3a;
	ans = 16'h1cd4;
	#20
	A = 16'hb8fd;
	B = 16'h3afd;
	ans = 16'hb85c;
	#20
	A = 16'h3628;
	B = 16'h3891;
	ans = 16'h3307;
	#20
	A = 16'hac19;
	B = 16'h3690;
	ans = 16'ha6b9;
	#20
	A = 16'h2cb9;
	B = 16'hb8e1;
	ans = 16'ha9c3;
	#20
	A = 16'h3a25;
	B = 16'h3870;
	ans = 16'h36d1;
	#20
	A = 16'h39ee;
	B = 16'hb98a;
	ans = 16'hb81b;
	#20
	A = 16'h38d4;
	B = 16'h3764;
	ans = 16'h3476;
	#20
	A = 16'h3883;
	B = 16'hb214;
	ans = 16'haedb;
	#20
	A = 16'hbb8f;
	B = 16'h35c3;
	ans = 16'hb572;
	#20
	A = 16'h389d;
	B = 16'hb899;
	ans = 16'hb54d;
	#20
	A = 16'hb0b4;
	B = 16'hb273;
	ans = 16'h2795;
	#20
	A = 16'hb555;
	B = 16'h37ed;
	ans = 16'hb148;
	#20
	A = 16'h3442;
	B = 16'h2809;
	ans = 16'h204c;
	#20
	A = 16'hb86a;
	B = 16'hbadc;
	ans = 16'h3792;
	#20
	A = 16'hac46;
	B = 16'h3ac9;
	ans = 16'hab40;
	#20
	A = 16'had69;
	B = 16'h39dd;
	ans = 16'habee;
	#20
	A = 16'h3bfe;
	B = 16'hb7cf;
	ans = 16'hb7cd;
	#20
	A = 16'h30e3;
	B = 16'h2012;
	ans = 16'h14f9;
	#20
	A = 16'h3989;
	B = 16'h3909;
	ans = 16'h36f8;
	#20
	A = 16'hbb65;
	B = 16'h36a7;
	ans = 16'hb626;
	#20
	A = 16'hb2a1;
	B = 16'h3572;
	ans = 16'hac83;
	#20
	A = 16'hb897;
	B = 16'h355e;
	ans = 16'hb229;
	#20
	A = 16'hb374;
	B = 16'hba87;
	ans = 16'h3215;
	#20
	A = 16'hb2f1;
	B = 16'hb2c7;
	ans = 16'h29e1;
	#20
	A = 16'h37e2;
	B = 16'hb0db;
	ans = 16'hacc9;
	#20
	A = 16'h3711;
	B = 16'hbb3f;
	ans = 16'hb667;
	#20
	A = 16'h38e1;
	B = 16'hb209;
	ans = 16'haf5c;
	#20
	A = 16'hb97b;
	B = 16'h252b;
	ans = 16'ha315;
	#20
	A = 16'hb85b;
	B = 16'hb14b;
	ans = 16'h2dc3;
	#20
	A = 16'h380f;
	B = 16'hb7b8;
	ans = 16'hb3d5;
	#20
	A = 16'h32a8;
	B = 16'h3a80;
	ans = 16'h3168;
	#20
	A = 16'hbafe;
	B = 16'ha82a;
	ans = 16'h2747;
	#20
	A = 16'hb7cc;
	B = 16'hb80c;
	ans = 16'h33e3;
	#20
	A = 16'h3858;
	B = 16'h32d9;
	ans = 16'h2f70;
	#20
	A = 16'had66;
	B = 16'h3947;
	ans = 16'hab1f;
	#20
	A = 16'hb1a0;
	B = 16'h3618;
	ans = 16'hac49;
	#20
	A = 16'h393c;
	B = 16'h3850;
	ans = 16'h35a5;
	#20
	A = 16'hba11;
	B = 16'hb4dc;
	ans = 16'h335f;
	#20
	A = 16'h3756;
	B = 16'hb7d8;
	ans = 16'hb331;
	#20
	A = 16'hb3cf;
	B = 16'hb8d3;
	ans = 16'h30b5;
	#20
	A = 16'hb6b0;
	B = 16'haca3;
	ans = 16'h27c1;
	#20
	A = 16'hb4ee;
	B = 16'habd1;
	ans = 16'h24d1;
	#20
	A = 16'hb4fd;
	B = 16'h339a;
	ans = 16'hacbd;
	#20
	A = 16'hb98f;
	B = 16'ha53f;
	ans = 16'h234a;
	#20
	A = 16'h3432;
	B = 16'hba9f;
	ans = 16'hb2f2;
	#20
	A = 16'h3aab;
	B = 16'hb903;
	ans = 16'hb82d;
	#20
	A = 16'h39c9;
	B = 16'h269b;
	ans = 16'h24c7;
	#20
	A = 16'hba8c;
	B = 16'h3b67;
	ans = 16'hba0f;
	#20
	A = 16'hb5b4;
	B = 16'hba64;
	ans = 16'h348e;
	#20
	A = 16'hb02c;
	B = 16'ha99a;
	ans = 16'h1dd8;
	#20
	A = 16'h312a;
	B = 16'hb4de;
	ans = 16'haa49;
	#20
	A = 16'hb414;
	B = 16'h3ad9;
	ans = 16'hb2fb;
	#20
	A = 16'hb6fd;
	B = 16'hb708;
	ans = 16'h3224;
	#20
	A = 16'hb4f0;
	B = 16'h2ccc;
	ans = 16'ha5ec;
	#20
	A = 16'hbba4;
	B = 16'h3b43;
	ans = 16'hbaef;
	#20
	A = 16'hb3ea;
	B = 16'hb702;
	ans = 16'h2eef;
	#20
	A = 16'h31e8;
	B = 16'h2990;
	ans = 16'h201b;
	#20
	A = 16'h3964;
	B = 16'h3761;
	ans = 16'h34f9;
	#20
	A = 16'h3190;
	B = 16'h33c8;
	ans = 16'h2969;
	#20
	A = 16'hba72;
	B = 16'h38a4;
	ans = 16'hb77a;
	#20
	A = 16'h329b;
	B = 16'hb154;
	ans = 16'ha866;
	#20
	A = 16'h3a3f;
	B = 16'h3732;
	ans = 16'h359e;
	#20
	A = 16'hae8f;
	B = 16'hb013;
	ans = 16'h22ae;
	#20
	A = 16'h399c;
	B = 16'hb897;
	ans = 16'hb670;
	#20
	A = 16'h38ef;
	B = 16'h3845;
	ans = 16'h3544;
	#20
	A = 16'h3a33;
	B = 16'h39af;
	ans = 16'h3867;
	#20
	A = 16'h3442;
	B = 16'hb44c;
	ans = 16'hac93;
	#20
	A = 16'h37ee;
	B = 16'hb76b;
	ans = 16'hb35a;
	#20
	A = 16'hb371;
	B = 16'hba3e;
	ans = 16'h31ce;
	#20
	A = 16'hb525;
	B = 16'h2f67;
	ans = 16'ha8c3;
	#20
	A = 16'hba08;
	B = 16'h38ff;
	ans = 16'hb788;
	#20
	A = 16'h33f5;
	B = 16'hbb35;
	ans = 16'hb32b;
	#20
	A = 16'h3480;
	B = 16'ha775;
	ans = 16'ha032;
	#20
	A = 16'h3079;
	B = 16'hba42;
	ans = 16'haeff;
	#20
	A = 16'h34ab;
	B = 16'hb5d4;
	ans = 16'haecd;
	#20
	A = 16'h2a1c;
	B = 16'h3a98;
	ans = 16'h2909;
	#20
	A = 16'h32f0;
	B = 16'hbbec;
	ans = 16'hb2df;
	#20
	A = 16'ha452;
	B = 16'h3592;
	ans = 16'h9e04;
	#20
	A = 16'h382f;
	B = 16'hba43;
	ans = 16'hb68d;
	#20
	A = 16'h3938;
	B = 16'h1cb2;
	ans = 16'h1a20;
	#20
	A = 16'hb9d0;
	B = 16'h3910;
	ans = 16'hb75b;
	#20
	A = 16'h3a56;
	B = 16'hb267;
	ans = 16'hb112;
	#20
	A = 16'hb89d;
	B = 16'h370c;
	ans = 16'hb410;
	#20
	A = 16'h35b1;
	B = 16'had05;
	ans = 16'ha724;
	#20
	A = 16'h372b;
	B = 16'hb874;
	ans = 16'hb3fb;
	#20
	A = 16'h3200;
	B = 16'h308b;
	ans = 16'h26d0;
	#20
	A = 16'hb8ea;
	B = 16'h386f;
	ans = 16'hb572;
	#20
	A = 16'h2974;
	B = 16'hb49a;
	ans = 16'ha246;
	#20
	A = 16'h35b1;
	B = 16'haea8;
	ans = 16'ha8bc;
	#20
	A = 16'h3a59;
	B = 16'hb377;
	ans = 16'hb1ec;
	#20
	A = 16'hb767;
	B = 16'h3bd3;
	ans = 16'hb73d;
	#20
	A = 16'hbb70;
	B = 16'h345d;
	ans = 16'hb40e;
	#20
	A = 16'haf81;
	B = 16'h3a51;
	ans = 16'haded;
	#20
	A = 16'h3632;
	B = 16'h39ad;
	ans = 16'h3465;
	#20
	A = 16'h3918;
	B = 16'h3148;
	ans = 16'h2eba;
	#20
	A = 16'h2d69;
	B = 16'hb5b2;
	ans = 16'ha7b4;
	#20
	A = 16'hba6d;
	B = 16'h396a;
	ans = 16'hb859;
	#20
	A = 16'h36aa;
	B = 16'h3aa2;
	ans = 16'h3586;
	#20
	A = 16'h347a;
	B = 16'h352e;
	ans = 16'h2dcc;
	#20
	A = 16'hba9b;
	B = 16'hb9eb;
	ans = 16'h38e3;
	#20
	A = 16'hbbd4;
	B = 16'h3193;
	ans = 16'hb174;
	#20
	A = 16'hb0e4;
	B = 16'hb266;
	ans = 16'h27d3;
	#20
	A = 16'hb94d;
	B = 16'h3870;
	ans = 16'hb5e1;
	#20
	A = 16'hbb1c;
	B = 16'h3834;
	ans = 16'hb778;
	#20
	A = 16'h3677;
	B = 16'h3a86;
	ans = 16'h3546;
	#20
	A = 16'h2a7f;
	B = 16'h309f;
	ans = 16'h1f81;
	#20
	A = 16'h3b4f;
	B = 16'hba67;
	ans = 16'hb9d9;
	#20
	A = 16'hb915;
	B = 16'h355f;
	ans = 16'hb2d3;
	#20
	A = 16'h361a;
	B = 16'hba89;
	ans = 16'hb4fc;
	#20
	A = 16'had90;
	B = 16'h3777;
	ans = 16'ha931;
	#20
	A = 16'h3417;
	B = 16'ha527;
	ans = 16'h9d45;
	#20
	A = 16'hb551;
	B = 16'hb4d9;
	ans = 16'h2e71;
	#20
	A = 16'hb455;
	B = 16'hb716;
	ans = 16'h2fad;
	#20
	A = 16'hb412;
	B = 16'hb5e1;
	ans = 16'h2dfb;
	#20
	A = 16'hb058;
	B = 16'h3761;
	ans = 16'hac02;
	#20
	A = 16'hba78;
	B = 16'hb603;
	ans = 16'h34dc;
	#20
	A = 16'hbbd6;
	B = 16'hb1ea;
	ans = 16'h31cb;
	#20
	A = 16'hbbca;
	B = 16'h36fc;
	ans = 16'hb6cd;
	#20
	A = 16'h3945;
	B = 16'h3b8f;
	ans = 16'h38fb;
	#20
	A = 16'hb187;
	B = 16'h31c0;
	ans = 16'ha7f2;
	#20
	A = 16'hb935;
	B = 16'h3927;
	ans = 16'hb6b5;
	#20
	A = 16'haaee;
	B = 16'hb2cd;
	ans = 16'h21e4;
	#20
	A = 16'h31bd;
	B = 16'h31df;
	ans = 16'h2836;
	#20
	A = 16'h37e2;
	B = 16'h3453;
	ans = 16'h3043;
	#20
	A = 16'h3ae0;
	B = 16'hb7e3;
	ans = 16'hb6c7;
	#20
	A = 16'h355d;
	B = 16'haf46;
	ans = 16'ha8e0;
	#20
	A = 16'h38d0;
	B = 16'hb14c;
	ans = 16'hae5f;
	#20
	A = 16'h393c;
	B = 16'hb5e4;
	ans = 16'hb3b5;
	#20
	A = 16'hb253;
	B = 16'hba66;
	ans = 16'h310f;
	#20
	A = 16'hb81c;
	B = 16'hb813;
	ans = 16'h3430;
	#20
	A = 16'h3199;
	B = 16'h3a11;
	ans = 16'h303f;
	#20
	A = 16'hb9b9;
	B = 16'h3b3d;
	ans = 16'hb92e;
	#20
	A = 16'hbb41;
	B = 16'hb2b7;
	ans = 16'h3217;
	#20
	A = 16'h38c5;
	B = 16'hb00d;
	ans = 16'hacd5;
	#20
	A = 16'hb9f9;
	B = 16'h3a56;
	ans = 16'hb8bb;
	#20
	A = 16'hb989;
	B = 16'h221d;
	ans = 16'ha03b;
	#20
	A = 16'hb7af;
	B = 16'h3190;
	ans = 16'had58;
	#20
	A = 16'h35ce;
	B = 16'hb424;
	ans = 16'hae02;
	#20
	A = 16'h3b4d;
	B = 16'hb996;
	ans = 16'hb919;
	#20
	A = 16'h39ba;
	B = 16'hafde;
	ans = 16'hada2;
	#20
	A = 16'h36fb;
	B = 16'h39dc;
	ans = 16'h351d;
	#20
	A = 16'hb714;
	B = 16'h3b88;
	ans = 16'hb6aa;
	#20
	A = 16'hb492;
	B = 16'h38d3;
	ans = 16'hb183;
	#20
	A = 16'h2c16;
	B = 16'h3b65;
	ans = 16'h2b8e;
	#20
	A = 16'h1df0;
	B = 16'hb737;
	ans = 16'h995b;
	#20
	A = 16'hb89c;
	B = 16'h3a51;
	ans = 16'hb747;
	#20
	A = 16'ha85c;
	B = 16'hb20d;
	ans = 16'h1e98;
	#20
	A = 16'hb9aa;
	B = 16'hb8f0;
	ans = 16'h36fe;
	#20
	A = 16'h330f;
	B = 16'hb04b;
	ans = 16'ha793;
	#20
	A = 16'hbbb4;
	B = 16'hbb48;
	ans = 16'h3b03;
	#20
	A = 16'h3808;
	B = 16'hba64;
	ans = 16'hb671;
	#20
	A = 16'hbb52;
	B = 16'hb832;
	ans = 16'h37ae;
	#20
	A = 16'h3b44;
	B = 16'h3601;
	ans = 16'h3574;
	#20
	A = 16'hbbaa;
	B = 16'h9f56;
	ans = 16'h1f07;
	#20
	A = 16'h333f;
	B = 16'h3903;
	ans = 16'h308a;
	#20
	A = 16'h31af;
	B = 16'hb349;
	ans = 16'ha92d;
	#20
	A = 16'ha91c;
	B = 16'hb5b8;
	ans = 16'h234e;
	#20
	A = 16'h329f;
	B = 16'hb6a8;
	ans = 16'had82;
	#20
	A = 16'ha245;
	B = 16'h39d4;
	ans = 16'ha091;
	#20
	A = 16'hbb19;
	B = 16'hb2d0;
	ans = 16'h320b;
	#20
	A = 16'hb4da;
	B = 16'hb1f6;
	ans = 16'h2b3b;
	#20
	A = 16'h3746;
	B = 16'hbbf4;
	ans = 16'hb73b;
	#20
	A = 16'h3771;
	B = 16'h38a7;
	ans = 16'h3454;
	#20
	A = 16'h3b72;
	B = 16'hbbfb;
	ans = 16'hbb6d;
	#20
	A = 16'h3bea;
	B = 16'h3a4d;
	ans = 16'h3a3c;
	#20
	A = 16'hb73d;
	B = 16'h396f;
	ans = 16'hb4eb;
	#20
	A = 16'hbbd8;
	B = 16'hba6e;
	ans = 16'h3a4e;
	#20
	A = 16'h3be7;
	B = 16'h3a3e;
	ans = 16'h3a2a;
	#20
	A = 16'hbaca;
	B = 16'hba04;
	ans = 16'h391b;
	#20
	A = 16'h39b9;
	B = 16'h3bbb;
	ans = 16'h3988;
	#20
	A = 16'hb683;
	B = 16'hb303;
	ans = 16'h2db5;
	#20
	A = 16'h3ab3;
	B = 16'hb0ab;
	ans = 16'hafd1;
	#20
	A = 16'hb819;
	B = 16'haccf;
	ans = 16'h28ed;
	#20
	A = 16'hb721;
	B = 16'h9444;
	ans = 16'hf9a;
	#20
	A = 16'h39ff;
	B = 16'hb735;
	ans = 16'hb567;
	#20
	A = 16'h326e;
	B = 16'hb24f;
	ans = 16'ha912;
	#20
	A = 16'h31e0;
	B = 16'hbac5;
	ans = 16'hb0f9;
	#20
	A = 16'hb8e1;
	B = 16'hba9e;
	ans = 16'h3809;
	#20
	A = 16'h36ea;
	B = 16'h3926;
	ans = 16'h3473;
	#20
	A = 16'h2e63;
	B = 16'h386c;
	ans = 16'h2b0f;
	#20
	A = 16'h3624;
	B = 16'hb5b1;
	ans = 16'hb05e;
	#20
	A = 16'hbb57;
	B = 16'hb418;
	ans = 16'h3383;
	#20
	A = 16'hb743;
	B = 16'h3929;
	ans = 16'hb4af;
	#20
	A = 16'h3a3f;
	B = 16'hbae9;
	ans = 16'hb965;
	#20
	A = 16'h39c9;
	B = 16'h3aa7;
	ans = 16'h38d0;
	#20
	A = 16'hb404;
	B = 16'h3967;
	ans = 16'hb16c;
	#20
	A = 16'h3904;
	B = 16'hb794;
	ans = 16'hb4c0;
	#20
	A = 16'hb93e;
	B = 16'hbbe9;
	ans = 16'h392f;
	#20
	A = 16'h388b;
	B = 16'hba44;
	ans = 16'hb71e;
	#20
	A = 16'hb6d1;
	B = 16'hbbc9;
	ans = 16'h36a2;
	#20
	A = 16'hbb28;
	B = 16'ha8cc;
	ans = 16'h284a;
	#20
	A = 16'h38b9;
	B = 16'h21fa;
	ans = 16'h1f0e;
	#20
	A = 16'h3967;
	B = 16'h3411;
	ans = 16'h317e;
	#20
	A = 16'hbb73;
	B = 16'h3a31;
	ans = 16'hb9c4;
	#20
	A = 16'hb456;
	B = 16'hb3ae;
	ans = 16'h2c2a;
	#20
	A = 16'h3a51;
	B = 16'hbb90;
	ans = 16'hb9f9;
	#20
	A = 16'hbbae;
	B = 16'hb624;
	ans = 16'h35e5;
	#20
	A = 16'hb993;
	B = 16'hb5b2;
	ans = 16'h33f0;
	#20
	A = 16'hb53f;
	B = 16'h3434;
	ans = 16'had83;
	#20
	A = 16'h32bc;
	B = 16'h39ab;
	ans = 16'h30c5;
	#20
	A = 16'h3933;
	B = 16'h3801;
	ans = 16'h3534;
	#20
	A = 16'hb987;
	B = 16'h38be;
	ans = 16'hb68e;
	#20
	A = 16'hb9bd;
	B = 16'hb9a2;
	ans = 16'h380a;
	#20
	A = 16'h3a80;
	B = 16'hb996;
	ans = 16'hb88a;
	#20
	A = 16'h3704;
	B = 16'h3484;
	ans = 16'h2fec;
	#20
	A = 16'hb880;
	B = 16'h384e;
	ans = 16'hb4d8;
	#20
	A = 16'h3b02;
	B = 16'h3ba5;
	ans = 16'h3ab2;
	#20
	A = 16'hb823;
	B = 16'hb981;
	ans = 16'h35b1;
	#20
	A = 16'hb19f;
	B = 16'hb158;
	ans = 16'h2782;
	#20
	A = 16'hbae9;
	B = 16'h2970;
	ans = 16'ha8b2;
	#20
	A = 16'h2e43;
	B = 16'hb924;
	ans = 16'hac06;
	#20
	A = 16'haede;
	B = 16'h361a;
	ans = 16'ha93d;
	#20
	A = 16'h39ca;
	B = 16'had55;
	ans = 16'habb8;
	#20
	A = 16'h3b10;
	B = 16'hb571;
	ans = 16'hb4ce;
	#20
	A = 16'h39fa;
	B = 16'h3894;
	ans = 16'h36d7;
	#20
	A = 16'h2ecb;
	B = 16'hb888;
	ans = 16'habb2;
	#20
	A = 16'h3aac;
	B = 16'hb8d9;
	ans = 16'hb80b;
	#20
	A = 16'h3b9e;
	B = 16'hbae9;
	ans = 16'hba94;
	#20
	A = 16'ha9bb;
	B = 16'hb55e;
	ans = 16'h23b0;
	#20
	A = 16'h32e6;
	B = 16'h2b7f;
	ans = 16'h2277;
	#20
	A = 16'h376a;
	B = 16'hae09;
	ans = 16'ha998;
	#20
	A = 16'hb4f9;
	B = 16'h3a2b;
	ans = 16'hb3ab;
	#20
	A = 16'h3811;
	B = 16'h30ad;
	ans = 16'h2cc1;
	#20
	A = 16'hae92;
	B = 16'hba5a;
	ans = 16'h2d37;
	#20
	A = 16'hbb09;
	B = 16'h3b78;
	ans = 16'hba91;
	#20
	A = 16'h353c;
	B = 16'hbbf4;
	ans = 16'hb534;
	#20
	A = 16'hb823;
	B = 16'h30bd;
	ans = 16'hace6;
	#20
	A = 16'h311c;
	B = 16'hb7ee;
	ans = 16'had11;
	#20
	A = 16'h38da;
	B = 16'h3b27;
	ans = 16'h3856;
	#20
	A = 16'h38bd;
	B = 16'h39db;
	ans = 16'h36f0;
	#20
	A = 16'hb865;
	B = 16'hb9b7;
	ans = 16'h3647;
	#20
	A = 16'hbb44;
	B = 16'hbbcb;
	ans = 16'h3b14;
	#20
	A = 16'h3472;
	B = 16'h3767;
	ans = 16'h301d;
	#20
	A = 16'hb5bc;
	B = 16'h3961;
	ans = 16'hb3b6;
	#20
	A = 16'hb436;
	B = 16'h2f4e;
	ans = 16'ha7b1;
	#20
	A = 16'hb7d4;
	B = 16'h396d;
	ans = 16'hb54f;
	#20
	A = 16'h31e6;
	B = 16'h3456;
	ans = 16'h2a65;
	#20
	A = 16'h32a7;
	B = 16'h3b9e;
	ans = 16'h3256;
	#20
	A = 16'hbab9;
	B = 16'hb3cc;
	ans = 16'h328d;
	#20
	A = 16'h3452;
	B = 16'hb96e;
	ans = 16'hb1dd;
	#20
	A = 16'hb50b;
	B = 16'hb8bf;
	ans = 16'h31fc;
	#20
	A = 16'hb747;
	B = 16'hb9e0;
	ans = 16'h3558;
	#20
	A = 16'h3b5b;
	B = 16'h3b50;
	ans = 16'h3ab9;
	#20
	A = 16'hb527;
	B = 16'hbadc;
	ans = 16'h346b;
	#20
	A = 16'hab1d;
	B = 16'hb491;
	ans = 16'h240f;
	#20
	A = 16'hbbb9;
	B = 16'h3537;
	ans = 16'hb509;
	#20
	A = 16'h3a2f;
	B = 16'h35a5;
	ans = 16'h345d;
	#20
	A = 16'hb889;
	B = 16'h2b8f;
	ans = 16'ha849;
	#20
	A = 16'hb8d3;
	B = 16'hb8b5;
	ans = 16'h35ad;
	#20
	A = 16'h39b0;
	B = 16'hbba6;
	ans = 16'hb970;
	#20
	A = 16'h341b;
	B = 16'h3590;
	ans = 16'h2db6;
	#20
	A = 16'hbb8b;
	B = 16'ha86c;
	ans = 16'h282b;
	#20
	A = 16'h3262;
	B = 16'h3a8d;
	ans = 16'h313a;
	#20
	A = 16'h3b18;
	B = 16'h380b;
	ans = 16'h372c;
	#20
	A = 16'h3a51;
	B = 16'h3a88;
	ans = 16'h3928;
	#20
	A = 16'h394c;
	B = 16'h3846;
	ans = 16'h35a9;
	#20
	A = 16'h39de;
	B = 16'h3a1c;
	ans = 16'h387b;
	#20
	A = 16'h387a;
	B = 16'hb0ff;
	ans = 16'had97;
	#20
	A = 16'h2981;
	B = 16'hb89a;
	ans = 16'ha655;
	#20
	A = 16'h3659;
	B = 16'hb8e6;
	ans = 16'hb3c6;
	#20
	A = 16'hb8ab;
	B = 16'h3a70;
	ans = 16'hb783;
	#20
	A = 16'hba2a;
	B = 16'hb953;
	ans = 16'h381a;
	#20
	A = 16'hba11;
	B = 16'had11;
	ans = 16'h2baf;
	#20
	A = 16'hb8d3;
	B = 16'hbac2;
	ans = 16'h3813;
	#20
	A = 16'h2bce;
	B = 16'h3765;
	ans = 16'h2737;
	#20
	A = 16'h2317;
	B = 16'hb6bd;
	ans = 16'h9df9;
	#20
	A = 16'hbba6;
	B = 16'hb585;
	ans = 16'h3547;
	#20
	A = 16'hbb13;
	B = 16'hba53;
	ans = 16'h3998;
	#20
	A = 16'h2e9d;
	B = 16'h1e99;
	ans = 16'h1174;
	#20
	A = 16'hbbe9;
	B = 16'h3af9;
	ans = 16'hbae5;
	#20
	A = 16'hbb5d;
	B = 16'hbb0c;
	ans = 16'h3a7c;
	#20
	A = 16'hb83d;
	B = 16'h38ed;
	ans = 16'hb538;
	#20
	A = 16'ha844;
	B = 16'h3b3a;
	ans = 16'ha7b5;
	#20
	A = 16'hacb4;
	B = 16'h88e1;
	ans = 16'hb8;
	#20
	A = 16'h3b15;
	B = 16'h37a6;
	ans = 16'h36c5;
	#20
	A = 16'hb936;
	B = 16'h2993;
	ans = 16'ha743;
	#20
	A = 16'hb85f;
	B = 16'hb8c0;
	ans = 16'h3531;
	#20
	A = 16'h39a7;
	B = 16'hb555;
	ans = 16'hb389;
	#20
	A = 16'hb597;
	B = 16'h2dee;
	ans = 16'ha825;
	#20
	A = 16'h3ac0;
	B = 16'hb97b;
	ans = 16'hb8a0;
	#20
	A = 16'h3a27;
	B = 16'h22f2;
	ans = 16'h2157;
	#20
	A = 16'h3b08;
	B = 16'had1a;
	ans = 16'hac7c;
	#20
	A = 16'h3609;
	B = 16'h2dac;
	ans = 16'h2847;
	#20
	A = 16'h39b0;
	B = 16'h393c;
	ans = 16'h3771;
	#20
	A = 16'h3bfc;
	B = 16'hb871;
	ans = 16'hb86f;
	#20
	A = 16'h33b9;
	B = 16'h3b40;
	ans = 16'h3300;
	#20
	A = 16'hb3a0;
	B = 16'h38f2;
	ans = 16'hb0b7;
	#20
	A = 16'h34d6;
	B = 16'h3970;
	ans = 16'h3293;
	#20
	A = 16'h3a8a;
	B = 16'hb65f;
	ans = 16'hb535;
	#20
	A = 16'hb417;
	B = 16'h3ade;
	ans = 16'hb305;
	#20
	A = 16'hbb15;
	B = 16'h3b96;
	ans = 16'hbab7;
	#20
	A = 16'hba88;
	B = 16'hbaf6;
	ans = 16'h39af;
	#20
	A = 16'h1f54;
	B = 16'hbb55;
	ans = 16'h9eb7;
	#20
	A = 16'h35cd;
	B = 16'h307f;
	ans = 16'h2a85;
	#20
	A = 16'hb505;
	B = 16'hb716;
	ans = 16'h3072;
	#20
	A = 16'haef7;
	B = 16'h3828;
	ans = 16'hab3d;
	#20
	A = 16'hbbd4;
	B = 16'hb844;
	ans = 16'h382d;
	#20
	A = 16'h399d;
	B = 16'h3a95;
	ans = 16'h389e;
	#20
	A = 16'hba00;
	B = 16'h2c23;
	ans = 16'haa34;
	#20
	A = 16'hb550;
	B = 16'h3863;
	ans = 16'hb1d3;
	#20
	A = 16'h2da1;
	B = 16'h2604;
	ans = 16'h183c;
	#20
	A = 16'h3908;
	B = 16'hb816;
	ans = 16'hb524;
	#20
	A = 16'h30b7;
	B = 16'h39f4;
	ans = 16'h2f04;
	#20
	A = 16'h3ac1;
	B = 16'h358e;
	ans = 16'h34b1;
	#20
	A = 16'hadaf;
	B = 16'h3adf;
	ans = 16'hace2;
	#20
	A = 16'h3b07;
	B = 16'hb65a;
	ans = 16'hb594;
	#20
	A = 16'h35b7;
	B = 16'hbb79;
	ans = 16'hb557;
	#20
	A = 16'h20eb;
	B = 16'hb8f1;
	ans = 16'h9e13;
	#20
	A = 16'hba17;
	B = 16'ha3fc;
	ans = 16'h2214;
	#20
	A = 16'hb903;
	B = 16'hbb4f;
	ans = 16'h3894;
	#20
	A = 16'ha7af;
	B = 16'h36a8;
	ans = 16'ha265;
	#20
	A = 16'h38a1;
	B = 16'h361c;
	ans = 16'h3312;
	#20
	A = 16'hb9f3;
	B = 16'h3738;
	ans = 16'hb55e;
	#20
	A = 16'h395d;
	B = 16'hb8db;
	ans = 16'hb683;
	#20
	A = 16'hbad4;
	B = 16'hbadd;
	ans = 16'h39dc;
	#20
	A = 16'hba78;
	B = 16'h38e6;
	ans = 16'hb7ec;
	#20
	A = 16'hbb03;
	B = 16'hb3b1;
	ans = 16'h32be;
	#20
	A = 16'h39dd;
	B = 16'hbb0a;
	ans = 16'hb929;
	#20
	A = 16'hb6e5;
	B = 16'ha8dc;
	ans = 16'h2430;
	#20
	A = 16'h39d4;
	B = 16'hb15b;
	ans = 16'hafce;
	#20
	A = 16'h376d;
	B = 16'h391f;
	ans = 16'h34c1;
	#20
	A = 16'hb492;
	B = 16'h3bdf;
	ans = 16'hb47f;
	#20
	A = 16'h3b7f;
	B = 16'hb8e4;
	ans = 16'hb895;
	#20
	A = 16'h26cf;
	B = 16'h301b;
	ans = 16'h1afd;
	#20
	A = 16'h3955;
	B = 16'hbb83;
	ans = 16'hb902;
	#20
	A = 16'hb7ab;
	B = 16'hbb51;
	ans = 16'h3703;
	#20
	A = 16'hbbb5;
	B = 16'h36d1;
	ans = 16'hb691;
	#20
	A = 16'hb6bf;
	B = 16'hbb4a;
	ans = 16'h3626;
	#20
	A = 16'h3475;
	B = 16'hbac1;
	ans = 16'hb387;
	#20
	A = 16'h3b4d;
	B = 16'h3bb9;
	ans = 16'h3b0c;
	#20
	A = 16'h388c;
	B = 16'h33db;
	ans = 16'h3077;
	#20
	A = 16'h3a2d;
	B = 16'h3aeb;
	ans = 16'h3957;
	#20
	A = 16'hadc8;
	B = 16'h3ae5;
	ans = 16'hacfb;
	#20
	A = 16'h208b;
	B = 16'hb481;
	ans = 16'h991e;
	#20
	A = 16'hacfe;
	B = 16'hb8cb;
	ans = 16'h29fb;
	#20
	A = 16'hb5e6;
	B = 16'h3675;
	ans = 16'hb0c3;
	#20
	A = 16'hac39;
	B = 16'h3aaa;
	ans = 16'hab09;
	#20
	A = 16'h39bc;
	B = 16'hb9ee;
	ans = 16'hb840;
	#20
	A = 16'h3160;
	B = 16'h3992;
	ans = 16'h2f7c;
	#20
	A = 16'h38d4;
	B = 16'h36b9;
	ans = 16'h340f;
	#20
	A = 16'hba84;
	B = 16'hb2a9;
	ans = 16'h316d;
	#20
	A = 16'h3175;
	B = 16'hb787;
	ans = 16'had22;
	#20
	A = 16'h29eb;
	B = 16'h283e;
	ans = 16'h1647;
	#20
	A = 16'hb98c;
	B = 16'h3502;
	ans = 16'hb2f2;
	#20
	A = 16'hb2db;
	B = 16'hbae1;
	ans = 16'h31e5;
	#20
	A = 16'h357f;
	B = 16'h34e3;
	ans = 16'h2eb7;
	#20
	A = 16'hb0a0;
	B = 16'h3720;
	ans = 16'hac1e;
	#20
	A = 16'h343e;
	B = 16'h3a94;
	ans = 16'h32fa;
	#20
	A = 16'h3b90;
	B = 16'hb600;
	ans = 16'hb5ac;
	#20
	A = 16'hba79;
	B = 16'h3a4e;
	ans = 16'hb91a;
	#20
	A = 16'hb38a;
	B = 16'hae13;
	ans = 16'h25b9;
	#20
	A = 16'h38ad;
	B = 16'h34b1;
	ans = 16'h317c;
	#20
	A = 16'hb280;
	B = 16'h3202;
	ans = 16'ha8e2;
	#20
	A = 16'h32b3;
	B = 16'haba4;
	ans = 16'ha266;
	#20
	A = 16'h2d73;
	B = 16'hb332;
	ans = 16'ha4e7;
	#20
	A = 16'hb8cb;
	B = 16'h3966;
	ans = 16'hb678;
	#20
	A = 16'hb89d;
	B = 16'h36f7;
	ans = 16'hb404;
	#20
	A = 16'hbac3;
	B = 16'hb6b4;
	ans = 16'h35aa;
	#20
	A = 16'h397f;
	B = 16'h3954;
	ans = 16'h3752;
	#20
	A = 16'h38f4;
	B = 16'h33b6;
	ans = 16'h30c6;
	#20
	A = 16'hb9e7;
	B = 16'hb901;
	ans = 16'h3762;
	#20
	A = 16'h3ab8;
	B = 16'h3280;
	ans = 16'h3176;
	#20
	A = 16'h99c7;
	B = 16'h3a23;
	ans = 16'h986f;
	#20
	A = 16'hb877;
	B = 16'h3a5b;
	ans = 16'hb718;
	#20
	A = 16'hb629;
	B = 16'h393a;
	ans = 16'hb406;
	#20
	A = 16'h2f9a;
	B = 16'h3a78;
	ans = 16'h2e26;
	#20
	A = 16'h2aa2;
	B = 16'h38aa;
	ans = 16'h27bc;
	#20
	A = 16'h39bd;
	B = 16'h3937;
	ans = 16'h377b;
	#20
	A = 16'h32a5;
	B = 16'hb6c0;
	ans = 16'had9b;
	#20
	A = 16'hb208;
	B = 16'h2c0f;
	ans = 16'ha21f;
	#20
	A = 16'hb5fb;
	B = 16'hbadc;
	ans = 16'h3521;
	#20
	A = 16'h38b7;
	B = 16'hb240;
	ans = 16'haf5e;
	#20
	A = 16'hb8bf;
	B = 16'hb861;
	ans = 16'h3532;
	#20
	A = 16'h3804;
	B = 16'h3bdd;
	ans = 16'h37e5;
	#20
	A = 16'hb680;
	B = 16'h3755;
	ans = 16'hb1f5;
	#20
	A = 16'h39de;
	B = 16'hb66c;
	ans = 16'hb4b6;
	#20
	A = 16'hb0de;
	B = 16'h36a0;
	ans = 16'hac08;
	#20
	A = 16'h343a;
	B = 16'h3b90;
	ans = 16'h33fe;
	#20
	A = 16'hb0e8;
	B = 16'h3bad;
	ans = 16'hb0b5;
	#20
	A = 16'hb856;
	B = 16'hbb81;
	ans = 16'h3811;
	#20
	A = 16'hb0e6;
	B = 16'hb14c;
	ans = 16'h267d;
	#20
	A = 16'h3a7c;
	B = 16'h397c;
	ans = 16'h3872;
	#20
	A = 16'hb876;
	B = 16'h3a21;
	ans = 16'hb6d6;
	#20
	A = 16'h2d15;
	B = 16'hb636;
	ans = 16'ha7e4;
	#20
	A = 16'hb482;
	B = 16'hb54b;
	ans = 16'h2df7;
	#20
	A = 16'haf01;
	B = 16'hb9ee;
	ans = 16'h2d31;
	#20
	A = 16'hb6cc;
	B = 16'hbb2e;
	ans = 16'h361a;
	#20
	A = 16'h35c1;
	B = 16'hb8e4;
	ans = 16'hb309;
	#20
	A = 16'h388b;
	B = 16'hb520;
	ans = 16'hb1d2;
	#20
	A = 16'hbbbc;
	B = 16'hb61a;
	ans = 16'h35e6;
	#20
	A = 16'hb8db;
	B = 16'hb197;
	ans = 16'h2ec9;
	#20
	A = 16'h3334;
	B = 16'h38cd;
	ans = 16'h3053;
	#20
	A = 16'hb33e;
	B = 16'hb31b;
	ans = 16'h2a6f;
	#20
	A = 16'hb785;
	B = 16'h3ab2;
	ans = 16'hb64b;
	#20
	A = 16'hb8fa;
	B = 16'h39cd;
	ans = 16'hb738;
	#20
	A = 16'h33ab;
	B = 16'h3b3d;
	ans = 16'h32f0;
	#20
	A = 16'h3958;
	B = 16'h2062;
	ans = 16'h1ddb;
	#20
	A = 16'h360c;
	B = 16'h3ba6;
	ans = 16'h35c8;
	#20
	A = 16'h399a;
	B = 16'h3a11;
	ans = 16'h383f;
	#20
	A = 16'h3bf0;
	B = 16'hb922;
	ans = 16'hb918;
	#20
	A = 16'hb332;
	B = 16'h39ac;
	ans = 16'hb11a;
	#20
	A = 16'h3861;
	B = 16'hb75e;
	ans = 16'hb408;
	#20
	A = 16'hb840;
	B = 16'h3792;
	ans = 16'hb406;
	#20
	A = 16'hb9c8;
	B = 16'haf68;
	ans = 16'h2d5a;
	#20
	A = 16'h36bc;
	B = 16'hba0d;
	ans = 16'hb518;
	#20
	A = 16'h31f9;
	B = 16'h32e5;
	ans = 16'h2926;
	#20
	A = 16'hbb6b;
	B = 16'hbbc7;
	ans = 16'h3b36;
	#20
	A = 16'hb034;
	B = 16'hbbe3;
	ans = 16'h3025;
	#20
	A = 16'hb72a;
	B = 16'h3b8e;
	ans = 16'hb6c4;
	#20
	A = 16'h3a01;
	B = 16'h3629;
	ans = 16'h34a0;
	#20
	A = 16'hb7f3;
	B = 16'hb564;
	ans = 16'h315b;
	#20
	A = 16'hbaa1;
	B = 16'h3b5e;
	ans = 16'hba1b;
	#20
	A = 16'hb92d;
	B = 16'ha92e;
	ans = 16'h26b4;
	#20
	A = 16'hb9de;
	B = 16'h3a4f;
	ans = 16'hb8a0;
	#20
	A = 16'hb7ca;
	B = 16'hb55a;
	ans = 16'h3136;
	#20
	A = 16'h382b;
	B = 16'hb0d0;
	ans = 16'had04;
	#20
	A = 16'h3618;
	B = 16'h39fc;
	ans = 16'h348f;
	#20
	A = 16'hb52d;
	B = 16'hb9f8;
	ans = 16'h33b9;
	#20
	A = 16'h3ae5;
	B = 16'hb85c;
	ans = 16'hb784;
	#20
	A = 16'hb02d;
	B = 16'hb15f;
	ans = 16'h259b;
	#20
	A = 16'h39e4;
	B = 16'hb793;
	ans = 16'hb594;
	#20
	A = 16'h33da;
	B = 16'h325a;
	ans = 16'h2a3c;
	#20
	A = 16'h3b8e;
	B = 16'h316a;
	ans = 16'h311d;
	#20
	A = 16'hb112;
	B = 16'h393d;
	ans = 16'haea4;
	#20
	A = 16'hb957;
	B = 16'h3125;
	ans = 16'haede;
	#20
	A = 16'h3520;
	B = 16'h3b39;
	ans = 16'h34a1;
	#20
	A = 16'hb172;
	B = 16'hbb3a;
	ans = 16'h30eb;
	#20
	A = 16'hb5a2;
	B = 16'h33f3;
	ans = 16'had99;
	#20
	A = 16'h3883;
	B = 16'h342f;
	ans = 16'h30b8;
	#20
	A = 16'hb95a;
	B = 16'h284e;
	ans = 16'ha5c2;
	#20
	A = 16'h35f7;
	B = 16'hbb98;
	ans = 16'hb5a9;
	#20
	A = 16'h348e;
	B = 16'h303d;
	ans = 16'h28d3;
	#20
	A = 16'h36aa;
	B = 16'hb8ab;
	ans = 16'hb3c7;
	#20
	A = 16'h2f22;
	B = 16'h368a;
	ans = 16'h29d5;
	#20
	A = 16'hb992;
	B = 16'hbb9d;
	ans = 16'h394d;
	#20
	A = 16'h2d44;
	B = 16'hb868;
	ans = 16'ha9cd;
	#20
	A = 16'ha370;
	B = 16'h35a1;
	ans = 16'h9d3c;
	#20
	A = 16'h3888;
	B = 16'hba82;
	ans = 16'hb75f;
	#20
	A = 16'h38c4;
	B = 16'hb898;
	ans = 16'hb579;
	#20
	A = 16'h396c;
	B = 16'h38fc;
	ans = 16'h36c2;
	#20
	A = 16'h34c5;
	B = 16'h311c;
	ans = 16'h2a18;
	#20
	A = 16'hb2fa;
	B = 16'hb356;
	ans = 16'h2a66;
	#20
	A = 16'h3b87;
	B = 16'hb868;
	ans = 16'hb825;
	#20
	A = 16'hb982;
	B = 16'h2d00;
	ans = 16'haae2;
	#20
	A = 16'hb958;
	B = 16'h3bef;
	ans = 16'hb94d;
	#20
	A = 16'ha95e;
	B = 16'h388f;
	ans = 16'ha61e;
	#20
	A = 16'hbbd4;
	B = 16'h35e2;
	ans = 16'hb5c2;
	#20
	A = 16'hb831;
	B = 16'haa09;
	ans = 16'h2653;
	#20
	A = 16'hb784;
	B = 16'h326b;
	ans = 16'hae08;
	#20
	A = 16'h328e;
	B = 16'h3866;
	ans = 16'h2f35;
	#20
	A = 16'hb876;
	B = 16'h2fc6;
	ans = 16'hac56;
	#20
	A = 16'h35b3;
	B = 16'hb7ba;
	ans = 16'hb181;
	#20
	A = 16'hb2b3;
	B = 16'hb017;
	ans = 16'h26da;
	#20
	A = 16'hb5f9;
	B = 16'h39e0;
	ans = 16'hb463;
	#20
	A = 16'h32b9;
	B = 16'h38df;
	ans = 16'h3018;
	#20
	A = 16'hb6a2;
	B = 16'hb86f;
	ans = 16'h335a;
	#20
	A = 16'h37f0;
	B = 16'hb7f8;
	ans = 16'hb3e8;
	#20
	A = 16'h3061;
	B = 16'hb5f8;
	ans = 16'haa89;
	#20
	A = 16'h3946;
	B = 16'hb064;
	ans = 16'hadca;
	#20
	A = 16'h3a9f;
	B = 16'h39c0;
	ans = 16'h38c2;
	#20
	A = 16'hb892;
	B = 16'h350f;
	ans = 16'hb1c8;
	#20
	A = 16'h31e3;
	B = 16'h37a7;
	ans = 16'h2da2;
	#20
	A = 16'hafeb;
	B = 16'hb94d;
	ans = 16'h2d3f;
	#20
	A = 16'hb8bf;
	B = 16'hbaa3;
	ans = 16'h37e0;
	#20
	A = 16'hb7fa;
	B = 16'habd0;
	ans = 16'h27ca;
	#20
	A = 16'h3923;
	B = 16'hbb1d;
	ans = 16'hb891;
	#20
	A = 16'hbacc;
	B = 16'hbaec;
	ans = 16'h39e2;
	#20
	A = 16'hb80f;
	B = 16'haa66;
	ans = 16'h267e;
	#20
	A = 16'hb2b8;
	B = 16'h3848;
	ans = 16'haf31;
	#20
	A = 16'h380e;
	B = 16'h38e4;
	ans = 16'h34f5;
	#20
	A = 16'hb0bf;
	B = 16'h39c9;
	ans = 16'haedd;
	#20
	A = 16'h3afa;
	B = 16'h3804;
	ans = 16'h3701;
	#20
	A = 16'h3a19;
	B = 16'h2e3c;
	ans = 16'h2cc0;
	#20
	A = 16'h359a;
	B = 16'hb42d;
	ans = 16'hadd9;
	#20
	A = 16'h3a25;
	B = 16'hb358;
	ans = 16'hb1a4;
	#20
	A = 16'hbb17;
	B = 16'h382d;
	ans = 16'hb767;
	#20
	A = 16'hbaf2;
	B = 16'hb5c5;
	ans = 16'h3502;
	#20
	A = 16'h380f;
	B = 16'hb99b;
	ans = 16'hb5b0;
	#20
	A = 16'h3632;
	B = 16'h2e26;
	ans = 16'h28c3;
	#20
	A = 16'h3b44;
	B = 16'hb681;
	ans = 16'hb5e8;
	#20
	A = 16'hb83b;
	B = 16'h2278;
	ans = 16'h9ed7;
	#20
	A = 16'h3998;
	B = 16'h2b61;
	ans = 16'h2929;
	#20
	A = 16'h2f4a;
	B = 16'h30e3;
	ans = 16'h2474;
	#20
	A = 16'h3b94;
	B = 16'hb670;
	ans = 16'hb619;
	#20
	A = 16'ha62e;
	B = 16'hb3d9;
	ans = 16'h1e10;
	#20
	A = 16'h9cf8;
	B = 16'had65;
	ans = 16'heb3;
	#20
	A = 16'hb550;
	B = 16'h364d;
	ans = 16'hb02f;
	#20
	A = 16'h3b76;
	B = 16'haa25;
	ans = 16'ha9bb;
	#20
	A = 16'h386e;
	B = 16'h2c7c;
	ans = 16'h28f7;
	#20
	A = 16'hba79;
	B = 16'hb85f;
	ans = 16'h3713;
	#20
	A = 16'h3bb3;
	B = 16'h36cf;
	ans = 16'h368d;
	#20
	A = 16'h3075;
	B = 16'h3600;
	ans = 16'h2ab0;
	#20
	A = 16'hb912;
	B = 16'h3923;
	ans = 16'hb683;
	#20
	A = 16'h399b;
	B = 16'h3762;
	ans = 16'h352c;
	#20
	A = 16'hbaad;
	B = 16'hb0a6;
	ans = 16'h2fc2;
	#20
	A = 16'h1d43;
	B = 16'h3893;
	ans = 16'h1a04;
	#20
	A = 16'hbb72;
	B = 16'h3835;
	ans = 16'hb7d5;
	#20
	A = 16'hb888;
	B = 16'hb963;
	ans = 16'h361a;
	#20
	A = 16'h3449;
	B = 16'hbaba;
	ans = 16'hb335;
	#20
	A = 16'hb933;
	B = 16'hb9d3;
	ans = 16'h3792;
	#20
	A = 16'h3a0c;
	B = 16'h2e84;
	ans = 16'h2ced;
	#20
	A = 16'hb8c1;
	B = 16'h3b96;
	ans = 16'hb882;
	#20
	A = 16'h38ae;
	B = 16'hb93b;
	ans = 16'hb61f;
	#20
	A = 16'h3817;
	B = 16'h360d;
	ans = 16'h3230;
	#20
	A = 16'haf8a;
	B = 16'hbbc2;
	ans = 16'h2f50;
	#20
	A = 16'hb79b;
	B = 16'hba0e;
	ans = 16'h35c2;
	#20
	A = 16'hb58b;
	B = 16'hb53f;
	ans = 16'h2f45;
	#20
	A = 16'hbbbf;
	B = 16'hb874;
	ans = 16'h3850;
	#20
	A = 16'h2bb6;
	B = 16'h35b0;
	ans = 16'h257b;
	#20
	A = 16'h2471;
	B = 16'h3718;
	ans = 16'h1fe0;
	#20
	A = 16'h3a0d;
	B = 16'hb9c8;
	ans = 16'hb85f;
	#20
	A = 16'hb781;
	B = 16'h3958;
	ans = 16'hb503;
	#20
	A = 16'hbb77;
	B = 16'h3b87;
	ans = 16'hbb06;
	#20
	A = 16'hbac1;
	B = 16'h3843;
	ans = 16'hb732;
	#20
	A = 16'h3bb9;
	B = 16'hbb7e;
	ans = 16'hbb3c;
	#20
	A = 16'hb4d6;
	B = 16'hba35;
	ans = 16'h3381;
	#20
	A = 16'hac0a;
	B = 16'h39ef;
	ans = 16'ha9fe;
	#20
	A = 16'hb762;
	B = 16'hba5f;
	ans = 16'h35e1;
	#20
	A = 16'h3bc7;
	B = 16'haa5b;
	ans = 16'haa2e;
	#20
	A = 16'h3a8a;
	B = 16'h30e0;
	ans = 16'h2ff8;
	#20
	A = 16'h339e;
	B = 16'hb61c;
	ans = 16'hadd1;
	#20
	A = 16'hb7dd;
	B = 16'hb1cd;
	ans = 16'h2db4;
	#20
	A = 16'hab93;
	B = 16'h3b52;
	ans = 16'haaee;
	#20
	A = 16'h3963;
	B = 16'hb955;
	ans = 16'hb72e;
	#20
	A = 16'h36b5;
	B = 16'h39de;
	ans = 16'h34eb;
	#20
	A = 16'h3ba6;
	B = 16'h2a71;
	ans = 16'h2a29;
	#20
	A = 16'hbaef;
	B = 16'hb5c3;
	ans = 16'h34fe;
	#20
	A = 16'h3328;
	B = 16'hb134;
	ans = 16'ha8a8;
	#20
	A = 16'h3616;
	B = 16'hbbb7;
	ans = 16'hb5de;
	#20
	A = 16'hb133;
	B = 16'hbb51;
	ans = 16'h30c1;
	#20
	A = 16'h2d5d;
	B = 16'h33a1;
	ans = 16'h251d;
	#20
	A = 16'hb7b5;
	B = 16'h3337;
	ans = 16'haef3;
	#20
	A = 16'hbbb8;
	B = 16'h3a90;
	ans = 16'hba55;
	#20
	A = 16'hb41a;
	B = 16'h359c;
	ans = 16'hadc0;
	#20
	A = 16'h388f;
	B = 16'hbbe5;
	ans = 16'hb880;
	#20
	A = 16'h3bb4;
	B = 16'hb97d;
	ans = 16'hb949;
	#20
	A = 16'hb94d;
	B = 16'hba0a;
	ans = 16'h3800;
	#20
	A = 16'h30e0;
	B = 16'h348f;
	ans = 16'h298e;
	#20
	A = 16'haa39;
	B = 16'hb9c4;
	ans = 16'h287c;
	#20
	A = 16'h221d;
	B = 16'h3553;
	ans = 16'h1c12;
	#20
	A = 16'h3439;
	B = 16'hbac5;
	ans = 16'hb325;
	#20
	A = 16'h39fc;
	B = 16'h3b02;
	ans = 16'h393e;
	#20
	A = 16'hb85b;
	B = 16'h3b1a;
	ans = 16'hb7bc;
	#20
	A = 16'h35be;
	B = 16'ha3de;
	ans = 16'h9da6;
	#20
	A = 16'hbbec;
	B = 16'h3733;
	ans = 16'hb721;
	#20
	A = 16'h38d6;
	B = 16'hb8ee;
	ans = 16'hb5f6;
	#20
	A = 16'h2eb3;
	B = 16'h3940;
	ans = 16'h2c65;
	#20
	A = 16'hb881;
	B = 16'h386f;
	ans = 16'hb4fe;
	#20
	A = 16'hb9a8;
	B = 16'h3a10;
	ans = 16'hb849;
	#20
	A = 16'hb19f;
	B = 16'hbb50;
	ans = 16'h3123;
	#20
	A = 16'hb9a5;
	B = 16'hbad4;
	ans = 16'h38d1;
	#20
	A = 16'hb82d;
	B = 16'hb6b0;
	ans = 16'h32fb;
	#20
	A = 16'h3399;
	B = 16'h3819;
	ans = 16'h2fc8;
	#20
	A = 16'h3958;
	B = 16'hb23a;
	ans = 16'hb029;
	#20
	A = 16'hb805;
	B = 16'h3820;
	ans = 16'hb425;
	#20
	A = 16'h2411;
	B = 16'hb4b8;
	ans = 16'h9ccc;
	#20
	A = 16'hbb9d;
	B = 16'hbaee;
	ans = 16'h3a98;
	#20
	A = 16'hb823;
	B = 16'h39bd;
	ans = 16'hb5ef;
	#20
	A = 16'hba66;
	B = 16'h3b6b;
	ans = 16'hb9ef;
	#20
	A = 16'h358e;
	B = 16'h1bc1;
	ans = 16'h1562;
	#20
	A = 16'h3803;
	B = 16'h31e2;
	ans = 16'h2de6;
	#20
	A = 16'h396d;
	B = 16'h3649;
	ans = 16'h3443;
	#20
	A = 16'h3937;
	B = 16'h387d;
	ans = 16'h35da;
	#20
	A = 16'hb25d;
	B = 16'h372e;
	ans = 16'hadb6;
	#20
	A = 16'h3b6b;
	B = 16'hb999;
	ans = 16'hb931;
	#20
	A = 16'h2f57;
	B = 16'h383c;
	ans = 16'h2bc5;
	#20
	A = 16'h30e9;
	B = 16'hb442;
	ans = 16'ha93a;
	#20
	A = 16'hba3d;
	B = 16'hbaf1;
	ans = 16'h396a;
	#20
	A = 16'h3b06;
	B = 16'hbaf0;
	ans = 16'hba17;
	#20
	A = 16'h291a;
	B = 16'hb4ac;
	ans = 16'ha1f5;
	#20
	A = 16'h3ac7;
	B = 16'h3bff;
	ans = 16'h3ac6;
	#20
	A = 16'hb9fd;
	B = 16'hb16f;
	ans = 16'h3011;
	#20
	A = 16'hb92d;
	B = 16'hb829;
	ans = 16'h3562;
	#20
	A = 16'h3626;
	B = 16'hb44d;
	ans = 16'hae9c;
	#20
	A = 16'h3bd3;
	B = 16'hb658;
	ans = 16'hb634;
	#20
	A = 16'hb815;
	B = 16'h38d9;
	ans = 16'hb4f2;
	#20
	A = 16'h370b;
	B = 16'h9cda;
	ans = 16'h9845;
	#20
	A = 16'hb82a;
	B = 16'h3962;
	ans = 16'hb59b;
	#20
	A = 16'h2e52;
	B = 16'h3360;
	ans = 16'h25d4;
	#20
	A = 16'hb99b;
	B = 16'h2c53;
	ans = 16'haa0f;
	#20
	A = 16'hae36;
	B = 16'hba38;
	ans = 16'h2cd4;
	#20
	A = 16'h3973;
	B = 16'hbbaa;
	ans = 16'hb938;
	#20
	A = 16'h3998;
	B = 16'ha272;
	ans = 16'ha082;
	#20
	A = 16'h271f;
	B = 16'h31e8;
	ans = 16'h1d42;
	#20
	A = 16'h3683;
	B = 16'h39ba;
	ans = 16'h34a9;
	#20
	A = 16'hb8a8;
	B = 16'hb86f;
	ans = 16'h3529;
	#20
	A = 16'h3980;
	B = 16'hb9c2;
	ans = 16'hb7eb;
	#20
	A = 16'h3410;
	B = 16'h3624;
	ans = 16'h2e3d;
	#20
	A = 16'hb3b1;
	B = 16'h39ed;
	ans = 16'hb1b2;
	#20
	A = 16'hb23e;
	B = 16'h34f6;
	ans = 16'habbe;
	#20
	A = 16'hac95;
	B = 16'haedc;
	ans = 16'h1fdc;
	#20
	A = 16'h3739;
	B = 16'hb583;
	ans = 16'hb0fa;
	#20
	A = 16'h3a82;
	B = 16'hbae7;
	ans = 16'hb99d;
	#20
	A = 16'h3a1d;
	B = 16'h385c;
	ans = 16'h36aa;
	#20
	A = 16'hbbbd;
	B = 16'h3829;
	ans = 16'hb806;
	#20
	A = 16'h3b73;
	B = 16'hba87;
	ans = 16'hba14;
	#20
	A = 16'h3bb4;
	B = 16'hb4e4;
	ans = 16'hb4b6;
	#20
	A = 16'h3969;
	B = 16'hbba8;
	ans = 16'hb92d;
	#20
	A = 16'h3834;
	B = 16'haccd;
	ans = 16'ha90b;
	#20
	A = 16'hafd4;
	B = 16'hb4b1;
	ans = 16'h2897;
	#20
	A = 16'h334d;
	B = 16'h3a3c;
	ans = 16'h31b1;
	#20
	A = 16'h3838;
	B = 16'hb71a;
	ans = 16'hb37d;
	#20
	A = 16'h3534;
	B = 16'ha4ce;
	ans = 16'h9e40;
	#20
	A = 16'hb6e6;
	B = 16'h3b3b;
	ans = 16'hb63c;
	#20
	A = 16'h3822;
	B = 16'h3874;
	ans = 16'h349a;
	#20
	A = 16'hbb26;
	B = 16'hbb73;
	ans = 16'h3aa8;
	#20
	A = 16'hb9a7;
	B = 16'h3059;
	ans = 16'hae25;
	#20
	A = 16'haed3;
	B = 16'hbb33;
	ans = 16'h2e24;
	#20
	A = 16'hbbd1;
	B = 16'h3696;
	ans = 16'hb66f;
	#20
	A = 16'h3513;
	B = 16'hb440;
	ans = 16'had64;
	#20
	A = 16'hb477;
	B = 16'h385b;
	ans = 16'hb0dd;
	#20
	A = 16'hbb79;
	B = 16'hba51;
	ans = 16'h39e6;
	#20
	A = 16'h3b78;
	B = 16'hbb07;
	ans = 16'hba90;
	#20
	A = 16'hb1a2;
	B = 16'h3b97;
	ans = 16'hb158;
	#20
	A = 16'h389e;
	B = 16'hb263;
	ans = 16'haf5f;
	#20
	A = 16'hb8c8;
	B = 16'h3a13;
	ans = 16'hb743;
	#20
	A = 16'h305f;
	B = 16'h3a92;
	ans = 16'h2f2e;
	#20
	A = 16'h3b9e;
	B = 16'hb93a;
	ans = 16'hb8fa;
	#20
	A = 16'hb08e;
	B = 16'hb47d;
	ans = 16'h291c;
	#20
	A = 16'hb9a3;
	B = 16'hb824;
	ans = 16'h35d6;
	#20
	A = 16'h37e5;
	B = 16'hb616;
	ans = 16'hb201;
	#20
	A = 16'hb81e;
	B = 16'hb67e;
	ans = 16'h32af;
	#20
	A = 16'hba80;
	B = 16'hb813;
	ans = 16'h369f;
	#20
	A = 16'h35e7;
	B = 16'h3283;
	ans = 16'h2cce;
	#20
	A = 16'h34a6;
	B = 16'h383c;
	ans = 16'h30ec;
	#20
	A = 16'h27fa;
	B = 16'hb75e;
	ans = 16'ha358;
	#20
	A = 16'hba28;
	B = 16'h3aae;
	ans = 16'hb924;
	#20
	A = 16'h39a6;
	B = 16'hbb93;
	ans = 16'hb959;
	#20
	A = 16'h3070;
	B = 16'h2959;
	ans = 16'h1def;
	#20
	A = 16'hb745;
	B = 16'hac4c;
	ans = 16'h27cf;
	#20
	A = 16'haf2d;
	B = 16'hb469;
	ans = 16'h27e9;
	#20
	A = 16'h3777;
	B = 16'hb638;
	ans = 16'hb1ce;
	#20
	A = 16'h3aab;
	B = 16'h2fb0;
	ans = 16'h2e68;
	#20
	A = 16'haede;
	B = 16'hbb73;
	ans = 16'h2e65;
	#20
	A = 16'hb85a;
	B = 16'hb36a;
	ans = 16'h3008;
	#20
	A = 16'h3436;
	B = 16'hacb7;
	ans = 16'ha4f7;
	#20
	A = 16'hb407;
	B = 16'h38b6;
	ans = 16'hb0be;
	#20
	A = 16'hac3d;
	B = 16'h2c2f;
	ans = 16'h9c6f;
	#20
	A = 16'hac31;
	B = 16'hb660;
	ans = 16'h26ae;
	#20
	A = 16'hb3fb;
	B = 16'hbb16;
	ans = 16'h3312;
	#20
	A = 16'hbad4;
	B = 16'hb2d7;
	ans = 16'h31d7;
	#20
	A = 16'hb915;
	B = 16'hb5e0;
	ans = 16'h3377;
	#20
	A = 16'h3ad4;
	B = 16'hb9c8;
	ans = 16'hb8ef;
	#20
	A = 16'hbb80;
	B = 16'h22d1;
	ans = 16'ha264;
	#20
	A = 16'h36b9;
	B = 16'hb8a1;
	ans = 16'hb3c8;
	#20
	A = 16'hb149;
	B = 16'h3b77;
	ans = 16'hb0ee;
	#20
	A = 16'hb83c;
	B = 16'haf1e;
	ans = 16'h2b89;
	#20
	A = 16'hbb45;
	B = 16'h2b5a;
	ans = 16'haaae;
	#20
	A = 16'h3769;
	B = 16'h2f01;
	ans = 16'h2a7d;
	#20
	A = 16'h340c;
	B = 16'hbb41;
	ans = 16'hb357;
	#20
	A = 16'hbab3;
	B = 16'hb867;
	ans = 16'h3760;
	#20
	A = 16'h367c;
	B = 16'hb40a;
	ans = 16'hae8c;
	#20
	A = 16'h2eb0;
	B = 16'hb83d;
	ans = 16'hab16;
	#20
	A = 16'hb4b9;
	B = 16'h3aac;
	ans = 16'hb3e1;
	#20
	A = 16'hb943;
	B = 16'hb8a3;
	ans = 16'h3619;
	#20
	A = 16'h39c9;
	B = 16'h36eb;
	ans = 16'h3501;
	#20
	A = 16'h369f;
	B = 16'h3b8a;
	ans = 16'h363d;
	#20
	A = 16'ha54b;
	B = 16'h3b74;
	ans = 16'ha4ee;
	#20
	A = 16'hbba4;
	B = 16'hb94b;
	ans = 16'h390e;
	#20
	A = 16'h31a2;
	B = 16'h2ccb;
	ans = 16'h22c0;
	#20
	A = 16'h3741;
	B = 16'hba79;
	ans = 16'hb5de;
	#20
	A = 16'hb9f6;
	B = 16'h2dea;
	ans = 16'hac68;
	#20
	A = 16'hb600;
	B = 16'hb1ee;
	ans = 16'h2c72;
	#20
	A = 16'h354a;
	B = 16'hb9cf;
	ans = 16'hb3ae;
	#20
	A = 16'hb189;
	B = 16'h3b52;
	ans = 16'hb111;
	#20
	A = 16'h30d5;
	B = 16'h3612;
	ans = 16'h2b55;
	#20
	A = 16'h37f9;
	B = 16'h3726;
	ans = 16'h3320;
	#20
	A = 16'h348f;
	B = 16'h3bcf;
	ans = 16'h3473;
	#20
	A = 16'hb867;
	B = 16'h386b;
	ans = 16'hb4dd;
	#20
	A = 16'hba6c;
	B = 16'hb99d;
	ans = 16'h3882;
	#20
	A = 16'h3836;
	B = 16'h376c;
	ans = 16'h33d0;
	#20
	A = 16'hb157;
	B = 16'h3a62;
	ans = 16'hb043;
	#20
	A = 16'hb343;
	B = 16'h3749;
	ans = 16'hae9d;
	#20
	A = 16'h3a8b;
	B = 16'hb6fc;
	ans = 16'hb5b6;
	#20
	A = 16'h3b8d;
	B = 16'h349b;
	ans = 16'h3459;
	#20
	A = 16'h3a89;
	B = 16'hb118;
	ans = 16'hb029;
	#20
	A = 16'h343e;
	B = 16'hb696;
	ans = 16'haefc;
	#20
	A = 16'h3986;
	B = 16'hb7a3;
	ans = 16'hb546;
	#20
	A = 16'hbb31;
	B = 16'hbace;
	ans = 16'h3a1e;
	#20
	A = 16'h3868;
	B = 16'h350b;
	ans = 16'h318e;
	#20
	A = 16'h39f0;
	B = 16'h32e4;
	ans = 16'h311d;
	#20
	A = 16'hb924;
	B = 16'hb9d0;
	ans = 16'h3778;
	#20
	A = 16'hb896;
	B = 16'hb7f5;
	ans = 16'h3490;
	#20
	A = 16'hb9aa;
	B = 16'h3a0c;
	ans = 16'hb848;
	#20
	A = 16'h3bc6;
	B = 16'hb99b;
	ans = 16'hb972;
	#20
	A = 16'ha845;
	B = 16'hbacd;
	ans = 16'h2742;
	#20
	A = 16'hb488;
	B = 16'hadc1;
	ans = 16'h2685;
	#20
	A = 16'h3692;
	B = 16'hb95a;
	ans = 16'hb465;
	#20
	A = 16'hba8f;
	B = 16'hb849;
	ans = 16'h3707;
	#20
	A = 16'h305c;
	B = 16'h3698;
	ans = 16'h2b30;
	#20
	A = 16'ha926;
	B = 16'h3758;
	ans = 16'ha4ba;
	#20
	A = 16'h3079;
	B = 16'h2d4e;
	ans = 16'h21ee;
	#20
	A = 16'hb7db;
	B = 16'h37ed;
	ans = 16'hb3c8;
	#20
	A = 16'hbb58;
	B = 16'h35ef;
	ans = 16'hb572;
	#20
	A = 16'hb56a;
	B = 16'h395d;
	ans = 16'hb342;
	#20
	A = 16'hba17;
	B = 16'hbab6;
	ans = 16'h391c;
	#20
	A = 16'hb239;
	B = 16'h384b;
	ans = 16'haeae;
	#20
	A = 16'h3816;
	B = 16'h343b;
	ans = 16'h3052;
	#20
	A = 16'h35de;
	B = 16'h28b0;
	ans = 16'h22e0;
	#20
	A = 16'hb78c;
	B = 16'hbb16;
	ans = 16'h36af;
	#20
	A = 16'h37ed;
	B = 16'h372c;
	ans = 16'h331b;
	#20
	A = 16'hae37;
	B = 16'hb65c;
	ans = 16'h28f1;
	#20
	A = 16'h3bba;
	B = 16'h3aba;
	ans = 16'h3a7f;
	#20
	A = 16'h3be5;
	B = 16'hac3d;
	ans = 16'hac2f;
	#20
	A = 16'ha835;
	B = 16'hb8f6;
	ans = 16'h2538;
	#20
	A = 16'h362a;
	B = 16'h3ab3;
	ans = 16'h3529;
	#20
	A = 16'h3676;
	B = 16'ha813;
	ans = 16'ha295;
	#20
	A = 16'hb8b2;
	B = 16'hb851;
	ans = 16'h3511;
	#20
	A = 16'h39c6;
	B = 16'hbb28;
	ans = 16'hb92a;
	#20
	A = 16'hba58;
	B = 16'h3b63;
	ans = 16'hb9dc;
	#20
	A = 16'h3a16;
	B = 16'hbb61;
	ans = 16'hb99d;
	#20
	A = 16'had03;
	B = 16'h3a01;
	ans = 16'hab86;
	#20
	A = 16'h341d;
	B = 16'h319e;
	ans = 16'h29c7;
	#20
	A = 16'ha3ac;
	B = 16'hb805;
	ans = 16'h1fb6;
	#20
	A = 16'h37d6;
	B = 16'h2dbc;
	ans = 16'h299e;
	#20
	A = 16'h3a41;
	B = 16'h3bc4;
	ans = 16'h3a12;
	#20
	A = 16'hb5ba;
	B = 16'hbbb9;
	ans = 16'h3587;
	#20
	A = 16'h3155;
	B = 16'h2991;
	ans = 16'h1f6c;
	#20
	A = 16'hba99;
	B = 16'hb914;
	ans = 16'h3830;
	#20
	A = 16'hbb14;
	B = 16'h3ade;
	ans = 16'hba13;
	#20
	A = 16'h38fb;
	B = 16'hbaf6;
	ans = 16'hb855;
	#20
	A = 16'ha53c;
	B = 16'hb458;
	ans = 16'h1daf;
	#20
	A = 16'h355e;
	B = 16'h397a;
	ans = 16'h3359;
	#20
	A = 16'h369a;
	B = 16'h3a42;
	ans = 16'h352a;
	#20
	A = 16'h1ede;
	B = 16'hb940;
	ans = 16'h9c82;
	#20
	A = 16'hb0bf;
	B = 16'hbbe3;
	ans = 16'h30ae;
	#20
	A = 16'hb6c0;
	B = 16'hb619;
	ans = 16'h3125;
	#20
	A = 16'hb659;
	B = 16'hbbf0;
	ans = 16'h364c;
	#20
	A = 16'h3906;
	B = 16'hb762;
	ans = 16'hb4a3;
	#20
	A = 16'h3270;
	B = 16'h352a;
	ans = 16'h2c28;
	#20
	A = 16'h37da;
	B = 16'hadf7;
	ans = 16'ha9db;
	#20
	A = 16'hb8b0;
	B = 16'hb7fc;
	ans = 16'h34ae;
	#20
	A = 16'h36a0;
	B = 16'hb3f9;
	ans = 16'hae9a;
	#20
	A = 16'h3843;
	B = 16'h399f;
	ans = 16'h35fd;
	#20
	A = 16'h33a3;
	B = 16'hb529;
	ans = 16'haced;
	#20
	A = 16'h39e2;
	B = 16'h3a79;
	ans = 16'h38c2;
	#20
	A = 16'hb91c;
	B = 16'hb8d3;
	ans = 16'h362a;
	#20
	A = 16'hb83c;
	B = 16'ha57c;
	ans = 16'h21ce;
	#20
	A = 16'hb8a6;
	B = 16'h353d;
	ans = 16'hb216;
	#20
	A = 16'h389f;
	B = 16'h39bf;
	ans = 16'h36a3;
	#20
	A = 16'h3b09;
	B = 16'hbb94;
	ans = 16'hbaaa;
	#20
	A = 16'h34a0;
	B = 16'h3959;
	ans = 16'h322f;
	#20
	A = 16'h39fa;
	B = 16'h2705;
	ans = 16'h253e;
	#20
	A = 16'hb88d;
	B = 16'hba64;
	ans = 16'h3745;
	#20
	A = 16'hb186;
	B = 16'hb999;
	ans = 16'h2fbb;
	#20
	A = 16'h389f;
	B = 16'h37ac;
	ans = 16'h346e;
	#20
	A = 16'hb8f6;
	B = 16'h391c;
	ans = 16'hb656;
	#20
	A = 16'hbab8;
	B = 16'hb9ac;
	ans = 16'h38c3;
	#20
	A = 16'h2f1f;
	B = 16'hb670;
	ans = 16'ha9bb;
	#20
	A = 16'hba04;
	B = 16'hbbd8;
	ans = 16'h39e6;
	#20
	A = 16'hb45d;
	B = 16'hbb60;
	ans = 16'h3406;
	#20
	A = 16'h296e;
	B = 16'hb620;
	ans = 16'ha428;
	#20
	A = 16'hae8b;
	B = 16'h3614;
	ans = 16'ha8f9;
	#20
	A = 16'hb7e3;
	B = 16'h3bf8;
	ans = 16'hb7db;
	#20
	A = 16'h39bb;
	B = 16'h38c0;
	ans = 16'h36ce;
	#20
	A = 16'ha536;
	B = 16'h360a;
	ans = 16'h9fde;
	#20
	A = 16'hb9b4;
	B = 16'hb255;
	ans = 16'h3084;
	#20
	A = 16'hbb06;
	B = 16'h389a;
	ans = 16'hb80a;
	#20
	A = 16'h3aff;
	B = 16'h35c4;
	ans = 16'h350b;
	#20
	A = 16'hbb5a;
	B = 16'hb621;
	ans = 16'h35a2;
	#20
	A = 16'h2e6c;
	B = 16'h38cd;
	ans = 16'h2bb5;
	#20
	A = 16'hb9f5;
	B = 16'h395f;
	ans = 16'hb800;
	#20
	A = 16'h3b62;
	B = 16'hbb74;
	ans = 16'hbae1;
	#20
	A = 16'hab80;
	B = 16'hb89a;
	ans = 16'h2850;
	#20
	A = 16'h310a;
	B = 16'h352f;
	ans = 16'h2a88;
	#20
	A = 16'h3599;
	B = 16'h3ada;
	ans = 16'h34cb;
	#20
	A = 16'h398e;
	B = 16'hb79e;
	ans = 16'hb54a;
	#20
	A = 16'hbbaf;
	B = 16'hb03f;
	ans = 16'h3014;
	#20
	A = 16'h2333;
	B = 16'hbaac;
	ans = 16'ha201;
	#20
	A = 16'ha52a;
	B = 16'h30e7;
	ans = 16'h9a54;
	#20
	A = 16'hbaa2;
	B = 16'h33d3;
	ans = 16'hb27d;
	#20
	A = 16'h20fc;
	B = 16'hb31e;
	ans = 16'h986f;
	#20
	A = 16'h369b;
	B = 16'hb257;
	ans = 16'had3c;
	#20
	A = 16'hba73;
	B = 16'hb939;
	ans = 16'h3836;
	#20
	A = 16'h3601;
	B = 16'hb4f8;
	ans = 16'haf75;
	#20
	A = 16'hb9fd;
	B = 16'hbbf3;
	ans = 16'h39f3;
	#20
	A = 16'hbb35;
	B = 16'hb94c;
	ans = 16'h38c6;
	#20
	A = 16'h3bf7;
	B = 16'h3922;
	ans = 16'h391c;
	#20
	A = 16'hb8b4;
	B = 16'hba49;
	ans = 16'h3764;
	#20
	A = 16'hb934;
	B = 16'hb5f0;
	ans = 16'h33b9;
	#20
	A = 16'h39eb;
	B = 16'h381b;
	ans = 16'h3613;
	#20
	A = 16'haa6b;
	B = 16'h3aa5;
	ans = 16'ha955;
	#20
	A = 16'h338c;
	B = 16'hb6eb;
	ans = 16'hae87;
	#20
	A = 16'hb7a2;
	B = 16'h38dc;
	ans = 16'hb4a3;
	#20
	A = 16'hb5a2;
	B = 16'h3a9c;
	ans = 16'hb4a7;
	#20
	A = 16'hbb43;
	B = 16'hba31;
	ans = 16'h399f;
	#20
	A = 16'h3b37;
	B = 16'hb778;
	ans = 16'hb6bc;
	#20
	A = 16'haf34;
	B = 16'hba5c;
	ans = 16'h2dba;
	#20
	A = 16'hbae1;
	B = 16'hb931;
	ans = 16'h3877;
	#20
	A = 16'haeb1;
	B = 16'h2e02;
	ans = 16'ha106;
	#20
	A = 16'h317b;
	B = 16'hb6af;
	ans = 16'hac94;
	#20
	A = 16'hb668;
	B = 16'ha842;
	ans = 16'h22d2;
	#20
	A = 16'h39ef;
	B = 16'h3bfe;
	ans = 16'h39ee;
	#20
	A = 16'h3bbf;
	B = 16'hb8a2;
	ans = 16'hb87c;
	#20
	A = 16'hb574;
	B = 16'hbae4;
	ans = 16'h34b2;
	#20
	A = 16'h3bd4;
	B = 16'hbb68;
	ans = 16'hbb3f;
	#20
	A = 16'h3b18;
	B = 16'hba52;
	ans = 16'hb99b;
	#20
	A = 16'h3098;
	B = 16'hb564;
	ans = 16'haa31;
	#20
	A = 16'ha5de;
	B = 16'hbab4;
	ans = 16'h24eb;
	#20
	A = 16'hb9c5;
	B = 16'h3bd4;
	ans = 16'hb9a5;
	#20
	A = 16'haa1e;
	B = 16'hbaeb;
	ans = 16'h294a;
	#20
	A = 16'hbaa6;
	B = 16'h1e90;
	ans = 16'h9d74;
	#20
	A = 16'h3b29;
	B = 16'hb875;
	ans = 16'hb7fa;
	#20
	A = 16'hb68c;
	B = 16'hb947;
	ans = 16'h3452;
	#20
	A = 16'hb9c7;
	B = 16'h37d7;
	ans = 16'hb5a9;
	#20
	A = 16'hb04d;
	B = 16'hb7fa;
	ans = 16'h2c4a;
	#20
	A = 16'hb9b2;
	B = 16'hb5e1;
	ans = 16'h342f;
	#20
	A = 16'h3012;
	B = 16'h32ce;
	ans = 16'h26ed;
	#20
	A = 16'hb64f;
	B = 16'hb9ef;
	ans = 16'h34ae;
	#20
	A = 16'hb5f8;
	B = 16'h2e5e;
	ans = 16'ha8c0;
	#20
	A = 16'h3045;
	B = 16'hb54f;
	ans = 16'ha9ab;
	#20
	A = 16'hb47a;
	B = 16'hb5f6;
	ans = 16'h2eac;
	#20
	A = 16'haaef;
	B = 16'h3989;
	ans = 16'ha8cc;
	#20
	A = 16'hb614;
	B = 16'had75;
	ans = 16'h2825;
	#20
	A = 16'h34e8;
	B = 16'h35d5;
	ans = 16'h2f27;
	#20
	A = 16'hb92a;
	B = 16'hbb29;
	ans = 16'h389f;
	#20
	A = 16'hba69;
	B = 16'h3bc9;
	ans = 16'hba3d;
	#20
	A = 16'hb9d1;
	B = 16'hba4d;
	ans = 16'h3895;
	#20
	A = 16'h38fb;
	B = 16'hb483;
	ans = 16'hb19e;
	#20
	A = 16'h399d;
	B = 16'h3a26;
	ans = 16'h3850;
	#20
	A = 16'h2dfa;
	B = 16'hb9d3;
	ans = 16'hac5a;
	#20
	A = 16'h387a;
	B = 16'h3a74;
	ans = 16'h3739;
	#20
	A = 16'hb98e;
	B = 16'hb9c4;
	ans = 16'h3801;
	#20
	A = 16'hb60f;
	B = 16'hba0d;
	ans = 16'h3495;
	#20
	A = 16'h1f7f;
	B = 16'hbb6e;
	ans = 16'h9ef6;
	#20
	A = 16'hbb55;
	B = 16'hbb89;
	ans = 16'h3ae8;
	#20
	A = 16'h3a3a;
	B = 16'h3b2d;
	ans = 16'h3996;
	#20
	A = 16'hb3b9;
	B = 16'h3730;
	ans = 16'haef0;
	#20
	A = 16'hb37e;
	B = 16'h39f7;
	ans = 16'hb196;
	#20
	A = 16'hba08;
	B = 16'hafa3;
	ans = 16'h2dc2;
	#20
	A = 16'h994a;
	B = 16'h33cd;
	ans = 16'h9128;
	#20
	A = 16'hb87a;
	B = 16'hb324;
	ans = 16'h2ffe;
	#20
	A = 16'hb097;
	B = 16'hb826;
	ans = 16'h2cc3;
	#20
	A = 16'ha8b1;
	B = 16'ha8ab;
	ans = 16'h157a;
	#20
	A = 16'h3886;
	B = 16'hb826;
	ans = 16'hb4b1;
	#20
	A = 16'h346c;
	B = 16'h3afa;
	ans = 16'h33b6;
	#20
	A = 16'hb68c;
	B = 16'h3ad1;
	ans = 16'hb594;
	#20
	A = 16'h37a8;
	B = 16'ha819;
	ans = 16'ha3d8;
	#20
	A = 16'h3944;
	B = 16'hb591;
	ans = 16'hb354;
	#20
	A = 16'h383a;
	B = 16'hb865;
	ans = 16'hb4a5;
	#20
	A = 16'h35cb;
	B = 16'h3b21;
	ans = 16'h352a;
	#20
	A = 16'h3890;
	B = 16'hbbed;
	ans = 16'hb885;
	#20
	A = 16'hb595;
	B = 16'h3605;
	ans = 16'hb033;
	#20
	A = 16'hb8c3;
	B = 16'hab90;
	ans = 16'h2880;
	#20
	A = 16'hbadb;
	B = 16'h39c4;
	ans = 16'hb8f1;
	#20
	A = 16'hb904;
	B = 16'haf49;
	ans = 16'h2c91;
	#20
	A = 16'h3894;
	B = 16'h343c;
	ans = 16'h30d9;
	#20
	A = 16'h3b85;
	B = 16'h38d8;
	ans = 16'h388e;
	#20
	A = 16'h380b;
	B = 16'h3a30;
	ans = 16'h3641;
	#20
	A = 16'h3ba3;
	B = 16'hbbcd;
	ans = 16'hbb72;
	#20
	A = 16'h3612;
	B = 16'h3892;
	ans = 16'h32f0;
	#20
	A = 16'h3aa9;
	B = 16'hb041;
	ans = 16'haf15;
	#20
	A = 16'hb952;
	B = 16'h3b08;
	ans = 16'hb8ad;
	#20
	A = 16'h3a79;
	B = 16'h395c;
	ans = 16'h3856;
	#20
	A = 16'hb76a;
	B = 16'hbada;
	ans = 16'h365a;
	#20
	A = 16'h2a65;
	B = 16'h37e5;
	ans = 16'h264f;
	#20
	A = 16'h3612;
	B = 16'hac29;
	ans = 16'ha650;
	#20
	A = 16'h2e1e;
	B = 16'h3af2;
	ans = 16'h2d50;
	#20
	A = 16'hb8d7;
	B = 16'h3657;
	ans = 16'hb3ac;
	#20
	A = 16'hb63d;
	B = 16'h383a;
	ans = 16'hb297;
	#20
	A = 16'h39a5;
	B = 16'hb812;
	ans = 16'hb5be;
	#20
	A = 16'hb4eb;
	B = 16'h38d3;
	ans = 16'hb1ee;
	#20
	A = 16'h34e6;
	B = 16'hbbf7;
	ans = 16'hb4e0;
	#20
	A = 16'hb145;
	B = 16'hb857;
	ans = 16'h2db8;
	#20
	A = 16'h298b;
	B = 16'h3601;
	ans = 16'h2429;
	#20
	A = 16'hb8e0;
	B = 16'hb83f;
	ans = 16'h352d;
	#20
	A = 16'hae3a;
	B = 16'hb8eb;
	ans = 16'h2ba8;
	#20
	A = 16'hb0ff;
	B = 16'hb86b;
	ans = 16'h2d85;
	#20
	A = 16'hbb27;
	B = 16'h38ce;
	ans = 16'hb84c;
	#20
	A = 16'h3a0b;
	B = 16'h38e8;
	ans = 16'h3769;
	#20
	A = 16'h3bf2;
	B = 16'h39c7;
	ans = 16'h39bd;
	#20
	A = 16'h39f9;
	B = 16'h3458;
	ans = 16'h327c;
	#20
	A = 16'h3b91;
	B = 16'hb4bc;
	ans = 16'hb47a;
	#20
	A = 16'h2fd2;
	B = 16'h38e4;
	ans = 16'h2cc8;
	#20
	A = 16'h3a1f;
	B = 16'h374f;
	ans = 16'h3598;
	#20
	A = 16'hb432;
	B = 16'hb85c;
	ans = 16'h3092;
	#20
	A = 16'h34a8;
	B = 16'hba49;
	ans = 16'hb351;
	#20
	A = 16'hb912;
	B = 16'h3b16;
	ans = 16'hb87e;
	#20
	A = 16'h290d;
	B = 16'h38a5;
	ans = 16'h25dd;
	#20
	A = 16'h3aa6;
	B = 16'had97;
	ans = 16'haca5;
	#20
	A = 16'hb815;
	B = 16'h3968;
	ans = 16'hb584;
	#20
	A = 16'hb93e;
	B = 16'hb8a2;
	ans = 16'h3612;
	#20
	A = 16'hade8;
	B = 16'h3207;
	ans = 16'ha473;
	#20
	A = 16'h3ab4;
	B = 16'hb89f;
	ans = 16'hb7be;
	#20
	A = 16'hb802;
	B = 16'hb7ea;
	ans = 16'h33ee;
	#20
	A = 16'hb9b2;
	B = 16'h3a0c;
	ans = 16'hb84e;
	#20
	A = 16'hb8b1;
	B = 16'hbabd;
	ans = 16'h37e7;
	#20
	A = 16'hb387;
	B = 16'hb6ba;
	ans = 16'h2e54;
	#20
	A = 16'hbbcf;
	B = 16'hb905;
	ans = 16'h38e6;
	#20
	A = 16'h3907;
	B = 16'h3b4c;
	ans = 16'h3896;
	#20
	A = 16'hb8b1;
	B = 16'ha9cd;
	ans = 16'h26ce;
	#20
	A = 16'hb9d5;
	B = 16'h38ea;
	ans = 16'hb72a;
	#20
	A = 16'hb23d;
	B = 16'hb6c9;
	ans = 16'h2d4a;
	#20
	A = 16'h3a6b;
	B = 16'h3b7c;
	ans = 16'h3a01;
	#20
	A = 16'h3576;
	B = 16'h2eed;
	ans = 16'h28ba;
	#20
	A = 16'h369f;
	B = 16'hb1f5;
	ans = 16'hacee;
	#20
	A = 16'h301d;
	B = 16'hb985;
	ans = 16'hadad;
	#20
	A = 16'h3305;
	B = 16'h3b18;
	ans = 16'h3239;
	#20
	A = 16'h3b81;
	B = 16'h39fd;
	ans = 16'h399e;
	#20
	A = 16'h3a90;
	B = 16'h2b80;
	ans = 16'h2a27;
	#20
	A = 16'hbbfa;
	B = 16'hb814;
	ans = 16'h3811;
	#20
	A = 16'hb8ce;
	B = 16'h3b01;
	ans = 16'hb835;
	#20
	A = 16'h39a6;
	B = 16'h3a8b;
	ans = 16'h389f;
	#20
	A = 16'h36f8;
	B = 16'h3b69;
	ans = 16'h3674;
	#20
	A = 16'h3811;
	B = 16'hb96b;
	ans = 16'hb582;
	#20
	A = 16'hb6e1;
	B = 16'h38f2;
	ans = 16'hb441;
	#20
	A = 16'h3611;
	B = 16'h3937;
	ans = 16'h33e9;
	#20
	A = 16'h3603;
	B = 16'h3756;
	ans = 16'h3183;
	#20
	A = 16'hb923;
	B = 16'h396f;
	ans = 16'hb6fa;
	#20
	A = 16'h3971;
	B = 16'h392a;
	ans = 16'h3706;
	#20
	A = 16'h3b69;
	B = 16'h35cf;
	ans = 16'h3561;
	#20
	A = 16'hb9a0;
	B = 16'h37f6;
	ans = 16'hb599;
	#20
	A = 16'h3a68;
	B = 16'ha812;
	ans = 16'ha685;
	#20
	A = 16'h2f50;
	B = 16'hb94a;
	ans = 16'hacd6;
	#20
	A = 16'h39c0;
	B = 16'hb959;
	ans = 16'hb7b0;
	#20
	A = 16'hae7d;
	B = 16'hb7d7;
	ans = 16'h2a5c;
	#20
	A = 16'h33ca;
	B = 16'hb35f;
	ans = 16'hab2d;
	#20
	A = 16'hb501;
	B = 16'hb757;
	ans = 16'h3097;
	#20
	A = 16'hbb27;
	B = 16'hbade;
	ans = 16'h3a24;
	#20
	A = 16'h3bc5;
	B = 16'h38a6;
	ans = 16'h3884;
	#20
	A = 16'hba26;
	B = 16'hb7ad;
	ans = 16'h35e6;
	#20
	A = 16'hb838;
	B = 16'h3a2d;
	ans = 16'hb683;
	#20
	A = 16'h3855;
	B = 16'h3966;
	ans = 16'h35d9;
	#20
	A = 16'h3860;
	B = 16'hb999;
	ans = 16'hb61f;
	#20
	A = 16'h3af8;
	B = 16'hb5b2;
	ans = 16'hb4f6;
	#20
	A = 16'h3b80;
	B = 16'hba9f;
	ans = 16'hba35;
	#20
	A = 16'hb88a;
	B = 16'hb92c;
	ans = 16'h35de;
	#20
	A = 16'h343a;
	B = 16'h3874;
	ans = 16'h30b5;
	#20
	A = 16'h3954;
	B = 16'hb994;
	ans = 16'hb76e;
	#20
	A = 16'h361b;
	B = 16'h3a58;
	ans = 16'h34d7;
	#20
	A = 16'h300e;
	B = 16'hb9f6;
	ans = 16'hae0b;
	#20
	A = 16'h3992;
	B = 16'h39c7;
	ans = 16'h3806;
	#20
	A = 16'h2e61;
	B = 16'h3611;
	ans = 16'h28d6;
	#20
	A = 16'h3880;
	B = 16'h35f6;
	ans = 16'h32b5;
	#20
	A = 16'h3104;
	B = 16'h3329;
	ans = 16'h287d;
	#20
	A = 16'h3840;
	B = 16'hb0d7;
	ans = 16'had24;
	#20
	A = 16'h3605;
	B = 16'h37c5;
	ans = 16'h31d9;
	#20
	A = 16'h2c1e;
	B = 16'hb8bb;
	ans = 16'ha8de;
	#20
	A = 16'hae0b;
	B = 16'h3431;
	ans = 16'ha655;
	#20
	A = 16'h386f;
	B = 16'h39e7;
	ans = 16'h368b;
	#20
	A = 16'hb26c;
	B = 16'hb20a;
	ans = 16'h28d9;
	#20
	A = 16'hb791;
	B = 16'h3646;
	ans = 16'hb1ef;
	#20
	A = 16'hb859;
	B = 16'hba22;
	ans = 16'h36aa;
	#20
	A = 16'hb43a;
	B = 16'h3130;
	ans = 16'ha97b;
	#20
	A = 16'hb4ba;
	B = 16'hba74;
	ans = 16'h33a0;
	#20
	A = 16'haaa0;
	B = 16'h38fc;
	ans = 16'ha821;
	#20
	A = 16'h3562;
	B = 16'hb123;
	ans = 16'haaea;
	#20
	A = 16'hb0dc;
	B = 16'h30e6;
	ans = 16'ha5f3;
	#20
	A = 16'hb7a1;
	B = 16'h39e3;
	ans = 16'hb59d;
	#20
	A = 16'hadc7;
	B = 16'h388f;
	ans = 16'haa96;
	#20
	A = 16'hbb7d;
	B = 16'hb852;
	ans = 16'h380b;
	#20
	A = 16'hb6b7;
	B = 16'hb4e4;
	ans = 16'h301b;
	#20
	A = 16'hb4fd;
	B = 16'hb1ab;
	ans = 16'h2b11;
	#20
	A = 16'hb5b7;
	B = 16'hb5e5;
	ans = 16'h3036;
	#20
	A = 16'hba48;
	B = 16'h362a;
	ans = 16'hb4d7;
	#20
	A = 16'h393c;
	B = 16'hb1f8;
	ans = 16'hafd0;
	#20
	A = 16'hb765;
	B = 16'hb3bc;
	ans = 16'h2f26;
	#20
	A = 16'h316a;
	B = 16'h3201;
	ans = 16'h2810;
	#20
	A = 16'h3303;
	B = 16'h385c;
	ans = 16'h2fa4;
	#20
	A = 16'hbb79;
	B = 16'hb5c0;
	ans = 16'h355f;
	#20
	A = 16'h3aa1;
	B = 16'h3914;
	ans = 16'h3835;
	#20
	A = 16'haeca;
	B = 16'h3b3e;
	ans = 16'hae25;
	#20
	A = 16'hb3d1;
	B = 16'h3b00;
	ans = 16'hb2d7;
	#20
	A = 16'h34f5;
	B = 16'h36c2;
	ans = 16'h3030;
	#20
	A = 16'h3a20;
	B = 16'hb524;
	ans = 16'hb3df;
	#20
	A = 16'hb463;
	B = 16'h3a8b;
	ans = 16'hb32d;
	#20
	A = 16'hba8c;
	B = 16'hbad2;
	ans = 16'h3995;
	#20
	A = 16'hb489;
	B = 16'h38ed;
	ans = 16'hb196;
	#20
	A = 16'hb058;
	B = 16'hb4b4;
	ans = 16'h291b;
	#20
	A = 16'h3480;
	B = 16'h3110;
	ans = 16'h29b2;
	#20
	A = 16'h39f0;
	B = 16'hb082;
	ans = 16'haeb1;
	#20
	A = 16'hb0ff;
	B = 16'hb9b4;
	ans = 16'h2f20;
	#20
	A = 16'h3446;
	B = 16'h3780;
	ans = 16'h3002;
	#20
	A = 16'hb8ac;
	B = 16'hba29;
	ans = 16'h3732;
	#20
	A = 16'hb495;
	B = 16'hb9b2;
	ans = 16'h3286;
	#20
	A = 16'h37fa;
	B = 16'hb8dd;
	ans = 16'hb4d9;
	#20
	A = 16'h345f;
	B = 16'h3896;
	ans = 16'h3103;
	#20
	A = 16'hac92;
	B = 16'h362b;
	ans = 16'ha70c;
	#20
	A = 16'hb9bf;
	B = 16'h30e2;
	ans = 16'haf04;
	#20
	A = 16'h39ae;
	B = 16'h3178;
	ans = 16'h2fc4;
	#20
	A = 16'h3727;
	B = 16'hbb5e;
	ans = 16'hb696;
	#20
	A = 16'h357b;
	B = 16'hb761;
	ans = 16'hb10e;
	#20
	A = 16'h3940;
	B = 16'hb966;
	ans = 16'hb716;
	#20
	A = 16'h35a5;
	B = 16'h318c;
	ans = 16'h2bd4;
	#20
	A = 16'h39ca;
	B = 16'hb0fd;
	ans = 16'haf38;
	#20
	A = 16'hb129;
	B = 16'haeab;
	ans = 16'h244d;
	#20
	A = 16'hb57b;
	B = 16'hb2af;
	ans = 16'h2c94;
	#20
	A = 16'hb894;
	B = 16'hbbc2;
	ans = 16'h3871;
	#20
	A = 16'hbafa;
	B = 16'hbad1;
	ans = 16'h39f2;
	#20
	A = 16'h2dfd;
	B = 16'h31c5;
	ans = 16'h2452;
	#20
	A = 16'hb806;
	B = 16'h3438;
	ans = 16'hb03e;
	#20
	A = 16'h3aea;
	B = 16'hb24f;
	ans = 16'hb174;
	#20
	A = 16'hb565;
	B = 16'hbb57;
	ans = 16'h34f3;
	#20
	A = 16'hb810;
	B = 16'hbbe0;
	ans = 16'h3800;
	#20
	A = 16'h31a4;
	B = 16'hba14;
	ans = 16'hb049;
	#20
	A = 16'hb932;
	B = 16'hb7c2;
	ans = 16'h350a;
	#20
	A = 16'h3b9c;
	B = 16'h3614;
	ans = 16'h35c8;
	#20
	A = 16'h3865;
	B = 16'h2f3f;
	ans = 16'h2bf6;
	#20
	A = 16'hbb4a;
	B = 16'h38cd;
	ans = 16'hb860;
	#20
	A = 16'h381f;
	B = 16'h39d9;
	ans = 16'h3606;
	#20
	A = 16'h2c40;
	B = 16'h3866;
	ans = 16'h28ac;
	#20
	A = 16'haf3d;
	B = 16'h2f3d;
	ans = 16'ha28d;
	#20
	A = 16'h3bed;
	B = 16'h39ed;
	ans = 16'h39df;
	#20
	A = 16'h3b35;
	B = 16'h3b43;
	ans = 16'h3a8b;
	#20
	A = 16'h3450;
	B = 16'hb2f6;
	ans = 16'hab81;
	#20
	A = 16'h3afc;
	B = 16'hba94;
	ans = 16'hb9be;
	#20
	A = 16'hb8d7;
	B = 16'ha7ce;
	ans = 16'h24b9;
	#20
	A = 16'h3a61;
	B = 16'hae31;
	ans = 16'hacf0;
	#20
	A = 16'haf4f;
	B = 16'h3017;
	ans = 16'ha379;
	#20
	A = 16'hbabe;
	B = 16'h2a21;
	ans = 16'ha92a;
	#20
	A = 16'hb57d;
	B = 16'hbb8f;
	ans = 16'h352f;
	#20
	A = 16'hb763;
	B = 16'hbb64;
	ans = 16'h36d3;
	#20
	A = 16'h3794;
	B = 16'h3923;
	ans = 16'h34de;
	#20
	A = 16'ha574;
	B = 16'h2c4e;
	ans = 16'h95de;
	#20
	A = 16'hbbf9;
	B = 16'h3791;
	ans = 16'hb78a;
	#20
	A = 16'h3b8d;
	B = 16'hb416;
	ans = 16'hb3b7;
	#20
	A = 16'hbad3;
	B = 16'hb9f9;
	ans = 16'h3918;
	#20
	A = 16'hb1d9;
	B = 16'hb8c5;
	ans = 16'h2ef9;
	#20
	A = 16'h3a86;
	B = 16'h2839;
	ans = 16'h26e3;
	#20
	A = 16'hb827;
	B = 16'h3938;
	ans = 16'hb56b;
	#20
	A = 16'hb908;
	B = 16'hba49;
	ans = 16'h37e8;
	#20
	A = 16'h2d36;
	B = 16'h34ba;
	ans = 16'h2628;
	#20
	A = 16'hb38d;
	B = 16'h3926;
	ans = 16'hb0dc;
	#20
	A = 16'hb981;
	B = 16'hb535;
	ans = 16'h332a;
	#20
	A = 16'hb112;
	B = 16'h32a1;
	ans = 16'ha834;
	#20
	A = 16'h34d3;
	B = 16'hb8d1;
	ans = 16'hb1cf;
	#20
	A = 16'h3b70;
	B = 16'hbb0a;
	ans = 16'hba8b;
	#20
	A = 16'hb780;
	B = 16'h2ec1;
	ans = 16'haa55;
	#20
	A = 16'h3221;
	B = 16'hbb44;
	ans = 16'hb191;
	#20
	A = 16'h2f9f;
	B = 16'h3bf1;
	ans = 16'h2f91;
	#20
	A = 16'h272c;
	B = 16'hba9b;
	ans = 16'ha5ec;
	#20
	A = 16'h3232;
	B = 16'hbbf4;
	ans = 16'hb229;
	#20
	A = 16'hb5c7;
	B = 16'hba1e;
	ans = 16'h346b;
	#20
	A = 16'h3949;
	B = 16'h2365;
	ans = 16'h20e3;
	#20
	A = 16'hb2b3;
	B = 16'hb614;
	ans = 16'h2d17;
	#20
	A = 16'hba60;
	B = 16'h2da0;
	ans = 16'hac7c;
	#20
	A = 16'h2a3d;
	B = 16'h38ff;
	ans = 16'h27cb;
	#20
	A = 16'ha487;
	B = 16'h2a83;
	ans = 16'h935f;
	#20
	A = 16'hb4f2;
	B = 16'hb322;
	ans = 16'h2c69;
	#20
	A = 16'h3b47;
	B = 16'hb8af;
	ans = 16'hb843;
	#20
	A = 16'h394e;
	B = 16'h3507;
	ans = 16'h32ab;
	#20
	A = 16'hb804;
	B = 16'hb76e;
	ans = 16'h3375;
	#20
	A = 16'hba56;
	B = 16'h39e3;
	ans = 16'hb8aa;
	#20
	A = 16'hbae8;
	B = 16'hbb00;
	ans = 16'h3a0b;
	#20
	A = 16'hbbeb;
	B = 16'h2e3c;
	ans = 16'hae2c;
	#20
	A = 16'hb9ab;
	B = 16'h3971;
	ans = 16'hb7b6;
	#20
	A = 16'h3734;
	B = 16'h30c7;
	ans = 16'h2c4d;
	#20
	A = 16'h31dd;
	B = 16'haff2;
	ans = 16'ha5d3;
	#20
	A = 16'h3863;
	B = 16'h34b9;
	ans = 16'h312e;
	#20
	A = 16'hb31e;
	B = 16'hb90e;
	ans = 16'h307f;
	#20
	A = 16'hba12;
	B = 16'h38b6;
	ans = 16'hb726;
	#20
	A = 16'h3089;
	B = 16'h398e;
	ans = 16'h2e4c;
	#20
	A = 16'h373f;
	B = 16'hb90d;
	ans = 16'hb493;
	#20
	A = 16'hbacc;
	B = 16'hba64;
	ans = 16'h396e;
	#20
	A = 16'h33e1;
	B = 16'hb51f;
	ans = 16'had0b;
	#20
	A = 16'h385e;
	B = 16'hb7de;
	ans = 16'hb44b;
	#20
	A = 16'hb76f;
	B = 16'h3895;
	ans = 16'hb442;
	#20
	A = 16'h39e7;
	B = 16'h2b5b;
	ans = 16'h296d;
	#20
	A = 16'hb88f;
	B = 16'haceb;
	ans = 16'h299b;
	#20
	A = 16'h34b6;
	B = 16'h3af8;
	ans = 16'h341b;
	#20
	A = 16'h149f;
	B = 16'hb6a2;
	ans = 16'h8faa;
	#20
	A = 16'h36ab;
	B = 16'h3bd6;
	ans = 16'h3688;
	#20
	A = 16'h39f3;
	B = 16'h380d;
	ans = 16'h3606;
	#20
	A = 16'hbb99;
	B = 16'hbabb;
	ans = 16'h3a64;
	#20
	A = 16'hb9b5;
	B = 16'hb6ee;
	ans = 16'h34f2;
	#20
	A = 16'h35bb;
	B = 16'hb728;
	ans = 16'hb120;
	#20
	A = 16'h3793;
	B = 16'hb4f3;
	ans = 16'hb0b0;
	#20
	A = 16'h3641;
	B = 16'hba77;
	ans = 16'hb50e;
	#20
	A = 16'h3a9a;
	B = 16'h3aff;
	ans = 16'h39c6;
	#20
	A = 16'h35f0;
	B = 16'h39cb;
	ans = 16'h344d;
	#20
	A = 16'hbbd0;
	B = 16'h31a1;
	ans = 16'hb17f;
	#20
	A = 16'hb6d6;
	B = 16'hba56;
	ans = 16'h356a;
	#20
	A = 16'hbb5c;
	B = 16'hb64b;
	ans = 16'h35ca;
	#20
	A = 16'hb7d4;
	B = 16'hb62d;
	ans = 16'h320b;
	#20
	A = 16'h3b69;
	B = 16'hba97;
	ans = 16'hba1b;
	#20
	A = 16'h3a31;
	B = 16'h3ab1;
	ans = 16'h392e;
	#20
	A = 16'hbb85;
	B = 16'h3b36;
	ans = 16'hbac7;
	#20
	A = 16'h3811;
	B = 16'hb447;
	ans = 16'hb059;
	#20
	A = 16'h35cb;
	B = 16'hbba6;
	ans = 16'hb58a;
	#20
	A = 16'h39c7;
	B = 16'hb99b;
	ans = 16'hb80c;
	#20
	A = 16'hb742;
	B = 16'hb5b5;
	ans = 16'h312d;
	#20
	A = 16'hb0c7;
	B = 16'hb430;
	ans = 16'h2900;
	#20
	A = 16'hb846;
	B = 16'h39e0;
	ans = 16'hb647;
	#20
	A = 16'had3a;
	B = 16'h2ff0;
	ans = 16'ha130;
	#20
	A = 16'hb95f;
	B = 16'ha573;
	ans = 16'h2351;
	#20
	A = 16'hb2f5;
	B = 16'hb857;
	ans = 16'h2f8c;
	#20
	A = 16'h3acf;
	B = 16'hb427;
	ans = 16'hb311;
	#20
	A = 16'hbb93;
	B = 16'hb79b;
	ans = 16'h3733;
	#20
	A = 16'h3b9f;
	B = 16'h3b8d;
	ans = 16'h3b31;
	#20
	A = 16'hb9f4;
	B = 16'hbbbf;
	ans = 16'h39c4;
	#20
	A = 16'h3879;
	B = 16'had98;
	ans = 16'haa41;
	#20
	A = 16'h32f2;
	B = 16'hb515;
	ans = 16'hac69;
	#20
	A = 16'hb038;
	B = 16'h3897;
	ans = 16'hacd7;
	#20
	A = 16'h24d7;
	B = 16'hb8c0;
	ans = 16'ha1bf;
	#20
	A = 16'h2429;
	B = 16'hbae9;
	ans = 16'ha330;
	#20
	A = 16'h31be;
	B = 16'hb591;
	ans = 16'habfe;
	#20
	A = 16'h38dd;
	B = 16'hb1ad;
	ans = 16'haee7;
	#20
	A = 16'h3986;
	B = 16'hb91d;
	ans = 16'hb710;
	#20
	A = 16'h30a8;
	B = 16'h3991;
	ans = 16'h2e7b;
	#20
	A = 16'h2f10;
	B = 16'hb1da;
	ans = 16'ha52a;
	#20
	A = 16'hb283;
	B = 16'h382e;
	ans = 16'haece;
	#20
	A = 16'h385d;
	B = 16'h3aaf;
	ans = 16'h374a;
	#20
	A = 16'hb6b4;
	B = 16'h3b1b;
	ans = 16'hb5f4;
	#20
	A = 16'hb974;
	B = 16'h3a46;
	ans = 16'hb847;
	#20
	A = 16'h3541;
	B = 16'hbb92;
	ans = 16'hb4f9;
	#20
	A = 16'hb607;
	B = 16'h39ee;
	ans = 16'hb478;
	#20
	A = 16'h3480;
	B = 16'hb84b;
	ans = 16'hb0d4;
	#20
	A = 16'hb65b;
	B = 16'hb455;
	ans = 16'h2ee2;
	#20
	A = 16'hb911;
	B = 16'h2f6e;
	ans = 16'hacb5;
	#20
	A = 16'h3b48;
	B = 16'hb743;
	ans = 16'hb69c;
	#20
	A = 16'h365c;
	B = 16'h3a11;
	ans = 16'h34d3;
	#20
	A = 16'hb08c;
	B = 16'h3907;
	ans = 16'hadb7;
	#20
	A = 16'hbaa2;
	B = 16'h32b9;
	ans = 16'hb193;
	#20
	A = 16'h324e;
	B = 16'h3872;
	ans = 16'h2f02;
	#20
	A = 16'h2c07;
	B = 16'h3121;
	ans = 16'h212a;
	#20
	A = 16'hbb53;
	B = 16'h384b;
	ans = 16'hb7dc;
	#20
	A = 16'h381a;
	B = 16'h3a6d;
	ans = 16'h3697;
	#20
	A = 16'h3660;
	B = 16'hb4ed;
	ans = 16'hafda;
	#20
	A = 16'h249d;
	B = 16'h314f;
	ans = 16'h1a1f;
	#20
	A = 16'h3b54;
	B = 16'hb965;
	ans = 16'hb8f1;
	#20
	A = 16'hadc3;
	B = 16'h39b0;
	ans = 16'hac19;
	#20
	A = 16'hb868;
	B = 16'h2984;
	ans = 16'ha613;
	#20
	A = 16'h2dc1;
	B = 16'h370b;
	ans = 16'h2911;
	#20
	A = 16'h3ab2;
	B = 16'hba0f;
	ans = 16'hb912;
	#20
	A = 16'h393c;
	B = 16'habc2;
	ans = 16'ha913;
	#20
	A = 16'h3abc;
	B = 16'h2c1e;
	ans = 16'h2aef;
	#20
	A = 16'hbbdd;
	B = 16'h3ae0;
	ans = 16'hbac2;
	#20
	A = 16'hb51e;
	B = 16'hbb8a;
	ans = 16'h34d3;
	#20
	A = 16'hbb39;
	B = 16'hbacc;
	ans = 16'h3a23;
	#20
	A = 16'h3850;
	B = 16'hb811;
	ans = 16'hb462;
	#20
	A = 16'hbb5a;
	B = 16'hadf9;
	ans = 16'h2d7d;
	#20
	A = 16'h3075;
	B = 16'h2dbf;
	ans = 16'h2267;
	#20
	A = 16'h3ae9;
	B = 16'hba16;
	ans = 16'hb942;
	#20
	A = 16'h3b13;
	B = 16'h373b;
	ans = 16'h3665;
	#20
	A = 16'hb93f;
	B = 16'hbaae;
	ans = 16'h3861;
	#20
	A = 16'h3bbc;
	B = 16'hade9;
	ans = 16'hadb7;
	#20
	A = 16'hb311;
	B = 16'hbb97;
	ans = 16'h32b4;
	#20
	A = 16'hb6bf;
	B = 16'hbb52;
	ans = 16'h362c;
	#20
	A = 16'h34bc;
	B = 16'hb7ab;
	ans = 16'hb08a;
	#20
	A = 16'hb9d5;
	B = 16'ha96c;
	ans = 16'h27e8;
	#20
	A = 16'hbbf2;
	B = 16'hbaff;
	ans = 16'h3af3;
	#20
	A = 16'hb9a6;
	B = 16'h37c3;
	ans = 16'hb57b;
	#20
	A = 16'h39c0;
	B = 16'h3be8;
	ans = 16'h39af;
	#20
	A = 16'hba6e;
	B = 16'ha6cf;
	ans = 16'h2579;
	#20
	A = 16'h3411;
	B = 16'hae4e;
	ans = 16'ha669;
	#20
	A = 16'h36fe;
	B = 16'h3853;
	ans = 16'h338f;
	#20
	A = 16'h3c00;
	B = 16'h3942;
	ans = 16'h3942;
	#20
	A = 16'h3bed;
	B = 16'h3adb;
	ans = 16'h3acb;
	#20
	A = 16'h3b2f;
	B = 16'hb923;
	ans = 16'hb89d;
	#20
	A = 16'h3975;
	B = 16'hb9cc;
	ans = 16'hb7e9;
	#20
	A = 16'h39c2;
	B = 16'hba62;
	ans = 16'hb898;
	#20
	A = 16'hb232;
	B = 16'h3412;
	ans = 16'haa4e;
	#20
	A = 16'hb679;
	B = 16'h3ac5;
	ans = 16'hb57a;
	#20
	A = 16'h39a8;
	B = 16'h31cc;
	ans = 16'h3019;
	#20
	A = 16'h3115;
	B = 16'hb9bc;
	ans = 16'haf49;
	#20
	A = 16'hb5dc;
	B = 16'h3911;
	ans = 16'hb36c;
	#20
	A = 16'hbafc;
	B = 16'hbbf0;
	ans = 16'h3aee;
	#20
	A = 16'h366b;
	B = 16'had1d;
	ans = 16'ha81a;
	#20
	A = 16'hbbee;
	B = 16'h341f;
	ans = 16'hb416;
	#20
	A = 16'h3bff;
	B = 16'h371b;
	ans = 16'h371a;
	#20
	A = 16'h3bff;
	B = 16'h360d;
	ans = 16'h360c;
	#20
	A = 16'habf6;
	B = 16'h35e1;
	ans = 16'ha5da;
	#20
	A = 16'h39b0;
	B = 16'hb95e;
	ans = 16'hb7a2;
	#20
	A = 16'hb3c8;
	B = 16'h351d;
	ans = 16'hacf9;
	#20
	A = 16'h3644;
	B = 16'h3842;
	ans = 16'h32ab;
	#20
	A = 16'hba8d;
	B = 16'hb64c;
	ans = 16'h3528;
	#20
	A = 16'h3878;
	B = 16'hb4aa;
	ans = 16'hb136;
	#20
	A = 16'h30ef;
	B = 16'h3a06;
	ans = 16'h2f6e;
	#20
	A = 16'h39af;
	B = 16'hb8c1;
	ans = 16'hb6c1;
	#20
	A = 16'h385c;
	B = 16'h38f8;
	ans = 16'h356a;
	#20
	A = 16'h3bfc;
	B = 16'h39c4;
	ans = 16'h39c1;
	#20
	A = 16'h336b;
	B = 16'h3742;
	ans = 16'h2ebb;
	#20
	A = 16'h2a93;
	B = 16'h310d;
	ans = 16'h2027;
	#20
	A = 16'ha810;
	B = 16'hb5b9;
	ans = 16'h21d0;
	#20
	A = 16'h35ae;
	B = 16'h3b1b;
	ans = 16'h350b;
	#20
	A = 16'h3aca;
	B = 16'hb00c;
	ans = 16'haede;
	#20
	A = 16'h392f;
	B = 16'h37a4;
	ans = 16'h34f3;
	#20
	A = 16'h3754;
	B = 16'hbb0a;
	ans = 16'hb673;
	#20
	A = 16'h2d9b;
	B = 16'hb9cf;
	ans = 16'hac12;
	#20
	A = 16'h344b;
	B = 16'hb8e7;
	ans = 16'hb143;
	#20
	A = 16'hba6d;
	B = 16'hb3bb;
	ans = 16'h3236;
	#20
	A = 16'h344f;
	B = 16'hb554;
	ans = 16'hadbd;
	#20
	A = 16'h3ba1;
	B = 16'h2655;
	ans = 16'h260a;
	#20
	A = 16'hba06;
	B = 16'hb822;
	ans = 16'h3639;
	#20
	A = 16'hba2e;
	B = 16'h3201;
	ans = 16'hb0a3;
	#20
	A = 16'hba5c;
	B = 16'hb5cc;
	ans = 16'h349c;
	#20
	A = 16'hb862;
	B = 16'h3782;
	ans = 16'hb41d;
	#20
	A = 16'haec8;
	B = 16'hb9fd;
	ans = 16'h2d13;
	#20
	A = 16'h39c9;
	B = 16'hbbd2;
	ans = 16'hb9a8;
	#20
	A = 16'hb7be;
	B = 16'h3b15;
	ans = 16'hb6db;
	#20
	A = 16'hb919;
	B = 16'h3058;
	ans = 16'had89;
	#20
	A = 16'hb26c;
	B = 16'h36dc;
	ans = 16'had82;
	#20
	A = 16'h3569;
	B = 16'h384d;
	ans = 16'h31d1;
	#20
	A = 16'h37fd;
	B = 16'hbb9b;
	ans = 16'hb798;
	#20
	A = 16'h3a46;
	B = 16'h35fa;
	ans = 16'h34b0;
	#20
	A = 16'hb9ef;
	B = 16'h3968;
	ans = 16'hb803;
	#20
	A = 16'hb9f9;
	B = 16'h36cb;
	ans = 16'hb512;
	#20
	A = 16'h36ae;
	B = 16'h34ca;
	ans = 16'h2fff;
	#20
	A = 16'h9962;
	B = 16'h3b4a;
	ans = 16'h98e8;
	#20
	A = 16'hb9d9;
	B = 16'hb61f;
	ans = 16'h3479;
	#20
	A = 16'h382e;
	B = 16'hb303;
	ans = 16'haf54;
	#20
	A = 16'hb955;
	B = 16'hba1e;
	ans = 16'h3814;
	#20
	A = 16'hb93d;
	B = 16'hba4c;
	ans = 16'h3820;
	#20
	A = 16'h30e1;
	B = 16'h3b8b;
	ans = 16'h309a;
	#20
	A = 16'ha9c1;
	B = 16'h3bdf;
	ans = 16'ha9a9;
	#20
	A = 16'h9c63;
	B = 16'h3487;
	ans = 16'h94f7;
	#20
	A = 16'hb76c;
	B = 16'h3592;
	ans = 16'hb12b;
	#20
	A = 16'hbbde;
	B = 16'h3115;
	ans = 16'hb0ff;
	#20
	A = 16'h37f5;
	B = 16'hbb27;
	ans = 16'hb71d;
	#20
	A = 16'h3801;
	B = 16'hb2dd;
	ans = 16'haedf;
	#20
	A = 16'h2ec3;
	B = 16'h3822;
	ans = 16'h2afc;
	#20
	A = 16'h3a11;
	B = 16'hb8a3;
	ans = 16'hb708;
	#20
	A = 16'hb12b;
	B = 16'h39e7;
	ans = 16'hafa0;
	#20
	A = 16'hb7be;
	B = 16'hb492;
	ans = 16'h306c;
	#20
	A = 16'hb90d;
	B = 16'h39c3;
	ans = 16'hb746;
	#20
	A = 16'h3b89;
	B = 16'h3aa9;
	ans = 16'h3a46;
	#20
	A = 16'h34d4;
	B = 16'hb5a2;
	ans = 16'haecd;
	#20
	A = 16'hb8cb;
	B = 16'h3377;
	ans = 16'hb079;
	#20
	A = 16'ha508;
	B = 16'hb9a8;
	ans = 16'h231d;
	#20
	A = 16'hb8c7;
	B = 16'h37fa;
	ans = 16'hb4c3;
	#20
	A = 16'h2db4;
	B = 16'hb4bb;
	ans = 16'ha6bf;
	#20
	A = 16'h3a42;
	B = 16'h36b7;
	ans = 16'h3541;
	#20
	A = 16'h384c;
	B = 16'h3bbc;
	ans = 16'h3827;
	#20
	A = 16'h30b7;
	B = 16'hb899;
	ans = 16'had6b;
	#20
	A = 16'hbb6f;
	B = 16'h3128;
	ans = 16'hb0cb;
	#20
	A = 16'h3a2b;
	B = 16'hb774;
	ans = 16'hb5bf;
	#20
	A = 16'h3a3a;
	B = 16'ha34a;
	ans = 16'ha1ac;
	#20
	A = 16'h30b4;
	B = 16'h3b3b;
	ans = 16'h3040;
	#20
	A = 16'h30ae;
	B = 16'hb332;
	ans = 16'ha835;
	#20
	A = 16'h38ef;
	B = 16'hb0ad;
	ans = 16'hadc4;
	#20
	A = 16'h3a7e;
	B = 16'hb965;
	ans = 16'hb861;
	#20
	A = 16'hb62d;
	B = 16'h3b7f;
	ans = 16'hb5c9;
	#20
	A = 16'hb7c1;
	B = 16'hb652;
	ans = 16'h3220;
	#20
	A = 16'hb8a4;
	B = 16'h394a;
	ans = 16'hb623;
	#20
	A = 16'h3a43;
	B = 16'h32e3;
	ans = 16'h3164;
	#20
	A = 16'h38eb;
	B = 16'h3be5;
	ans = 16'h38da;
	#20
	A = 16'h3a18;
	B = 16'hbaad;
	ans = 16'hb916;
	#20
	A = 16'hbaad;
	B = 16'hb89f;
	ans = 16'h37b6;
	#20
	A = 16'h3ad1;
	B = 16'hb073;
	ans = 16'haf95;
	#20
	A = 16'hb553;
	B = 16'hbb81;
	ans = 16'h34fe;
	#20
	A = 16'hbb75;
	B = 16'h3a76;
	ans = 16'hba06;
	#20
	A = 16'hb6b4;
	B = 16'h3871;
	ans = 16'hb371;
	#20
	A = 16'h38ae;
	B = 16'h391c;
	ans = 16'h35fa;
	#20
	A = 16'hba0d;
	B = 16'hb4a4;
	ans = 16'h3305;
	#20
	A = 16'h3a76;
	B = 16'h365f;
	ans = 16'h3525;
	#20
	A = 16'haff5;
	B = 16'hb859;
	ans = 16'h2c53;
	#20
	A = 16'h3bdd;
	B = 16'hba30;
	ans = 16'hba15;
	#20
	A = 16'h3a80;
	B = 16'hb4ef;
	ans = 16'hb402;
	#20
	A = 16'hb787;
	B = 16'ha5a3;
	ans = 16'h214e;
	#20
	A = 16'h39f8;
	B = 16'ha495;
	ans = 16'ha2d6;
	#20
	A = 16'hbba8;
	B = 16'hb795;
	ans = 16'h3742;
	#20
	A = 16'hb842;
	B = 16'h3a13;
	ans = 16'hb677;
	#20
	A = 16'h3658;
	B = 16'h394f;
	ans = 16'h3436;
	#20
	A = 16'h3ac1;
	B = 16'hb556;
	ans = 16'hb481;
	#20
	A = 16'h36ae;
	B = 16'hb574;
	ans = 16'hb08e;
	#20
	A = 16'h3347;
	B = 16'hb95d;
	ans = 16'hb0e1;
	#20
	A = 16'h3959;
	B = 16'h3a8b;
	ans = 16'h3860;
	#20
	A = 16'hb960;
	B = 16'h36d7;
	ans = 16'hb498;
	#20
	A = 16'hb7d9;
	B = 16'h3003;
	ans = 16'habdf;
	#20
	A = 16'h366c;
	B = 16'hb909;
	ans = 16'hb40b;
	#20
	A = 16'h36d3;
	B = 16'h3460;
	ans = 16'h2f77;
	#20
	A = 16'h3687;
	B = 16'h39d1;
	ans = 16'h34bf;
	#20
	A = 16'h38df;
	B = 16'hba39;
	ans = 16'hb794;
	#20
	A = 16'hbb8e;
	B = 16'hb5c5;
	ans = 16'h3573;
	#20
	A = 16'h3a4e;
	B = 16'h340e;
	ans = 16'h3264;
	#20
	A = 16'h39da;
	B = 16'hb16a;
	ans = 16'hafec;
	#20
	A = 16'h3427;
	B = 16'hb797;
	ans = 16'hafe1;
	#20
	A = 16'h3957;
	B = 16'h375c;
	ans = 16'h34ea;
	#20
	A = 16'hbbce;
	B = 16'hb89b;
	ans = 16'h387e;
	#20
	A = 16'hba38;
	B = 16'h39ab;
	ans = 16'hb868;
	#20
	A = 16'h3a1d;
	B = 16'h35e2;
	ans = 16'h347f;
	#20
	A = 16'h366c;
	B = 16'hba00;
	ans = 16'hb4d1;
	#20
	A = 16'h3a68;
	B = 16'hb2c4;
	ans = 16'hb16b;
	#20
	A = 16'h3795;
	B = 16'hbb37;
	ans = 16'hb6d7;
	#20
	A = 16'h3209;
	B = 16'h3892;
	ans = 16'h2ee5;
	#20
	A = 16'hae9f;
	B = 16'hb38a;
	ans = 16'h263d;
	#20
	A = 16'hb7fc;
	B = 16'hb4c8;
	ans = 16'h30c6;
	#20
	A = 16'hb532;
	B = 16'hb8c5;
	ans = 16'h3232;
	#20
	A = 16'hb850;
	B = 16'hb83f;
	ans = 16'h3494;
	#20
	A = 16'hb8fd;
	B = 16'hb93b;
	ans = 16'h3686;
	#20
	A = 16'h3965;
	B = 16'hbb9c;
	ans = 16'hb922;
	#20
	A = 16'ha901;
	B = 16'h3416;
	ans = 16'ha11d;
	#20
	A = 16'hb5ab;
	B = 16'h3903;
	ans = 16'hb31a;
	#20
	A = 16'h2f7b;
	B = 16'hb843;
	ans = 16'habf8;
	#20
	A = 16'hbbd1;
	B = 16'h2869;
	ans = 16'ha84f;
	#20
	A = 16'h3843;
	B = 16'h3658;
	ans = 16'h32c2;
	#20
	A = 16'h3866;
	B = 16'h383e;
	ans = 16'h34aa;
	#20
	A = 16'h30ac;
	B = 16'hb859;
	ans = 16'had14;
	#20
	A = 16'h393c;
	B = 16'hb5a9;
	ans = 16'hb368;
	#20
	A = 16'h3abe;
	B = 16'h3732;
	ans = 16'h3610;
	#20
	A = 16'h33a8;
	B = 16'hb466;
	ans = 16'hac36;
	#20
	A = 16'hb07f;
	B = 16'hba67;
	ans = 16'h2f32;
	#20
	A = 16'h2e72;
	B = 16'hb2e6;
	ans = 16'ha58f;
	#20
	A = 16'hb5ba;
	B = 16'hb724;
	ans = 16'h311d;
	#20
	A = 16'h3b06;
	B = 16'h3450;
	ans = 16'h3392;
	#20
	A = 16'h397b;
	B = 16'hb903;
	ans = 16'hb6de;
	#20
	A = 16'h3874;
	B = 16'hb27f;
	ans = 16'haf3b;
	#20
	A = 16'hb40e;
	B = 16'hb4d6;
	ans = 16'h2ce7;
	#20
	A = 16'haf7f;
	B = 16'h2ebe;
	ans = 16'ha251;
	#20
	A = 16'h3644;
	B = 16'h3628;
	ans = 16'h30d2;
	#20
	A = 16'hba25;
	B = 16'h34fc;
	ans = 16'hb3a8;
	#20
	A = 16'hb989;
	B = 16'h2ea8;
	ans = 16'hac9b;
	#20
	A = 16'h37c8;
	B = 16'h33ba;
	ans = 16'h2f84;
	#20
	A = 16'hbba3;
	B = 16'h3a8b;
	ans = 16'hba3f;
	#20
	A = 16'hb74f;
	B = 16'h3808;
	ans = 16'hb35e;
	#20
	A = 16'h390c;
	B = 16'h33b9;
	ans = 16'h30df;
	#20
	A = 16'h396a;
	B = 16'h28e2;
	ans = 16'h269c;
	#20
	A = 16'hba80;
	B = 16'hb899;
	ans = 16'h3779;
	#20
	A = 16'hb9cd;
	B = 16'hbb4e;
	ans = 16'h394c;
	#20
	A = 16'h3ac1;
	B = 16'hb459;
	ans = 16'hb357;
	#20
	A = 16'hb349;
	B = 16'hb710;
	ans = 16'h2e6e;
	#20
	A = 16'hb45c;
	B = 16'hb9e8;
	ans = 16'h3270;
	#20
	A = 16'h394b;
	B = 16'h2e34;
	ans = 16'h2c1b;
	#20
	A = 16'ha4ad;
	B = 16'h3210;
	ans = 16'h9b16;
	#20
	A = 16'hb80e;
	B = 16'ha507;
	ans = 16'h2119;
	#20
	A = 16'h25fc;
	B = 16'h2bf7;
	ans = 16'h15f5;
	#20
	A = 16'h3881;
	B = 16'h3a5b;
	ans = 16'h3728;
	#20
	A = 16'h3bfa;
	B = 16'h3b3a;
	ans = 16'h3b35;
	#20
	A = 16'hb5ed;
	B = 16'hb3b9;
	ans = 16'h2db8;
	#20
	A = 16'hb1aa;
	B = 16'h3120;
	ans = 16'ha742;
	#20
	A = 16'hb905;
	B = 16'hb559;
	ans = 16'h32b6;
	#20
	A = 16'h3afd;
	B = 16'h3541;
	ans = 16'h3497;
	#20
	A = 16'h389c;
	B = 16'hb90f;
	ans = 16'hb5d4;
	#20
	A = 16'h3941;
	B = 16'h383a;
	ans = 16'h358d;
	#20
	A = 16'h3a76;
	B = 16'hb585;
	ans = 16'hb475;
	#20
	A = 16'h2354;
	B = 16'h3b96;
	ans = 16'h22f3;
	#20
	A = 16'h38e0;
	B = 16'h1a0a;
	ans = 16'h175c;
	#20
	A = 16'h3936;
	B = 16'h36d2;
	ans = 16'h3471;
	#20
	A = 16'h337b;
	B = 16'ha458;
	ans = 16'h9c10;
	#20
	A = 16'h3042;
	B = 16'h394e;
	ans = 16'h2da6;
	#20
	A = 16'h3ae8;
	B = 16'h2742;
	ans = 16'h2644;
	#20
	A = 16'hb17a;
	B = 16'hb43a;
	ans = 16'h29c9;
	#20
	A = 16'h385d;
	B = 16'had90;
	ans = 16'haa11;
	#20
	A = 16'hbb2b;
	B = 16'h3bc8;
	ans = 16'hbaf9;
	#20
	A = 16'hbbe0;
	B = 16'h3aa5;
	ans = 16'hba8a;
	#20
	A = 16'hb8d2;
	B = 16'h3a94;
	ans = 16'hb7ed;
	#20
	A = 16'hbb4e;
	B = 16'hb787;
	ans = 16'h36e0;
	#20
	A = 16'h375d;
	B = 16'hbbb5;
	ans = 16'hb718;
	#20
	A = 16'h3be5;
	B = 16'h39f3;
	ans = 16'h39df;
	#20
	A = 16'h398d;
	B = 16'h381d;
	ans = 16'h35b5;
	#20
	A = 16'h3a06;
	B = 16'hb401;
	ans = 16'hb208;
	#20
	A = 16'h37f3;
	B = 16'hbbcc;
	ans = 16'hb7bf;
	#20
	A = 16'h33e0;
	B = 16'h3bc0;
	ans = 16'h33a1;
	#20
	A = 16'h29f2;
	B = 16'h2ff7;
	ans = 16'h1deb;
	#20
	A = 16'hb2d2;
	B = 16'h30b9;
	ans = 16'ha807;
	#20
	A = 16'h325e;
	B = 16'hb411;
	ans = 16'haa79;
	#20
	A = 16'h3086;
	B = 16'h37f4;
	ans = 16'h2c7f;
	#20
	A = 16'hb34a;
	B = 16'h372d;
	ans = 16'hae8a;
	#20
	A = 16'h385b;
	B = 16'h37d0;
	ans = 16'h3441;
	#20
	A = 16'h39ef;
	B = 16'h2604;
	ans = 16'h2476;
	#20
	A = 16'h3be2;
	B = 16'h3578;
	ans = 16'h3563;
	#20
	A = 16'h38d7;
	B = 16'h388f;
	ans = 16'h3584;
	#20
	A = 16'ha9d1;
	B = 16'h38d1;
	ans = 16'ha701;
	#20
	A = 16'hb851;
	B = 16'h3344;
	ans = 16'hafd7;
	#20
	A = 16'h3279;
	B = 16'h2c6b;
	ans = 16'h2326;
	#20
	A = 16'hb36f;
	B = 16'h341c;
	ans = 16'haba3;
	#20
	A = 16'hbb49;
	B = 16'hba89;
	ans = 16'h39f4;
	#20
	A = 16'h3bfb;
	B = 16'h32b6;
	ans = 16'h32b2;
	#20
	A = 16'hba52;
	B = 16'h2d56;
	ans = 16'hac37;
	#20
	A = 16'h33fb;
	B = 16'h33a5;
	ans = 16'h2ba0;
	#20
	A = 16'h353a;
	B = 16'haab0;
	ans = 16'ha45e;
	#20
	A = 16'hb1b9;
	B = 16'h3b91;
	ans = 16'hb16a;
	#20
	A = 16'h3987;
	B = 16'hba48;
	ans = 16'hb857;
	#20
	A = 16'hb412;
	B = 16'ha910;
	ans = 16'h2127;
	#20
	A = 16'hbbe2;
	B = 16'hbb8a;
	ans = 16'h3b6e;
	#20
	A = 16'haef2;
	B = 16'h3a02;
	ans = 16'had37;
	#20
	A = 16'hb03b;
	B = 16'h32e3;
	ans = 16'ha749;
	#20
	A = 16'hac36;
	B = 16'h3862;
	ans = 16'ha89d;
	#20
	A = 16'hb868;
	B = 16'h3833;
	ans = 16'hb4a0;
	#20
	A = 16'hb776;
	B = 16'h3042;
	ans = 16'habf1;
	#20
	A = 16'h39e0;
	B = 16'hb2db;
	ans = 16'hb109;
	#20
	A = 16'h3468;
	B = 16'h3105;
	ans = 16'h2988;
	#20
	A = 16'hb1fc;
	B = 16'hb7a9;
	ans = 16'h2dbb;
	#20
	A = 16'h38f9;
	B = 16'h3818;
	ans = 16'h3517;
	#20
	A = 16'hae43;
	B = 16'hb31b;
	ans = 16'h2590;
	#20
	A = 16'h308b;
	B = 16'hb9f9;
	ans = 16'haec9;
	#20
	A = 16'h34c6;
	B = 16'hb908;
	ans = 16'hb201;
	#20
	A = 16'hb3bc;
	B = 16'hbaac;
	ans = 16'h3273;
	#20
	A = 16'hba7d;
	B = 16'hb970;
	ans = 16'h3869;
	#20
	A = 16'hb25f;
	B = 16'hb5fa;
	ans = 16'h2cc2;
	#20
	A = 16'hb947;
	B = 16'hb515;
	ans = 16'h32b4;
	#20
	A = 16'h3764;
	B = 16'had79;
	ans = 16'ha90e;
	#20
	A = 16'h3b36;
	B = 16'h39bf;
	ans = 16'h392e;
	#20
	A = 16'hb691;
	B = 16'h381e;
	ans = 16'hb2c2;
	#20
	A = 16'h393f;
	B = 16'h30d8;
	ans = 16'h2e5a;
	#20
	A = 16'hb860;
	B = 16'hb89c;
	ans = 16'h350b;
	#20
	A = 16'hb410;
	B = 16'hb740;
	ans = 16'h2f5d;
	#20
	A = 16'h2bc8;
	B = 16'h33e9;
	ans = 16'h23b2;
	#20
	A = 16'h2993;
	B = 16'hb5ba;
	ans = 16'ha3fb;
	#20
	A = 16'h29f4;
	B = 16'hb6a9;
	ans = 16'ha4f5;
	#20
	A = 16'hb410;
	B = 16'h2619;
	ans = 16'h9e31;
	#20
	A = 16'h280e;
	B = 16'hb5ad;
	ans = 16'ha1c1;
	#20
	A = 16'h2fb3;
	B = 16'h3ab1;
	ans = 16'h2e71;
	#20
	A = 16'hb656;
	B = 16'hba22;
	ans = 16'h34db;
	#20
	A = 16'h3b60;
	B = 16'hb3ba;
	ans = 16'hb31f;
	#20
	A = 16'h3589;
	B = 16'hbaf6;
	ans = 16'hb4d1;
	#20
	A = 16'h36da;
	B = 16'h37e1;
	ans = 16'h32bf;
	#20
	A = 16'h1c6f;
	B = 16'hac21;
	ans = 16'h8c94;
	#20
	A = 16'h38c3;
	B = 16'hb542;
	ans = 16'hb242;
	#20
	A = 16'h3ac4;
	B = 16'hbb21;
	ans = 16'hba07;
	#20
	A = 16'ha4da;
	B = 16'hb947;
	ans = 16'h2267;
	#20
	A = 16'h39a3;
	B = 16'h3bea;
	ans = 16'h3993;
	#20
	A = 16'hab6b;
	B = 16'h3715;
	ans = 16'ha691;
	#20
	A = 16'h39ec;
	B = 16'h35bc;
	ans = 16'h343f;
	#20
	A = 16'h3bd1;
	B = 16'hb755;
	ans = 16'hb72a;
	#20
	A = 16'h3612;
	B = 16'h35d2;
	ans = 16'h306b;
	#20
	A = 16'h39e3;
	B = 16'h393e;
	ans = 16'h37b7;
	#20
	A = 16'h389a;
	B = 16'h38f0;
	ans = 16'h35ae;
	#20
	A = 16'hbbe9;
	B = 16'h33b7;
	ans = 16'hb3a1;
	#20
	A = 16'h1892;
	B = 16'hadc7;
	ans = 16'h8a9a;
	#20
	A = 16'hb9b0;
	B = 16'hbb0b;
	ans = 16'h3902;
	#20
	A = 16'hbaf0;
	B = 16'hb95a;
	ans = 16'h38a4;
	#20
	A = 16'h3821;
	B = 16'h368f;
	ans = 16'h32c5;
	#20
	A = 16'hab77;
	B = 16'h3b03;
	ans = 16'haa8b;
	#20
	A = 16'h3405;
	B = 16'hb2b6;
	ans = 16'haabe;
	#20
	A = 16'h313e;
	B = 16'hb7ca;
	ans = 16'had1b;
	#20
	A = 16'h3b69;
	B = 16'ha94a;
	ans = 16'ha8e6;
	#20
	A = 16'h3a1c;
	B = 16'hb5c9;
	ans = 16'hb46b;
	#20
	A = 16'h396c;
	B = 16'hb60f;
	ans = 16'hb41b;
	#20
	A = 16'hb24b;
	B = 16'h3509;
	ans = 16'habec;
	#20
	A = 16'hb836;
	B = 16'hb969;
	ans = 16'h35b2;
	#20
	A = 16'h3418;
	B = 16'h3b94;
	ans = 16'h33c1;
	#20
	A = 16'haf25;
	B = 16'h3890;
	ans = 16'hac13;
	#20
	A = 16'hb837;
	B = 16'h3aa0;
	ans = 16'hb6fb;
	#20
	A = 16'hb2f0;
	B = 16'h34c2;
	ans = 16'hac20;
	#20
	A = 16'h3bbf;
	B = 16'h3bc1;
	ans = 16'h3b82;
	#20
	A = 16'h1fc4;
	B = 16'h30ec;
	ans = 16'h14c7;
	#20
	A = 16'h3818;
	B = 16'hb9e3;
	ans = 16'hb606;
	#20
	A = 16'hb493;
	B = 16'hb0d9;
	ans = 16'h298b;
	#20
	A = 16'hba99;
	B = 16'hbb90;
	ans = 16'h3a3d;
	#20
	A = 16'hb72a;
	B = 16'h37ad;
	ans = 16'hb2e0;
	#20
	A = 16'hb793;
	B = 16'h3897;
	ans = 16'hb458;
	#20
	A = 16'hb996;
	B = 16'h307c;
	ans = 16'hae43;
	#20
	A = 16'h3570;
	B = 16'hb8f8;
	ans = 16'hb2c1;
	#20
	A = 16'h2acd;
	B = 16'hb172;
	ans = 16'ha0a1;
	#20
	A = 16'h25f1;
	B = 16'hb97d;
	ans = 16'ha413;
	#20
	A = 16'h35a5;
	B = 16'h39c6;
	ans = 16'h3413;
	#20
	A = 16'h39af;
	B = 16'h3739;
	ans = 16'h3522;
	#20
	A = 16'h363e;
	B = 16'hbb54;
	ans = 16'hb5b8;
	#20
	A = 16'h34d5;
	B = 16'h36b9;
	ans = 16'h300f;
	#20
	A = 16'h184;
	B = 16'h304c;
	ans = 16'h34;
	#20
	A = 16'hbade;
	B = 16'ha7eb;
	ans = 16'h26cc;
	#20
	A = 16'hb6b6;
	B = 16'h3983;
	ans = 16'hb4a0;
	#20
	A = 16'hb429;
	B = 16'h353d;
	ans = 16'had73;
	#20
	A = 16'hb7d6;
	B = 16'hb683;
	ans = 16'h3261;
	#20
	A = 16'hb7e8;
	B = 16'hba09;
	ans = 16'h35f7;
	#20
	A = 16'h34dc;
	B = 16'hbb8f;
	ans = 16'hb497;
	#20
	A = 16'hb4c3;
	B = 16'h3503;
	ans = 16'hadf7;
	#20
	A = 16'hbbc2;
	B = 16'hb82b;
	ans = 16'h380b;
	#20
	A = 16'h3a8c;
	B = 16'h34bc;
	ans = 16'h33c0;
	#20
	A = 16'hb993;
	B = 16'h356a;
	ans = 16'hb38b;
	#20
	A = 16'h305d;
	B = 16'hbbda;
	ans = 16'hb048;
	#20
	A = 16'h39ea;
	B = 16'hb808;
	ans = 16'hb5f6;
	#20
	A = 16'h376d;
	B = 16'h2c74;
	ans = 16'h2822;
	#20
	A = 16'hb416;
	B = 16'h3a79;
	ans = 16'hb29d;
	#20
	A = 16'hb12a;
	B = 16'hb171;
	ans = 16'h2706;
	#20
	A = 16'hbba4;
	B = 16'hb3f4;
	ans = 16'h3399;
	#20
	A = 16'h362a;
	B = 16'hb9c3;
	ans = 16'hb470;
	#20
	A = 16'hb59e;
	B = 16'hb579;
	ans = 16'h2faf;
	#20
	A = 16'h36ab;
	B = 16'h3798;
	ans = 16'h3254;
	#20
	A = 16'h383c;
	B = 16'hb8dc;
	ans = 16'hb525;
	#20
	A = 16'h3846;
	B = 16'hb46c;
	ans = 16'hb0b9;
	#20
	A = 16'h32fd;
	B = 16'hb57d;
	ans = 16'haccb;
	#20
	A = 16'hbbec;
	B = 16'hb9d7;
	ans = 16'h39c8;
	#20
	A = 16'h38b3;
	B = 16'hb8e7;
	ans = 16'hb5c2;
	#20
	A = 16'h3986;
	B = 16'h3817;
	ans = 16'h35a6;
	#20
	A = 16'hb1b2;
	B = 16'hb859;
	ans = 16'h2e31;
	#20
	A = 16'h3a95;
	B = 16'h37e5;
	ans = 16'h367f;
	#20
	A = 16'h38c7;
	B = 16'hbb3a;
	ans = 16'hb851;
	#20
	A = 16'hb9d6;
	B = 16'hb8da;
	ans = 16'h3714;
	#20
	A = 16'hb848;
	B = 16'h307e;
	ans = 16'haccf;
	#20
	A = 16'h3034;
	B = 16'h30c3;
	ans = 16'h2501;
	#20
	A = 16'hb246;
	B = 16'hb903;
	ans = 16'h2fdc;
	#20
	A = 16'hba43;
	B = 16'hb846;
	ans = 16'h36b1;
	#20
	A = 16'h35dc;
	B = 16'hb84b;
	ans = 16'hb24a;
	#20
	A = 16'ha62d;
	B = 16'h37c3;
	ans = 16'ha1fe;
	#20
	A = 16'h385c;
	B = 16'hb390;
	ans = 16'hb01f;
	#20
	A = 16'hab59;
	B = 16'h2786;
	ans = 16'h96e9;
	#20
	A = 16'h382c;
	B = 16'h3a29;
	ans = 16'h366d;
	#20
	A = 16'h3b89;
	B = 16'hacc9;
	ans = 16'hac82;
	#20
	A = 16'h3a57;
	B = 16'hb694;
	ans = 16'hb537;
	#20
	A = 16'h3a74;
	B = 16'hb66e;
	ans = 16'hb530;
	#20
	A = 16'hb516;
	B = 16'h31a4;
	ans = 16'hab2c;
	#20
	A = 16'h99dd;
	B = 16'h3904;
	ans = 16'h975a;
	#20
	A = 16'hb7dd;
	B = 16'h37f1;
	ans = 16'hb3ce;
	#20
	A = 16'h360f;
	B = 16'hb9a2;
	ans = 16'hb444;
	#20
	A = 16'hb56e;
	B = 16'h3b91;
	ans = 16'hb523;
	#20
	A = 16'h2800;
	B = 16'hb30a;
	ans = 16'h9f0a;
	#20
	A = 16'h30f3;
	B = 16'h3baa;
	ans = 16'h30be;
	#20
	A = 16'h395d;
	B = 16'h3ab9;
	ans = 16'h3882;
	#20
	A = 16'h34bb;
	B = 16'h3a68;
	ans = 16'h3393;
	#20
	A = 16'hbac4;
	B = 16'hba4a;
	ans = 16'h3952;
	#20
	A = 16'hbb53;
	B = 16'hb93b;
	ans = 16'h38ca;
	#20
	A = 16'h3a68;
	B = 16'h38b2;
	ans = 16'h3785;
	#20
	A = 16'h39eb;
	B = 16'h2e01;
	ans = 16'h2c71;
	#20
	A = 16'h3ae1;
	B = 16'h33f5;
	ans = 16'h32d8;
	#20
	A = 16'hb760;
	B = 16'h32f7;
	ans = 16'hae6c;
	#20
	A = 16'h3b43;
	B = 16'h2b44;
	ans = 16'h2a98;
	#20
	A = 16'hb87e;
	B = 16'hbbf7;
	ans = 16'h3879;
	#20
	A = 16'hb80f;
	B = 16'hbaff;
	ans = 16'h3719;
	#20
	A = 16'h3346;
	B = 16'hb780;
	ans = 16'haed2;
	#20
	A = 16'hbb55;
	B = 16'h37f4;
	ans = 16'hb74a;
	#20
	A = 16'hb0fa;
	B = 16'hb905;
	ans = 16'h2e3f;
	#20
	A = 16'h3bc7;
	B = 16'hb957;
	ans = 16'hb931;
	#20
	A = 16'hb6c6;
	B = 16'hb8aa;
	ans = 16'h33e6;
	#20
	A = 16'hb95f;
	B = 16'h3a42;
	ans = 16'hb834;
	#20
	A = 16'h9467;
	B = 16'h34b0;
	ans = 16'h8d29;
	#20
	A = 16'hbb8d;
	B = 16'hbb92;
	ans = 16'h3b25;
	#20
	A = 16'h3b6a;
	B = 16'hb429;
	ans = 16'hb3b6;
	#20
	A = 16'hba58;
	B = 16'hba40;
	ans = 16'h38f5;
	#20
	A = 16'h3ae8;
	B = 16'h2959;
	ans = 16'h289e;
	#20
	A = 16'hab79;
	B = 16'had4c;
	ans = 16'h1cf3;
	#20
	A = 16'h3a30;
	B = 16'hb8a3;
	ans = 16'hb72c;
	#20
	A = 16'h36b6;
	B = 16'h33ab;
	ans = 16'h2e6f;
	#20
	A = 16'hb4bb;
	B = 16'h3787;
	ans = 16'hb073;
	#20
	A = 16'hb826;
	B = 16'h3acb;
	ans = 16'hb70c;
	#20
	A = 16'h3753;
	B = 16'h30d2;
	ans = 16'h2c6a;
	#20
	A = 16'hba23;
	B = 16'h3927;
	ans = 16'hb7e8;
	#20
	A = 16'hbb25;
	B = 16'h3206;
	ans = 16'hb161;
	#20
	A = 16'h343e;
	B = 16'hb77d;
	ans = 16'haff1;
	#20
	A = 16'hb8a7;
	B = 16'hbaa3;
	ans = 16'h37b8;
	#20
	A = 16'hb1dc;
	B = 16'h3bbe;
	ans = 16'hb1ac;
	#20
	A = 16'h33c8;
	B = 16'hb484;
	ans = 16'hac64;
	#20
	A = 16'h3bae;
	B = 16'h3a3f;
	ans = 16'h39ff;
	#20
	A = 16'h3967;
	B = 16'hb8c0;
	ans = 16'hb66a;
	#20
	A = 16'h31c0;
	B = 16'hb48f;
	ans = 16'haa8e;
	#20
	A = 16'h3a98;
	B = 16'h3be4;
	ans = 16'h3a81;
	#20
	A = 16'h3b60;
	B = 16'hb999;
	ans = 16'hb929;
	#20
	A = 16'h3a0e;
	B = 16'h34cd;
	ans = 16'h3344;
	#20
	A = 16'h285a;
	B = 16'hbb75;
	ans = 16'ha80e;
	#20
	A = 16'hb951;
	B = 16'h3812;
	ans = 16'hb569;
	#20
	A = 16'h3b3a;
	B = 16'hb148;
	ans = 16'hb0c5;
	#20
	A = 16'h2afb;
	B = 16'h3028;
	ans = 16'h1f41;
	#20
	A = 16'h3997;
	B = 16'h34fd;
	ans = 16'h32f9;
	#20
	A = 16'hbba1;
	B = 16'h39d5;
	ans = 16'hb990;
	#20
	A = 16'h310e;
	B = 16'h36c7;
	ans = 16'h2c48;
	#20
	A = 16'hba7e;
	B = 16'h3398;
	ans = 16'hb22a;
	#20
	A = 16'hbb5b;
	B = 16'h30b9;
	ans = 16'hb058;
	#20
	A = 16'h38f8;
	B = 16'haf73;
	ans = 16'haca0;
	#20
	A = 16'hbbac;
	B = 16'hae13;
	ans = 16'h2dd3;
	#20
	A = 16'h376f;
	B = 16'h38b3;
	ans = 16'h345e;
	#20
	A = 16'h3b48;
	B = 16'h3a27;
	ans = 16'h3999;
	#20
	A = 16'ha8f3;
	B = 16'hb382;
	ans = 16'h20a5;
	#20
	A = 16'hb990;
	B = 16'ha820;
	ans = 16'h25bc;
	#20
	A = 16'h3851;
	B = 16'h3668;
	ans = 16'h32ea;
	#20
	A = 16'h38c9;
	B = 16'ha333;
	ans = 16'ha04e;
	#20
	A = 16'ha2e1;
	B = 16'hb8ec;
	ans = 16'h203b;
	#20
	A = 16'h3a6f;
	B = 16'ha0d8;
	ans = 16'h9fca;
	#20
	A = 16'hb08c;
	B = 16'h3643;
	ans = 16'hab1e;
	#20
	A = 16'h2eef;
	B = 16'hb8da;
	ans = 16'hac34;
	#20
	A = 16'h3031;
	B = 16'h3839;
	ans = 16'h2c6d;
	#20
	A = 16'h3b43;
	B = 16'h3630;
	ans = 16'h359e;
	#20
	A = 16'hb033;
	B = 16'ha032;
	ans = 16'h1467;
	#20
	A = 16'hb012;
	B = 16'h36b5;
	ans = 16'haad3;
	#20
	A = 16'hb956;
	B = 16'h35b3;
	ans = 16'hb39a;
	#20
	A = 16'hb45e;
	B = 16'h30c3;
	ans = 16'ha933;
	#20
	A = 16'h283a;
	B = 16'hba0b;
	ans = 16'ha663;
	#20
	A = 16'h2607;
	B = 16'h3912;
	ans = 16'h23a4;
	#20
	A = 16'ha577;
	B = 16'h3407;
	ans = 16'h9d81;
	#20
	A = 16'hb828;
	B = 16'hba39;
	ans = 16'h3677;
	#20
	A = 16'h2f41;
	B = 16'haf62;
	ans = 16'ha2b2;
	#20
	A = 16'h3862;
	B = 16'hb8de;
	ans = 16'hb555;
	#20
	A = 16'hbbd1;
	B = 16'h3875;
	ans = 16'hb85b;
	#20
	A = 16'hbabf;
	B = 16'had78;
	ans = 16'h2c9d;
	#20
	A = 16'h3905;
	B = 16'hbb9c;
	ans = 16'hb8c6;
	#20
	A = 16'hb4b4;
	B = 16'h3b2c;
	ans = 16'hb437;
	#20
	A = 16'hb9a8;
	B = 16'hb23b;
	ans = 16'h3068;
	#20
	A = 16'h2fe9;
	B = 16'hb444;
	ans = 16'ha838;
	#20
	A = 16'hb45b;
	B = 16'h38f5;
	ans = 16'hb166;
	#20
	A = 16'hb92d;
	B = 16'haa61;
	ans = 16'h2821;
	#20
	A = 16'hbb65;
	B = 16'haecf;
	ans = 16'h2e4b;
	#20
	A = 16'h3709;
	B = 16'h2af2;
	ans = 16'h261c;
	#20
	A = 16'hb557;
	B = 16'ha84a;
	ans = 16'h21ba;
	#20
	A = 16'h342a;
	B = 16'h3b98;
	ans = 16'h33e8;
	#20
	A = 16'hbb4c;
	B = 16'h38a8;
	ans = 16'hb83f;
	#20
	A = 16'h3b98;
	B = 16'h310f;
	ans = 16'h30cd;
	#20
	A = 16'h2902;
	B = 16'hb9de;
	ans = 16'ha758;
	#20
	A = 16'h38b8;
	B = 16'h309f;
	ans = 16'h2d74;
	#20
	A = 16'h39e9;
	B = 16'h3195;
	ans = 16'h3020;
	#20
	A = 16'hba2f;
	B = 16'h35b6;
	ans = 16'hb46a;
	#20
	A = 16'h393b;
	B = 16'h3166;
	ans = 16'h2f0f;
	#20
	A = 16'hb41f;
	B = 16'h2ea2;
	ans = 16'ha6d5;
	#20
	A = 16'haa83;
	B = 16'hbba3;
	ans = 16'h2a37;
	#20
	A = 16'hb8e5;
	B = 16'h361c;
	ans = 16'hb37a;
	#20
	A = 16'h3621;
	B = 16'hb8cb;
	ans = 16'hb358;
	#20
	A = 16'hb952;
	B = 16'h3bde;
	ans = 16'hb93b;
	#20
	A = 16'hbb7b;
	B = 16'hbb4d;
	ans = 16'h3ad4;
	#20
	A = 16'hb775;
	B = 16'hb370;
	ans = 16'h2eef;
	#20
	A = 16'h2d35;
	B = 16'h2ed2;
	ans = 16'h2070;
	#20
	A = 16'hb170;
	B = 16'h3685;
	ans = 16'hac6e;
	#20
	A = 16'h32ea;
	B = 16'hb294;
	ans = 16'ha9af;
	#20
	A = 16'hbb9f;
	B = 16'hb95f;
	ans = 16'h391e;
	#20
	A = 16'hbbb0;
	B = 16'hbaad;
	ans = 16'h3a6a;
	#20
	A = 16'hb86b;
	B = 16'hb0f2;
	ans = 16'h2d76;
	#20
	A = 16'hb83d;
	B = 16'hb821;
	ans = 16'h3460;
	#20
	A = 16'hb930;
	B = 16'h34ac;
	ans = 16'hb20f;
	#20
	A = 16'h2ef9;
	B = 16'hb725;
	ans = 16'haa3a;
	#20
	A = 16'hb88c;
	B = 16'hb999;
	ans = 16'h365d;
	#20
	A = 16'h3a45;
	B = 16'hb96a;
	ans = 16'hb83e;
	#20
	A = 16'h3b26;
	B = 16'h3bac;
	ans = 16'h3adb;
	#20
	A = 16'hb638;
	B = 16'hb8fe;
	ans = 16'h33c3;
	#20
	A = 16'h390a;
	B = 16'h3b7e;
	ans = 16'h38b8;
	#20
	A = 16'hb457;
	B = 16'hbb89;
	ans = 16'h3416;
	#20
	A = 16'h97d5;
	B = 16'hb62b;
	ans = 16'h120a;
	#20
	A = 16'hb592;
	B = 16'hba6c;
	ans = 16'h3479;
	#20
	A = 16'hb2e2;
	B = 16'h2d43;
	ans = 16'ha487;
	#20
	A = 16'hb8b9;
	B = 16'h2d28;
	ans = 16'haa16;
	#20
	A = 16'h3a2a;
	B = 16'h3137;
	ans = 16'h3005;
	#20
	A = 16'h3ada;
	B = 16'h32b2;
	ans = 16'h31bc;
	#20
	A = 16'h39d6;
	B = 16'h389d;
	ans = 16'h36bb;
	#20
	A = 16'hb8b7;
	B = 16'h3251;
	ans = 16'haf72;
	#20
	A = 16'hba48;
	B = 16'h356c;
	ans = 16'hb442;
	#20
	A = 16'h38a1;
	B = 16'h3416;
	ans = 16'h30ba;
	#20
	A = 16'ha520;
	B = 16'h3ab0;
	ans = 16'ha449;
	#20
	A = 16'haf7c;
	B = 16'hb89d;
	ans = 16'h2c51;
	#20
	A = 16'h379d;
	B = 16'hbbc7;
	ans = 16'hb767;
	#20
	A = 16'hb445;
	B = 16'h3729;
	ans = 16'hafa5;
	#20
	A = 16'hbaff;
	B = 16'h394d;
	ans = 16'hb8a3;
	#20
	A = 16'hb8fb;
	B = 16'hb2a1;
	ans = 16'h3020;
	#20
	A = 16'hb996;
	B = 16'h330b;
	ans = 16'hb0eb;
	#20
	A = 16'hb297;
	B = 16'hbb45;
	ans = 16'h31fd;
	#20
	A = 16'h2bb6;
	B = 16'h353d;
	ans = 16'h250d;
	#20
	A = 16'h3498;
	B = 16'h302a;
	ans = 16'h28c8;
	#20
	A = 16'ha0ac;
	B = 16'h36be;
	ans = 16'h9be0;
	#20
	A = 16'h358e;
	B = 16'h3bdf;
	ans = 16'h3577;
	#20
	A = 16'h32f7;
	B = 16'hbb07;
	ans = 16'hb21e;
	#20
	A = 16'haad3;
	B = 16'h3b73;
	ans = 16'haa5b;
	#20
	A = 16'hbaab;
	B = 16'h3b83;
	ans = 16'hba43;
	#20
	A = 16'h3ad1;
	B = 16'haaef;
	ans = 16'ha9e8;
	#20
	A = 16'hae0c;
	B = 16'h3901;
	ans = 16'hab91;
	#20
	A = 16'hb803;
	B = 16'hab52;
	ans = 16'h2757;
	#20
	A = 16'ha1a8;
	B = 16'h3932;
	ans = 16'h9f59;
	#20
	A = 16'h393b;
	B = 16'h3842;
	ans = 16'h3591;
	#20
	A = 16'hbaf6;
	B = 16'hab07;
	ans = 16'h2a1d;
	#20
	A = 16'h3b09;
	B = 16'hb8a0;
	ans = 16'hb811;
	#20
	A = 16'hb9c7;
	B = 16'h3bd1;
	ans = 16'hb9a5;
	#20
	A = 16'h38ab;
	B = 16'ha78f;
	ans = 16'ha469;
	#20
	A = 16'h3bf1;
	B = 16'h38eb;
	ans = 16'h38e2;
	#20
	A = 16'h3b07;
	B = 16'had84;
	ans = 16'hacd8;
	#20
	A = 16'h3990;
	B = 16'hb252;
	ans = 16'hb065;
	#20
	A = 16'h3433;
	B = 16'h3721;
	ans = 16'h2f7c;
	#20
	A = 16'h3b7d;
	B = 16'h38ac;
	ans = 16'h385f;
	#20
	A = 16'hbb78;
	B = 16'h9462;
	ans = 16'h1417;
	#20
	A = 16'hb7f8;
	B = 16'h3826;
	ans = 16'hb422;
	#20
	A = 16'h2a1a;
	B = 16'hbb4b;
	ans = 16'ha990;
	#20
	A = 16'hbbc8;
	B = 16'hbb5d;
	ans = 16'h3b29;
	#20
	A = 16'hafd3;
	B = 16'ha42d;
	ans = 16'h1816;
	#20
	A = 16'hb719;
	B = 16'hba84;
	ans = 16'h35c8;
	#20
	A = 16'hbad8;
	B = 16'hb3ad;
	ans = 16'h3291;
	#20
	A = 16'hbbf7;
	B = 16'hbac8;
	ans = 16'h3ac0;
	#20
	A = 16'h3b9d;
	B = 16'h3558;
	ans = 16'h3516;
	#20
	A = 16'hbb02;
	B = 16'h34e0;
	ans = 16'hb445;
	#20
	A = 16'h3017;
	B = 16'h36ef;
	ans = 16'h2b17;
	#20
	A = 16'hbb82;
	B = 16'h39e3;
	ans = 16'hb986;
	#20
	A = 16'hb429;
	B = 16'h38c7;
	ans = 16'hb0f8;
	#20
	A = 16'hbbc6;
	B = 16'hb89b;
	ans = 16'h387a;
	#20
	A = 16'haa5d;
	B = 16'h3b3a;
	ans = 16'ha9c0;
	#20
	A = 16'h3434;
	B = 16'h36c7;
	ans = 16'h2f1f;
	#20
	A = 16'hb460;
	B = 16'hb873;
	ans = 16'h30de;
	#20
	A = 16'h3705;
	B = 16'hb41c;
	ans = 16'haf36;
	#20
	A = 16'hb585;
	B = 16'h370e;
	ans = 16'hb0de;
	#20
	A = 16'h338a;
	B = 16'hae14;
	ans = 16'ha5ba;
	#20
	A = 16'hb4fa;
	B = 16'haf0d;
	ans = 16'h2863;
	#20
	A = 16'h3ac5;
	B = 16'hb708;
	ans = 16'hb5f3;
	#20
	A = 16'h3436;
	B = 16'hba9e;
	ans = 16'hb2f7;
	#20
	A = 16'hb90b;
	B = 16'h31aa;
	ans = 16'haf24;
	#20
	A = 16'h3a6b;
	B = 16'h3bca;
	ans = 16'h3a40;
	#20
	A = 16'hb890;
	B = 16'hb8ef;
	ans = 16'h35a1;
	#20
	A = 16'h32b0;
	B = 16'h3bb3;
	ans = 16'h3270;
	#20
	A = 16'h3061;
	B = 16'h3a3f;
	ans = 16'h2ed6;
	#20
	A = 16'h382f;
	B = 16'h2804;
	ans = 16'h2433;
	#20
	A = 16'h38ba;
	B = 16'hb76c;
	ans = 16'hb463;
	#20
	A = 16'hb859;
	B = 16'h3ad9;
	ans = 16'hb771;
	#20
	A = 16'hb921;
	B = 16'hb20c;
	ans = 16'h2fc1;
	#20
	A = 16'h3487;
	B = 16'hb4be;
	ans = 16'had5e;
	#20
	A = 16'h3190;
	B = 16'h3519;
	ans = 16'h2b17;
	#20
	A = 16'h3687;
	B = 16'h3847;
	ans = 16'h32fb;
	#20
	A = 16'hb8e6;
	B = 16'hb8fa;
	ans = 16'h3618;
	#20
	A = 16'hb872;
	B = 16'h9a5b;
	ans = 16'h1710;
	#20
	A = 16'hba75;
	B = 16'h3a0c;
	ans = 16'hb8e1;
	#20
	A = 16'hb58a;
	B = 16'hb80e;
	ans = 16'h319d;
	#20
	A = 16'h37ac;
	B = 16'h307d;
	ans = 16'h2c4e;
	#20
	A = 16'hb940;
	B = 16'hb11c;
	ans = 16'h2eb5;
	#20
	A = 16'hb088;
	B = 16'h3a4d;
	ans = 16'haf23;
	#20
	A = 16'h3094;
	B = 16'h3a7d;
	ans = 16'h2f6d;
	#20
	A = 16'ha52c;
	B = 16'hb93c;
	ans = 16'h22c5;
	#20
	A = 16'h3682;
	B = 16'h389b;
	ans = 16'h337e;
	#20
	A = 16'h3afb;
	B = 16'h377e;
	ans = 16'h368a;
	#20
	A = 16'hb9dc;
	B = 16'hb7ec;
	ans = 16'h35cd;
	#20
	A = 16'hb2f9;
	B = 16'hb590;
	ans = 16'h2cd9;
	#20
	A = 16'hb659;
	B = 16'hb9f9;
	ans = 16'h34bd;
	#20
	A = 16'hb840;
	B = 16'h3a30;
	ans = 16'hb693;
	#20
	A = 16'ha0dc;
	B = 16'hb8a4;
	ans = 16'h1da3;
	#20
	A = 16'h39f1;
	B = 16'h3559;
	ans = 16'h33f1;
	#20
	A = 16'hb799;
	B = 16'hba17;
	ans = 16'h35c9;
	#20
	A = 16'ha819;
	B = 16'hba8a;
	ans = 16'h26b3;
	#20
	A = 16'h36df;
	B = 16'hbac5;
	ans = 16'hb5d0;
	#20
	A = 16'h3200;
	B = 16'h345c;
	ans = 16'h2a8a;
	#20
	A = 16'hbb4a;
	B = 16'hb365;
	ans = 16'h32bd;
	#20
	A = 16'h32d6;
	B = 16'h3780;
	ans = 16'h2e69;
	#20
	A = 16'h3841;
	B = 16'h39a6;
	ans = 16'h3602;
	#20
	A = 16'h378e;
	B = 16'hb2f2;
	ans = 16'hae8f;
	#20
	A = 16'hb647;
	B = 16'h3a01;
	ans = 16'hb4b6;
	#20
	A = 16'h36e1;
	B = 16'hb9c3;
	ans = 16'hb4f4;
	#20
	A = 16'ha6a6;
	B = 16'h35d9;
	ans = 16'ha0dc;
	#20
	A = 16'h2c33;
	B = 16'h3431;
	ans = 16'h2466;
	#20
	A = 16'h34e2;
	B = 16'h39d0;
	ans = 16'h3318;
	#20
	A = 16'hb983;
	B = 16'hbb17;
	ans = 16'h38e2;
	#20
	A = 16'hbbf3;
	B = 16'h3bc5;
	ans = 16'hbbb8;
	#20
	A = 16'h3bbf;
	B = 16'hac1c;
	ans = 16'habf5;
	#20
	A = 16'h2ab2;
	B = 16'h3b64;
	ans = 16'h2a2f;
	#20
	A = 16'hb882;
	B = 16'h3a58;
	ans = 16'hb726;
	#20
	A = 16'hb406;
	B = 16'h3806;
	ans = 16'hb00c;
	#20
	A = 16'hb759;
	B = 16'h3a3c;
	ans = 16'hb5ba;
	#20
	A = 16'hb30f;
	B = 16'hb782;
	ans = 16'h2ea0;
	#20
	A = 16'hb0f5;
	B = 16'h30bb;
	ans = 16'ha5dd;
	#20
	A = 16'ha88f;
	B = 16'h2d2f;
	ans = 16'h99e8;
	#20
	A = 16'hb4e6;
	B = 16'h3bd4;
	ans = 16'hb4cb;
	#20
	A = 16'h3abc;
	B = 16'haef6;
	ans = 16'haddc;
	#20
	A = 16'h2f30;
	B = 16'hb4d5;
	ans = 16'ha857;
	#20
	A = 16'h30ba;
	B = 16'hba53;
	ans = 16'haf79;
	#20
	A = 16'hb021;
	B = 16'hbb34;
	ans = 16'h2f6f;
	#20
	A = 16'h3a09;
	B = 16'h38c9;
	ans = 16'h3738;
	#20
	A = 16'hb807;
	B = 16'h3bd0;
	ans = 16'hb7de;
	#20
	A = 16'hb5c2;
	B = 16'h363e;
	ans = 16'hb07e;
	#20
	A = 16'h31c1;
	B = 16'h3494;
	ans = 16'h2a96;
	#20
	A = 16'h30a4;
	B = 16'h3540;
	ans = 16'h2a17;
	#20
	A = 16'h3603;
	B = 16'h30c7;
	ans = 16'h2b2e;
	#20
	A = 16'h3b32;
	B = 16'h3b7c;
	ans = 16'h3abb;
	#20
	A = 16'h38d0;
	B = 16'hbb64;
	ans = 16'hb872;
	#20
	A = 16'h34f6;
	B = 16'h3479;
	ans = 16'h2d8c;
	#20
	A = 16'hb5f8;
	B = 16'ha8c6;
	ans = 16'h231f;
	#20
	A = 16'hb498;
	B = 16'hb44d;
	ans = 16'h2cf0;
	#20
	A = 16'h3bc6;
	B = 16'ha9fc;
	ans = 16'ha9d1;
	#20
	A = 16'hb85d;
	B = 16'hba4a;
	ans = 16'h36dc;
	#20
	A = 16'hb9ee;
	B = 16'hb78c;
	ans = 16'h3598;
	#20
	A = 16'hb9fd;
	B = 16'hb8d3;
	ans = 16'h3739;
	#20
	A = 16'h3b0b;
	B = 16'hb9c3;
	ans = 16'hb913;
	#20
	A = 16'h3214;
	B = 16'h2f9c;
	ans = 16'h25c8;
	#20
	A = 16'hb185;
	B = 16'hb920;
	ans = 16'h2f12;
	#20
	A = 16'hbb3d;
	B = 16'hb51c;
	ans = 16'h349f;
	#20
	A = 16'h30e4;
	B = 16'h2f71;
	ans = 16'h248d;
	#20
	A = 16'h3b5f;
	B = 16'h3bd2;
	ans = 16'h3b35;
	#20
	A = 16'hba54;
	B = 16'hb913;
	ans = 16'h3804;
	#20
	A = 16'h3b43;
	B = 16'h3607;
	ans = 16'h3579;
	#20
	A = 16'haee9;
	B = 16'haf98;
	ans = 16'h228f;
	#20
	A = 16'hb467;
	B = 16'h3b14;
	ans = 16'hb3ca;
	#20
	A = 16'ha5f5;
	B = 16'h3958;
	ans = 16'ha3f5;
	#20
	A = 16'h3a4f;
	B = 16'haa51;
	ans = 16'ha8fb;
	#20
	A = 16'h3590;
	B = 16'hb8c9;
	ans = 16'hb2a8;
	#20
	A = 16'hb79e;
	B = 16'hb168;
	ans = 16'h2d26;
	#20
	A = 16'hb8ec;
	B = 16'h3a47;
	ans = 16'hb7b9;
	#20
	A = 16'h3a55;
	B = 16'h31f1;
	ans = 16'h30b4;
	#20
	A = 16'hb639;
	B = 16'hb8ee;
	ans = 16'h33ab;
	#20
	A = 16'h3b6c;
	B = 16'hb80c;
	ans = 16'hb782;
	#20
	A = 16'h3134;
	B = 16'h3807;
	ans = 16'h2d3d;
	#20
	A = 16'hb8a4;
	B = 16'h3121;
	ans = 16'hadf3;
	#20
	A = 16'hb9b9;
	B = 16'h3a76;
	ans = 16'hb89f;
	#20
	A = 16'h3b26;
	B = 16'h32a3;
	ans = 16'h31ee;
	#20
	A = 16'h315a;
	B = 16'h37d0;
	ans = 16'h2d3a;
	#20
	A = 16'hb7cc;
	B = 16'hb95c;
	ans = 16'h3539;
	#20
	A = 16'hb9c2;
	B = 16'h307c;
	ans = 16'hae74;
	#20
	A = 16'hbade;
	B = 16'h3263;
	ans = 16'hb17b;
	#20
	A = 16'hbb44;
	B = 16'h3898;
	ans = 16'hb82c;
	#20
	A = 16'h3337;
	B = 16'h34d8;
	ans = 16'h2c5e;
	#20
	A = 16'h372f;
	B = 16'hb65a;
	ans = 16'hb1b4;
	#20
	A = 16'h3b29;
	B = 16'hb386;
	ans = 16'hb2bc;
	#20
	A = 16'hb687;
	B = 16'h357b;
	ans = 16'hb079;
	#20
	A = 16'had01;
	B = 16'h391b;
	ans = 16'haa63;
	#20
	A = 16'hb778;
	B = 16'h36c8;
	ans = 16'hb255;
	#20
	A = 16'h3962;
	B = 16'h3a0f;
	ans = 16'h3814;
	#20
	A = 16'h3a5a;
	B = 16'hb887;
	ans = 16'hb730;
	#20
	A = 16'h3860;
	B = 16'hba68;
	ans = 16'hb702;
	#20
	A = 16'h376c;
	B = 16'h3870;
	ans = 16'h341e;
	#20
	A = 16'hbadd;
	B = 16'hb826;
	ans = 16'h371e;
	#20
	A = 16'hb472;
	B = 16'hb6d9;
	ans = 16'h2f9c;
	#20
	A = 16'hb1bf;
	B = 16'hb5df;
	ans = 16'h2c38;
	#20
	A = 16'h2c51;
	B = 16'hb9cf;
	ans = 16'haa45;
	#20
	A = 16'hb7a9;
	B = 16'h305f;
	ans = 16'hac2f;
	#20
	A = 16'hbabd;
	B = 16'hb295;
	ans = 16'h318b;
	#20
	A = 16'hb6e3;
	B = 16'h3930;
	ans = 16'hb477;
	#20
	A = 16'h20a3;
	B = 16'h38db;
	ans = 16'h1da1;
	#20
	A = 16'hb9e5;
	B = 16'h2235;
	ans = 16'ha093;
	#20
	A = 16'hbaf2;
	B = 16'hb7ce;
	ans = 16'h36c7;
	#20
	A = 16'hb4bb;
	B = 16'h267e;
	ans = 16'h9fae;
	#20
	A = 16'hb830;
	B = 16'h372e;
	ans = 16'hb384;
	#20
	A = 16'hba75;
	B = 16'h3b06;
	ans = 16'hb9ab;
	#20
	A = 16'haf99;
	B = 16'hbb37;
	ans = 16'h2eda;
	#20
	A = 16'h3bfb;
	B = 16'hba2b;
	ans = 16'hba27;
	#20
	A = 16'h31bf;
	B = 16'hbb9d;
	ans = 16'hb178;
	#20
	A = 16'h3651;
	B = 16'h370e;
	ans = 16'h3192;
	#20
	A = 16'h3b48;
	B = 16'hb42c;
	ans = 16'hb398;
	#20
	A = 16'hb9fb;
	B = 16'hb803;
	ans = 16'h35ff;
	#20
	A = 16'h3511;
	B = 16'hb1ff;
	ans = 16'hab98;
	#20
	A = 16'h3ac4;
	B = 16'h398a;
	ans = 16'h38af;
	#20
	A = 16'h3b2a;
	B = 16'h292c;
	ans = 16'h28a2;
	#20
	A = 16'hb780;
	B = 16'hb417;
	ans = 16'h2fab;
	#20
	A = 16'hb431;
	B = 16'h355b;
	ans = 16'had9d;
	#20
	A = 16'h385e;
	B = 16'hb97a;
	ans = 16'hb5fb;
	#20
	A = 16'h3a55;
	B = 16'h30b8;
	ans = 16'h2f78;
	#20
	A = 16'hb8da;
	B = 16'hb4a3;
	ans = 16'h31a0;
	#20
	A = 16'h3a4a;
	B = 16'h3a9d;
	ans = 16'h3933;
	#20
	A = 16'hb90b;
	B = 16'h382f;
	ans = 16'hb546;
	#20
	A = 16'h39d0;
	B = 16'hb928;
	ans = 16'hb77e;
	#20
	A = 16'h358d;
	B = 16'hb662;
	ans = 16'hb06e;
	#20
	A = 16'h197f;
	B = 16'h3b61;
	ans = 16'h1912;
	#20
	A = 16'h39d9;
	B = 16'hac89;
	ans = 16'haaa1;
	#20
	A = 16'hbb70;
	B = 16'h3bda;
	ans = 16'hbb4d;
	#20
	A = 16'hb7e4;
	B = 16'h3bc7;
	ans = 16'hb7ac;
	#20
	A = 16'h39d6;
	B = 16'h35d3;
	ans = 16'h3440;
	#20
	A = 16'hb7f6;
	B = 16'hb9f7;
	ans = 16'h35f0;
	#20
	A = 16'hb50b;
	B = 16'hb8ae;
	ans = 16'h31e6;
	#20
	A = 16'hb900;
	B = 16'hb8e2;
	ans = 16'h361a;
	#20
	A = 16'h3520;
	B = 16'hb9e2;
	ans = 16'hb38a;
	#20
	A = 16'hb805;
	B = 16'h3069;
	ans = 16'hac6f;
	#20
	A = 16'haff8;
	B = 16'ha816;
	ans = 16'h1c12;
	#20
	A = 16'hb6c5;
	B = 16'hb531;
	ans = 16'h3065;
	#20
	A = 16'hb998;
	B = 16'hb4b6;
	ans = 16'h3297;
	#20
	A = 16'hbbbe;
	B = 16'h37c1;
	ans = 16'hb781;
	#20
	A = 16'hb435;
	B = 16'h34b7;
	ans = 16'hacf5;
	#20
	A = 16'h3b3a;
	B = 16'h35fb;
	ans = 16'h3567;
	#20
	A = 16'h2efd;
	B = 16'h3a2f;
	ans = 16'h2d67;
	#20
	A = 16'h3970;
	B = 16'h3b4a;
	ans = 16'h38f4;
	#20
	A = 16'hbb68;
	B = 16'haf8a;
	ans = 16'h2efb;
	#20
	A = 16'hafb3;
	B = 16'hb3bd;
	ans = 16'h2773;
	#20
	A = 16'h35d3;
	B = 16'h3ad1;
	ans = 16'h34f6;
	#20
	A = 16'hac15;
	B = 16'h36c6;
	ans = 16'ha6ea;
	#20
	A = 16'hb866;
	B = 16'h3a18;
	ans = 16'hb6b3;
	#20
	A = 16'hbba0;
	B = 16'h2e15;
	ans = 16'hadcc;
	#20
	A = 16'h3217;
	B = 16'hba90;
	ans = 16'hb0ff;
	#20
	A = 16'hbb0a;
	B = 16'h3920;
	ans = 16'hb882;
	#20
	A = 16'hb6ae;
	B = 16'hbbe6;
	ans = 16'h3698;
	#20
	A = 16'h3b07;
	B = 16'h302a;
	ans = 16'h2f51;
	#20
	A = 16'h3066;
	B = 16'hba23;
	ans = 16'haebf;
	#20
	A = 16'hb8b5;
	B = 16'h3a94;
	ans = 16'hb7be;
	#20
	A = 16'hb4c6;
	B = 16'hb938;
	ans = 16'h323a;
	#20
	A = 16'had73;
	B = 16'h3a3e;
	ans = 16'hac40;
	#20
	A = 16'hb84a;
	B = 16'h2f27;
	ans = 16'habab;
	#20
	A = 16'hb9be;
	B = 16'h3758;
	ans = 16'hb545;
	#20
	A = 16'h2dda;
	B = 16'hb8d7;
	ans = 16'hab15;
	#20
	A = 16'hb487;
	B = 16'h38ce;
	ans = 16'hb170;
	#20
	A = 16'hb7ea;
	B = 16'hb5e2;
	ans = 16'h31d2;
	#20
	A = 16'h38d9;
	B = 16'h3822;
	ans = 16'h3502;
	#20
	A = 16'hab92;
	B = 16'h39da;
	ans = 16'ha98a;
	#20
	A = 16'h3532;
	B = 16'hb9af;
	ans = 16'hb362;
	#20
	A = 16'h3bdd;
	B = 16'hba2f;
	ans = 16'hba14;
	#20
	A = 16'hbb18;
	B = 16'hb8bd;
	ans = 16'h3834;
	#20
	A = 16'h3001;
	B = 16'h3963;
	ans = 16'h2d64;
	#20
	A = 16'hb929;
	B = 16'h36d9;
	ans = 16'hb46b;
	#20
	A = 16'hb84a;
	B = 16'hbab0;
	ans = 16'h372c;
	#20
	A = 16'hbad5;
	B = 16'hbbe0;
	ans = 16'h3aba;
	#20
	A = 16'h3a9f;
	B = 16'h3b3d;
	ans = 16'h39fe;
	#20
	A = 16'hb8d8;
	B = 16'hbb12;
	ans = 16'h3848;
	#20
	A = 16'hb7b7;
	B = 16'h30de;
	ans = 16'hacb2;
	#20
	A = 16'hba84;
	B = 16'h3618;
	ans = 16'hb4f7;
	#20
	A = 16'hbae7;
	B = 16'hb342;
	ans = 16'h3243;
	#20
	A = 16'hb58c;
	B = 16'h3be3;
	ans = 16'hb578;
	#20
	A = 16'h3b8f;
	B = 16'h3548;
	ans = 16'h34fd;
	#20
	A = 16'hb855;
	B = 16'h3116;
	ans = 16'had82;
	#20
	A = 16'h36bb;
	B = 16'hb475;
	ans = 16'haf80;
	#20
	A = 16'hb95e;
	B = 16'hb511;
	ans = 16'h32cc;
	#20
	A = 16'hbad7;
	B = 16'hb95f;
	ans = 16'h3898;
	#20
	A = 16'h30c5;
	B = 16'hb354;
	ans = 16'ha85e;
	#20
	A = 16'h2d73;
	B = 16'hb643;
	ans = 16'ha844;
	#20
	A = 16'h3ab9;
	B = 16'h3747;
	ans = 16'h361e;
	#20
	A = 16'h34e6;
	B = 16'hb7a7;
	ans = 16'hb0b0;
	#20
	A = 16'h349e;
	B = 16'hbb5d;
	ans = 16'hb440;
	#20
	A = 16'h3a71;
	B = 16'h29f3;
	ans = 16'h28ca;
	#20
	A = 16'hb8d9;
	B = 16'haf1b;
	ans = 16'h2c4e;
	#20
	A = 16'hbae4;
	B = 16'h34e2;
	ans = 16'hb435;
	#20
	A = 16'hb4e4;
	B = 16'h38ad;
	ans = 16'hb1b8;
	#20
	A = 16'hb5a7;
	B = 16'h3a8c;
	ans = 16'hb4a0;
	#20
	A = 16'h3ab2;
	B = 16'h377f;
	ans = 16'h3646;
	#20
	A = 16'h3395;
	B = 16'hac9e;
	ans = 16'ha460;
	#20
	A = 16'h3a6f;
	B = 16'h38d5;
	ans = 16'h37c6;
	#20
	A = 16'hb728;
	B = 16'hb87b;
	ans = 16'h3402;
	#20
	A = 16'hb9f1;
	B = 16'h2513;
	ans = 16'ha389;
	#20
	A = 16'hb412;
	B = 16'hba88;
	ans = 16'h32a5;
	#20
	A = 16'hb835;
	B = 16'hb85e;
	ans = 16'h3498;
	#20
	A = 16'h39dd;
	B = 16'ha337;
	ans = 16'ha14a;
	#20
	A = 16'h38cc;
	B = 16'hb013;
	ans = 16'hace3;
	#20
	A = 16'h2c51;
	B = 16'hb223;
	ans = 16'ha29f;
	#20
	A = 16'h38c7;
	B = 16'h383b;
	ans = 16'h350d;
	#20
	A = 16'hb999;
	B = 16'hb8e7;
	ans = 16'h36dc;
	#20
	A = 16'h3948;
	B = 16'hb7ed;
	ans = 16'hb53b;
	#20
	A = 16'h35e6;
	B = 16'h1412;
	ans = 16'he01;
	#20
	A = 16'h3ad5;
	B = 16'h380e;
	ans = 16'h36ed;
	#20
	A = 16'h39e5;
	B = 16'h3b48;
	ans = 16'h395d;
	#20
	A = 16'hb655;
	B = 16'hb978;
	ans = 16'h3454;
	#20
	A = 16'hb91a;
	B = 16'hbab4;
	ans = 16'h3846;
	#20
	A = 16'h3905;
	B = 16'hb909;
	ans = 16'hb652;
	#20
	A = 16'hb770;
	B = 16'h3b7a;
	ans = 16'hb6f3;
	#20
	A = 16'haed1;
	B = 16'hb940;
	ans = 16'h2c79;
	#20
	A = 16'h3ae9;
	B = 16'h2387;
	ans = 16'h2280;
	#20
	A = 16'h36e9;
	B = 16'had36;
	ans = 16'ha880;
	#20
	A = 16'h3227;
	B = 16'h32aa;
	ans = 16'h2920;
	#20
	A = 16'hbac6;
	B = 16'hb681;
	ans = 16'h3582;
	#20
	A = 16'h3897;
	B = 16'h318e;
	ans = 16'h2e60;
	#20
	A = 16'h2bbd;
	B = 16'h38f3;
	ans = 16'h28ca;
	#20
	A = 16'h38ab;
	B = 16'h39f3;
	ans = 16'h36f1;
	#20
	A = 16'hbae0;
	B = 16'h34fe;
	ans = 16'hb44a;
	#20
	A = 16'h3922;
	B = 16'h33ac;
	ans = 16'h30ec;
	#20
	A = 16'hbaeb;
	B = 16'h3565;
	ans = 16'hb4aa;
	#20
	A = 16'hb684;
	B = 16'h3193;
	ans = 16'hac8a;
	#20
	A = 16'hb995;
	B = 16'hbb56;
	ans = 16'h391e;
	#20
	A = 16'hb58e;
	B = 16'h390d;
	ans = 16'hb304;
	#20
	A = 16'h3726;
	B = 16'h37b0;
	ans = 16'h32df;
	#20
	A = 16'hb4b6;
	B = 16'h3a5b;
	ans = 16'hb37c;
	#20
	A = 16'hb6ad;
	B = 16'hbb2d;
	ans = 16'h35fd;
	#20
	A = 16'h2a13;
	B = 16'h304b;
	ans = 16'h1e85;
	#20
	A = 16'hb3fd;
	B = 16'hb8a6;
	ans = 16'h30a4;
	#20
	A = 16'h3a83;
	B = 16'h3aec;
	ans = 16'h39a2;
	#20
	A = 16'hbb28;
	B = 16'hba1b;
	ans = 16'h3976;
	#20
	A = 16'hb638;
	B = 16'h2a5f;
	ans = 16'ha4f4;
	#20
	A = 16'h3bda;
	B = 16'h3995;
	ans = 16'h397a;
	#20
	A = 16'h3916;
	B = 16'hb936;
	ans = 16'hb6a0;
	#20
	A = 16'h3147;
	B = 16'hbbd7;
	ans = 16'hb12c;
	#20
	A = 16'h3bed;
	B = 16'h382f;
	ans = 16'h3825;
	#20
	A = 16'h39d4;
	B = 16'hbb67;
	ans = 16'hb965;
	#20
	A = 16'h35f4;
	B = 16'h3284;
	ans = 16'h2cd9;
	#20
	A = 16'h3a81;
	B = 16'hb4fc;
	ans = 16'hb40d;
	#20
	A = 16'hb440;
	B = 16'h3093;
	ans = 16'ha8dc;
	#20
	A = 16'hbac4;
	B = 16'h39e0;
	ans = 16'hb8f8;
	#20
	A = 16'habd1;
	B = 16'hbbc3;
	ans = 16'h2b95;
	#20
	A = 16'h34cf;
	B = 16'h2f30;
	ans = 16'h2852;
	#20
	A = 16'hbbc4;
	B = 16'h34f0;
	ans = 16'hb4cb;
	#20
	A = 16'h3a44;
	B = 16'h37b2;
	ans = 16'h3607;
	#20
	A = 16'h3bee;
	B = 16'h38f9;
	ans = 16'h38ee;
	#20
	A = 16'hb5dd;
	B = 16'h3b9e;
	ans = 16'hb595;
	#20
	A = 16'hb8ba;
	B = 16'h36e7;
	ans = 16'hb414;
	#20
	A = 16'hba36;
	B = 16'h3551;
	ans = 16'hb421;
	#20
	A = 16'h39ec;
	B = 16'hb831;
	ans = 16'hb635;
	#20
	A = 16'hb8de;
	B = 16'h2c0b;
	ans = 16'ha8eb;
	#20
	A = 16'h39a8;
	B = 16'hb8aa;
	ans = 16'hb698;
	#20
	A = 16'hba73;
	B = 16'h36c4;
	ans = 16'hb574;
	#20
	A = 16'h3ace;
	B = 16'hb894;
	ans = 16'hb7ca;
	#20
	A = 16'hb798;
	B = 16'h3a8d;
	ans = 16'hb638;
	#20
	A = 16'hb540;
	B = 16'hb918;
	ans = 16'h32b0;
	#20
	A = 16'hb816;
	B = 16'h399b;
	ans = 16'hb5ba;
	#20
	A = 16'hb9bb;
	B = 16'h3898;
	ans = 16'hb695;
	#20
	A = 16'hb74a;
	B = 16'hba01;
	ans = 16'h3578;
	#20
	A = 16'h3166;
	B = 16'h38e9;
	ans = 16'h2ea0;
	#20
	A = 16'hb22f;
	B = 16'hbb61;
	ans = 16'h31b4;
	#20
	A = 16'h302c;
	B = 16'hba2b;
	ans = 16'hae6f;
	#20
	A = 16'hb19d;
	B = 16'hb0ae;
	ans = 16'h2691;
	#20
	A = 16'h3b97;
	B = 16'hb92f;
	ans = 16'hb8eb;
	#20
	A = 16'hb24a;
	B = 16'h3851;
	ans = 16'haec9;
	#20
	A = 16'h3b87;
	B = 16'h38d6;
	ans = 16'h388d;
	#20
	A = 16'h3a91;
	B = 16'h2b12;
	ans = 16'h29ce;
	#20
	A = 16'h38f1;
	B = 16'h34be;
	ans = 16'h31dc;
	#20
	A = 16'h3516;
	B = 16'hb198;
	ans = 16'hab1d;
	#20
	A = 16'h3b81;
	B = 16'h36e4;
	ans = 16'h3677;
	#20
	A = 16'hbad5;
	B = 16'hba56;
	ans = 16'h3969;
	#20
	A = 16'hb5e7;
	B = 16'h38c6;
	ans = 16'hb30b;
	#20
	A = 16'ha9a8;
	B = 16'hbb3d;
	ans = 16'h291e;
	#20
	A = 16'hba8c;
	B = 16'h3491;
	ans = 16'hb379;
	#20
	A = 16'h3562;
	B = 16'h3bd6;
	ans = 16'h3546;
	#20
	A = 16'habb0;
	B = 16'h3a2f;
	ans = 16'ha9f1;
	#20
	A = 16'hb12a;
	B = 16'had72;
	ans = 16'h2308;
	#20
	A = 16'hb179;
	B = 16'h3aa2;
	ans = 16'hb08a;
	#20
	A = 16'h34c4;
	B = 16'h3b90;
	ans = 16'h3481;
	#20
	A = 16'h3918;
	B = 16'h303d;
	ans = 16'h2d66;
	#20
	A = 16'hb1dd;
	B = 16'h3a35;
	ans = 16'hb08d;
	#20
	A = 16'h35cc;
	B = 16'h30c8;
	ans = 16'h2aee;
	#20
	A = 16'h34b6;
	B = 16'h2efe;
	ans = 16'h281e;
	#20
	A = 16'h33f0;
	B = 16'hb4ae;
	ans = 16'haca5;
	#20
	A = 16'h30c2;
	B = 16'hba1b;
	ans = 16'haf43;
	#20
	A = 16'hba8a;
	B = 16'hbaf4;
	ans = 16'h39af;
	#20
	A = 16'hbb4e;
	B = 16'h3927;
	ans = 16'hb8b4;
	#20
	A = 16'hb3d5;
	B = 16'hbb63;
	ans = 16'h333b;
	#20
	A = 16'hb581;
	B = 16'h2c69;
	ans = 16'ha611;
	#20
	A = 16'h2450;
	B = 16'h30da;
	ans = 16'h193b;
	#20
	A = 16'h2fbf;
	B = 16'h37fd;
	ans = 16'h2bbc;
	#20
	A = 16'h330b;
	B = 16'hbbf2;
	ans = 16'hb2ff;
	#20
	A = 16'hb6d1;
	B = 16'h9d87;
	ans = 16'h18b6;
	#20
	A = 16'h3719;
	B = 16'hbb8e;
	ans = 16'hb6b4;
	#20
	A = 16'h37b2;
	B = 16'h3af7;
	ans = 16'h36b3;
	#20
	A = 16'hb590;
	B = 16'h2c17;
	ans = 16'ha5b0;
	#20
	A = 16'h332c;
	B = 16'hb99c;
	ans = 16'hb107;
	#20
	A = 16'h2ee8;
	B = 16'h3bdb;
	ans = 16'h2ec8;
	#20
	A = 16'h3a06;
	B = 16'hb6f0;
	ans = 16'hb539;
	#20
	A = 16'h3513;
	B = 16'h3a3e;
	ans = 16'h33eb;
	#20
	A = 16'h3bdb;
	B = 16'hb928;
	ans = 16'hb910;
	#20
	A = 16'hb81d;
	B = 16'h2862;
	ans = 16'ha482;
	#20
	A = 16'h39ef;
	B = 16'h383a;
	ans = 16'h3645;
	#20
	A = 16'h2b52;
	B = 16'hb508;
	ans = 16'ha49b;
	#20
	A = 16'h307b;
	B = 16'h3a3d;
	ans = 16'h2efd;
	#20
	A = 16'h361c;
	B = 16'hae13;
	ans = 16'ha8a4;
	#20
	A = 16'hb99a;
	B = 16'hbaf9;
	ans = 16'h38e2;
	#20
	A = 16'hbb21;
	B = 16'h34c5;
	ans = 16'hb440;
	#20
	A = 16'h3bca;
	B = 16'h36ec;
	ans = 16'h36bd;
	#20
	A = 16'h372b;
	B = 16'h39c3;
	ans = 16'h352a;
	#20
	A = 16'h2c94;
	B = 16'h346c;
	ans = 16'h2510;
	#20
	A = 16'h370a;
	B = 16'h3b47;
	ans = 16'h3667;
	#20
	A = 16'hb9be;
	B = 16'h3788;
	ans = 16'hb568;
	#20
	A = 16'h3451;
	B = 16'hba84;
	ans = 16'hb308;
	#20
	A = 16'h3467;
	B = 16'ha70e;
	ans = 16'h9fc4;
	#20
	A = 16'hb35c;
	B = 16'h3962;
	ans = 16'hb0f4;
	#20
	A = 16'h306d;
	B = 16'h3a1a;
	ans = 16'h2ec0;
	#20
	A = 16'h9636;
	B = 16'hbbc3;
	ans = 16'h1607;
	#20
	A = 16'h385d;
	B = 16'h38a0;
	ans = 16'h350c;
	#20
	A = 16'h3a49;
	B = 16'hb8af;
	ans = 16'hb75c;
	#20
	A = 16'h28d1;
	B = 16'h3a61;
	ans = 16'h27ae;
	#20
	A = 16'hb557;
	B = 16'h3bf2;
	ans = 16'hb54e;
	#20
	A = 16'h3b25;
	B = 16'hbae2;
	ans = 16'hba26;
	#20
	A = 16'h38a9;
	B = 16'hb69a;
	ans = 16'hb3b1;
	#20
	A = 16'h35da;
	B = 16'hb846;
	ans = 16'hb240;
	#20
	A = 16'h3689;
	B = 16'h38cc;
	ans = 16'h33d6;
	#20
	A = 16'hb73e;
	B = 16'h35da;
	ans = 16'hb14c;
	#20
	A = 16'hb93e;
	B = 16'h3937;
	ans = 16'hb6d6;
	#20
	A = 16'h361b;
	B = 16'hbb3b;
	ans = 16'hb585;
	#20
	A = 16'hb857;
	B = 16'h344e;
	ans = 16'hb0ac;
	#20
	A = 16'h3a62;
	B = 16'h3794;
	ans = 16'h360c;
	#20
	A = 16'hbbfd;
	B = 16'hb91a;
	ans = 16'h3918;
	#20
	A = 16'h370a;
	B = 16'hbb62;
	ans = 16'hb67f;
	#20
	A = 16'hb849;
	B = 16'hac40;
	ans = 16'h288e;
	#20
	A = 16'hb871;
	B = 16'hbac4;
	ans = 16'h3783;
	#20
	A = 16'h300c;
	B = 16'hb2ee;
	ans = 16'ha703;
	#20
	A = 16'hbb5c;
	B = 16'h2a76;
	ans = 16'ha9f2;
	#20
	A = 16'h3432;
	B = 16'h34be;
	ans = 16'h2cf9;
	#20
	A = 16'h3bc9;
	B = 16'h34de;
	ans = 16'h34bd;
	#20
	A = 16'h38f9;
	B = 16'hb964;
	ans = 16'hb6b4;
	#20
	A = 16'hb893;
	B = 16'hb8fa;
	ans = 16'h35b1;
	#20
	A = 16'haf23;
	B = 16'h3858;
	ans = 16'habc0;
	#20
	A = 16'hb6fa;
	B = 16'hac73;
	ans = 16'h27c3;
	#20
	A = 16'h3bd3;
	B = 16'h39c7;
	ans = 16'h39a7;
	#20
	A = 16'hbaeb;
	B = 16'ha62a;
	ans = 16'h2555;
	#20
	A = 16'h3b33;
	B = 16'hba3b;
	ans = 16'hb99b;
	#20
	A = 16'hb0b8;
	B = 16'h3491;
	ans = 16'ha963;
	#20
	A = 16'h374e;
	B = 16'hbb23;
	ans = 16'hb684;
	#20
	A = 16'h3a82;
	B = 16'hb9c8;
	ans = 16'hb8b4;
	#20
	A = 16'hb8a0;
	B = 16'h3a0d;
	ans = 16'hb6ff;
	#20
	A = 16'hbaed;
	B = 16'hb247;
	ans = 16'h316f;
	#20
	A = 16'h2fe9;
	B = 16'h350e;
	ans = 16'h28ff;
	#20
	A = 16'hb363;
	B = 16'hb943;
	ans = 16'h30dc;
	#20
	A = 16'ha8d9;
	B = 16'h3b38;
	ans = 16'ha860;
	#20
	A = 16'h39e9;
	B = 16'h39ca;
	ans = 16'h3847;
	#20
	A = 16'hbb45;
	B = 16'h39f4;
	ans = 16'hb969;
	#20
	A = 16'hafdf;
	B = 16'h3ab2;
	ans = 16'hae96;
	#20
	A = 16'h3bb3;
	B = 16'hb1cb;
	ans = 16'hb193;
	#20
	A = 16'hbabc;
	B = 16'hb5e1;
	ans = 16'h34f3;
	#20
	A = 16'hb9b3;
	B = 16'h3b73;
	ans = 16'hb94f;
	#20
	A = 16'hb249;
	B = 16'hb5d9;
	ans = 16'h2c98;
	#20
	A = 16'h3bb9;
	B = 16'h3469;
	ans = 16'h3442;
	#20
	A = 16'h3b2f;
	B = 16'hb49a;
	ans = 16'hb422;
	#20
	A = 16'hb83c;
	B = 16'h383d;
	ans = 16'hb47d;
	#20
	A = 16'hb940;
	B = 16'hb02c;
	ans = 16'h2d7a;
	#20
	A = 16'h3125;
	B = 16'hba0b;
	ans = 16'hafc6;
	#20
	A = 16'h3a24;
	B = 16'hb98a;
	ans = 16'hb840;
	#20
	A = 16'hbaa3;
	B = 16'hb8e1;
	ans = 16'h380c;
	#20
	A = 16'h30bf;
	B = 16'h20f4;
	ans = 16'h15e1;
	#20
	A = 16'h3622;
	B = 16'hb85a;
	ans = 16'hb2ac;
	#20
	A = 16'h34b5;
	B = 16'h3738;
	ans = 16'h303f;
	#20
	A = 16'h395d;
	B = 16'hb928;
	ans = 16'hb6ea;
	#20
	A = 16'hbb59;
	B = 16'hb457;
	ans = 16'h33f9;
	#20
	A = 16'h3848;
	B = 16'h2e15;
	ans = 16'h2a82;
	#20
	A = 16'h348a;
	B = 16'hb0af;
	ans = 16'ha951;
	#20
	A = 16'hb2e2;
	B = 16'h2d74;
	ans = 16'ha4b1;
	#20
	A = 16'hb3ff;
	B = 16'had2d;
	ans = 16'h252c;
	#20
	A = 16'hb756;
	B = 16'h2ddf;
	ans = 16'ha962;
	#20
	A = 16'h347c;
	B = 16'hb7ce;
	ans = 16'hb060;
	#20
	A = 16'hb001;
	B = 16'hbbc5;
	ans = 16'h2fc7;
	#20
	A = 16'h33f7;
	B = 16'hb395;
	ans = 16'hab8c;
	#20
	A = 16'h3454;
	B = 16'h3a42;
	ans = 16'h32c5;
	#20
	A = 16'h3b9e;
	B = 16'h2b29;
	ans = 16'h2ad1;
	#20
	A = 16'h3484;
	B = 16'hb3b9;
	ans = 16'hac5c;
	#20
	A = 16'h3454;
	B = 16'hb983;
	ans = 16'hb1f7;
	#20
	A = 16'hb856;
	B = 16'hb1b0;
	ans = 16'h2e2a;
	#20
	A = 16'hb819;
	B = 16'hb6f3;
	ans = 16'h331e;
	#20
	A = 16'hb3d0;
	B = 16'hb4fa;
	ans = 16'h2cdc;
	#20
	A = 16'hb8fc;
	B = 16'hbb56;
	ans = 16'h3892;
	#20
	A = 16'h395b;
	B = 16'h3a93;
	ans = 16'h3867;
	#20
	A = 16'hb976;
	B = 16'h3404;
	ans = 16'hb17b;
	#20
	A = 16'hb872;
	B = 16'h2d26;
	ans = 16'ha9b9;
	#20
	A = 16'hba7b;
	B = 16'h3047;
	ans = 16'haeee;
	#20
	A = 16'h27be;
	B = 16'ha996;
	ans = 16'h9568;
	#20
	A = 16'h2e69;
	B = 16'hbb60;
	ans = 16'hade9;
	#20
	A = 16'h39ab;
	B = 16'h3af3;
	ans = 16'h38ec;
	#20
	A = 16'hbb40;
	B = 16'hba04;
	ans = 16'h3974;
	#20
	A = 16'hbac7;
	B = 16'hb43a;
	ans = 16'h3329;
	#20
	A = 16'hb9ea;
	B = 16'hb968;
	ans = 16'h37fe;
	#20
	A = 16'h3996;
	B = 16'h39e7;
	ans = 16'h381f;
	#20
	A = 16'ha71d;
	B = 16'hb6fb;
	ans = 16'h2235;
	#20
	A = 16'hb79e;
	B = 16'hb607;
	ans = 16'h31bd;
	#20
	A = 16'hb21d;
	B = 16'h3baf;
	ans = 16'hb1df;
	#20
	A = 16'hb4e0;
	B = 16'h3beb;
	ans = 16'hb4d3;
	#20
	A = 16'hb900;
	B = 16'hba54;
	ans = 16'h37e9;
	#20
	A = 16'h3be8;
	B = 16'had63;
	ans = 16'had53;
	#20
	A = 16'hb7dd;
	B = 16'h3910;
	ans = 16'hb4fa;
	#20
	A = 16'hb874;
	B = 16'ha34b;
	ans = 16'h200f;
	#20
	A = 16'h34fd;
	B = 16'h3bf0;
	ans = 16'h34f3;
	#20
	A = 16'h3886;
	B = 16'hb1f7;
	ans = 16'haebf;
	#20
	A = 16'h3995;
	B = 16'h3961;
	ans = 16'h3782;
	#20
	A = 16'h3637;
	B = 16'h37d3;
	ans = 16'h3214;
	#20
	A = 16'h396e;
	B = 16'hb69c;
	ans = 16'hb47c;
	#20
	A = 16'h37b2;
	B = 16'hb003;
	ans = 16'habb8;
	#20
	A = 16'h3955;
	B = 16'h33b4;
	ans = 16'h3122;
	#20
	A = 16'h2cb4;
	B = 16'hb692;
	ans = 16'ha7ba;
	#20
	A = 16'hbb5c;
	B = 16'h398a;
	ans = 16'hb918;
	#20
	A = 16'hb403;
	B = 16'h3933;
	ans = 16'hb137;
	#20
	A = 16'hb98f;
	B = 16'h3b8c;
	ans = 16'hb93e;
	#20
	A = 16'hb8de;
	B = 16'hb7a0;
	ans = 16'h34a4;
	#20
	A = 16'hb6e4;
	B = 16'h2fd2;
	ans = 16'haabc;
	#20
	A = 16'hb7cc;
	B = 16'hbbbf;
	ans = 16'h378d;
	#20
	A = 16'hb59e;
	B = 16'hb309;
	ans = 16'h2cf1;
	#20
	A = 16'h385f;
	B = 16'h3048;
	ans = 16'h2cae;
	#20
	A = 16'h3a3d;
	B = 16'hb9ba;
	ans = 16'hb877;
	#20
	A = 16'h3a30;
	B = 16'h354d;
	ans = 16'h341a;
	#20
	A = 16'ha591;
	B = 16'hb179;
	ans = 16'h1b9e;
	#20
	A = 16'h3595;
	B = 16'h3a62;
	ans = 16'h3474;
	#20
	A = 16'hb759;
	B = 16'haca4;
	ans = 16'h2843;
	#20
	A = 16'h3514;
	B = 16'hbbb5;
	ans = 16'hb4e4;
	#20
	A = 16'hbb23;
	B = 16'hb85a;
	ans = 16'h37c4;
	#20
	A = 16'h3996;
	B = 16'hbb3d;
	ans = 16'hb90e;
	#20
	A = 16'h39a5;
	B = 16'hbb23;
	ans = 16'hb909;
	#20
	A = 16'h3646;
	B = 16'h3aa7;
	ans = 16'h3537;
	#20
	A = 16'h3521;
	B = 16'h329e;
	ans = 16'h2c3e;
	#20
	A = 16'hb7be;
	B = 16'hb9b6;
	ans = 16'h3587;
	#20
	A = 16'hb5d1;
	B = 16'hb3ce;
	ans = 16'h2dad;
	#20
	A = 16'haf1e;
	B = 16'haf63;
	ans = 16'h2292;
	#20
	A = 16'h3b0b;
	B = 16'h3763;
	ans = 16'h3681;
	#20
	A = 16'h36a4;
	B = 16'h3ac8;
	ans = 16'h35a1;
	#20
	A = 16'had16;
	B = 16'hb1c9;
	ans = 16'h235b;
	#20
	A = 16'h390f;
	B = 16'hb8fc;
	ans = 16'hb64e;
	#20
	A = 16'h3a11;
	B = 16'hb7c9;
	ans = 16'hb5e7;
	#20
	A = 16'h33bd;
	B = 16'hb3bf;
	ans = 16'hab7e;
	#20
	A = 16'h33ba;
	B = 16'hba90;
	ans = 16'hb257;
	#20
	A = 16'h2934;
	B = 16'hb9fb;
	ans = 16'ha7c7;
	#20
	A = 16'h39ae;
	B = 16'h3ab2;
	ans = 16'h38c1;
	#20
	A = 16'hb8cc;
	B = 16'hb4aa;
	ans = 16'h3198;
	#20
	A = 16'h2ec8;
	B = 16'hb97e;
	ans = 16'haca8;
	#20
	A = 16'hbb88;
	B = 16'h329e;
	ans = 16'hb23b;
	#20
	A = 16'hb8ff;
	B = 16'hbb0f;
	ans = 16'h3868;
	#20
	A = 16'ha835;
	B = 16'h3bec;
	ans = 16'ha82a;
	#20
	A = 16'hb7e3;
	B = 16'hb96c;
	ans = 16'h3558;
	#20
	A = 16'hb01f;
	B = 16'hb23d;
	ans = 16'h266d;
	#20
	A = 16'hb658;
	B = 16'h306a;
	ans = 16'hab00;
	#20
	A = 16'h2eb6;
	B = 16'hb6d6;
	ans = 16'ha9bc;
	#20
	A = 16'hb8e9;
	B = 16'hb7ec;
	ans = 16'h34dd;
	#20
	A = 16'h3be9;
	B = 16'hbb01;
	ans = 16'hbaed;
	#20
	A = 16'h3b03;
	B = 16'haf88;
	ans = 16'hae9a;
	#20
	A = 16'hb8e1;
	B = 16'h3566;
	ans = 16'hb296;
	#20
	A = 16'hae0d;
	B = 16'h321e;
	ans = 16'ha4a0;
	#20
	A = 16'h2ace;
	B = 16'hb496;
	ans = 16'ha3cd;
	#20
	A = 16'h3b53;
	B = 16'h375c;
	ans = 16'h36bd;
	#20
	A = 16'h2da9;
	B = 16'h3806;
	ans = 16'h29b1;
	#20
	A = 16'hb8ae;
	B = 16'h3b15;
	ans = 16'hb825;
	#20
	A = 16'hb4b8;
	B = 16'h329f;
	ans = 16'habd0;
	#20
	A = 16'hb500;
	B = 16'hb834;
	ans = 16'h3141;
	#20
	A = 16'hb86c;
	B = 16'h36cc;
	ans = 16'hb384;
	#20
	A = 16'h39fb;
	B = 16'h344d;
	ans = 16'h326e;
	#20
	A = 16'h2aa1;
	B = 16'h365d;
	ans = 16'h2546;
	#20
	A = 16'h3889;
	B = 16'h3aa3;
	ans = 16'h3786;
	#20
	A = 16'h3bd8;
	B = 16'hb8db;
	ans = 16'hb8c3;
	#20
	A = 16'hb17e;
	B = 16'hba9b;
	ans = 16'h3089;
	#20
	A = 16'h3a30;
	B = 16'hb5c3;
	ans = 16'hb475;
	#20
	A = 16'h3787;
	B = 16'h36b0;
	ans = 16'h324b;
	#20
	A = 16'h398c;
	B = 16'hb780;
	ans = 16'hb533;
	#20
	A = 16'h3237;
	B = 16'hb605;
	ans = 16'hacad;
	#20
	A = 16'h3a04;
	B = 16'h338a;
	ans = 16'h31ab;
	#20
	A = 16'hb099;
	B = 16'h354b;
	ans = 16'haa15;
	#20
	A = 16'h31d7;
	B = 16'hb8d2;
	ans = 16'haf0a;
	#20
	A = 16'hac14;
	B = 16'h39b7;
	ans = 16'ha9d4;
	#20
	A = 16'hb4fe;
	B = 16'ha9e6;
	ans = 16'h235d;
	#20
	A = 16'hb51d;
	B = 16'hbb8e;
	ans = 16'h34d4;
	#20
	A = 16'h3532;
	B = 16'h304a;
	ans = 16'h2992;
	#20
	A = 16'h3a0a;
	B = 16'h3286;
	ans = 16'h30ed;
	#20
	A = 16'h35a9;
	B = 16'h34d9;
	ans = 16'h2edc;
	#20
	A = 16'hb629;
	B = 16'h3911;
	ans = 16'hb3cd;
	#20
	A = 16'hb9b8;
	B = 16'h3046;
	ans = 16'hae1c;
	#20
	A = 16'h302e;
	B = 16'hb957;
	ans = 16'had94;
	#20
	A = 16'h30a0;
	B = 16'haf93;
	ans = 16'ha461;
	#20
	A = 16'hba14;
	B = 16'hb2ff;
	ans = 16'h3151;
	#20
	A = 16'h3877;
	B = 16'h20e8;
	ans = 16'h1d7a;
	#20
	A = 16'h3427;
	B = 16'h3928;
	ans = 16'h315a;
	#20
	A = 16'hb8b4;
	B = 16'h34e4;
	ans = 16'hb1c0;
	#20
	A = 16'h3818;
	B = 16'h3b13;
	ans = 16'h373d;
	#20
	A = 16'hb855;
	B = 16'haf43;
	ans = 16'h2bdd;
	#20
	A = 16'hb598;
	B = 16'hb6b6;
	ans = 16'h30b1;
	#20
	A = 16'hb294;
	B = 16'h3a22;
	ans = 16'hb10b;
	#20
	A = 16'h3a40;
	B = 16'h27e4;
	ans = 16'h262a;
	#20
	A = 16'h2a0f;
	B = 16'hb5ee;
	ans = 16'ha47e;
	#20
	A = 16'hb5c9;
	B = 16'h3893;
	ans = 16'hb29e;
	#20
	A = 16'hb89e;
	B = 16'h3b68;
	ans = 16'hb846;
	#20
	A = 16'h3a15;
	B = 16'h35da;
	ans = 16'h3473;
	#20
	A = 16'h36ff;
	B = 16'h2fa3;
	ans = 16'h2aae;
	#20
	A = 16'hb5d1;
	B = 16'hbba1;
	ans = 16'h358c;
	#20
	A = 16'hb8b3;
	B = 16'hb9b6;
	ans = 16'h36b6;
	#20
	A = 16'hbab3;
	B = 16'hb732;
	ans = 16'h3606;
	#20
	A = 16'h3363;
	B = 16'hab74;
	ans = 16'ha2e2;
	#20
	A = 16'hb834;
	B = 16'haf28;
	ans = 16'h2b85;
	#20
	A = 16'haf68;
	B = 16'h37a2;
	ans = 16'hab11;
	#20
	A = 16'hb074;
	B = 16'h38b1;
	ans = 16'had39;
	#20
	A = 16'h374f;
	B = 16'hba22;
	ans = 16'hb59a;
	#20
	A = 16'h3860;
	B = 16'h38ae;
	ans = 16'h351e;
	#20
	A = 16'hbbcf;
	B = 16'h2f6b;
	ans = 16'haf3e;
	#20
	A = 16'hb656;
	B = 16'hb19d;
	ans = 16'h2c72;
	#20
	A = 16'hb5e2;
	B = 16'hb2f3;
	ans = 16'h2d1c;
	#20
	A = 16'h3a5b;
	B = 16'h38df;
	ans = 16'h37bd;
	#20
	A = 16'h3610;
	B = 16'h3b70;
	ans = 16'h35a3;
	#20
	A = 16'hb374;
	B = 16'hba62;
	ans = 16'h31f2;
	#20
	A = 16'h3ac1;
	B = 16'hb8e1;
	ans = 16'hb81e;
	#20
	A = 16'h3846;
	B = 16'hb64c;
	ans = 16'hb2ba;
	#20
	A = 16'hbaff;
	B = 16'h3974;
	ans = 16'hb8c5;
	#20
	A = 16'hb1ca;
	B = 16'hb3a1;
	ans = 16'h2985;
	#20
	A = 16'hb8a1;
	B = 16'h2414;
	ans = 16'ha0b8;
	#20
	A = 16'h390c;
	B = 16'haf76;
	ans = 16'hacb5;
	#20
	A = 16'hb8d3;
	B = 16'h2b56;
	ans = 16'ha86c;
	#20
	A = 16'h36f1;
	B = 16'h2a1d;
	ans = 16'h254e;
	#20
	A = 16'h3836;
	B = 16'hb380;
	ans = 16'hafe5;
	#20
	A = 16'h309c;
	B = 16'hb811;
	ans = 16'hacb0;
	#20
	A = 16'hb80e;
	B = 16'hbb5c;
	ans = 16'h3776;
	#20
	A = 16'h2ce3;
	B = 16'hb463;
	ans = 16'ha55c;
	#20
	A = 16'h3a2d;
	B = 16'hb910;
	ans = 16'hb7d1;
	#20
	A = 16'h346e;
	B = 16'hbac7;
	ans = 16'hb381;
	#20
	A = 16'h35b9;
	B = 16'hba7d;
	ans = 16'hb4a4;
	#20
	A = 16'hb910;
	B = 16'h3954;
	ans = 16'hb6be;
	#20
	A = 16'h2784;
	B = 16'ha8ee;
	ans = 16'h94a2;
	#20
	A = 16'h3860;
	B = 16'h2636;
	ans = 16'h22cb;
	#20
	A = 16'hb9fa;
	B = 16'hb48e;
	ans = 16'h32ce;
	#20
	A = 16'h3aff;
	B = 16'hba65;
	ans = 16'hb998;
	#20
	A = 16'h3a12;
	B = 16'h3b95;
	ans = 16'h39c1;
	#20
	A = 16'hba85;
	B = 16'hb90e;
	ans = 16'h381f;
	#20
	A = 16'had3a;
	B = 16'hbb75;
	ans = 16'h2cdf;
	#20
	A = 16'hb7b4;
	B = 16'hb9cf;
	ans = 16'h3598;
	#20
	A = 16'hb446;
	B = 16'h36e8;
	ans = 16'haf61;
	#20
	A = 16'hb421;
	B = 16'hb416;
	ans = 16'h2c38;
	#20
	A = 16'h3983;
	B = 16'h3b55;
	ans = 16'h390d;
	#20
	A = 16'h3804;
	B = 16'h38b4;
	ans = 16'h34b9;
	#20
	A = 16'hb8da;
	B = 16'h3586;
	ans = 16'hb2b3;
	#20
	A = 16'hb9e0;
	B = 16'h37e1;
	ans = 16'hb5c9;
	#20
	A = 16'h3395;
	B = 16'hb4aa;
	ans = 16'hac6c;
	#20
	A = 16'hbafe;
	B = 16'ha98c;
	ans = 16'h28d9;
	#20
	A = 16'hb623;
	B = 16'hb815;
	ans = 16'h3243;
	#20
	A = 16'h34d2;
	B = 16'h3a76;
	ans = 16'h33c9;
	#20
	A = 16'h2dd1;
	B = 16'h3827;
	ans = 16'h2a0a;
	#20
	A = 16'h366e;
	B = 16'h3b2a;
	ans = 16'h35c2;
	#20
	A = 16'h3828;
	B = 16'h3afa;
	ans = 16'h3740;
	#20
	A = 16'ha8cc;
	B = 16'hbaea;
	ans = 16'h2825;
	#20
	A = 16'h393f;
	B = 16'h3626;
	ans = 16'h3408;
	#20
	A = 16'hb792;
	B = 16'hbb1f;
	ans = 16'h36bd;
	#20
	A = 16'h262d;
	B = 16'h395e;
	ans = 16'h2425;
	#20
	A = 16'hb432;
	B = 16'hb98a;
	ans = 16'h31cf;
	#20
	A = 16'h34bf;
	B = 16'hba43;
	ans = 16'hb36e;
	#20
	A = 16'hba54;
	B = 16'hb3fa;
	ans = 16'h324f;
	#20
	A = 16'h3b6e;
	B = 16'h3871;
	ans = 16'h3820;
	#20
	A = 16'h3743;
	B = 16'hb8a1;
	ans = 16'hb434;
	#20
	A = 16'hba6e;
	B = 16'h3b4b;
	ans = 16'hb9dd;
	#20
	A = 16'hb744;
	B = 16'hb6de;
	ans = 16'h323d;
	#20
	A = 16'hb2d8;
	B = 16'h3904;
	ans = 16'hb04a;
	#20
	A = 16'haf90;
	B = 16'h37ae;
	ans = 16'hab42;
	#20
	A = 16'hb90e;
	B = 16'hb398;
	ans = 16'h30cc;
	#20
	A = 16'h36cc;
	B = 16'hacaf;
	ans = 16'ha7f5;
	#20
	A = 16'h3bd9;
	B = 16'hade0;
	ans = 16'hadc3;
	#20
	A = 16'h37ca;
	B = 16'h2690;
	ans = 16'h2264;
	#20
	A = 16'hb489;
	B = 16'h3bbc;
	ans = 16'hb462;
	#20
	A = 16'hb849;
	B = 16'hbbd3;
	ans = 16'h3831;
	#20
	A = 16'hb68d;
	B = 16'hb470;
	ans = 16'h2f44;
	#20
	A = 16'h3a1b;
	B = 16'hbb3b;
	ans = 16'hb985;
	#20
	A = 16'h2a3d;
	B = 16'hb8f3;
	ans = 16'ha7b8;
	#20
	A = 16'hb842;
	B = 16'ha6dd;
	ans = 16'h234e;
	#20
	A = 16'hb739;
	B = 16'hb514;
	ans = 16'h3096;
	#20
	A = 16'h39e2;
	B = 16'h3816;
	ans = 16'h3602;
	#20
	A = 16'haf23;
	B = 16'hb25e;
	ans = 16'h25ae;
	#20
	A = 16'hb572;
	B = 16'h3681;
	ans = 16'hb06d;
	#20
	A = 16'hadfc;
	B = 16'h3a9a;
	ans = 16'hacf0;
	#20
	A = 16'h322c;
	B = 16'h3aa8;
	ans = 16'h3123;
	#20
	A = 16'hb75f;
	B = 16'h3915;
	ans = 16'hb4af;
	#20
	A = 16'haeeb;
	B = 16'h3bc7;
	ans = 16'haeba;
	#20
	A = 16'hb56d;
	B = 16'hbbf3;
	ans = 16'h3564;
	#20
	A = 16'habaa;
	B = 16'h3160;
	ans = 16'ha126;
	#20
	A = 16'h340d;
	B = 16'h31e4;
	ans = 16'h29f7;
	#20
	A = 16'h35f1;
	B = 16'hbbf4;
	ans = 16'hb5e8;
	#20
	A = 16'hb9b9;
	B = 16'ha975;
	ans = 16'h27cf;
	#20
	A = 16'hba74;
	B = 16'hbaa2;
	ans = 16'h395a;
	#20
	A = 16'h3033;
	B = 16'h3943;
	ans = 16'h2d86;
	#20
	A = 16'h31a7;
	B = 16'hb523;
	ans = 16'hab42;
	#20
	A = 16'h3aac;
	B = 16'h3ac9;
	ans = 16'h39a9;
	#20
	A = 16'ha8fe;
	B = 16'hbb3a;
	ans = 16'h2882;
	#20
	A = 16'h380c;
	B = 16'hbbcc;
	ans = 16'hb7e3;
	#20
	A = 16'h34f1;
	B = 16'haf8a;
	ans = 16'ha8a8;
	#20
	A = 16'h3825;
	B = 16'had8f;
	ans = 16'ha9c2;
	#20
	A = 16'h33fc;
	B = 16'h32de;
	ans = 16'h2adb;
	#20
	A = 16'hb9bc;
	B = 16'h3a7c;
	ans = 16'hb8a6;
	#20
	A = 16'h3830;
	B = 16'h3b51;
	ans = 16'h37a9;
	#20
	A = 16'hb776;
	B = 16'h3b4e;
	ans = 16'hb6d0;
	#20
	A = 16'h38f3;
	B = 16'hb8e6;
	ans = 16'hb610;
	#20
	A = 16'h33ea;
	B = 16'h35e3;
	ans = 16'h2dd3;
	#20
	A = 16'haf86;
	B = 16'hb36c;
	ans = 16'h26fb;
	#20
	A = 16'hb0e7;
	B = 16'hb83f;
	ans = 16'h2d34;
	#20
	A = 16'h2e78;
	B = 16'h2893;
	ans = 16'h1b66;
	#20
	A = 16'hb0a3;
	B = 16'hb9dc;
	ans = 16'h2ecb;
	#20
	A = 16'h377e;
	B = 16'h388b;
	ans = 16'h3441;
	#20
	A = 16'hb89e;
	B = 16'hb2b4;
	ans = 16'h2fbd;
	#20
	A = 16'hb7c4;
	B = 16'hb8cc;
	ans = 16'h34a8;
	#20
	A = 16'h37d9;
	B = 16'hb8e2;
	ans = 16'hb4ca;
	#20
	A = 16'h32a2;
	B = 16'hb976;
	ans = 16'hb087;
	#20
	A = 16'h3406;
	B = 16'hb763;
	ans = 16'haf6e;
	#20
	A = 16'hb18e;
	B = 16'h334e;
	ans = 16'ha912;
	#20
	A = 16'hac7f;
	B = 16'h2d9a;
	ans = 16'h9e4c;
	#20
	A = 16'hb9b3;
	B = 16'h2583;
	ans = 16'ha3da;
	#20
	A = 16'h2e8a;
	B = 16'h3b6e;
	ans = 16'h2e13;
	#20
	A = 16'h2e00;
	B = 16'h3bb0;
	ans = 16'h2dc4;
	#20
	A = 16'ha9f0;
	B = 16'h3928;
	ans = 16'ha7a7;
	#20
	A = 16'hb4ff;
	B = 16'h349b;
	ans = 16'hadc1;
	#20
	A = 16'h2309;
	B = 16'hbb64;
	ans = 16'ha280;
	#20
	A = 16'hba38;
	B = 16'h3952;
	ans = 16'hb823;
	#20
	A = 16'hb9d6;
	B = 16'hb9f3;
	ans = 16'h3857;
	#20
	A = 16'h376e;
	B = 16'hb6a7;
	ans = 16'hb22e;
	#20
	A = 16'hb86b;
	B = 16'hba2e;
	ans = 16'h36d3;
	#20
	A = 16'ha718;
	B = 16'h3b5b;
	ans = 16'ha686;
	#20
	A = 16'hb8aa;
	B = 16'h3a02;
	ans = 16'hb701;
	#20
	A = 16'hba44;
	B = 16'hadab;
	ans = 16'h2c70;
	#20
	A = 16'h3888;
	B = 16'h2dd0;
	ans = 16'h2a96;
	#20
	A = 16'h36b3;
	B = 16'hb819;
	ans = 16'hb2dd;
	#20
	A = 16'h2a8f;
	B = 16'hb9b5;
	ans = 16'ha8ae;
	#20
	A = 16'h2fd3;
	B = 16'h330f;
	ans = 16'h26e7;
	#20
	A = 16'hb1f5;
	B = 16'h34ab;
	ans = 16'haaf4;
	#20
	A = 16'h3b46;
	B = 16'hb955;
	ans = 16'hb8d9;
	#20
	A = 16'hb728;
	B = 16'h39d8;
	ans = 16'hb53a;
	#20
	A = 16'hb7bf;
	B = 16'hb60a;
	ans = 16'h31d9;
	#20
	A = 16'had42;
	B = 16'hb94a;
	ans = 16'h2af4;
	#20
	A = 16'h34ba;
	B = 16'hb96d;
	ans = 16'hb269;
	#20
	A = 16'hb6f4;
	B = 16'h39ef;
	ans = 16'hb528;
	#20
	A = 16'hba29;
	B = 16'hb52e;
	ans = 16'h33fa;
	#20
	A = 16'h389c;
	B = 16'h3503;
	ans = 16'h31c6;
	#20
	A = 16'had84;
	B = 16'h384e;
	ans = 16'ha9f0;
	#20
	A = 16'hbab5;
	B = 16'hb98e;
	ans = 16'h38a8;
	#20
	A = 16'hb1f6;
	B = 16'hb49c;
	ans = 16'h2ade;
	#20
	A = 16'h385f;
	B = 16'hb70e;
	ans = 16'hb3b6;
	#20
	A = 16'hb8ae;
	B = 16'h39f8;
	ans = 16'hb6fc;
	#20
	A = 16'hb4ce;
	B = 16'h3588;
	ans = 16'haea5;
	#20
	A = 16'hb7f8;
	B = 16'hbb36;
	ans = 16'h372f;
	#20
	A = 16'hbb0a;
	B = 16'h3b69;
	ans = 16'hba85;
	#20
	A = 16'h380b;
	B = 16'h2d1b;
	ans = 16'h2929;
	#20
	A = 16'h3976;
	B = 16'hb185;
	ans = 16'haf89;
	#20
	A = 16'ha67d;
	B = 16'h343e;
	ans = 16'h9ee2;
	#20
	A = 16'h3867;
	B = 16'h39c5;
	ans = 16'h365a;
	#20
	A = 16'h39e2;
	B = 16'h332b;
	ans = 16'h3145;
	#20
	A = 16'h37ba;
	B = 16'hb60f;
	ans = 16'hb1da;
	#20
	A = 16'h294e;
	B = 16'h3599;
	ans = 16'h236c;
	#20
	A = 16'hb8bb;
	B = 16'hbb15;
	ans = 16'h3830;
	#20
	A = 16'h3a4f;
	B = 16'hb7c2;
	ans = 16'hb61e;
	#20
	A = 16'h3a81;
	B = 16'h3b74;
	ans = 16'h3a0f;
	#20
	A = 16'hba1f;
	B = 16'h38a0;
	ans = 16'hb714;
	#20
	A = 16'h3a0f;
	B = 16'hb893;
	ans = 16'hb6ee;
	#20
	A = 16'h2a1c;
	B = 16'hba73;
	ans = 16'ha8ed;
	#20
	A = 16'h3af8;
	B = 16'h3908;
	ans = 16'h3862;
	#20
	A = 16'ha85f;
	B = 16'hb2d3;
	ans = 16'h1f75;
	#20
	A = 16'h2482;
	B = 16'hbac7;
	ans = 16'ha3a3;
	#20
	A = 16'h3950;
	B = 16'hb444;
	ans = 16'hb1aa;
	#20
	A = 16'h3a56;
	B = 16'hb951;
	ans = 16'hb836;
	#20
	A = 16'hacf4;
	B = 16'h3704;
	ans = 16'ha858;
	#20
	A = 16'h3a19;
	B = 16'hb898;
	ans = 16'hb701;
	#20
	A = 16'h3600;
	B = 16'ha9ce;
	ans = 16'ha45a;
	#20
	A = 16'ha8cb;
	B = 16'h38a3;
	ans = 16'ha58e;
	#20
	A = 16'h386b;
	B = 16'hb9ba;
	ans = 16'hb653;
	#20
	A = 16'h3256;
	B = 16'h3288;
	ans = 16'h292c;
	#20
	A = 16'h37bc;
	B = 16'hb1d7;
	ans = 16'hada5;
	#20
	A = 16'h35f2;
	B = 16'h35c9;
	ans = 16'h304d;
	#20
	A = 16'h363b;
	B = 16'h3ae8;
	ans = 16'h3561;
	#20
	A = 16'h3a82;
	B = 16'h35f3;
	ans = 16'h34d7;
	#20
	A = 16'h310f;
	B = 16'hba54;
	ans = 16'hb000;
	#20
	A = 16'hb33a;
	B = 16'h36b7;
	ans = 16'hae11;
	#20
	A = 16'h351c;
	B = 16'haebc;
	ans = 16'ha84d;
	#20
	A = 16'hba51;
	B = 16'hb7a7;
	ans = 16'h360b;
	#20
	A = 16'h378b;
	B = 16'haa01;
	ans = 16'ha5a9;
	#20
	A = 16'h3944;
	B = 16'h1d47;
	ans = 16'h1af2;
	#20
	A = 16'hae45;
	B = 16'hb9d6;
	ans = 16'h2c93;
	#20
	A = 16'h383d;
	B = 16'h8eae;
	ans = 16'h8b14;
	#20
	A = 16'hb70b;
	B = 16'h3ac5;
	ans = 16'hb5f6;
	#20
	A = 16'hb864;
	B = 16'hba38;
	ans = 16'h36d3;
	#20
	A = 16'hba62;
	B = 16'hb9f3;
	ans = 16'h38bf;
	#20
	A = 16'hafab;
	B = 16'hae4a;
	ans = 16'h2207;
	#20
	A = 16'hb885;
	B = 16'hb9e1;
	ans = 16'h36a4;
	#20
	A = 16'h328b;
	B = 16'h38c8;
	ans = 16'h2fd2;
	#20
	A = 16'h2cf0;
	B = 16'h38d1;
	ans = 16'h29f2;
	#20
	A = 16'hbbd2;
	B = 16'hb936;
	ans = 16'h3918;
	#20
	A = 16'h348c;
	B = 16'hb474;
	ans = 16'had10;
	#20
	A = 16'hbaa0;
	B = 16'h3622;
	ans = 16'hb514;
	#20
	A = 16'h3b94;
	B = 16'h306d;
	ans = 16'h3031;
	#20
	A = 16'hb9c0;
	B = 16'h3084;
	ans = 16'hae7e;
	#20
	A = 16'h3a8f;
	B = 16'hb8cf;
	ans = 16'hb7e2;
	#20
	A = 16'h2865;
	B = 16'h3213;
	ans = 16'h1eac;
	#20
	A = 16'hb998;
	B = 16'h3606;
	ans = 16'hb436;
	#20
	A = 16'h2abb;
	B = 16'hb8e0;
	ans = 16'ha81a;
	#20
	A = 16'hafec;
	B = 16'hb95e;
	ans = 16'h2d51;
	#20
	A = 16'hbb76;
	B = 16'h38e9;
	ans = 16'hb894;
	#20
	A = 16'h3537;
	B = 16'h2f4b;
	ans = 16'h28c1;
	#20
	A = 16'h3a88;
	B = 16'h3b18;
	ans = 16'h39cb;
	#20
	A = 16'hbba2;
	B = 16'h3640;
	ans = 16'hb5f7;
	#20
	A = 16'hb572;
	B = 16'h35af;
	ans = 16'hafbd;
	#20
	A = 16'hb8af;
	B = 16'hb151;
	ans = 16'h2e3a;
	#20
	A = 16'hbb46;
	B = 16'h36e0;
	ans = 16'hb640;
	#20
	A = 16'hb3be;
	B = 16'h38f5;
	ans = 16'hb0cc;
	#20
	A = 16'hb563;
	B = 16'hb6dc;
	ans = 16'h309e;
	#20
	A = 16'h39f9;
	B = 16'h39cb;
	ans = 16'h3853;
	#20
	A = 16'h383d;
	B = 16'h3690;
	ans = 16'h32f4;
	#20
	A = 16'h3610;
	B = 16'h34ee;
	ans = 16'h2f79;
	#20
	A = 16'hb856;
	B = 16'h3238;
	ans = 16'haebe;
	#20
	A = 16'h3b2a;
	B = 16'hba1e;
	ans = 16'hb97a;
	#20
	A = 16'hb1cf;
	B = 16'h33dd;
	ans = 16'ha9b6;
	#20
	A = 16'h3b61;
	B = 16'hb7d1;
	ans = 16'hb736;
	#20
	A = 16'h3bff;
	B = 16'hb68f;
	ans = 16'hb68e;
	#20
	A = 16'h2a16;
	B = 16'h2527;
	ans = 16'h13d7;
	#20
	A = 16'h3a56;
	B = 16'h2f0b;
	ans = 16'h2d94;
	#20
	A = 16'h3452;
	B = 16'h34f6;
	ans = 16'h2d5c;
	#20
	A = 16'h345a;
	B = 16'hb247;
	ans = 16'haad4;
	#20
	A = 16'h3667;
	B = 16'h3822;
	ans = 16'h329d;
	#20
	A = 16'hbad2;
	B = 16'h3394;
	ans = 16'hb276;
	#20
	A = 16'h3241;
	B = 16'h34f6;
	ans = 16'h2bc2;
	#20
	A = 16'h35bc;
	B = 16'h36ec;
	ans = 16'h30f6;
	#20
	A = 16'hb12e;
	B = 16'h2da6;
	ans = 16'ha350;
	#20
	A = 16'hb808;
	B = 16'h3868;
	ans = 16'hb471;
	#20
	A = 16'h3a76;
	B = 16'h31ab;
	ans = 16'h3094;
	#20
	A = 16'hb2ad;
	B = 16'h3214;
	ans = 16'ha912;
	#20
	A = 16'h33e4;
	B = 16'hac25;
	ans = 16'ha416;
	#20
	A = 16'h308b;
	B = 16'h3af7;
	ans = 16'h2fe9;
	#20
	A = 16'h38b7;
	B = 16'hb2e9;
	ans = 16'hb013;
	#20
	A = 16'hb973;
	B = 16'h3309;
	ans = 16'hb0cb;
	#20
	A = 16'h39a9;
	B = 16'h3bbb;
	ans = 16'h3978;
	#20
	A = 16'h3954;
	B = 16'h3b73;
	ans = 16'h38f6;
	#20
	A = 16'hb54b;
	B = 16'hb729;
	ans = 16'h30bd;
	#20
	A = 16'hba32;
	B = 16'h38f2;
	ans = 16'hb7a9;
	#20
	A = 16'h3731;
	B = 16'hb070;
	ans = 16'habfa;
	#20
	A = 16'h3a4f;
	B = 16'h3b54;
	ans = 16'h39c7;
	#20
	A = 16'h3981;
	B = 16'h3444;
	ans = 16'h31df;
	#20
	A = 16'hb92f;
	B = 16'hb14b;
	ans = 16'h2edc;
	#20
	A = 16'h39c3;
	B = 16'h3573;
	ans = 16'h33d9;
	#20
	A = 16'h32ad;
	B = 16'hb76c;
	ans = 16'hae31;
	#20
	A = 16'h358c;
	B = 16'hbbe5;
	ans = 16'hb579;
	#20
	A = 16'h3aac;
	B = 16'hb028;
	ans = 16'haeef;
	#20
	A = 16'hb989;
	B = 16'hb638;
	ans = 16'h344d;
	#20
	A = 16'hae03;
	B = 16'hbaa6;
	ans = 16'h2cff;
	#20
	A = 16'h3194;
	B = 16'hb91a;
	ans = 16'haf1d;
	#20
	A = 16'h3822;
	B = 16'h39bb;
	ans = 16'h35ec;
	#20
	A = 16'h395c;
	B = 16'hb5ee;
	ans = 16'hb3f2;
	#20
	A = 16'h391f;
	B = 16'h36c9;
	ans = 16'h3458;
	#20
	A = 16'hb673;
	B = 16'hb344;
	ans = 16'h2ddb;
	#20
	A = 16'hb5b5;
	B = 16'h37f6;
	ans = 16'hb1ae;
	#20
	A = 16'ha46f;
	B = 16'h3439;
	ans = 16'h9cae;
	#20
	A = 16'hb95b;
	B = 16'h3b15;
	ans = 16'hb8be;
	#20
	A = 16'h3ad7;
	B = 16'h3b56;
	ans = 16'h3a46;
	#20
	A = 16'h299e;
	B = 16'hb857;
	ans = 16'ha618;
	#20
	A = 16'hb879;
	B = 16'h349d;
	ans = 16'hb129;
	#20
	A = 16'hb7da;
	B = 16'h3802;
	ans = 16'hb3de;
	#20
	A = 16'h3479;
	B = 16'hb547;
	ans = 16'hade7;
	#20
	A = 16'h37c8;
	B = 16'h28c8;
	ans = 16'h24a7;
	#20
	A = 16'hb54b;
	B = 16'h3450;
	ans = 16'hadb5;
	#20
	A = 16'h2e65;
	B = 16'h34c8;
	ans = 16'h27a5;
	#20
	A = 16'hbad3;
	B = 16'h32ac;
	ans = 16'hb1b1;
	#20
	A = 16'hb9ca;
	B = 16'h308b;
	ans = 16'hae93;
	#20
	A = 16'hbb8e;
	B = 16'h3b92;
	ans = 16'hbb26;
	#20
	A = 16'hb969;
	B = 16'h35a0;
	ans = 16'hb39c;
	#20
	A = 16'h38e1;
	B = 16'h39cc;
	ans = 16'h3712;
	#20
	A = 16'h26ab;
	B = 16'h33d6;
	ans = 16'h1e88;
	#20
	A = 16'h28a1;
	B = 16'h2e9a;
	ans = 16'h1ba4;
	#20
	A = 16'h38d7;
	B = 16'haa5a;
	ans = 16'ha7af;
	#20
	A = 16'h3bd3;
	B = 16'h34cc;
	ans = 16'h34b1;
	#20
	A = 16'hbb09;
	B = 16'h3b8d;
	ans = 16'hbaa4;
	#20
	A = 16'hbb80;
	B = 16'ha090;
	ans = 16'h2047;
	#20
	A = 16'h36df;
	B = 16'hb0e6;
	ans = 16'hac35;
	#20
	A = 16'hb22d;
	B = 16'h38a7;
	ans = 16'haf2f;
	#20
	A = 16'h892a;
	B = 16'hb835;
	ans = 16'h56e;
	#20
	A = 16'h3b7a;
	B = 16'hb463;
	ans = 16'hb41a;
	#20
	A = 16'h3786;
	B = 16'h30b3;
	ans = 16'h2c6b;
	#20
	A = 16'hb7c0;
	B = 16'h3a37;
	ans = 16'hb605;
	#20
	A = 16'h37ad;
	B = 16'hb69a;
	ans = 16'hb256;
	#20
	A = 16'hb8e9;
	B = 16'hb546;
	ans = 16'h3279;
	#20
	A = 16'h3af5;
	B = 16'h3b1f;
	ans = 16'h3a31;
	#20
	A = 16'h213f;
	B = 16'h36f2;
	ans = 16'h1c8e;
	#20
	A = 16'h3790;
	B = 16'h3bf1;
	ans = 16'h3782;
	#20
	A = 16'h34c9;
	B = 16'hb91f;
	ans = 16'hb220;
	#20
	A = 16'hb975;
	B = 16'h1f68;
	ans = 16'h9d0d;
	#20
	A = 16'hae9d;
	B = 16'h38c7;
	ans = 16'habe6;
	#20
	A = 16'haec4;
	B = 16'hb9fc;
	ans = 16'h2d10;
	#20
	A = 16'h3400;
	B = 16'h398f;
	ans = 16'h318f;
	#20
	A = 16'h34ca;
	B = 16'hbbbb;
	ans = 16'hb4a1;
	#20
	A = 16'hbb7e;
	B = 16'hb50b;
	ans = 16'h34b9;
	#20
	A = 16'h337a;
	B = 16'h3534;
	ans = 16'h2cdd;
	#20
	A = 16'hb33c;
	B = 16'h3b86;
	ans = 16'hb2ce;
	#20
	A = 16'hbbbd;
	B = 16'hb4c7;
	ans = 16'h349f;
	#20
	A = 16'h3bca;
	B = 16'hb512;
	ans = 16'hb4f0;
	#20
	A = 16'h3817;
	B = 16'hb9a7;
	ans = 16'hb5c8;
	#20
	A = 16'h340b;
	B = 16'hbbf5;
	ans = 16'hb405;
	#20
	A = 16'h3a98;
	B = 16'ha651;
	ans = 16'ha535;
	#20
	A = 16'hafac;
	B = 16'h3a2e;
	ans = 16'haded;
	#20
	A = 16'h3a1f;
	B = 16'h3bc9;
	ans = 16'h39f5;
	#20
	A = 16'haa9e;
	B = 16'h39b3;
	ans = 16'ha8b7;
	#20
	A = 16'h2db3;
	B = 16'hbb02;
	ans = 16'hacfe;
	#20
	A = 16'h3be0;
	B = 16'hb5d4;
	ans = 16'hb5bd;
	#20
	A = 16'h3bf2;
	B = 16'hbbf2;
	ans = 16'hbbe4;
	#20
	A = 16'hb85b;
	B = 16'h39b5;
	ans = 16'hb637;
	#20
	A = 16'h2bc4;
	B = 16'had89;
	ans = 16'h9d5f;
	#20
	A = 16'hb586;
	B = 16'hba64;
	ans = 16'h346a;
	#20
	A = 16'h31da;
	B = 16'h3b62;
	ans = 16'h3166;
	#20
	A = 16'hbaba;
	B = 16'hbb1a;
	ans = 16'h39f9;
	#20
	A = 16'ha8fc;
	B = 16'h361e;
	ans = 16'ha39f;
	#20
	A = 16'h338c;
	B = 16'hb900;
	ans = 16'hb0b8;
	#20
	A = 16'hb37e;
	B = 16'h385b;
	ans = 16'hb014;
	#20
	A = 16'h31d7;
	B = 16'hbb73;
	ans = 16'hb170;
	#20
	A = 16'h3982;
	B = 16'h3550;
	ans = 16'h3351;
	#20
	A = 16'hbab1;
	B = 16'hbb5a;
	ans = 16'h3a26;
	#20
	A = 16'h3b02;
	B = 16'h2f85;
	ans = 16'h2e96;
	#20
	A = 16'hbb3c;
	B = 16'h2c5c;
	ans = 16'habe2;
	#20
	A = 16'h3573;
	B = 16'h321d;
	ans = 16'h2c2a;
	#20
	A = 16'h39d9;
	B = 16'h3a5a;
	ans = 16'h38a5;
	#20
	A = 16'hb8f1;
	B = 16'hb936;
	ans = 16'h3670;
	#20
	A = 16'h3198;
	B = 16'h296c;
	ans = 16'h1f95;
	#20
	A = 16'h3a4d;
	B = 16'hb67c;
	ans = 16'hb51b;
	#20
	A = 16'hb667;
	B = 16'h2572;
	ans = 16'ha05c;
	#20
	A = 16'hb701;
	B = 16'h3408;
	ans = 16'haf0f;
	#20
	A = 16'h3611;
	B = 16'h399a;
	ans = 16'h343f;
	#20
	A = 16'hb9b8;
	B = 16'hafdb;
	ans = 16'h2d9e;
	#20
	A = 16'hb53e;
	B = 16'h2e93;
	ans = 16'ha84f;
	#20
	A = 16'hbb42;
	B = 16'h38eb;
	ans = 16'hb876;
	#20
	A = 16'h31fa;
	B = 16'h297b;
	ans = 16'h2018;
	#20
	A = 16'h396e;
	B = 16'h30b7;
	ans = 16'h2e66;
	#20
	A = 16'h3a47;
	B = 16'h391f;
	ans = 16'h3805;
	#20
	A = 16'h9d49;
	B = 16'h35cd;
	ans = 16'h97aa;
	#20
	A = 16'hb966;
	B = 16'hb496;
	ans = 16'h3230;
	#20
	A = 16'h3b95;
	B = 16'hb085;
	ans = 16'hb049;
	#20
	A = 16'h3110;
	B = 16'h3512;
	ans = 16'h2a6b;
	#20
	A = 16'hba1c;
	B = 16'h35e6;
	ans = 16'hb481;
	#20
	A = 16'h39fe;
	B = 16'had53;
	ans = 16'habfa;
	#20
	A = 16'hb83a;
	B = 16'h37e2;
	ans = 16'hb42a;
	#20
	A = 16'hb715;
	B = 16'h332b;
	ans = 16'hae58;
	#20
	A = 16'hb56b;
	B = 16'hbbac;
	ans = 16'h3532;
	#20
	A = 16'h314c;
	B = 16'hb4d9;
	ans = 16'haa6b;
	#20
	A = 16'h3a14;
	B = 16'h38e7;
	ans = 16'h3773;
	#20
	A = 16'h3883;
	B = 16'h3b16;
	ans = 16'h37fe;
	#20
	A = 16'h39b6;
	B = 16'hb2b1;
	ans = 16'hb0c7;
	#20
	A = 16'h3a28;
	B = 16'hb7b2;
	ans = 16'hb5ec;
	#20
	A = 16'h3bb3;
	B = 16'hba0a;
	ans = 16'hb9d0;
	#20
	A = 16'h3862;
	B = 16'hb6ec;
	ans = 16'hb396;
	#20
	A = 16'h3ad6;
	B = 16'hb88e;
	ans = 16'hb7c9;
	#20
	A = 16'hb4aa;
	B = 16'h3805;
	ans = 16'hb0b0;
	#20
	A = 16'h3886;
	B = 16'h3849;
	ans = 16'h34d9;
	#20
	A = 16'haf35;
	B = 16'h36bb;
	ans = 16'haa10;
	#20
	A = 16'h38b3;
	B = 16'hba98;
	ans = 16'hb7bf;
	#20
	A = 16'h368c;
	B = 16'h35ca;
	ans = 16'h30bd;
	#20
	A = 16'h2ec5;
	B = 16'h3a37;
	ans = 16'h2d42;
	#20
	A = 16'h316d;
	B = 16'haf5b;
	ans = 16'ha4fd;
	#20
	A = 16'h39d7;
	B = 16'hb863;
	ans = 16'hb668;
	#20
	A = 16'h3549;
	B = 16'hb439;
	ans = 16'had94;
	#20
	A = 16'h3543;
	B = 16'hbb0e;
	ans = 16'hb4a4;
	#20
	A = 16'hbbd0;
	B = 16'h36f3;
	ans = 16'hb6c9;
	#20
	A = 16'h3687;
	B = 16'h3660;
	ans = 16'h3134;
	#20
	A = 16'h2ba7;
	B = 16'h3903;
	ans = 16'h28cb;
	#20
	A = 16'h3a16;
	B = 16'hba20;
	ans = 16'hb8a9;
	#20
	A = 16'hb592;
	B = 16'hba3c;
	ans = 16'h3457;
	#20
	A = 16'h2da4;
	B = 16'hb8ea;
	ans = 16'haaee;
	#20
	A = 16'hba51;
	B = 16'h3b85;
	ans = 16'hb9f0;
	#20
	A = 16'h3a8c;
	B = 16'h3a3d;
	ans = 16'h391b;
	#20
	A = 16'hb544;
	B = 16'hb943;
	ans = 16'h32ed;
	#20
	A = 16'hbb6a;
	B = 16'h31bc;
	ans = 16'hb150;
	#20
	A = 16'hade4;
	B = 16'ha65f;
	ans = 16'h18b1;
	#20
	A = 16'hba13;
	B = 16'h39ca;
	ans = 16'hb865;
	#20
	A = 16'h3893;
	B = 16'h3891;
	ans = 16'h3539;
	#20
	A = 16'hb931;
	B = 16'h398c;
	ans = 16'hb733;
	#20
	A = 16'hb904;
	B = 16'ha80e;
	ans = 16'h2516;
	#20
	A = 16'h3bfb;
	B = 16'hb78e;
	ans = 16'hb789;
	#20
	A = 16'h33e4;
	B = 16'hbb1f;
	ans = 16'hb306;
	#20
	A = 16'ha978;
	B = 16'h3b79;
	ans = 16'ha91c;
	#20
	A = 16'h3ab5;
	B = 16'hb6b1;
	ans = 16'hb59c;
	#20
	A = 16'h24aa;
	B = 16'h3a73;
	ans = 16'h2385;
	#20
	A = 16'hba1f;
	B = 16'ha405;
	ans = 16'h2227;
	#20
	A = 16'hb723;
	B = 16'hba7f;
	ans = 16'h35cc;
	#20
	A = 16'h3a7c;
	B = 16'h36db;
	ans = 16'h358f;
	#20
	A = 16'hb07a;
	B = 16'h380f;
	ans = 16'hac8b;
	#20
	A = 16'h3bff;
	B = 16'h31da;
	ans = 16'h31d9;
	#20
	A = 16'h35a4;
	B = 16'hbb45;
	ans = 16'hb520;
	#20
	A = 16'hbb40;
	B = 16'h3505;
	ans = 16'hb48d;
	#20
	A = 16'h3950;
	B = 16'hbb54;
	ans = 16'hb8de;
	#20
	A = 16'hb877;
	B = 16'hb831;
	ans = 16'h34ae;
	#20
	A = 16'ha284;
	B = 16'h30bc;
	ans = 16'h97b6;
	#20
	A = 16'hbba4;
	B = 16'hb90d;
	ans = 16'h38d3;
	#20
	A = 16'hb4ad;
	B = 16'h2b78;
	ans = 16'ha45e;
	#20
	A = 16'hb4d1;
	B = 16'h35ae;
	ans = 16'haed7;
	#20
	A = 16'h2c98;
	B = 16'hbbae;
	ans = 16'hac69;
	#20
	A = 16'h39a0;
	B = 16'h398c;
	ans = 16'h37cd;
	#20
	A = 16'hb845;
	B = 16'hab01;
	ans = 16'h277a;
	#20
	A = 16'hba85;
	B = 16'h2e83;
	ans = 16'had4f;
	#20
	A = 16'hb5a1;
	B = 16'hb89c;
	ans = 16'h327d;
	#20
	A = 16'h3819;
	B = 16'hb8f5;
	ans = 16'hb514;
	#20
	A = 16'hb98c;
	B = 16'hb7cf;
	ans = 16'h356a;
	#20
	A = 16'h3ab7;
	B = 16'h29ed;
	ans = 16'h28f9;
	#20
	A = 16'h3275;
	B = 16'hb6a5;
	ans = 16'had5d;
	#20
	A = 16'hb90f;
	B = 16'hb879;
	ans = 16'h35a8;
	#20
	A = 16'hb4e6;
	B = 16'h2bbf;
	ans = 16'ha4be;
	#20
	A = 16'hbb09;
	B = 16'hb40c;
	ans = 16'h331e;
	#20
	A = 16'hb384;
	B = 16'h392b;
	ans = 16'hb0db;
	#20
	A = 16'hb8a7;
	B = 16'h389d;
	ans = 16'hb55e;
	#20
	A = 16'h39ef;
	B = 16'hb73b;
	ans = 16'hb55d;
	#20
	A = 16'h3873;
	B = 16'hbb8a;
	ans = 16'hb831;
	#20
	A = 16'hb23f;
	B = 16'h351f;
	ans = 16'habff;
	#20
	A = 16'hbbde;
	B = 16'h3618;
	ans = 16'hb5fe;
	#20
	A = 16'hbb28;
	B = 16'haf44;
	ans = 16'h2e80;
	#20
	A = 16'h2c4b;
	B = 16'h346b;
	ans = 16'h24be;
	#20
	A = 16'h3be6;
	B = 16'h3bc3;
	ans = 16'h3baa;
	#20
	A = 16'h3ac2;
	B = 16'hb109;
	ans = 16'hb041;
	#20
	A = 16'h288a;
	B = 16'h3b05;
	ans = 16'h27f7;
	#20
	A = 16'h3495;
	B = 16'h3a5b;
	ans = 16'h3348;
	#20
	A = 16'h3695;
	B = 16'h38d0;
	ans = 16'h33eb;
	#20
	A = 16'h39e5;
	B = 16'h3abf;
	ans = 16'h38f8;
	#20
	A = 16'hb136;
	B = 16'h3565;
	ans = 16'hab07;
	#20
	A = 16'h2f98;
	B = 16'haa17;
	ans = 16'h9dc8;
	#20
	A = 16'hb5a8;
	B = 16'h2dc5;
	ans = 16'ha814;
	#20
	A = 16'h3b0a;
	B = 16'hb8b5;
	ans = 16'hb824;
	#20
	A = 16'h38ff;
	B = 16'h3a88;
	ans = 16'h3814;
	#20
	A = 16'h37ed;
	B = 16'hb852;
	ans = 16'hb448;
	#20
	A = 16'hbb62;
	B = 16'h373f;
	ans = 16'hb6b0;
	#20
	A = 16'hb706;
	B = 16'h37f4;
	ans = 16'hb2fb;
	#20
	A = 16'hb88d;
	B = 16'hb8a3;
	ans = 16'h3546;
	#20
	A = 16'hb4e8;
	B = 16'h9dcf;
	ans = 16'h1720;
	#20
	A = 16'hb048;
	B = 16'hbb15;
	ans = 16'h2f94;
	#20
	A = 16'h2c66;
	B = 16'hb7fb;
	ans = 16'ha863;
	#20
	A = 16'hbbf2;
	B = 16'hb0b1;
	ans = 16'h30a9;
	#20
	A = 16'h3ba5;
	B = 16'hba38;
	ans = 16'hb9f1;
	#20
	A = 16'h3bed;
	B = 16'hb903;
	ans = 16'hb8f7;
	#20
	A = 16'hb481;
	B = 16'hb84e;
	ans = 16'h30d9;
	#20
	A = 16'hb601;
	B = 16'hb74b;
	ans = 16'h3179;
	#20
	A = 16'h33d1;
	B = 16'h3ad5;
	ans = 16'h32ad;
	#20
	A = 16'h391e;
	B = 16'h3ab8;
	ans = 16'h384c;
	#20
	A = 16'h39ac;
	B = 16'h36f7;
	ans = 16'h34f0;
	#20
	A = 16'hb811;
	B = 16'hb709;
	ans = 16'h3327;
	#20
	A = 16'h39b8;
	B = 16'h369d;
	ans = 16'h34ba;
	#20
	A = 16'hbbdd;
	B = 16'hb702;
	ans = 16'h36e3;
	#20
	A = 16'h2e95;
	B = 16'hbb43;
	ans = 16'hadf9;
	#20
	A = 16'h3478;
	B = 16'hb3aa;
	ans = 16'hac48;
	#20
	A = 16'h33a4;
	B = 16'hb8de;
	ans = 16'hb0a6;
	#20
	A = 16'h375a;
	B = 16'hb418;
	ans = 16'haf86;
	#20
	A = 16'h272e;
	B = 16'hb253;
	ans = 16'h9dad;
	#20
	A = 16'h3a62;
	B = 16'hbbb9;
	ans = 16'hba29;
	#20
	A = 16'h3524;
	B = 16'ha5b2;
	ans = 16'h9f52;
	#20
	A = 16'hba75;
	B = 16'hb1c8;
	ans = 16'h30ab;
	#20
	A = 16'hb6b2;
	B = 16'hb440;
	ans = 16'h2f1d;
	#20
	A = 16'h38a6;
	B = 16'hbb99;
	ans = 16'hb86a;
	#20
	A = 16'hb762;
	B = 16'h3816;
	ans = 16'hb38b;
	#20
	A = 16'hbabe;
	B = 16'hb9f5;
	ans = 16'h3905;
	#20
	A = 16'h2fb1;
	B = 16'hba30;
	ans = 16'hadf3;
	#20
	A = 16'hb4c6;
	B = 16'hb519;
	ans = 16'h2e15;
	#20
	A = 16'hadbb;
	B = 16'hb51a;
	ans = 16'h274f;
	#20
	A = 16'hb8ac;
	B = 16'hb2cb;
	ans = 16'h2fef;
	#20
	A = 16'h397f;
	B = 16'h2944;
	ans = 16'h273c;
	#20
	A = 16'hb9f9;
	B = 16'hb946;
	ans = 16'h37e0;
	#20
	A = 16'hb589;
	B = 16'h2d2c;
	ans = 16'ha728;
	#20
	A = 16'hb939;
	B = 16'h3b7f;
	ans = 16'hb8e5;
	#20
	A = 16'h30d9;
	B = 16'hb6f1;
	ans = 16'hac35;
	#20
	A = 16'ha9f0;
	B = 16'hba9a;
	ans = 16'h28e6;
	#20
	A = 16'hba4a;
	B = 16'hb5d7;
	ans = 16'h3497;
	#20
	A = 16'h3bb9;
	B = 16'hb981;
	ans = 16'hb950;
	#20
	A = 16'ha7cd;
	B = 16'hb402;
	ans = 16'h1fd1;
	#20
	A = 16'h3918;
	B = 16'hb70c;
	ans = 16'hb47d;
	#20
	A = 16'h390d;
	B = 16'h3089;
	ans = 16'h2dba;
	#20
	A = 16'had65;
	B = 16'hbb8e;
	ans = 16'h2d18;
	#20
	A = 16'h3577;
	B = 16'h3444;
	ans = 16'h2dd4;
	#20
	A = 16'hbbbd;
	B = 16'h2e96;
	ans = 16'hae5f;
	#20
	A = 16'h3a21;
	B = 16'hbab8;
	ans = 16'hb926;
	#20
	A = 16'h2e0c;
	B = 16'hb3b9;
	ans = 16'ha5d6;
	#20
	A = 16'h2e3a;
	B = 16'h3653;
	ans = 16'h28ec;
	#20
	A = 16'h38ab;
	B = 16'hb5eb;
	ans = 16'hb2e8;
	#20
	A = 16'hb435;
	B = 16'hbaaa;
	ans = 16'h3302;
	#20
	A = 16'h39b4;
	B = 16'hb73f;
	ans = 16'hb52a;
	#20
	A = 16'h3a01;
	B = 16'hb42d;
	ans = 16'hb245;
	#20
	A = 16'hb85e;
	B = 16'hba2e;
	ans = 16'h36bf;
	#20
	A = 16'h33dc;
	B = 16'hb977;
	ans = 16'hb15e;
	#20
	A = 16'h381a;
	B = 16'h3add;
	ans = 16'h370a;
	#20
	A = 16'h3ba4;
	B = 16'h3970;
	ans = 16'h3931;
	#20
	A = 16'h359b;
	B = 16'hb73f;
	ans = 16'hb114;
	#20
	A = 16'hb9a8;
	B = 16'h390b;
	ans = 16'hb722;
	#20
	A = 16'h3a8d;
	B = 16'h322c;
	ans = 16'h310e;
	#20
	A = 16'hba28;
	B = 16'hbbe9;
	ans = 16'h3a16;
	#20
	A = 16'h3660;
	B = 16'hba70;
	ans = 16'hb521;
	#20
	A = 16'h307a;
	B = 16'h3658;
	ans = 16'h2b19;
	#20
	A = 16'h364a;
	B = 16'h3a5b;
	ans = 16'h34ff;
	#20
	A = 16'hb813;
	B = 16'hb821;
	ans = 16'h3435;
	#20
	A = 16'h36f0;
	B = 16'h39fb;
	ans = 16'h3530;
	#20
	A = 16'hb8d4;
	B = 16'h3623;
	ans = 16'hb368;
	#20
	A = 16'hb3a2;
	B = 16'h2a1b;
	ans = 16'ha1d3;
	#20
	A = 16'h38f5;
	B = 16'h3962;
	ans = 16'h36ac;
	#20
	A = 16'h2ec2;
	B = 16'h34d5;
	ans = 16'h2815;
	#20
	A = 16'h37b4;
	B = 16'hbaf9;
	ans = 16'hb6b7;
	#20
	A = 16'h314e;
	B = 16'h3a5c;
	ans = 16'h3038;
	#20
	A = 16'h3025;
	B = 16'hbab0;
	ans = 16'haeee;
	#20
	A = 16'h396c;
	B = 16'h33cc;
	ans = 16'h3149;
	#20
	A = 16'h36a6;
	B = 16'h3054;
	ans = 16'h2b32;
	#20
	A = 16'h362a;
	B = 16'hbaec;
	ans = 16'hb555;
	#20
	A = 16'h34f8;
	B = 16'h35a8;
	ans = 16'h2f07;
	#20
	A = 16'h38c8;
	B = 16'h34f1;
	ans = 16'h31e8;
	#20
	A = 16'h3137;
	B = 16'hb82a;
	ans = 16'had6e;
	#20
	A = 16'h352f;
	B = 16'h3ba6;
	ans = 16'h34f5;
	#20
	A = 16'hba48;
	B = 16'hbb55;
	ans = 16'h39c2;
	#20
	A = 16'hb59f;
	B = 16'h39b3;
	ans = 16'hb401;
	#20
	A = 16'h399a;
	B = 16'h1eb1;
	ans = 16'h1caf;
	#20
	A = 16'hb28f;
	B = 16'hb87e;
	ans = 16'h2f5e;
	#20
	A = 16'hbbc4;
	B = 16'hba05;
	ans = 16'h39d8;
	#20
	A = 16'h3908;
	B = 16'hbb5c;
	ans = 16'hb8a1;
	#20
	A = 16'h2b48;
	B = 16'hb661;
	ans = 16'ha5ce;
	#20
	A = 16'h302b;
	B = 16'hb2e1;
	ans = 16'ha72b;
	#20
	A = 16'h3af6;
	B = 16'h391f;
	ans = 16'h3875;
	#20
	A = 16'h2e16;
	B = 16'h2b9c;
	ans = 16'h1dca;
	#20
	A = 16'hb700;
	B = 16'hb8d5;
	ans = 16'h343a;
	#20
	A = 16'h32ef;
	B = 16'hb40b;
	ans = 16'hab02;
	#20
	A = 16'h3a76;
	B = 16'h387a;
	ans = 16'h373b;
	#20
	A = 16'h399a;
	B = 16'h3902;
	ans = 16'h3703;
	#20
	A = 16'hba66;
	B = 16'h302f;
	ans = 16'haeb1;
	#20
	A = 16'h3961;
	B = 16'h3830;
	ans = 16'h35a2;
	#20
	A = 16'h378d;
	B = 16'h3bbc;
	ans = 16'h374d;
	#20


	
			// Wait 100 ns for global reset to finish
		#200050;
        		
		$finish;
		// Add stimulus here

	end
   
	initial begin
		CLK = 0;
		RESETn = 0;
		#50;
		RESETn = 1;
		forever #10 CLK = ~CLK;
	end
	
	
	always@ (posedge CLK, negedge RESETn) begin
		if(!RESETn) begin
			ans_reg <= 0;
		end else begin
			ans_reg <=ans;
		end
	end
	
endmodule
