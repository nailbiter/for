`timescale 1ns/1ps
module hw_f_5;
    reg [0:2] Q = 3'b000;
    reg F = 0,R = 0;
    wire [0:2] Qp;

    always
        #1 {Q,F,R} = {Q,F,R} + 5'b00001;

    initial 
        begin
            $dumpfile("hw_f_5.vcd");
            $dumpvars(0,Q);
            $dumpvars(0,Qp);
            $dumpvars(0,F);
            $dumpvars(0,R);
            #33 $finish;
        end

    assign Qp = {
        &{~F,~R,Q[0]} || &{F,Q[2]} || &{~F,R,Q[1]},
        &{~F,~R,Q[1]} || &{F,Q[0]} || &{~F,R,Q[2]},
        &{~F,~R,Q[2]} || &{F,Q[1]} || &{~F,R,Q[0]}
    }; 

endmodule
