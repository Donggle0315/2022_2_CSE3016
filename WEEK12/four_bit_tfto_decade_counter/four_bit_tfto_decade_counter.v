`timescale 1ns / 1ps

module four_bit_tfto_decade_counter(clk,reset,out);
input clk,reset;
output [3:0] out;
reg [3:0] out;

initial out=4'b0000;
always@(posedge clk) begin
if(reset==1'b1) begin
    out=4'b0000;
end
else begin
    out[0]<=~out[0];
    if(~out[3]&out[2]|out[0]==1) begin
        if(out[0]==1) begin
            out[1]<=~out[1];
        end
        else begin
            out[1]<=1'b1;
        end
    end
    else begin
        if(out[0]==1) begin
            out[1]<=1'b0;
        end
        else begin
            out[1]<=out[1];
        end
    end
    
    if(out[1]&out[0]==1) begin
        if(~out[3]|out[1]&out[0]==1) begin
            out[2]<=~out[2];
        end
        else begin
            out[2]<=1'b1;
        end
    end
    else begin
        if(~out[3]|out[1]&out[0]==1) begin
            out[2]<=1'b0;
        end
        else begin
            out[2]<=out[2];
        end
    end
    
    if(out[2]==1) begin
        if(out[0]&out[1]&out[2]==1) begin
            out[3]<=~out[3];
        end
        else begin
            out[3]<=1'b1;
        end
    end
    else begin
        if(out[0]&out[1]&out[2]==1) begin
            out[3]<=1'b0;
        end
        else begin
            out[3]<=out[3];
        end
    end    
end
end
endmodule