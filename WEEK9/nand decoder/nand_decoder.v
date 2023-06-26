`timescale 1ns / 1ps

module nand_decoder(
    input a,b,
    output d0,d1,d2,d3
    );
assign d0=~(~a&~b);
assign d1=~(~a&b);
assign d2=~(a&~b);
assign d3=~(a&b);    

endmodule

//a가 큰 수, b가 작은 수