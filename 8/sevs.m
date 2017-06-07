function y=sevs(a)

[m,n]=size(a);
for i=1:m
    f(i,:)=sevs_extra(a(i,:));
end
y=f;
end