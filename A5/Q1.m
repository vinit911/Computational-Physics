X=[1.0 0.54030;1.1 .48360;1.2 0.30236;1.3 .22150;1.4 .18497];
x=1:.005:1.5;
y=zeros(1,length(x));
n=4;
for i=1:length(x)
y(i)=newtonfor(X,x(i),n);
end
plot(x,y,'-');
hold on
grid on
plot(X(:,1),X(:,2),'r*')
title('Newton_for');
f1=newtonfor(X,1.03,n)
f2=newtonfor(X,1.38,n)
for i=1:length(x)
y(i)=polyinter2(X,x(i));
end
figure
plot(x,y,'-');
hold on
grid on
plot(X(:,1),X(:,2),'r*')
title('Lagrange')
f3=polyinter2(X,1.03)
f4=polyinter2(X,1.38)