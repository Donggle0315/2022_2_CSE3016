`timescale 1ns / 1ps

module full_subtractor_tb;
reg aa,bb,bbin;
wire ddo,bbo;

full_subtractor u_ha(
.a(aa),
.b(bb),
.bin(bbin),
.dout(ddo),
.bout(bbo));

initial begin
aa=1'b1;
bb=1'b1;
bbin=1'b1;
end

always begin
aa=#10 ~aa;
bb=#20 ~bb;
bbin=#40 ~bbin;
end

initial begin
    #1000
    $finish;
end

endmodule
