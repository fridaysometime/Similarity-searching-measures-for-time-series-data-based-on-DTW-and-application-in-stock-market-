function f=sevs_extra(a)

l=length(a);
z=l/10;
for i=1:z
    t(i,:)=a((i-1)*10+1:10*i);
end

for i=1:z
     [ma,na]=max(t(i,:));
     kmax(i,:)=ma;
     gmax(i,:)=na;
     [mi,ni]=min(t(i,:));
     kmin(i,:)=mi;
     gmin(i,:)=ni;
end

for i=1:z
    if gmax(i)<gmin(i)
        f(i,:)=[kmax(i),kmin(i)];
    else
        f(i,:)=[kmin(i),kmax(i)];
    end
end
[m,n]=size(f);
f=reshape(f',1,m*n);
f=f(1:(length(f)));
end