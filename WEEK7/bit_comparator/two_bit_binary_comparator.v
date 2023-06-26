`timescale 1ns / 1ps

module two_bit_binary_comparator(
input a1,a2,b1,b2,
output f1,f2,f3
    );
    
assign f1=(a1&(~b1))|(a2&(~b1)&(~b2))|(a1&a2&(~b2));
assign f2=~(a1^b1)&~(a2^b2);
assign f3=((~a1)&b1)|((~a1)&(~a2)&b2)|((~a2)&b1&b2);
endmodule
