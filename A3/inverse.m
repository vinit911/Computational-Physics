a=1/10;
n=50;
X=zeros(1,n);
X(1)=0.1;

f=@(x,a) 1./x-a;
df=@(x) -1./x.^2;

for i=2:n
    X(i)=X(i-1)-f(X(i-1),a)/df(X(i-1));
end
semilogy(1:n,abs(X-1/a))
ylabel('Error')
xlabel('Iteration')
