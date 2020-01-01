module hw_11_2_b;

    reg ClrN = 0;
    reg CLK = 0;
    wire Q1,Q2,Q1p,Q2p;
    wire nCLK = ~CLK;

    always
        #2 CLK = ~CLK;

    initial
        begin
            $dumpfile("hw_11_2_b.vcd");
            $dumpvars(0,s1);
            $dumpvars(0,s2);

            #5 ClrN = ~ClrN;
            #4 ClrN = ~ClrN;
            #4 ClrN = ~ClrN;

            #8 $finish;
        end

        d_flipflop_clr s1(.Clr(ClrN),.Clock(nCLK),.D(Q1p),.Qp(Q1p),.Q(Q1));
        d_flipflop_clr s2(.Clr(ClrN),.Clock(CLK),.D(Q2p),.Qp(Q2p),.Q(Q2));

endmodule
