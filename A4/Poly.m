function res = Poly(x)
A = [1,8;2.1,20.6;5,13.7];

X=A(:,1);
Y=A(:,2);

a=Y(1);
b=(Y(2)-Y(1))/(X(2)-X(1));
c=(Y(3)-Y(2))/(X(3)-X(2))/(X(3)-X(1)) - (Y(2)-Y(1))/(X(3)-X(1))/(X(2)-X(1));
fprintf('%d %d %d\n',a,b,c);

res=a+b*(x-X(1))+c*(x-X(1))*(x-X(2));
hold on
scatter(X,Y)
scatter(x,res,'r*')
%a+b*(X-X(i))+c*(X-X).*(X-X(i+1));
P=1:0.1:5;
plot(P,a+b*(P-X(1))+c*(P-X(1)).*(P-X(2)),'g.')
hold off
end