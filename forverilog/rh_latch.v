module rh_latch(R,H,P,Q);
    
    input R,H;
    output P,Q;
    wire w;

    or (Q,R,w);
    not (P,w);
    and(w,H,Q);

endmodule
