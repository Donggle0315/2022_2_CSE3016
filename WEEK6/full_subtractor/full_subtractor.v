`timescale 1ns / 1ps

module full_subtractor(
input a,b,bin,
output dout,bout
    );
    
assign dout=a^b^bin;
assign bout=~(a^b)&bin|(~a)&b;

endmodule