`timescale 1ns / 1ps

module four_input_aoi_gate(
    input a,b,c,d,
    output x,y,z
    );
    assign x=a&b;
    assign y=c&d;
    assign z=~(x|y);
endmodule
