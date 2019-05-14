function y = RK2(f,a,b,y0,N)
h=(b-a)/N;
x=a:h:b-h;
y=zeros(1,N);
y(1)=y0;


for i=1:N-1
    S1=f(x(i),y(i));
    S2=f(x(i)+h,y(i)+h*S1);
    y(i+1)=y(i)+h*(S1+S2)/2;
end
end

