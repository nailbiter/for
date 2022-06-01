`timescale 1ns/1ps
`include "DFF.V"
module PATTERN_DFF();
	wire Q, QBar;
	reg D,G,S,R;
	reg clk;
	
	initial clk = 0;
	always #10 clk = ~clk;
	
	DFF DFF1(clk,D,Q,QBar);
	
	initial begin
		D=0;
		#5;
		D=1;
		#10;
		D=0;
		#3;
		D=1;
		#3;
		D=0;
		#14;
		D=1;
		#15;
		$finish;	
	end
	
	initial begin
		$dumpfile("DFF.vcd");
		$dumpvars(0,PATTERN_DFF);
	end
	
	
endmodule
