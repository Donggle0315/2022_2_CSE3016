`timescale 1ns / 1ps

module half_adder_tb;
reg aa,bb;
wire ss,cc;

half_adder u_ha(
.a(aa),
.b(bb),
.s(ss),
.c(cc));

initial begin
aa=1'b1;
bb=1'b1;
end

always begin
aa=#10 ~aa;
bb=#20 ~bb;
end

initial begin
    #1000
    $finish;
end

endmodule
