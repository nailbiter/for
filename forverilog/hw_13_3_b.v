module hw_13_3_b;

    reg X = 0;
    wire [1:2] J;
    wire [1:2] K;
    reg CLK = 0;
    reg [1:2] Q = 2'b00;
    wire [1:2] Qp;
    wire Z;

    always
        //#1 {Q,X} = {Q,X} + 3'b001;
        #2 CLK = ~CLK;
    always @(posedge CLK)
        Q = Qp;

    initial
        begin
            $dumpfile("hw_13_3_b.vcd");
            $dumpvars(0,X);
            $dumpvars(0,J);
            $dumpvars(0,K);
            $dumpvars(0,Q);
            $dumpvars(0,Qp);
            $dumpvars(0,Z);
            $dumpvars(0,CLK);

            #1 X=0;
            #4 X=1;
            #4 X=1;
            #4 X=0;
            #4 X=0;

            #2 $finish;
        end

        assign J[1] = ~&{~&{X,~Q[2]},~&{Q[2],~X}};
        assign K[1] = &{Q[2],~X};
        assign J[2] = ~|{Q[1],~X};
        assign K[2] = ~|{Q[1],~X};
        assign Qp[1] = (J[1]&&~Q[1]) || (~K[1]&&Q[1]);
        assign Qp[2] = (J[2]&&~Q[2]) || (~K[2]&&Q[2]);
        assign Z = ~|{~Q[2],~Q[1]};

endmodule
