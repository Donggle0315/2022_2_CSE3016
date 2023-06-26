`timescale 1ns / 1ps

module four_to_one_mux(
    input a,b,A,B,C,D,
    output o
    );
assign o=(~b&~a&A)|(~b&a&B)|(b&~a&C)|(b&a&D);
endmodule