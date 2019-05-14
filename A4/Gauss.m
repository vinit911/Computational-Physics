%Gauss-Seidel method
clear;
clc;

A=[-6 2 1 2 1;3 8 -4 1 0;-1 1 4 10 1;3 -4 1 9 2;2 0 1 3 10];
B = [3; 4; -2; 12;1];
Diag_mat(A);
n=size(A,1);
D=zeros(n);
L=zeros(n);
U=zeros(n);
for i=1:n
    for j=1:n
        if i>j
            L(i,j)=A(i,j);
        elseif i<j
            U(i,j)=A(i,j);
        else
            D(i,j)=A(i,j);
        end
    end
end

X=zeros(5,1);
LD=L+D;

k=20;
ERR=zeros(1,k);
for i=1:k
    ERR(i)=norm(X-A\B);
    X=LD\(B-U*X);
    if ERR(i)<1e-6 
       break; 
    end
end
plot(ERR)
disp(i)
ylabel('Error');
xlabel('Iteration');