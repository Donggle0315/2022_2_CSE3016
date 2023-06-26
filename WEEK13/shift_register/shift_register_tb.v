`timescale 1ns / 1ps

module shift_register_tb;
reg clk,reset,shift_in;
wire [3:0] out;

shift_register u_register(
.clk(clk),
.reset(reset),
.shift_in(shift_in),
.out(out));

initial begin
clk=1'b0;
reset=1'b0;
shift_in=1'b0;
end

always #10 clk=~clk;
always #45 shift_in=~shift_in;

initial begin
#240
assign reset=~reset;
#100
assign reset=~reset;
#1000
$finish;
end
endmodule
