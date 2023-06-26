`timescale 1ns / 1ps

module moore_oozo_tb;
reg clk,x;
wire z;
wire [2:0] out;

moore_oozo u_moore(
.clk(clk),
.x(x),
.z(z),
.out(out));

initial begin
clk=1'b0;
x=1'b1;
end

always clk=#20 ~clk;

initial begin
#80 assign x=~x;
#40 assign x=~x;
#90 assign x=~x;
#40 assign x=~x;
#120 assign x=~x;
#80 assign x=~x;
#140 assign x=~x;
#100 assign x=~x;
#160 assign x=~x;
#120 assign x=~x;
#1000
$finish;
end
endmodule
