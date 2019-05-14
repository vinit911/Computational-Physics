function [Y]=newtonfor(X,x0,n)
x=X(:,1);y=X(:,2);
d=y;
%l=length(x);
coeff=zeros(n,1);
coeff(1)=d(1);
l=n;
for i=1:l-1
for j=1:(l-i)
d(j)=(d(j+1)-d(j))/(x(j+i)-x(j));
end
coeff(i+1)=d(1);
end
Y=coeff(l)*(x0-x(l-1));
for i=l-1:-1:1
if(i==1)
Y=Y+coeff(i);
else

Y=(Y+coeff(i))*(x0-x(i-1));
end
end

end