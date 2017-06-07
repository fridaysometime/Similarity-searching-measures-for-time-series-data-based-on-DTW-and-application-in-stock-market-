function y=divided(n)

l=length(n);
z=l/7;
d=rem(l,7);
if d==0
    a2=n;
else
  e=zeros(1,7-d);
    a2=[n,e];
end
for i=1:1:l-5
    t(i,:)=a2(i:(6+i));
end
m=size(t);
y=t(1:(m(1,1)-1),:);
end



