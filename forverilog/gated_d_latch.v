module gated_d_latch(G,D,P,Q);
    
    input G,D;
    output P,Q;
    wire S,R,nD;

    and  (S,G,D);
    not  (nD,D);
    and  (R,G,nD);
    sr_latch sr(S,R,P,Q);

endmodule
