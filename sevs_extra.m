function [f,g]=sevs_extra(a)

l=length(a);
z=l/10;
d=rem(l,10);
if d==0
    a2=a;
else
  e=zeros(1,10-d);
    a2=[a,e];
end
for i=1:z+1
    t(i,:)=a2((i-1)*10+1:10*i);
end

for i=1:z+1
     [ma,na]=max(t(i,:));
     kmax(i,:)=ma;
     gmax(i,:)=na;
     [mi,ni]=min(t(i,:));
     kmin(i,:)=mi;
     gmin(i,:)=ni;
end

for i=1:z+1
    if gmax(i)<gmin(i)
        f(i,:)=[kmax(i),kmin(i)];
    else
        f(i,:)=[kmin(i),kmax(i)];
    end
end
g=f;
[m,n]=size(g);
f=reshape(f',1,m*n);
f=f(1:(length(f))-1);

figure(2)
subplot(2,1,1);
plot(a),title('原始时间序列')
subplot(2,1,2);
plot(f),title('分段极值点序列')
end