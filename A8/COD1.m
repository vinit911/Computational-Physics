clear 
clc
f=@(x,y,z) -x-y.*z;
g=@(x,y,z) -y-x.*z;

N=120;

a=0;
b=0.5;
h=(b-a)/N;
x=a:h:b-h;

[y,z]=COD(f,g,a,b,0,1,N);

hold on
plot(x,y,'r',x,z,'b')
xlabel('x')
ylabel('y(x) or z(x)')
legend('y(x)','z(x)')

hold off