`timescale 1ns / 1ps

module ring_counter_tb;
reg clk,clr;
wire [3:0] out;

ring_counter u_counter(
.clk(clk),
.clr(clr),
.out(out));

initial begin
clk=1'b0;
clr=1'b0;
end

always #20 clk=~clk;

initial begin
#240
assign clr=~clr;
#100
assign clr=~clr;
#1000
$finish;
end
endmodule
