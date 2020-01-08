module sr_flipflop_tb;

    reg S = 1;
    reg R = 0;
    reg CLK = 0;
    wire Q,P;

    always
        #4 CLK = ~CLK;

    initial
        begin
            $dumpfile("sr_flipflop.vcd");
            $dumpvars(0,s);

            #5 {S,R} = 2'b01;
            #8 {S,R} = 2'b10;
            #2 S = 0;
            #4 {S,R} = 2'b00;

            #4 $finish;
        end

        sr_flipflop s(Q,P,CLK,S,R);

endmodule
