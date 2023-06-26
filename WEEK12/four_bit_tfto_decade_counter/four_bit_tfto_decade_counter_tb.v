`timescale 1ns / 1ps

module four_bit_tfto_decade_counter_tb;
reg clk,reset;
wire [3:0] out;

four_bit_tfto_decade_counter u_counter(
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
