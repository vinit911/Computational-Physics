clc
clear

v=700;
g=9.81;
n=1000;
h=150/n; %Maximum Time of Flight ~ 150s

R=zeros(9,1); %Stores Range
T=zeros(9,1); %Stores Time of Flight
theta=pi/9:pi/36:pi/3;

hold on
grid on
for j=1:9
t=zeros(1,n);
y=zeros(1,n);
x=zeros(1,n);
x(1)=0;
y(1)=0;
t(1)=0;

vx=v*cos(theta(j));
vy=v*sin(theta(j));
for i=1:n-1
    t(i+1)=t(i)+h;
    x(i+1)=x(i)+h*vx;
    y(i+1)=y(i)+h*(vy-g*t(i));
    if y(i+1)<0
        R(j)=x(i+1);
        T(j)=t(i+1);
        break
    end
end
plot(x,y)
end
legend('20^o','25^o','30^o','35^o','40^o','45^o','50^o','55^o','60^o')
xlabel('x')
ylabel('y')
hold off

%Range Analysis
figure()
grid on
hold on
scatter(theta*180/pi,R);
x=pi/9:pi/360:pi/3;
y=v^2*sin(2*x)/g;
plot(x*180/pi,y)
xlabel('Angle')
ylabel('Range')
legend('Numerical','Analytical');
hold off

%Time of Flight Analysis
figure()
grid on
hold on
scatter(theta*180/pi,T);
x=pi/9:pi/360:pi/3;
y=2*v*sin(x)/g;
plot(x*180/pi,y)
xlabel('Angle')
ylabel('Time of Flight')
legend('Numerical','Analytical');
hold off