`timescale 1ns / 1ps

module parity_bit_checker_tb;
reg aa,bb,cc,dd,pp;
wire ppec;

parity_bit_checker u_checker(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.p(pp),
.pec(ppec));


initial begin
aa=1'b1;
bb=1'b1;
cc=1'b1;
dd=1'b1;
pp=1'b1;
end

always begin
aa=#10 ~aa;
bb=#20 ~bb;
cc=#40 ~cc;
dd=#80 ~dd;
pp=#160 ~pp;
end

initial begin
    #1000
    $finish;
end
endmodule