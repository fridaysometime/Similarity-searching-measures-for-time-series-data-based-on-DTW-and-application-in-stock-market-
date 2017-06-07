function re=lb_yi(a,b)

m1=zeros(2,length(a));
m2=zeros(2,length(a));
m3=zeros(2,length(a));
if (max(a)<min(b))|(max(b)<min(a))
    for i=1:length(a)
            m1(1,i)=(abs(a(:,i)-max(b)));
            m1(2,i)=(abs(b(:,i)-min(a)));
    end
    re=sqrt(max(sum(m1(1,:)),sum(m1(2,:))));
elseif  (min(a)>min(b))&(max(a)<max(b))
    for i=1:length(a)
             m2(1,i)=(abs(a(:,i)-max(b)));
             m2(2,i)=(abs(b(:,i)-min(b)));
    end
    re=sqrt(sum(m2(1,:))+sum(m2(2,:)));
else 
   for i=1:length(a)
              m3(1,i)=(abs(a(:,i)-max(b)));
              m3(2,i)=(abs(b(:,i)-min(a)));
   end
    re=sqrt(sum(m3(1,:))+sum(m3(2,:)));
end
