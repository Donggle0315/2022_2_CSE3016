`timescale 1ns / 1ps

module one_to_four_mux_tb;
reg aa,bb,ff;
wire AA,BB,CC,DD;

one_to_four_mux u_mux(
.a(aa),
.b(bb),
.f(ff),
.A(AA),
.B(BB),
.C(CC),
.D(DD));

initial begin
aa=1'b1;
bb=1'b1;
ff=1'b1;
end

always aa=#10 ~aa;
always bb=#20 ~bb;
always ff=#40 ~ff;

initial begin
    #1000
    $finish;
end
endmodule