module gated_d_latch(G,D,P,Q);
    
    input G,D;
    output P,Q;
    wire S,R,nD;

    and #0.01 (S,G,D);
    not #0.01 (nD,D);
    and #0.01 (R,G,nD);
    sr_latch sr(S,R,P,Q);

endmodule
