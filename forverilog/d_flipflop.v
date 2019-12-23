module d_flipflop(Q,Clock,D);
    
    input Clock,D;
    output Q;
    wire nClock,p1,q1,p2;

    not  (nClock,Clock);
    gated_d_latch s(nClock,D,p1,q1);
    gated_d_latch s1(Clock,q1,p2,Q);

endmodule
