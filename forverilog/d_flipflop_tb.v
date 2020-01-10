module d_flipflop_tb;

    reg D = 0;
    reg Clock = 0;
    wire Q;

    always
        #4 Clock = ~Clock;

    initial
        begin
            $dumpfile("d_flipflop.vcd");
            $dumpvars(0,s);

            #1 D = ~D;
            #1 D = ~D;
            #1 D = ~D;

            #2 D = ~D;
            #1 D = ~D;
            #1 D = ~D;

            #2 D = ~D;
            #1 D = ~D;

            #3 D = ~D;
            #1 D = ~D;

            #4 $finish;
        end

        d_flipflop s(Q,Clock,D);

endmodule
