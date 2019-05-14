clear
clc
w=10;
h=0.99; %0.9682
N=ceil(w/h);
y=zeros(N,1);

x=0:h:h*(N-1);
y(1)=0;
y(2)=0;

b=h^2/(1+0.25*h);
a1=(4*h^2-2)/(1+0.25*h);
a2=(1-0.25*h)/(1+0.25*h);

for i=1:N-2
    y(i+2)=b*5-a1*y(i+1)-a2*y(i);
end

f=@(x,y,z) z;
g=@(x,y,z) 5-4*y-0.5*z;
[y2,z] = COD(f,g,0,w,0,0,N);

x2=0:0.1:10;
hold on
plot(x,y,x2,-0.157485*exp(-x2/4).*sin(1.98431*x2)-1.25*exp(-x2/4).*cos(1.98431*x2)+1.25)
xlabel('x')
ylabel('y')
legend('FD','Actual')
hold off