%x=[ 42��ʳƷ����ʱ��ļ۸�];��Matlab�е�workplace�����룻
%x1(ʱ��),y1��y2��y3��y4��y5��y6��������ʳƷ����ۣ�����Matlab�е�workplace�����룻
%�����ѷ����ʳƷ�ļ۸�--ʱ������
clc,clear,close all
load('x.mat')
load('y1.mat')
%%
 for i=1:6
       plot(x1,y1(:,i));
       hold on
 end
 xlabel('����');ylabel('�۸�')
%% 
for i=1:3
plot(x1,y2(:,i));
       hold on
end
 xlabel('����');ylabel('�۸�')
%% 
for i=1:12
       plot(x1,y3(:,i));
       hold on
end
 xlabel('����');ylabel('�۸�')
%% 
for i=1:17
 plot(x1,y4(:,i));
       hold on
end
 xlabel('����');ylabel('�۸�')
%% 
for i=1:2
       plot(x1,y5(:,i));
       hold on
end
 xlabel('����');ylabel('�۸�')
%%
for i=1:2
plot(x1,y6(:,i));
       hold on
end
 xlabel('����');ylabel('�۸�')
 %%
%�����ʳƷÿ��������ʱ��ļ۸�ĵ������ʣ�
for j=1:42
for i=1:38
   a(j,i)=(x(j,i+1)-x(j,i))/x(j,i);
end
end
%%
%��ȡ�����������ѷ����ʳƷ,����������--ʱ������
%y111��y222��y333��y444��y555��y666Ϊ�����ĸ���ʳƷ������ʱ���������
load('x1-38.mat')
%��һ���������
for i=1:38
     x1(i)=i;
end
for i=2:39
    y11((i-1),:)=y1(i,:)-y1((i-1),:);
end
for i=1:38
    for j=1:6
        y111(i,j)=y11(i,j)/y1(i,j);
    end
end
%��һ��ʳƷ��������--ʱ������
for i=1:6
    subplot(3,2,i);
    plot(x1,y111(:,i));
end

%%
%�ڶ����������
for i=2:39
    y22((i-1) ,:)=y2(i,:)-y2((i-1),:);
end
for i=1:38
    for j=1:3
        y222(i,j)=y22(i,j)/y2(i,j);
    end
end
%�ڶ���ʳƷ��������--ʱ������
for i=1:3
    subplot(1,3,i);
    plot(x1,y222(:,i));
end
%�������������
for i=2:39
    y33((i-1),:)=y3(i,:)-y3((i-1),:);
end
for i=1:38
    for j=1:12
        y333(i,j)=y33(i,j)/y3(i,j);
    end
end
%������ʳƷ��������--ʱ������
for i=1:12
    subplot(3,4,i);
    plot(x1,y333(:,i));
end
%�������������
for i=2:39
    y44((i-1) ,:)=y4(i,:)-y4((i-1) ,:);
end
for i=1:38
    for j=1:17
        y444(i,j)=y44(i,j)/y4(i,j);
    end
end
%������ʳƷ��������--ʱ������
for i=1:17
    subplot(4,5,i);
    plot(x1,y444(:,i));
end

%�������������
for i=2:39
    y55((i-1) ,:)=y5(i,:)-y5((i-1) ,:);
end
for i=1:38
    for j=1:2
        y555(i,j)=y55(i,j)/y5(i,j);
    end
end
%������ʳƷ��������--ʱ������
for i=1:2
    subplot(1,2,i);
    plot(x1,y555(:,i));
end

%�������������
for i=2:39
    y66((i-1) ,:)=y6(i,:)-y6((i-1) ,:);
end 
for i=1:38
    for j=1:2
        y666(i,j)=y66(i,j)/y6(i,j);
    end
end
%������ʳƷ��������--ʱ������
for i=1:2
    subplot(1,2,i);
    plot(x1,y666(:,i));
end



