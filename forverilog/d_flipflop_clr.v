/*rising edge
*/
module d_flipflop_clr(output Q,output Qp,input Clock,input D,input Clr);
    reg Q = 0;
    wire Qp = ~Q;

    always @(posedge Clock or negedge Clr)
        if( !Clr )
            Q<= 0;
        else
            Q <= D;
endmodule
