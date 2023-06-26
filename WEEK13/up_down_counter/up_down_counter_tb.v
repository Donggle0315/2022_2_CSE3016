`timescale 1ns / 1ps

module up_down_counter_tb;
reg up_down,clk,clr;
wire dp;
wire [3:0] out;
wire [6:0] seg;

up_down_counter u_updown(
.up_down(up_down),
.clk(clk),
.clr(clr),
.dp(dp),
.out(out),
.seg(seg));

initial begin
clk=1'b0;
clr=1'b0;
up_down=1'b1;
end

always clk=#10 ~clk;

initial begin
#350 
assign clr=~clr;
#40 
assign clr=~clr;
#60 
assign up_down=~up_down;
#350 
assign clr=~clr;
#40 
assign clr=~clr;
#500
$finish;
end
endmodule
