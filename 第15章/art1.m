%
clc,clear,close all
load data.mat
P=datay;
n0=size(P);
max=max(P(:))';
min=min(P(:))';

if min==0
    P1=zeros(max+1,n0(1,2));
end
if min==0
    for i=1:n0(1,1)
        for j=1:n0(1,2)
            P1(P(i,j)+1,j)=1;
        end
    end
end

if min~=0
    P1=zeros(max-min+1,n0(1,2));
end
if min~=0
    for i=1:n0(1,1)
        for j=1:n0(1,2)
            P1(P(i,j),j)=1;
        end
    end
end

P=P1;
%%
[R,Q] = size(P); 
S = 10;							% ѡ���ʼ����ڵ�
W0 = ones(S,R);					% �����ʼȨֵ
lr = 1; 							% ѡ��ѧϰ����
r = 0.85;							% ѡ�����ƶ�	
disp('Pass 1');						 
W = sima1(W0,P,lr,r,1);				% ��һ������ART1����ѵ������
% disp('Pass 2');						% �����н��W��Ϊ��ʼȨֵ��
% W = sima1(W,P,lr,r,1);				% ���еڶ�������ART1����ѵ������
% disp('Pass 3');						
% W = sima1(W,P,lr,r,1);				% ���е���������ART1����ѵ������
% W1 = W'						
% pause
% W2=(normc(W1))'