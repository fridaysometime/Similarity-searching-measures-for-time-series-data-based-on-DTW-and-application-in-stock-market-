function t=lb_keogh(a,b)

u=max(b);
l=min(b);
d=zeros(length(a),3);
for i=1:length(a)
     if a(:,i)>u
           d(i,1)=(a(:,i)-u)*(a(:,i)-u);
     elseif a(:,i)<l
           d(i,2)=(a(:,i)-l)*(a(:,i)-l);
     else
           d(i,3)=0;
     end  
end
temp=sum(d);
t=sqrt(sum(temp));
end
