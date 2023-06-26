`timescale 1ns / 1ps

module code_converter(
input a,b,c,d,
output e,f,g,h);

assign e=a|(b&c)|(b&d);
assign f=a|(b&c)|(b&~d);
assign g=a|(~b&c)|(b&~c&d);
assign h=d;

endmodule