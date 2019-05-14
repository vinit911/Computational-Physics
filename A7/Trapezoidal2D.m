function [I,f] = Trapezoidal2D(F,a,b,c,d,N)
h=(b-a)/N;
k=(d-c)/N;

x=linspace(a,b,N);
y=linspace(c,d,N);

[xx, yy]=meshgrid(x,y);

f=F(xx,yy);

sc= 2*ones(N,1);
sc(1)=1;
sc(N)=1;
w=sc*sc';

I=h*k*sum(sum(w.*f))/4;
end
