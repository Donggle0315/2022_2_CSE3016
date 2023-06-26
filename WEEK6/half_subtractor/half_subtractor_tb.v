`timescale 1ns / 1ps

module half_subtractor_tb;
reg aa,bb;
wire ddi,bbo;

half_subtractor u_ha(
.a(aa),
.b(bb),
.di(ddi),
.bo(bbo));

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
