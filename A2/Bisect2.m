a=0.18;
b=0.11;
c=0;
disp(f2(a)*f2(b))
while abs(b-a)>1e-7 && f2(a)*f2(b)<0
    c=c+1;
    mid=(a+b)/2;
    if f2(a)*f2(mid)<0
        b=mid;
    else
        a=mid;
    end
end
disp((a+b)/2); 
disp(c);