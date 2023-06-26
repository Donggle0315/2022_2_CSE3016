`timescale 1ns / 1ps

module seven_segment_display(
input a,b,c,d,
output A,B,C,D,E,F,G,DP,digit
    );
assign A=(~b&~d)|(~a&c)|(b&c)|(a&~d)|(a&~b&~c)|(~a&b&d);
assign B=(~b&~d)|(~a&~b)|(~a&~c&~d)|(a&~c&d)|(~a&c&d);
assign C=(~a&~c)|(~a&d)|(~a&b)|(~c&d)|(a&~b);
assign D=(~a&~b&~d)|(a&~c&~d)|(b&~c&d)|(~b&c&d)|(b&c&~d);
assign E=(~b&~d)|(a&b)|(a&c)|(c&~d);
assign F=(~c&~d)|(b&~d)|(a&~b)|(a&c)|(~a&b&~c);
assign G=(a&~b)|(a&d)|(~b&c)|(c&~d)|(~a&b&~c);
assign DP=1;
assign digit=A|B|C|D|E|F|G|DP;
endmodule
