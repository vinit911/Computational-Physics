clc
clear
N=12;

F1=@(x) x(1)+x(2)+x(3)-3;
F2=@(x) x(1)^2+x(2)^2+x(3)^2-5;
F3=@(x) exp(x(1))+x(1)*x(2)-x(1)*x(3)-1;
F=@(x) [F1(x);F2(x);F3(x)];

J=@(x) [1,1,1; 2*x(1), 2*x(2), 2*x(3); exp(x(1))+x(2)-x(3),x(1),-x(1)];

x0=[2;3;2];
err=zeros(1,N);

for i=1:N
    if det(J(x0))==0
        fprintf('Determinant of Jacobian is 0')
        break
        
    end
    x=x0-(J(x0)\F(x0));
    err(i)=norm(abs(x-x0));
    x0=x;
end
disp(x)
semilogy(1:N,err)
ylabel('Error')
xlabel('Iteration')