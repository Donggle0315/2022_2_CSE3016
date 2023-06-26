`timescale 1ns / 1ps

module bcd_to_decimal_decoder_tb;
reg aa0,aa1,aa2,aa3;
wire dd1,dd2,dd3,dd4,dd5,dd6,dd7,dd8,dd9;

bcd_to_decimal_decoder u_decoder(
.a0(aa0),
.a1(aa1),
.a2(aa2),
.a3(aa3),
.d1(dd1),
.d2(dd2),
.d3(dd3),
.d4(dd4),
.d5(dd5),
.d6(dd6),
.d7(dd7),
.d8(dd8),
.d9(dd9));

initial begin
aa3=1'b1;
aa2=1'b1;
aa1=1'b1;
aa0=1'b1;
end

always aa0=#10 ~aa0;
always aa1=#20 ~aa1;
always aa2=#40 ~aa2;
always aa3=#80 ~aa3;


initial begin
    #200
    $finish;
end
endmodule