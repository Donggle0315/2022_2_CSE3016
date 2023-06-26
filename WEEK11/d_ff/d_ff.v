`timescale 1ns / 1ps

module d_ff(
input cp, d,
output q,nq
    );
assign q=~((~d&cp)|nq);
assign nq=~((d&cp)|q);
endmodule
