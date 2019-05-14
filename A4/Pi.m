t=20;
ERR=zeros(1,t);
for i=1:t
    n=2^i;
    X=rand(1,n)*2-1;
    Y=rand(1,n)*2-1;
    ERR(i)=abs((4*sum((X.^2+Y.^2)<1)/n)-PI);
end
plot(ERR)
