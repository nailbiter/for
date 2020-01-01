`timescale 1ns/1ps

module hw_11_3;

    reg CLK = 0;
    wire Q1,Q2,Q0;

    always
        #5 CLK = ~CLK;

    initial
        begin
            $dumpfile("hw_11_3.vcd");
            $dumpvars(0,s1);
            $dumpvars(0,s2);
            $dumpvars(0,s3);

            #55 $finish;
        end

        hw_11_3__t s1(.Ck(CLK),.T(1'b1),.Q(Q0));
        hw_11_3__t s2(.Ck(Q0),.T(1'b1),.Q(Q1));
        hw_11_3__t s3(.Ck(Q1),.T(1'b1),.Q(Q2));

endmodule
