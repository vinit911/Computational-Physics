x=10.^(-1:-1:-10);
y1=sqrt(x.^2+1)-1;
y2=(x.^2)./(sqrt(x.^2+1)+1);
loglog(x,abs(y2-y1)./y2)

