function res = Quad(x)
A = importdata('points.txt');
if x<1 || x>5
    fprintf('Data Out of Bound\n');
else
X=A(:,1);
Y=A(:,2);
i=binary(x);

a=Y(i);
b=(Y(i+1)-Y(i))/(X(i+1)-X(i));
c=(Y(i+2)-Y(i+1))/(X(i+2)-X(i+1))/(X(i+2)-X(i)) - (Y(i+1)-Y(i))/(X(i+2)-X(i))/(X(i+1)-X(i));
fprintf('%d %d %d\n',a,b,c);

res=a+b*(x-X(i))+c*(x-X(i))*(x-X(i+1));
hold on
scatter(X,Y)
scatter(x,res,'r*')
P=1:0.1:5;
plot(P,a+b*(P-X(i+1))+c*(P-X(i)).*(P-X(i+1)),'g.')
hold off
end
end
