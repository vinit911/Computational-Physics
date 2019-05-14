function I = Trapezoidal(F,a,b,N)
h=(b-a)/N;
I=0;
for i=0:N-1
    I=I+(F(a+i*h)+F(a+(i+1)*h))*h/2;
end
end