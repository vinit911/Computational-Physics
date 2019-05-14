x=0.05;
while abs(f2(x))>1e-7
    x=x-f2(x)/f2_(x);
end
disp(x);   

x=0.16;
while abs(f2(x))>1e-7
    x=x-f2(x)/f2_(x);
end
disp(x);   

X=0:0.001:0.2;
plot(X,f2(X))
grid on;

x=20; %%0.05
while abs(f2(x))>1e-7
    x=x-f2(x)/f2_(x);
    if abs(f2(x))>1000
        disp('Diverged');
        break;
    end
end
disp(x);   