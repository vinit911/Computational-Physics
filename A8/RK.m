clear
clc
f=@(x,y) (2*y-18*x)/(1+x);

N=60;
a=0;
b=3;
h=(b-a)/N;
x=a:h:b-h;

y1=RK2(f,a,b,4,N); %R-K Method
y2=Euler(f,a,b,4,N); %Euler Method

plot(x,-5*x.^2+8*x+4,'b-',x,y1,'r.',x,y2,'g.')
xlabel('X')
ylabel('Y')
legend('Analytical Solution','R-K 2^{nd} order','Euler Method')
grid on