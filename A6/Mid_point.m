function I = Mid_point(F,a,b,N)
h=(b-a)/N;
I=0;
for i=0:N-1
    I=I+F(a+(i+1/2)*h)*h;
end
end
