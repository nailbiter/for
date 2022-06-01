`timescale 1ns/1ps

module AND();

//================================================================
//	Parameters & integer
//================================================================
	parameter WIDTH1 = 4;
	parameter WIDTH2 = 5;
	
//---------------------------------------------------------------------
//	Wire and reg declaration
//---------------------------------------------------------------------	
	reg [WIDTH1-1:0] in1;
	reg [WIDTH2-1:0] in2;
	wire 	   OUT1, OUT2;
	
//================================================================
//	Main code
//================================================================
	//Bulid two multi-input AND gate, one has 4 inputs, one has 5 inputs.
	AND_IP #(.WIDTH(WIDTH1)) AND_4(.in(in1), .OUT(OUT1));
	AND_IP #(.WIDTH(WIDTH2)) AND_5(.in(in2), .OUT(OUT2));
	
	//Timing information
	initial begin
		in1=0;
		in2=0;
	
		#5;
		in1[2:0] = 3'b 111;
		in2[3:0] = 4'b 1111;
		#5;
		in1[3]=1;
		in2[4]=1;
		#5;
		in1[0]=0;
		in2[0]=0;
		#5;
		in1[0]=1;
		in2[0]=1;
	
		#15;
		$finish;
	end // initial begin
	
	//Generate waveform
	initial begin
		$dumpfile("AND.vcd");
		$dumpvars(0,AND);
	end
	
endmodule // AND

module AND_IP
	#( parameter WIDTH = 2)
	(
		input [WIDTH-1:0] in,
		output 	      OUT
	);
   
	assign #(0.1+(WIDTH-1)*0.05) OUT = &in;
   
endmodule
