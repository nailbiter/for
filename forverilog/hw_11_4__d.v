module hw_11_4__d(output Q,input Clock,input D,input asClrN);
    reg Q = 0;

    always @(posedge Clock or negedge asClrN)
        if( !asClrN )
            Q <= 0;
        else
            Q <= D;

endmodule
