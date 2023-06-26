//디자인 소스 코드 
`timescale 1ns / 1ps//시간 단위
module inv(//모둘 이름 inv, BUF&NOT GATE 구현
input a,b,
output y,z
);   
assign y=~a;//NOT GATE, 아웃풋에 대해 인풋을 지정
assign z=b;//BUF GATE
endmodule//코드 끝