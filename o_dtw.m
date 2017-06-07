function d=o_dtw(y,x)
[m,n]=size(y);
for i=1:1:m
    result(i,:)=dtw_distance(y(i,:),x);
end
d=result;
end