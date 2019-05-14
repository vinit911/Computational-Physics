function [I,f] = Simpson2D(F,a,b,c,d,N)
%N should be odd
h=(b-a)/(N-1);
k=(d-c)/(N-1);

x=linspace(a,b,N);
y=linspace(c,d,N);

[xx, yy]=meshgrid(x,y);

f=F(xx,yy);

sc= 2*ones(N,1);
sc(2:2:N-1)=4;
sc(1)=1;
sc(N)=1;
w=sc*sc';

I=h*k*sum(sum(w.*f))/9;
end