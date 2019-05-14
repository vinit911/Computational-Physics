function result = logi_1(A,x,n)
X=zeros(1,n);
X(1)=x;
for i=2:n
   X(i)=A*X(i-1)*(1-X(i-1)); 
end
%plot(1:n,X);
result=X(length(X));
end

