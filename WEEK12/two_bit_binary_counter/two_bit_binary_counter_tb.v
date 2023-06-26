`timescale 1ns / 1ps

module two_bit_binary_counter_tb;
reg clk,reset;
wire [1:0] out;

two_bit_binary_counter u_counter(
.clk(clk), 
.reset(reset), 
.out(out));

initial begin
clk=1'b0;
reset=1'b0;
end

always #10 clk=~clk;

initial begin
#200
assign reset=~reset;
#100
assign reset=~reset;
#500
$finish;
end
endmodule
