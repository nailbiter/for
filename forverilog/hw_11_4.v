module hw_11_4;

    reg CLK = 0;
    reg ClrN = 1;
    reg D = 1;
    wire Q1,Q2,w;

    always
        #2 CLK = ~CLK;

    initial
        begin
            $dumpfile("hw_11_4.vcd");
            $dumpvars(0,s1);
            $dumpvars(0,s2);

            #3 ClrN = ~ClrN;
            #4 ClrN = ~ClrN;
            #4 ClrN = ~ClrN;
            #2 ClrN = ~ClrN;

            #4 $finish;
        end

        and (w,D,ClrN);
        hw_11_4__d s1(.Clock(CLK),.Q(Q1),.asClrN(ClrN),.D(D));
        hw_11_4__d s2(.Clock(CLK),.Q(Q2),.asClrN(1'b1),.D(w));

endmodule
