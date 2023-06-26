`timescale 1ns / 1ps

module shift_register(clk,shift_in,out,reset);
input shift_in,clk,reset;
output [3:0] out;
reg [3:0] out;

initial out=4'b0000;

always@(posedge clk) begin
    if(reset==1'b1) begin
        out=4'b0000;
    end
    else begin
        out<=out>>1;
        out[3]<=shift_in;
    end
end
endmodule