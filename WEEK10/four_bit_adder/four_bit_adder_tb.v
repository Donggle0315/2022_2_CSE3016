`timescale 1ns / 1ps

module four_bit_adder_tb;

reg [3:0] aa,bb;
reg ccin;
wire [3:0] ss;
wire ccout;

four_bit_adder u_adder(
.a(aa),
.b(bb),
.cin(ccin),
.s(ss),
.cout(ccout));

initial begin
aa=4'b0000;
bb=4'b0000;
ccin=1'b1;
end

always aa=#25 aa+1;
always bb=#50 bb+1;
always ccin=#100 ~ccin;

initial begin
    #2000
    $finish;
end
endmodule
