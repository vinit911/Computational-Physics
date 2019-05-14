clear
clc
k=1;
m=1;
V=@(x) (x.^2-1).^2; %k*x.^2/2;
plot(-1:0.1:1,V(-1:0.1:1))
H=@(x,p) p.^2/(2*m) + V(x);

f=@(t,x,p) p/m;
g=@(t,x,p) 4*x-4*x.^3; %-k*x;

N=10000;

a=0;
b=180*pi;
h=(b-a)/N;
t=a:h:b-h;

hold on
[x,p]=COD(f,g,a,b,1,1,N);
plot(p,x)
xlabel('p')
ylabel('x')
hold off