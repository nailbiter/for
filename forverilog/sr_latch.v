module sr_latch(S,R,P,Q);
    
    input S,R;
    output P,Q;

    nor  (P,S,Q);
    nor  (Q,R,P);

endmodule
