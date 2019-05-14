function res = Lagrange(x)
A = [1,8;2.1,20.6;5,13.7];

X=A(:,1);
Y=A(:,2);
n=length(X);

res=0;
for i=1:n
    f=1;
    for j=1:n
        if j==i
           continue;
        end
        f=f*(x-X(j))/(X(i)-X(j));
    end
    res=res+Y(i)*f;
end