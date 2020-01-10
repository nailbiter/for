module sr_flipflop(Q,Qp,Clock,S,R);
    
    input Clock,S,R;
    output Q,Qp;
    wire nClock,s1,r1,P,Pp,s2,r2;

    not  (nClock,Clock);
    and (s1,S,nClock);
    and (r1,R,nClock);
    sr_latch sr1(s1,r1,P,Pp);
    and (s2,P,Clock);
    and (r2,Pp,Clock);
    sr_latch sr2(s2,r2,Q,Qp);

endmodule
