module rh_latch_tb;

    reg R = 1;
    reg H = 1;
    wire P;
    wire Q;

    initial
        begin
            $dumpfile("rh_latch.vcd");
            $dumpvars(0,s);
            #5 R = 0;
            #5 H = 0;
            #5 H = 1;
            #20 {R,H} = 2'b00;
            #2 {R,H} = 2'b01;
            #2 {R,H} = 2'b10;
            #2 {R,H} = 2'b11;
            #5 $finish;
        end

        rh_latch s(R,H,P,Q);

endmodule
