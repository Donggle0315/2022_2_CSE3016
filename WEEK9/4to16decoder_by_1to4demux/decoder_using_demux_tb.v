`timescale 1ns / 1ps

module decoder_using_demux_tb;
reg een,aa,bb,cc,dd;
wire oo0,oo1,oo2,oo3,oo4,oo5,oo6,oo7,oo8,oo9,oo10,oo11,oo12,oo13,oo14,oo15;

decoder_using_demux u_decoder(
.en(een),
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.o0(oo0),
.o1(oo1),
.o2(oo2),
.o3(oo3),
.o4(oo4),
.o5(oo5),
.o6(oo6),
.o7(oo7),
.o8(oo8),
.o9(oo9),
.o10(oo10),
.o11(oo11),
.o12(oo12),
.o13(oo13),
.o14(oo14),
.o15(oo15));

initial begin
een=1'b1;
aa=1'b1;
bb=1'b1;
cc=1'b1;
dd=1'b1;
end

always een=#10 ~een;
always aa=#20 ~aa;
always bb=#40 ~bb;
always cc=#80 ~cc;
always dd=#160 ~dd;

initial begin
    #2000
    $finish;
end 
endmodule
