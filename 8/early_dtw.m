function dis=early_dtw(y,e)

[m,n]=size(y);
% tic
for i=1:1:m
    result(i,:)=early_abandon(y(i,:),y(1,:),e);
end
dis=result;
dis=find(result>0);
% t(n)=toc
end