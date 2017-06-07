function [com,e]=compare(d,y)

[m,n]=sort(d',2);
t=[m;n];
for i=1:length(d)
    temp(i,:)=y(t(2,i),:);
end
com=temp;
e=min(m(:,4));

figure(2)
subplot(3,2,1),plot(com(1,:));
axis([0,20,-2,-0.5]),grid on
subplot(3,2,2),plot(com(2,:));
axis([0,20,-2,-0.5]),grid on
subplot(3,2,3),plot(com(3,:));
axis([0,20,-2,-0.5]),grid on
subplot(3,2,4),plot(com(4,:));
axis([0,20,-2,-0.5]),grid on
subplot(3,2,5),plot(com(5,:));
axis([0,20,-2,-0.5]),grid on
subplot(3,2,6),plot(com(6,:));
axis([0,20,-2,-0.5]),grid on
end