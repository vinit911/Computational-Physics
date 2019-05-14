clear
clc
L=100;
l=10;

T=1600;

s=0.502;
a=s;
b=1-2*s;
c=s;

A=sparse(L/2-l/2,L/2-l/2);
A(1,1)=1;
A(L/2-l/2,L/2-l/2)=1;

for i=2:L/2-l/2-1
    A(i,i+1)=a;
    A(i,i)=b;
    A(i,i-1)=c;
end

V=[linspace(300,1200,45) linspace(1200,1200,10) linspace(1200,300,45)]';

U=ones(L,1)*300;
U(L/2-l/2:L/2+l/2+1)=1200;
U(1:L/2-l/2-1)=300;
U(L/2+l/2+2:L)=300;
err=zeros(T,1);
M=zeros(L,L);
for i=1:T
    if i<=100
        M(:,i)=U;
    end
    err(i)=mean(V-U);
    U(1:L/2-l/2)=A*U(1:L/2-l/2);
    U(L/2+l/2+1:L)=A*U(L/2+l/2+1:L);
    
    plot(1:L,U,1:L,V)
    xlabel('l (cm)')
    ylabel('T (K)')
    legend('Numerical Plot','Actual Plot')
    getframe;
    
end
drawnow;

%{
semilogy(err)
xlabel('Time')
ylabel('Mean Error (K)')

figure()
surf(M)
xlabel('Time')
ylabel('l (cm)')
zlabel('T (K)')
%}