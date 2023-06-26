`timescale 1ns / 1ps

module or_encoder_tb;
reg aa,bb,cc,dd;
wire ee0,ee1;

or_encoder u_encoder(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e0(ee0),
.e1(ee1));

initial begin
aa=1'b1;
bb=1'b0;
cc=1'b0;
dd=1'b0;
end

initial begin
    aa=#100 ~aa;
    bb=~bb;
    bb=#100 ~bb;
    cc=~cc;
    cc=#100 ~cc;
    dd= ~dd;
    #100
    $finish;
end
endmodule