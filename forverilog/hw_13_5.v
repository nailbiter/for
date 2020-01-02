module hw_13_5;
    reg X = 0;
    reg CLK = 0;
    reg [2:0] S = 3'b000;

    always
        #2 CLK = ~CLK;

    always @(negedge CLK)
        case({S,X})
            4'b0000: {S,X} <= 
        endcase


endmodule
