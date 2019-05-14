clear
clc

N=100;
T=2000;
U=zeros(N,N);
%Boundary Conditions
U(1,:)=0;
U(N,:)=0;
U(:,1)=-100;
U(:,N)=100;
%Corner Points
U(1,1)=-50;
U(1,N)=50;
U(N,1)=-50;
U(N,N)=50;

beta=1;

err=zeros(T,1);
U_prev=zeros(N,N);

for t=1:T
    for i=2:N-1
    for j=2:N-1
        U(i,j)=(U(i-1,j)+beta*(U(i+1,j)+U(i,j+1)+U(i,j-1)))/(2*(1+beta^2));
    end
    end
U(N/2,N/2)=U(N/2,N/2)+500/4;
err(t)=norm(U-U_prev);
U_prev=U;
contour(U,100)
colorbar
getframe;
end
semilogy(err(2:T))
xlabel('iteration')
ylabel('Error')