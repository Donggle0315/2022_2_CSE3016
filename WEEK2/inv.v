//������ �ҽ� �ڵ� 
`timescale 1ns / 1ps//�ð� ����
module inv(//��� �̸� inv, BUF&NOT GATE ����
input a,b,
output y,z
);   
assign y=~a;//NOT GATE, �ƿ�ǲ�� ���� ��ǲ�� ����
assign z=b;//BUF GATE
endmodule//�ڵ� ��