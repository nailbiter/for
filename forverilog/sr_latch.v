module sr_latch(S,R,P,Q);
    
    input S,R;
    output P,Q;

    nor #0.01 (P,S,Q);
    nor #0.01 (Q,R,P);

endmodule
