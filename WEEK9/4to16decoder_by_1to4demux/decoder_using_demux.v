`timescale 1ns / 1ps

module decoder_using_demux(
input a,b,c,d,en,
output o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,
wire w,x,y,z
    );
assign w=en&~a&~b;
assign x=en&~a&b;
assign y=en&a&~b;
assign z=en&a&b;
assign o0=w&~c&~d;
assign o1=w&~c&d;
assign o2=w&c&~d;
assign o3=w&c&d;
assign o4=x&~c&~d;
assign o5=x&~c&d;
assign o6=x&c&~d;
assign o7=x&c&d;
assign o8=y&~c&~d;
assign o9=y&~c&d;
assign o10=y&c&~d;
assign o11=y&c&d;
assign o12=z&~c&~d;
assign o13=z&~c&d;
assign o14=z&c&~d;
assign o15=z&c&d;

endmodule
