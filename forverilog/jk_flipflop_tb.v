module jk_flipflop_tb;

    reg J = 0;
    reg K = 1;
    reg ClrN = 1;
    reg PreN = 1;
    reg CLK = 0;
    wire Q;

    always
        #2 CLK = ~CLK;

    initial
        begin
            $dumpfile("jk_flipflop.vcd");
            $dumpvars(0,s);

            #1 PreN = 0;
            #4 PreN = 1;
            #4 {J,K} = 2'b10;
            #4 ClrN = 0;
            #4 {ClrN,K} = 2'b11;

            #4 $finish;
        end

        jk_flipflop s(Q,CLK,J,K,ClrN,PreN);

endmodule
