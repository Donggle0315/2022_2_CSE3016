`timescale 1ns / 1ps

module boolean_function_a(
input a,b,c,
output x
    );
    
assign x=(~a|~b)&(~c);

endmodule
