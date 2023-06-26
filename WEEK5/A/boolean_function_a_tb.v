`timescale 1ns / 1ps

module boolean_function_a_tb;

reg aa,bb,cc;
wire xx;

boolean_function_a u_a(
.a(aa),
.b(bb),
.c(cc),
.x(xx));

initial begin
aa=1'b1;
bb=1'b1;
cc=1'b1;
end

always begin
aa=#10 ~aa;
bb=#20 ~bb;
cc=#40 ~cc;
end

initial begin
    #1000
    $finish;
end

endmodule
