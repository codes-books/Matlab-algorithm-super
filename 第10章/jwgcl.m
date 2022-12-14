%基于LQR最优控制的降维观测器设计

%LQR控制稳定系统
Q=diag([1,0,1,0]);
R=1;
Ks=lqr(A,B,Q,R);%状态反馈矩阵
%降维观测器设计
q=rank(C);
P=[C;0 1 0 0;0 0 0 1];
Q=inv(P);
Q1=Q(:,1:q);
Q2=Q(:,q+1:rank(Q));
A1=P*A*inv(P);
B1=P*B;
%A1矩阵分块
A11=A1(1:q,1:q);
A12=A1(1:q,q+1:4);
A21=A1(q+1:4,1:q);
A22=A1(q+1:4,q+1:4);
%B1矩阵分块
B11=B1(1:q,:);
B12=B1(q+1:4,:);
Pole=[-1 -2];%期望极点
K=place(A22',A12',Pole);%极点配置
L=K';%状态观测器增益矩阵