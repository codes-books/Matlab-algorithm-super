%%
A=[1  -2  3  -1;3  -1  5  -3;2  1  2  -2];
b=[1  2  3]';
B=[A b];
n=4;
RA=rank(A)
RB=rank(B)
format rat
if RA==RB&RA==n      %�ж��Ƿ���Ψһ��
   X=A\b
elseif RA==RB&RA<n    %�ж��Ƿ��������
   X=A\b      %���ؽ�
   C=null(A,'r')    %��AX=0�Ļ�����ϵ
else X='equition no solve'     %�ж��޽�
end
