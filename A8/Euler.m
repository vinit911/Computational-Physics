function y = Euler(f,a,b,y0,n)
h=(b-a)/n;
x=a:h:b-h;
y=zeros(1,n);
y(1)=y0;

for i=1:n-1
    y(i+1)=y(i)+h*f(x(i),y(i));
end