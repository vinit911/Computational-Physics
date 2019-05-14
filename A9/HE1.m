clear
clc
N=50;
T=2000;

s=0.503;
a=s;
b=1-2*s;
c=s;

A=sparse(N,N);
A(1,1)=1;
A(N,N)=1;

for i=2:N-1
    A(i,i+1)=a;
    A(i,i)=b;
    A(i,i-1)=c;
end
V=linspace(100,50,50)';

U=zeros(N,1);
U(1)=100;
U(N)=50;

err=zeros(T,1);
M=zeros(N,N);

for i=1:T-1
    if i<=100
        M(:,i)=U;
    end
    err(i)=mean(V-U);
    U=A*U;
    %{
    plot(1:N,V,'r',1:N,U,'b')
    xlabel('l (cm)')
    ylabel('T (K)')
    legend('Numerical Plot','Actual Plot')
    getframe;
    %}
end

%drawnow

figure()
semilogy(err)
xlabel('Time')
ylabel('Mean Error (K)')

figure()
surf(M)
xlabel('Time')
ylabel('l (cm)')
zlabel('T (K)')