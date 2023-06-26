`timescale 1ns / 1ps
module inv_tb;//모듈 이름, ioput 지정하지 않음
reg aa,bb;//reg는 input에 대응하는 변수

wire y,zz;//wire은 output에 대응하는 변수

inv u_inv(//디자인 소스 코드의 모듈 이름(inv) + u_inv(상관없음)
.a(aa),//a와 aa를 대응
.y(y),//y와 y를 대응
.b(bb),//b와 bb를 대응
.z(zz)//z와 zz를 대응
);
initial begin
aa=1'b0;//초기화 aa 는 1비트의 0, reg에서 선언한 값을 사용해야함
bb=1'b1;
end

always begin
aa=#100~aa;//aa는 100단위 마다 NOT시킴
bb=#50~bb;//bb는 50 단위마다 NOT 시킴
end

initial begin//initial은 무조건 앞에 나올 필요가 없음
#1000//1000시간 단위가 되었다면
$finish;//프로그램을 종료
end
endmodule
