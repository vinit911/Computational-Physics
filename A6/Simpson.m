function I = Simpson(F,a,b,N)
h=(b-a)/N;
I=0;
for i=0:N-1
    I=I+(F(a+i*h)+F(a+(i+1)*h)+4*F(a+(i+1/2)*h))*h/6;
end
end
