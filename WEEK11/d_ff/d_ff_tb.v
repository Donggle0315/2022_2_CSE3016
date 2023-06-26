`timescale 1ns / 1ps

module d_ff_tb;
reg dd,ccp;
wire qq,nqq;

d_ff u_d(
.d(dd),
.cp(ccp),
.q(qq),
.nq(nqq));

initial begin
dd=1'b0;
ccp=1'b0;
end

always dd=#20 ~dd;
always ccp=#40 ~ccp;

initial begin
#1000
$finish;
end
endmodule
