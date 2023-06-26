`timescale 1ns / 1ps

module up_down_counter(up_down,clk,clr,dp,out,seg);
input up_down, clk, clr;
output dp;
output [3:0] out;
output [6:0] seg;
reg [3:0] out;
reg [6:0] seg;

assign dp=1'b1;

initial out=4'b0000;
initial seg=7'b0000000;

always@(posedge clk) begin
    if(clr==1'b1) begin
        out=4'b0000;
        seg=7'b0000000;
    end
    else if(up_down==1'b1) begin
        out=out+1;
        seg=7'b0111110;
    end
    else begin
        out=out-1;
        seg=7'b1011110;
    end
end
endmodule
