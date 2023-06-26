`timescale 1ns / 1ps

module bcd_adder(a,b,s,cin,cout);
input [3:0] a,b;
input cin;
output [3:0] s;
output cout;
wire [3:0] tmp,c,d;
wire k;

assign tmp[0]=a[0]^b[0]^cin;
assign c[1]=a[0]&b[0]|cin&(a[0]^b[0]);
assign tmp[1]=a[1]^b[1]^c[1];
assign c[2]=a[1]&b[1]|c[1]&(a[1]^b[1]);
assign tmp[2]=a[2]^b[2]^c[2];
assign c[3]=a[2]&b[2]|c[2]&(a[2]^b[2]);
assign tmp[3]=a[3]^b[3]^c[3];
assign k=a[3]&b[3]|c[3]&(a[3]^b[3]);
assign cout=k|(tmp[3]&tmp[2])|(tmp[3]&tmp[1]);
assign s[0]=0^tmp[0]^0;
assign d[1]=0&tmp[0]|0&(0^tmp[0]);
assign s[1]=cout^tmp[1]^d[1];
assign d[2]=cout&tmp[1]|d[1]&(cout^tmp[1]);
assign s[2]=cout^tmp[2]^d[2];
assign d[3]=cout&tmp[2]|d[2]&(cout^tmp[2]);
assign s[3]=0^tmp[3]^d[3];

endmodule
