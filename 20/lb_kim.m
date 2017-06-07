function result=lb_kim(a,b)
fa=a(1,1);
fb=b(1,1);
la=a(1,length(a));
lb=b(1,length(b));
lb_kim=[abs(fa-fb),abs(la-lb),abs(max(a)-max(b)),abs(min(a)-min(b))];
result=max(lb_kim);
end