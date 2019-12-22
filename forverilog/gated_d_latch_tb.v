module simple_tb;

    reg D = 0;
    reg G = 0;
    wire P;
    wire Q;

    initial
        begin
            $dumpfile("gated_d_latch.vcd");
            $dumpvars(0,s);
            #5 D = 1;
            #5 D = 0;
            #5 D = 1;
            #5 G = 1;
            #5 D = 0;
            #5 D = 1;
            #5 D = 0;
            #5 D = 1;
            #5 G = 0;
            #5 D = 0;
            #5 $finish;
        end

        gated_d_latch s(G,D,P,Q);

endmodule
