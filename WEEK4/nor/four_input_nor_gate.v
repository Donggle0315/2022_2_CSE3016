`timescale 1ns / 1ps

module four_input_nor_gate(
    input a,b,c,d,
    output x,y,z
    );
    assign x=~(a|b);
    assign y=~(x|c);
    assign z=~(y|d);
endmodule
