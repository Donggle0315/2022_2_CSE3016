`timescale 1ns / 1ps

module full_adder_tb;
reg aa,bb,ccin;
wire ss,ccout;

full_adder u_ha(
.a(aa),
.b(bb),
.s(ss),
.cin(ccin),
.cout(ccout));

initial begin
aa=1'b1;
bb=1'b1;
ccin=1'b1;
end

always begin
aa=#10 ~aa;
bb=#20 ~bb;
ccin=#40 ~ccin;
end

initial begin
    #1000
    $finish;
end

endmodule
