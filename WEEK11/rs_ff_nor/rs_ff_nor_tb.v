`timescale 1ns / 1ps

module rs_ff_nor_tb;
reg ccp,ss,rr;
wire qq,nqq;

rs_ff_nor u_rs(
.cp(ccp),
.s(ss),
.r(rr),
.q(qq),
.nq(nqq));

initial begin
ccp=1'b0;
ss=1'b0;
rr=1'b1;
end

always ccp=#20 ~ccp;
always ss=#40 ~ss;
always rr=#60 ~rr;

initial begin
#1000
$finish;
end
endmodule
