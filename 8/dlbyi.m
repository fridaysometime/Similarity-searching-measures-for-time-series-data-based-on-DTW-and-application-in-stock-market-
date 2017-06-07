function [dlb,n]=dlbyi(y,e)

[m,n]=size(y);
for i=2:1:m
    result(i,:)=lb_yi(y(i,:),y(1,:));
end
n=result;
dlb=find(result>e);
end