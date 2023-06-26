`timescale 1ns / 1ps

module moore_ozozo_tb;
reg clk,x;
wire z;
wire [2:0] out;

moore_ozozo u_moore(
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
#30 assign x=~x;
#40 assign x=~x;
#40 assign x=~x;
#40 assign x=~x;
#40 assign x=~x;
#40 assign x=~x;
#40 assign x=~x;
#40 assign x=~x;
#30 assign x=~x;
#50 assign x=~x;
#50 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#55 assign x=~x;
#500
$finish;
end
endmodule
