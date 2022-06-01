module hw_13_2_a;

    reg [1:2] X = 2'b00;
    reg [1:2]Q = 2'b00;
    wire [1:2]D;
    wire Z;

    always
        #1 {Q,X} = {Q,X} + 4'b0001;

    initial
        begin
            $dumpfile("hw_13_2_a.vcd");
            $dumpvars(0,X);
            $dumpvars(0,Q);
            $dumpvars(0,D);
            $dumpvars(0,Z);

            #17 $finish;
        end

     assign D[1] = ~|{~|{~X[1],~X[2],Q[1]},~|{Q[1],Q[2]},~|{~X[1],Q[2]}};
     assign D[2] = ~|{~|{~|{X[1],X[2]},~Q[1]},~|{Q[2],~|{~X[1],~X[2]}}};
     assign Z = ~|{Q[2],~Q[1]};

endmodule
