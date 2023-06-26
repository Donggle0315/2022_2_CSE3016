`timescale 1ns / 1ps

module one_bit_compare(
input a,b,
output w,x,y,z
    );
    
assign w=a==b;
assign x=a!=b;
assign y=a>b;
assign z=a<b;

endmodule
