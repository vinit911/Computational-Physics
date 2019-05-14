function [y0]=polyinter2(X,x0)
%X is the reference data and x0 is the required value to
%found
%here we use the generalised method for writing lagrange&#39;s form
x=X(:,1);
y=X(:,2);
a=1;
y0=0;
for i=1:length(X)
a=1;
for j=1:length(X)
if(i==j)
a=a;
else
a=a*(x0-x(j))/(x(i)-x(j));
end
end
y0=y0+y(i)*a;
end