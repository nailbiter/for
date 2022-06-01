module hw_f_6_a__node(output a,output b, input x,input y,input ap,input bp);
    wire a,b;
    assign a = ~&{~ap,~&{y,~x,~bp}};
    assign b = ~&{~bp,~&{~y,x,~ap}};
endmodule

