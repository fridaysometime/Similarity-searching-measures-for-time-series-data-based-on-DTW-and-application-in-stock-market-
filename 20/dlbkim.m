function [x,n]=dlbkim(y,e)

[m,n]=size(y);
for i=2:1:m
    result(i,:)=lb_kim(y(i,:),y(1,:));
end
n=result;
x=find(result>e);
end