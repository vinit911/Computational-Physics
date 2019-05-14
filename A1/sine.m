x=pi/2;
p=0;
t=x;
i=0;
while t>1e-5
    p=p+(-1)^i*t;
    i=i+1;
    t=t*x^(2)/((2*i+1)*2*i);
end
disp(p);