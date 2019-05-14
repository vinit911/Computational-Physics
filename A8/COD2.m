clear
clc
f=@(x,y,z) 4*y+7*z;
g=@(x,y,z) -2*y-5*z;

N=500;

a=0;
b=1;
h=(b-a)/N;
x=a:h:b-h;

[y,z]=COD(f,g,a,b,0,1,N);

plot(x,y,'b',x,z,'r')
xlabel('x')
ylabel('y')
grid on