`timescale 1ns / 1ps

module full_adder(
input a,b,cin,
output s,cout
    );
    
assign s=(a^b)^cin;
assign cout=cin&(a^b)|(a&b);

endmodule
