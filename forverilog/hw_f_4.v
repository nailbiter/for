`timescale 1ns/1ps
module hw_f_4;
    reg CLK = 0;
    reg [1:2] Q;
    reg X,Z;
    wire [1:2] D;

    always
        #5 CLK = ~CLK;

    always @(negedge CLK)
        Q = D;

    initial 
        begin
            $dumpfile("hw_13_5.vcd");
            $dumpvars(0,CLK);
            $dumpvars(0,Q);

            #2 input_data = 15; {EnIn,EnAd,LdAc,LdAd} = 4'b1010;
            #5 input_data = 13; {EnIn,EnAd,LdAc,LdAd} = 4'b1001;
            #4 input_data = 15; {EnIn,EnAd,LdAc,LdAd} = 4'b0110;
            #4 input_data = 93; {EnIn,EnAd,LdAc,LdAd} = 4'b1001;
            #4 input_data = 47; {EnIn,EnAd,LdAc,LdAd} = 4'b0110;
            #4 input_data = 22; {EnIn,EnAd,LdAc,LdAd} = 4'b1001;
            #4 input_data = 0; {EnIn,EnAd,LdAc,LdAd} = 4'b0100;
            #4 $finish;
        end

endmodule
