`timescale 1ns / 1ps

module two_bit_binary_counter(clk,reset,out);
input clk,reset;
output [1:0] out;
reg [1:0] out;

initial out=2'b00;
always@(posedge clk) begin
if(reset==1'b1) begin
out=2'b00;
end
else begin
out<=out+1;
end
end
endmodule