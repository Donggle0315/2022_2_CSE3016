`timescale 1ns / 1ps

module ring_counter(clk,clr,out);
input clk,clr;
output [3:0] out;
reg [3:0] out;

initial out=4'b1000;

always@(posedge clk) begin
    if(clr==1) begin
        out=4'b1000;
    end
    else begin
        out<=out>>1;
        out[3]<=out[0];
    end
end
endmodule
