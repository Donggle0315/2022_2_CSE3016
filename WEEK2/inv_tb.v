`timescale 1ns / 1ps
module inv_tb;//��� �̸�, ioput �������� ����
reg aa,bb;//reg�� input�� �����ϴ� ����

wire y,zz;//wire�� output�� �����ϴ� ����

inv u_inv(//������ �ҽ� �ڵ��� ��� �̸�(inv) + u_inv(�������)
.a(aa),//a�� aa�� ����
.y(y),//y�� y�� ����
.b(bb),//b�� bb�� ����
.z(zz)//z�� zz�� ����
);
initial begin
aa=1'b0;//�ʱ�ȭ aa �� 1��Ʈ�� 0, reg���� ������ ���� ����ؾ���
bb=1'b1;
end

always begin
aa=#100~aa;//aa�� 100���� ���� NOT��Ŵ
bb=#50~bb;//bb�� 50 �������� NOT ��Ŵ
end

initial begin//initial�� ������ �տ� ���� �ʿ䰡 ����
#1000//1000�ð� ������ �Ǿ��ٸ�
$finish;//���α׷��� ����
end
endmodule
