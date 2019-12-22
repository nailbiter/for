module simple_tb;

    reg R = 0;
    reg S = 0;
    wire P;
    wire Q;

    initial
        begin
            $dumpfile("sr_latch.vcd");
            $dumpvars(0,s);
            //$monitor("A is %b, B is %b.",A, B);
            #15 R = 1;
            #15 R = 0;
            #15 S = 1;
            #15 S = 0;
            #15 S=1;R=1;
            #20 $finish;
        end

        sr_latch s(S,R,P,Q);

endmodule
