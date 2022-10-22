function [C,Ceq,K1,K2,S] = mycon(X,S)
% ��ʼ��������ࣺ
if  isnan(S(1,1)),
   S = [0.2  0; 0.2  0];
end
% ������������
w1 = 1:S(1,1):100;
w2 = 1:S(2,1):100;
% ���������Լ����
K1 = sin(w1*X(1)).*cos(w1*X(2)) - 1/1000*(w1-50).^2 -sin(w1*X(3))-X(3)-1;
K2 = sin(w2*X(2)).*cos(w2*X(1)) - 1/1000*(w2-50).^2 -sin(w2*X(3))-X(3)-1;
% �޷�����Լ����
C = [ ]; Ceq=[ ];
% ���ư�����Լ��ͼ��
plot(w1,K1,'-',w2,K2,':');
title('Semi-infinite constraints')
grid on
