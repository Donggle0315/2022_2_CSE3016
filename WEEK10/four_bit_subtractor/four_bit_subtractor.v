`timescale 1ns / 1ps

module four_bit_subtractor(a,b,d,bin,bout);
input [3:0] a,b;
input bin;
output [3:0] d;
output bout;
wire [3:1] bo;

assign d[0]=a[0]^b[0]^bin;
assign bo[1]=(~a[0]&b[0])|(bin&~(a[0]^b[0]));
assign d[1]=a[1]^b[1]^bo[1];
assign bo[2]=(~a[1]&b[1])|(bo[1]&~(a[1]^b[1]));
assign d[2]=a[2]^b[2]^bo[2];
assign bo[3]=(~a[2]&b[2])|(bo[2]&~(a[2]^b[2]));
assign d[3]=a[3]^b[3]^bo[3];
assign bout=(~a[3]&b[3])|(bo[3]&~(a[3]^b[3]));

endmodule
