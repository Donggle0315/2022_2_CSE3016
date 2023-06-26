`timescale 1ns / 1ps

module moore_oozo(clk,x,z,out);
input clk,x;
output z;
output [2:0] out;
reg [2:0] out;
reg z;

initial out=3'b000;

always@(posedge clk) begin
    if(out==3'b000) begin
        z<=1'b0;
        if(x==0) begin
            out<=3'b000;
        end
        else begin
            out<=3'b001;
        end
    end
    else if(out==3'b001) begin
        z<=1'b0;
        if(x==0) begin
            out<=3'b000;
        end
        else begin
            out<=3'b010;
        end
    end
    else if(out==3'b010) begin
        z<=1'b0;
        if(x==0) begin
            out<=3'b011;
        end
        else begin
            out<=3'b010;
        end
    end
    else if(out==3'b011) begin
        z<=1'b0;
        if(x==0) begin
            out<=3'b000;
        end
        else begin
            out<=3'b100;
        end
    end
    else begin
        z<=1'b1;
        if(x==0) begin
            out<=3'b000;
        end
        else begin
            out<=3'b010;
        end
    end
end
endmodule
