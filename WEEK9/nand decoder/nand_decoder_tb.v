`timescale 1ns / 1ps

module nand_decoder_tb;
reg aa,bb;
wire dd0,dd1,dd2,dd3;

nand_decoder u_decoder(
.a(aa),
.b(bb),
.d0(dd0),
.d1(dd1),
.d2(dd2),
.d3(dd3));

initial begin
aa=1'b1;
bb=1'b1;
end

always aa=#10 ~aa;
always bb=#20 ~bb;

initial begin
    #100
    $finish;
end
endmodule