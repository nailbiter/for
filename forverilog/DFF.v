`timescale 1ns/1ps

module DFF(clk,D,Q,QBar);
	input clk,D;
	output Q,QBar;
	
	initial begin
		force Q = 1'b0;
		force QBar = 1'b1;
		#15;
		release Q;
		release QBar;		
	end
	
	wire inv1,p,non1,non2;
	
	assign inv1 = ~clk;
	DLatch DL1(D,inv1,p,non1);
	DLatch DL2(p,clk,Q,QBar);

endmodule

module DLatch(D,G,Q,QBar);
	input D,G;
	output Q,QBar;
	
	wire w1,w2,inv1;
	
	assign #(0.15) w1 = D & G;
	assign #(0.15) inv1 = ~D;
	assign #(0.15) w2 = inv1 & G;
	SRLatch L1(w1,w2,G,Q,QBar);

endmodule

module SRLatch(S,R,G,Q,QBar);
	input S,R,G;
	output Q,QBar;
	
	wire net1, net2;
	wire Q_next,QBar_next;
	assign Q = Q_next;
	assign QBar = QBar_next;
	
	
	NAND NAND1(S,G,net1);
	NAND NAND2(R,G,net2);
	NAND NAND3(net1,QBar_next,Q_next);
	NAND NAND4(net2,Q_next,QBar_next);

endmodule


module NAND(in1, in2, out);
	input in1, in2;
	output out;
	
	nand #(0.15) NAND1(out, in1, in2);
endmodule





