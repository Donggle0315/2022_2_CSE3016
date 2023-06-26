`timescale 1ns / 1ps

module four_to_one_mux_tb;
reg aa,bb,AA,BB,CC,DD;
wire oo;

four_to_one_mux u_mux(
.a(aa),
.b(bb),
.A(AA),
.B(BB),
.C(CC),
.D(DD),
.o(oo));

initial begin
aa=1'b1;
bb=1'b1;
AA=1'b1;
BB=1'b1;
CC=1'b1;
DD=1'b1;
end

always aa=#10 ~aa;
always bb=#20 ~bb;
always AA=#40 ~AA;
always BB=#80 ~BB;
always CC=#160 ~CC;
always DD=#320 ~DD;

initial begin
    #2000
    $finish;
end
endmodule