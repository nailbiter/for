`timescale 1ns/1ps
module hw_f_4;
    reg CLK = 0;
    reg [1:2] Q = 2'b01;
    reg [1:2] Qp = 2'b01;
    reg X = 1;
    reg Z;
    reg Zp;
    reg [1:2] D= 2'b11;

    always
        #5 CLK = ~CLK;

    always @(negedge CLK)
        Q = #3 D;
    always @(negedge CLK)
        case({Qp,X})
            3'b000: Qp = #3 2'b10;
            3'b001: Qp = #3 2'b10;
            3'b010: Qp = #3 2'b00;
            3'b011: Qp = #3 2'b11;
            3'b100: Qp = #3 2'b00;
            3'b101: Qp = #3 2'b01;
            3'b110: Qp = #3 2'b01;
            3'b111: Qp = #3 2'b11;
        endcase

    initial 
        begin
            $dumpfile("hw_f_4.vcd");
            $dumpvars(0,CLK);
            $dumpvars(0,Q);
            $dumpvars(0,X);
            $dumpvars(0,Z);
            $dumpvars(0,D);
            $dumpvars(0,Qp);
            $dumpvars(0,Zp);

            #4 X = 0;
            #10 X = 1;
            #10 X = 1;
            #10 X = 0;
            #20 $finish;
        end

    always @(Q,X)
        begin
            D[1] <= #5 (~Q[1]&&~Q[2]) || (Q[2]&&X);
            D[2] <= #5 &Q || (Q[1]&&X) || (Q[2]&&X);
            Z <= #5 Q[1] || (~Q[2]&&X);
        end
    always @(Qp,X)
        Zp = #5 (Qp==2'b00 && X) ||
            (Qp==2'b01 && 0) ||
            (Qp==2'b10 && 1) ||
            (Qp==2'b11 && 1);

endmodule
