function y=divided(a,b,n)

n=reshape(n',1,a*b);
l=length(n);
z=l/20;
d=rem(l,20);
if d==0
    a2=n;
else
  e=zeros(1,20-d);
    a2=[n,e];
end
for i=1:z+1
    t(i,:)=a2((i-1)*20+1:20*i);
end
m=size(t);
y=t(1:(m(1,1)-1),:);
end



