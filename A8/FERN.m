clear
clc
N=100000;
X=zeros(N,1);
Y=zeros(N,1);
for n=2:N
    r=100*rand(1);
    if r<20
        x=0;
        y=0.16*Y(n-1);
    elseif r<86
        x=0.85*X(n-1)+0.04*Y(n-1);
        y=-0.04*X(n-1)+0.85*Y(n-1)+1.6;
    elseif r<93
        x=0.2*X(n-1)-0.26*Y(n-1);
        y=0.23*X(n-1)+0.22*Y(n-1)+1.6;
    else
        x=-0.15*X(n-1)+0.28*Y(n-1);
        y=0.26*X(n-1)+0.24*Y(n-1)+0.44;
    end
    X(n)=x;
    Y(n)=y;
end
scatter(X,Y,'k*')