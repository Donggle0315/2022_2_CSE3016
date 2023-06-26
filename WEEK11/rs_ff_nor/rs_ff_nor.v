`timescale 1ns / 1ps

module rs_ff_nor(
input r,s,cp,
output q,nq
    );
assign q=~((r&cp)|nq);
assign nq=~((s&cp)|q);
endmodule
