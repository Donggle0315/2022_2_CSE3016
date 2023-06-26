`timescale 1ns / 1ps

module boolean_function_d(
input a,b,c,
output x
    );
assign x=~((a|b)&c);

endmodule
