function [C,Ceq,K1,s] = myysw(X,s)
% ��ʼ��������ࣺ
if  isnan(s(1,1)),
   s = [2 2];
end
% ����������
w1x = 1:s(1,1):100;
w1y = 1:s(1,2):100;
[wx, wy] = meshgrid(w1x,w1y);
% ���������Լ������ֵ 
K1 = sin(wx*X(1)).*cos(wx*X(2))-1/1000*(wx-50).^2 -sin(wx*X(3))-X(3)+sin(wy*X(2)).*cos(wx*X(1))-1/1000*(wy-50).^2-sin(wy*X(3))-X(3)-1.5;
% �޷�����Լ��
C = [ ]; Ceq=[ ];
%��Լ������ͼ��
m = surf(wx,wy,K1,'edgecolor','none','facecolor','interp');
camlight headlight
title('Semi-infinite constraint')
drawnow

