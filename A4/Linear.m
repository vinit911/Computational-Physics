%Function to perform Linear Interpolation
function res = Linear(x)
A = importdata('points.txt');
if x<1 || x>5
    fprintf('Data Out of Bound\n');
else
X=A(:,1);
Y=A(:,2);
i=binary(x);
res=(Y(i+1)*(x-X(i))-Y(i)*(x-X(i+1)))/(X(i+1)-X(i));

hold on
plot(X,Y)
scatter(x,res,'r*')
end
end

