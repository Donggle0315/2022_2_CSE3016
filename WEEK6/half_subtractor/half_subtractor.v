`timescale 1ns / 1ps

module half_subtractor(
input a,b,
output di,bo
    );
    
assign di=a^b;
assign bo=(~a)&b;

endmodule