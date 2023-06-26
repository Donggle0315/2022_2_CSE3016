`timescale 1ns / 1ps

module mealy_ozozo(clk,x,z,out);
input clk,x;
output z;
output [2:0] out;
reg [2:0] out;
reg z;

initial out=3'b000;

always@(posedge clk) begin
    if(out==3'b000) begin
        if(x==0) begin
            out<=3'b000;
            z<=1'b0;
        end
        else begin
            out<=3'b001;
            z<=1'b0;
        end
    end
    else if(out==3'b001) begin
        if(x==0) begin
            out<=3'b010;
            z<=1'b0;
        end
        else begin
            out<=3'b001;
            z<=1'b0;
        end
    end
    else if(out==3'b010) begin
        if(x==0) begin
            out<=3'b000;
            z<=1'b0;
        end
        else begin
            out<=3'b011;
            z<=1'b0;
        end
    end
    else if(out==3'b011) begin
        if(x==0) begin
            out<=3'b100;
            z<=1'b0;
        end
        else begin
            out<=3'b001;
            z<=1'b0;
        end
    end
    else begin
        if(x==0) begin
            out<=3'b000;
            z<=1'b0;
        end
        else begin
            out<=3'b011;
            z<=1'b1;
        end
    end
end
endmodule
