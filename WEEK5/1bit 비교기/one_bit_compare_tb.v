`timescale 1ns / 1ps

module one_bit_compare_tb;

reg aa,bb;
wire ww,xx,yy,zz;

one_bit_compare u_compare(
.a(aa),
.b(bb),
.w(ww),
.x(xx),
.y(yy),
.z(zz));

initial begin
aa=1'b1;
bb=1'b1;
end

always begin
aa=#10 ~aa;
bb=#20 ~bb;
end

initial begin
    #1000
    $finish;
end
endmodule
