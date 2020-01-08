module hw_13_2_b;

    reg [1:2] X = 2'b11;
    reg [1:2]Q = 2'b00;
    wire [1:2]D;
    reg CLK = 0;
    wire Z;

    always
        #2 CLK =~ CLK;

    always @(posedge CLK)
        Q = D;

    initial
        begin
            $dumpfile("hw_13_2_b.vcd");
            $dumpvars(0,X);
            $dumpvars(0,Q);
            $dumpvars(0,D);
            $dumpvars(0,Z);
            $dumpvars(0,CLK);

            #3 X = 2'b11;
            #4 X = 2'b01;
            #4 X = 2'b10;
            #4 X = 2'b10;
            #4 X = 2'b00;

            #4 $finish;
        end

     assign D[1] = ~|{~|{~X[1],~X[2],Q[1]},~|{Q[1],Q[2]},~|{~X[1],Q[2]}};
     assign D[2] = ~|{~|{~|{X[1],X[2]},~Q[1]},~|{Q[2],~|{~X[1],~X[2]}}};
     assign Z = ~|{Q[2],~Q[1]};

endmodule
