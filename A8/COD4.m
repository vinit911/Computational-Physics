q=1;
m=1;
E=[0 1 0];
B=[0 0 1];

f=@(t,x,v) v;
g=@(t,x,v) q*(E+cross(v,B))/m;

N=200;
a=0;
b=8*pi;
h=(b-a)/N;
t=a:h:b-h;

[x,v]=COD(f,g,a,b,[0,0,0],[1 1 1],N,3);

grid on
hold on
plot3(x(:,1),x(:,2),x(:,3))
hold off