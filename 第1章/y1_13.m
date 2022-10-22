clc,clear,close all
x=[129 140 103.5 88 185.5 195 105.5 157.5 107.5 77 81 162 162 117.5];
y=[7.5,141.5,23,147,22.5,137.5,85.5,-6.5,-81,3,56.5,-66.5,84,-33.5];
z=[4,8,6,8,6,8,8,9,9,8,8,9,4,9];
x1=75:0.5:200;
y1=-50:0.5:150;
[x2,y2]=meshgrid(x1,y1);
z2=griddata(x,y,z,x2,y2,'v4');   % 'v4'MATLAB 4 ������������ڲ�
subplot(131)
mesh(x2,y2,z2);
hold on
C=contour(x2,y2,z2);          %���Ƶ�λ��
clabel(C);
subplot(1,3,2)
C=contour(x2,y2,z2);          %���Ƶ�λ��
clabel(C);          % ��λ�߱�ʶ
[C,d] = contour(x2,y2,z2);
clabel(C,d,'manual');
grid on
hold on
subplot(133)
contour(x2,y2,z2,[4,4,4.5,4.5,5,5,5.5,5.5]); %���Ʋ�ͬ��λ�ľ�ʾ��
title('��ʾ��ͼ');
hold on 
xlabel('X'),ylabel('Y');
grid on
gtext('4�ֵľ�����');
gtext('4.5�ֵľ�����');
gtext('5�ֵľ�����');
gtext('5.5�ֵľ�����');
