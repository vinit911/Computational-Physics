function result = logi_3(A,x,n)
X=zeros(1,n);
X_=zeros(1,n);
X(1)=x;
X_(1)=x-0.01;
for i=2:n
   X(i)=A*X(i-1)*(1-X(i-1)); 
   X_(i)=A*X_(i-1)*(1-X_(i-1)); 
end

loglog(1:n,(abs(X-X_)/0.01));
result=0;
end

