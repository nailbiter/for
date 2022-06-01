module hw_f_6_a;
    reg [1:4] X = 4'b0000, Y = 4'b0000;
    wire [2:5] a,b;
    wire Z;
    always
        #1 {X,Y} = {X,Y}+8'b00000001;
    initial
        begin
            $dumpfile("hw_f_6_a.vcd");
            $dumpvars(0,X);
            $dumpvars(0,Y);
            $dumpvars(0,Z);
            $dumpvars(0,s1);
            $dumpvars(0,s2);
            $dumpvars(0,s3);
            $dumpvars(0,s4);
            #257 $finish;
        end
    hw_f_6_a__node s1(.ap(0),.bp(0),.x(X[1]),.y(Y[1]),.a(a[2]),.b(b[2]));
    hw_f_6_a__node s2(.ap(a[2]),.bp(b[2]),.x(X[2]),.y(Y[2]),.a(a[3]),.b(b[3]));
    hw_f_6_a__node s3(.ap(a[3]),.bp(b[3]),.x(X[3]),.y(Y[3]),.a(a[4]),.b(b[4]));
    hw_f_6_a__node s4(.ap(a[4]),.bp(b[4]),.x(X[4]),.y(Y[4]),.a(a[5]),.b(b[5]));
    assign Z = ~b[5];
endmodule
