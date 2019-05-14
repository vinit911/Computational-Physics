clear
clc
F=@(x,y) 5*(x.^3).*y+2*x

e=zeros(2,10);
a=0;
b=1;
c=0;
d=1;

for i=1:10
    n=2^i+1;
    e(1,i)=Trapezoidal2D(F,a,b,c,d,n);
    e(2,i)=Simpson2D(F,a,b,c,d,n);
end
e_an=1.625;
e=abs(e-e_an)/e_an;
hold on
grid on
plot(log(e(1,:)))
plot(log(e(2,:)))
legend('Trapezoidal','Simpsons');
xlabel('log(N)')
ylabel('log(error)')
hold off
