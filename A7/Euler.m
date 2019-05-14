clc
f=@(x,y) (2*y-18*x)./(1+x);

n=60;
h=3/n;

y=zeros(1,n);
x=zeros(1,n);
x(1)=0;
y(1)=4;

for i=1:n-1
    x(i+1)=x(1)+i*h;
    t=f(x(i),y(i));
    y(i+1)=y(i)+h*t;
end
grid on
hold on
plot(x,y)
plot(x,-5*x.^2+8*x+4)
legend('Numerical Solution','Analytical Solution')
xlabel('x')
ylabel('y')
hold off

figure()
plot(abs(y+5*x.^2-8*x-4))
xlabel('x')
ylabel('Error')