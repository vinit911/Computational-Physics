clear
clc
h=0.51;
N=ceil(6/h);

y1=zeros(N,1);
y2=zeros(N,1);

x=0:h:h*(N-1);
y1(1)=1;
y2(1)=1;
for i=1:N-1
    y1(i+1)=y1(i)*(1-2*h)-3*h;
    y2(i+1)=(y2(i)-3*h)/(1+2*h);
end
hold on
plot(x,y1,x,y2,x,exp(-2*x)*5/2-3/2)
xlabel('x')
ylabel('y')
legend('Explicit','Implicit','Actual')
hold off