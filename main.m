n=xlsread('上证综指.xls','total2009');
[a,b]=size(n);
nn=reshape(n',1,a*b);
[f,g]=sevs_extra(nn);
out=d_noraml(a,b,f);
y=divided(out);

top=[-1.3122,-1.0097,-1.3147,-0.9319,-1.3116,-1.2012,-1.61];
dm=[0.9370,1.5277,1.6021,0.9607,1.3832,1.6318,1.4198];
zv=[0.5520,0.4632,-0.2307,-0.2598,0.1043,0.1277,0.6318];
w=[-1.4583,-1.7986,-1.3692,-1.5172,-1.7212,-1.7301,-1.5213];

dseg1=o_dtw(y,top);
dseg2=o_dtw(y,dm);
dseg3=o_dtw(y,zv);
dseg4=o_dtw(y,w);

com1=compare(dseg1);
com2=compare(dseg2);
com3=compare(dseg3);
com4=compare(dseg4);

figure(1)
subplot(2,2,1),plot(f(1,17:26)),title('头肩顶'),grid on
subplot(2,2,2),plot(f(1,109:116)),title('双重顶'),grid on
subplot(2,2,3),plot(f(1,128:134)),title('V型'),grid on
subplot(2,2,4),plot(f(1,9:15)),title('W型'),grid on





 

