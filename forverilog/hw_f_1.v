module hw_f_1;
    reg CLK = 0;
    reg [7:0] accumulator_register=8'b0, addend_register=8'b0, input_data;
    reg EnIn,LdAc,EnAd,LdAd;
    wire [7:0] sum;

    always
        #2 CLK = ~CLK;

    always @(posedge CLK)
        if(EnIn && LdAd)
            addend_register = input_data;
    always @(posedge CLK)
        if(LdAc && EnAd)
            accumulator_register = sum;

    initial 
        begin
            $dumpfile("hw_13_5.vcd");
            $dumpvars(0,accumulator_register);
            $dumpvars(0,addend_register);
            $dumpvars(0,input_data);
            $dumpvars(0,CLK);
            $dumpvars(0,EnIn);
            $dumpvars(0,EnAd);
            $dumpvars(0,LdAc);
            $dumpvars(0,LdAd);
            $dumpvars(0,sum);

            #1 input_data = 15; {EnIn,EnAd,LdAc,LdAd} = 4'b1010;
            #4 input_data = 13; {EnIn,EnAd,LdAc,LdAd} = 4'b1001;
            #4 input_data = 15; {EnIn,EnAd,LdAc,LdAd} = 4'b0110;
            #4 input_data = 93; {EnIn,EnAd,LdAc,LdAd} = 4'b1001;
            #4 input_data = 47; {EnIn,EnAd,LdAc,LdAd} = 4'b0110;
            #4 input_data = 22; {EnIn,EnAd,LdAc,LdAd} = 4'b1001;
            #4 input_data = 0; {EnIn,EnAd,LdAc,LdAd} = 4'b0100;
            #4 $finish;
        end

     assign sum = addend_register + accumulator_register;

endmodule
