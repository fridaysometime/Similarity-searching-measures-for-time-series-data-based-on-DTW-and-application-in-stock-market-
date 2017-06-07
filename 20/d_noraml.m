function out=d_noraml(m,n,y)

a=mean(y);
b=std(y);
for i=1:m
   out(i,:)=(y(i,:)-a)/b;
end