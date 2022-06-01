module jk_flipflop(output q,input Clock,input J,input K,input ClrN,input PreN);
    reg q = 0;

    always @(negedge Clock or negedge PreN or negedge ClrN)
        if( !PreN )
            q <= 1;
        else if( !ClrN )
            q<= 0;
        else
            case({J,K})
                2'b00: q <= q;
                2'b01: q <= 0;
                2'b10: q <= 1;
                2'b11: q <= ~q;
            endcase

endmodule
