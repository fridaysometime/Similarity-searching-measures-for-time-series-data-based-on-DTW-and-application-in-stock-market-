n1=xlsread('上证综指1.xls','total2009');
n2=xlsread('上证综指1.xls','total2008');
n3=xlsread('上证综指1.xls','total2009');
n=[n1;n2;n3];
[a,b]=size(n);

figure(1)
plot(n)
title('2007年至2009年上证综指原始折现图')
grid on

out=d_noraml(a,b,n);
y=divided(a,b,out);
dorgin=o_dtw(y);
[com,e]=compare(dorgin,y);

[dyi,m1]=dlbyi(y,e);
[dkim,m2]=dlbkim(y,e);
[dke,m3]=dlb_ke(y,e);

dis=early_dtw(y,e);

seg=sevs(y);
dseg=o_dtw(seg);

[m1,n1]=size(y);
[m2,n2]=size(seg);
k=reshape(y',1,m1*n1);
l=reshape(seg',1,m2*n2);

figure(3)
subplot(2,1,1);
plot(k)
subplot(2,1,2);
plot(l)

 

