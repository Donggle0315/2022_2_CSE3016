`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 15:44:03
// Design Name: 
// Module Name: four_input_or_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_input_or_gate(
    input a,b,c,d,
    output x,y,z
    );
    assign x=a|b;
    assign y=x|c;
    assign z=y|d;
endmodule
