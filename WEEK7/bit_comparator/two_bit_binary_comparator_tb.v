`timescale 1ns / 1ps

module two_bit_binary_comparator_tb;
reg aa1,aa2,bb1,bb2;
wire ff1,ff2,ff3;

two_bit_binary_comparator u_comparator(
.a1(aa1),
.a2(aa2),
.b1(bb1),
.b2(bb2),
.f1(ff1),
.f2(ff2),
.f3(ff3));

initial begin
aa1=1'b1;
aa2=1'b1;
bb1=1'b1;
bb2=1'b1;
end

always begin
aa1=#10 ~aa1;
aa2=#20 ~aa2;
bb1=#40 ~bb1;
bb2=#80 ~bb2;
end

initial begin
    #1000
    $finish;
end
endmodule