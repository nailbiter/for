`timescale 1ns/1ps
`include "DFF.v"

module DRONE (Floor5,Floor6,FS1,FS5,FS6,Call5,Call6, clk,Drop,Motor);
	input Floor5,Floor6,FS1,FS5,FS6,Call5,Call6, clk;
	output Drop[1:0],Motor[1:0];
	wire   w0,w1,w2;
    wire ma0,ma1,ma2,ma3,ma4,ma5,ma6;
    wire mb1,mb2,mb4,mb5,mb6;
    wire mc0,mc1,mc3,mc4,mc5;
	wire   [2:0] next_state;
	//assign current_state = {n5, N23};
	
	DFF current_state_reg_0  ( .D(next_state[0]), .clk(clk), .Q(w0), .QBar(w00)  );
	DFF current_state_reg_1  ( .D(next_state[1]), .clk(clk), .Q(w1),  .QBar(non) );
    DFF current_state_reg_2  ( .D(next_state[2]), .clk(clk), .Q(w2), .QBar());
    //a minterms
    NAND_4 nora0 ( .in1(Floor5), .in2(~w0), .in3(~w1), .in4(w2), .out(ma0));
    NAND_4 nora1 ( .in1(Floor6), .in2(~w0), .in3(w1), .in4(~w2), .out(ma1));
    NAND_4 nora2 ( .in1(~Call5), .in2(w0), .in3(w1), .in4(~w2), .out(ma2));
    NAND_4 nora3 ( .in1(~Call6), .in2(w0), .in3(~w1), .in4(w2), .out(ma3));
    NAND_4 nora4 ( .in1(~FS1), .in2(w0), .in3(~w1), .in4(~w2), .out(ma4));
    NAND_4 nora5 ( .in1(~FS5), .in2(w0), .in3(~w1), .in4(w2), .out(ma5));
    NAND_4 nora6 ( .in1(FS6), .in2(~w0), .in3(~w1), .in4(~w2), .out(ma6))
    //b minterms
    NAND_4 norb1 ( .in1(~Floor6), .in2(~w0), .in3(w1), .in4(~w2), .out(mb1));
    NAND_5 norb2 ( .in1(Call6), .in2(~FS5), .in3(w0), .in4(~w1), .in5(w2), .out(mb2));
    NAND_4 norb4 ( .in1(~Call6), .in2(~w0), .in3(w1), .in4(w2), .out(mb4));
    NAND_4 norb5 ( .in1(FS1), .in2(w0), .in3(~w1), .in4(~w2), .out(mb5));
    NAND_5 norb6 ( .in1(FS5), .in2(~FS6), .in3(~w0), .in4(w1), .in5(~w2), .out(mb6));
    //c minterms
    NAND_3 norc0 ( .in1(~Floor5), .in2(~w0), .in3(w2), .out(mc0));
    NAND_4 norc1 ( .in1(Floor6), .in2(~w0), .in3(w1), .out(mc1));
    //NAND_5 norc3 ( .in1(FS5), .in2(~FS6), .in3(~w0), .in4(~w1), .in5(~w2), .out(mc3))=mb6
    NAND_4 norc4 ( .in1(FS5), .in2(w0), .in3(~w1), .in4(w2), .out(mc4));
    NAND_4 norc5 ( .in1(~w0), .in2(w1), .in3(w2), .out(mc5));
    //wires before FFs
    NAND_7 Ua ( .in1(ma0), .in2(ma1), .in3(ma2), .in4(ma3), .in5(ma4), .in6(ma5), .in7(ma6), .out(next_state[0]));
    NAND_7 Ub ( .in1(ma0), .in2(mb1), .in3(ma2), .in4(mb3), .in5(mb4), .in6(mb5), .in7(mb6), .out(next_state[1]));
    NAND_6 Uc ( .in1(mc0), .in2(mc1), .in3(ma3), .in4(mb6), .in5(mc4), .in6(mc5), .out(next_state[2]));
    //wires after FFs   
    NOR_2 UD0 ( .in1(w0), .in2(w1), .out(Drop[0]));
    NOR_2 UD1 ( .in1(w0), .in2(w2), .out(Drop[1]));
    NOR_2 UM0 ( .in1(w00), .in2(w2), .out(Motor[0]));
    NOR_2 UM1 ( .in1(D[0]), .in2(D[1]), .out(Motor[1]));
endmodule

module NOR_2(in1,in2,out);
    input in1, in2;
    output out;
        
    assign #(0.15) out = ~in1*~in2;
endmodule

module NAND_2(in1,in2,out);
	input in1, in2;
	output out;
	
	assign #(0.15) out = ~in1+~in2;
endmodule

module NAND_3(in1,in2,in3,out);
	input in1, in2, in3;
	output out;

	assign #(0.2) out = ~net1+~in2+~in3;
endmodule

module NAND_4(in1,in2,in3,in4,out);
    input in1, in2, in3, in4;
    output out;
        
    assign #(0.25) out = ~net1+~in2+~in3+~in4;
endmodule

module NAND_5(in1,in2,in3,in4, in5,out);
    input in1, in2, in3, in4, in5;
    output out;
        
    assign #(0.30) out = ~net1+~in2+~in3+~in4+~in5;
endmodule

module NAND_6(in1,in2,in3,in4,in5,in6,out);
    input in1,in2,in3,in4,in5,in6;
    output out;
            
    assign #(0.35) out= ~net1+~in2+~in3+~net4+~in5+~in6;
endmodule))

module NAND_7(in1,in2,in3,in4,in5,in6,in7,out);
    input in1,in2,in3,in4,in5,in6,in7;
    output out;
    
    assign #(0.4) out= ~net1+~in2+~in3+~net4+~in5+~in6+~in7;
endmodulei
