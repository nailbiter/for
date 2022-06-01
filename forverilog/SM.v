`timescale 1ns/1ps
`include "DFF.v"

module SM ( clk, IN, OUT );
	input clk, IN;
	output OUT;
	wire   N23, n2, n4, n5,non;
	wire   [1:0] next_state;
	wire   [1:0] current_state;
	
	assign current_state = {n5, N23};
	
	DFF current_state_reg_0  ( .D(next_state[0]), .clk(clk), .Q(N23), .QBar(n2)  );
	DFF current_state_reg_1  ( .D(next_state[1]), .clk(clk), .Q(n5),  .QBar(non) );
	DFF OUT_reg ( .D(N23), .clk(clk), .Q(OUT) );
	XOR_3 U6 ( .in1(n5), .in2(n2), .in3(IN), .out(next_state[1]) );
	XOR_2 U7 ( .in1(n2), .in2(n4), .out(next_state[0]) );
	AND_2 U8 ( .in1(IN), .in2(n5), .out(n4) );

	
endmodule


module XOR_2(in1,in2,out);
	input in1, in2;
	output out;
	
	assign #(0.15) out = (in1&~in2)+(~in1&in2);
endmodule

module XOR_3(in1,in2,in3,out);
	input in1, in2, in3;
	output out;

	wire net1;
	assign net1 = (in1&~in2)+(~in1&in2);
	assign #(0.2) out = (net1&~in3)+(~net1&in3);
endmodule

module AND_2(in1,in2,out);
	input in1, in2;
	output out;

	assign #(0.15) out = in1&in2;
endmodule
