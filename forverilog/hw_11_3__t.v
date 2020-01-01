`timescale 1ns/1ps

module hw_11_3__t(output Q,input Ck,input T);
    reg Q = 0;

    always @(posedge Ck)
        if(T)
            Q <= #1 ~Q;
endmodule
