clear
clc
F=@(x) x.^4 ;
%F=@(x) sin(x);
%F=@(x) x.*sin(x);
%F=@(x) 5*x.^3 -3*x.^2 +2*x +1;
%F=@(x) x.^2.*exp(x-1);
%F=@(x) x.^6 -7*x.^3 +5;
%F=@(x) sin(x)./sqrt(x);

e=zeros(3,10);
a=1e-18;
b=1;
n=51;

for i=1:10
    n=2^i;
    e(1,i)=Mid_point(F,a,b,n);
    e(2,i)=Trapezoidal(F,a,b,n);
    e(3,i)=Simpson(F,a,b,n);
end
e_an=0.2;
e=abs(e-e_an)/e_an;
hold on
grid on
plot(log(e(1,:)))
plot(log(e(2,:)))
plot(log(e(3,:)))
legend('Mid point','Trapezoidal','Simpsons');
xlabel('i')
ylabel('log(error)')
hold off

Mid_point(F,a,b,n)
%{
Trapezoidal(F,a,b,n)
Simpson(F,a,b,n)
Gauss_Quad(F,a,b,6)
%}