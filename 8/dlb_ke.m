function [dke,ke]=dlb_ke(y,e)

[m,n]=size(y);
for i=2:1:m
    t(i,:)=lb_keogh(y(i,:),y(1,:));
end
ke=t;
dke=find(ke>e);
end
