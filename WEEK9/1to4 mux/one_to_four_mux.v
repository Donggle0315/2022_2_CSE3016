`timescale 1ns / 1ps

module one_to_four_mux(
    input a,b,f,
    output A,B,C,D
    );
assign A=f&~a&~b;
assign B=f&a&~b;
assign C=f&~a&b;
assign D=f&a&b;
endmodule

//a�� ������, b�� ū ��