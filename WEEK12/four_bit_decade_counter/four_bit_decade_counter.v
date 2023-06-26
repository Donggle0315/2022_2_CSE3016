`timescale 1ns / 1ps

module four_bit_decade_counter(clk,reset,out);
input clk,reset;
output [3:0] out;
reg [3:0] out;

initial out=4'b0000;
always@(posedge clk) begin
    if(reset==1'b1) begin
        out=4'b0000;
    end
    else begin
        if(out==4'b1001) begin
            out=4'b0000;
        end
        else begin
            out<=out+1;
        end
    end
end
endmodule