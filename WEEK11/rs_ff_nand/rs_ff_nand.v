`timescale 1ns / 1ps

module rs_ff_nand(
input r,s,cp,
output q,nq
    );
assign q=~(~(s&cp)&nq);
assign nq=~(~(r&cp)&q);
endmodule
