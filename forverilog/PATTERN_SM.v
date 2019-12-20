`timescale 1ns/1ps

module PATTERN_SM();
	wire OUT;
	reg IN;
	reg clk;
	
	initial clk = 0;
	always #10 clk = ~clk;
	
	SM SM1( clk, IN, OUT );
	
	initial begin
		#5;
		//State change to S1
		IN=1;
		#20;
		
		//State change to S0
		IN=0;
		#20;
		
		//State change to S3
		IN=0;
		#20;
		
		//State change to S2
		IN=0;
		#20;
		
		//State stay in S2
		IN=1;
		#20;
		
		//State change to S1
		IN=0;
		#20;
		
		$finish;	
	end
	
	initial begin
		$dumpfile("SM.vcd");
		$dumpvars(0,PATTERN_SM);
	end
	
	
endmodule
