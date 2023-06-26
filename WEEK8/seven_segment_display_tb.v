`timescale 1ns / 1ps

module seven_segment_display_tb;
reg aa,bb,cc,dd;
wire AA,BB,CC,DD,EE,FF,GG,DDP,DIGIT;

seven_segment_display u_display(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.A(AA),
.B(BB),
.C(CC),
.D(DD),
.E(EE),
.F(FF),
.G(GG),
.DP(DDP),
.digit(DIGIT));

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
    #3000
    $finish;
end
endmodule
