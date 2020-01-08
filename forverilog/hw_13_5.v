module hw_13_5;
    reg X = 0;
    reg CLK = 0;
    reg [2:0] S = 3'b000;
    wire Z;

    always
        #2 CLK = ~CLK;

    always @(negedge CLK)
        case({S,X})
            4'b0000: S <= 3'b001;
            4'b0001: S <= 3'b011;
            4'b0010: S <= 3'b010;
            4'b0011: S <= 3'b011;
            4'b0100: S <= 3'b001;
            4'b0101: S <= 3'b011;
            4'b0110: S <= 3'b100;
            4'b0111: S <= 3'b000;
            4'b1000: S <= 3'b011;
            4'b1001: S <= 3'b000;
        endcase

    initial 
        begin
            $dumpfile("hw_13_5.vcd");
            $dumpvars(0,X);
            $dumpvars(0,CLK);
            $dumpvars(0,S);
            $dumpvars(0,Z);

            #1 X = 1'b1;
            #4 X = 1'b0;
            #4 X = 1'b1;
            #4 X = 1'b0;
            #4 X = 1'b0;
            #4 X = 1'b1;
            #4 $finish;
        end

    assign Z = (S==3'b000 && 1'b0)
        || (S==3'b001 && 1'b0)
        || (S==3'b010 && X)
        || (S==3'b011 && 1'b0)
        || (S==3'b100 && X)
    ;

endmodule
