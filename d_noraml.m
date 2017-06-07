function out=d_noraml(m,n,y)
a=mean(y);
b=std(y);
out=(y-a)/b;
end