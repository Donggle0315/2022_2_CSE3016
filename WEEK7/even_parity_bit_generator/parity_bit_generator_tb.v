`timescale 1ns / 1ps

module parity_bit_generator_tb;
reg aa,bb,cc,dd;
wire ee;

parity_bit_generator u_generator(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee));

initial begin
aa=1'b1;
bb=1'b1;
cc=1'b1;
dd=1'b1;
end

always begin
aa=#10 ~aa;
bb=#20 ~bb;
cc=#40 ~cc;
dd=#80 ~dd;
end

initial begin
    #1000
    $finish;
end
endmodule