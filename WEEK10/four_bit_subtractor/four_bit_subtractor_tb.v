`timescale 1ns / 1ps

module four_bit_subtractor_tb;

reg [3:0] aa,bb;
reg bbin;
wire [3:0] dd;
wire bbout;

four_bit_subtractor u_subtractor(
.a(aa),
.b(bb),
.bin(bbin),
.d(dd),
.bout(bbout));

initial begin
aa=4'b0000;
bb=4'b0000;
bbin=1'b1;
end

always aa=#25 aa+1;
always bb=#50 bb+1;
always bbin=#100 ~bbin;

initial begin
    #2000
    $finish;
end
endmodule
