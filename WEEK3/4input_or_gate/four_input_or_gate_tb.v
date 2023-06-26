`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 15:49:24
// Design Name: 
// Module Name: four_input_or_gate_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_input_or_gate_tb;
reg aa,bb,cc,dd;
wire xx,yy,zz;

four_input_or_gate u_or_gate(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.x(xx),
.y(yy),
.z(zz));

initial begin
    aa=1'b1;
    bb=1'b1;
    cc=1'b1;
    dd=1'b1;
end

always begin
    aa=#20~aa;
    bb=#40~bb;
    cc=#80~cc;
    dd=#160~dd;
end

initial begin
    #1000
    $finish;
end

endmodule
