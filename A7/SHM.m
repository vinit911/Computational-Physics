clear
clc
m=1;
alpha=4;
E=100;
a=sqrt(2*E/alpha); %Turning Points
V=@(x) alpha*x.^2/2; %Potential Function

T=zeros(20,1);
for i=1:20
    N=2^i;
    eps=a/N; %Epsilon is equal to the step size. 
    T(i)=2*sqrt(2*m)*Trapezoidal(@(x) (1./sqrt(E-V(x))),0,a-eps,N);
end
plot(log(T))
xlabel('log(N)')
ylabel('log(T)')


E=10:10:200;
T=zeros(20,1);
for i=1:20
    a=sqrt(2*E(i)/alpha); %Turning Points
    N=2^15;
    eps=a/N;
    T(i)=2*sqrt(2*m)*Trapezoidal(@(x) (1./sqrt(E(i)-V(x))),0,a-eps,N);
end
figure()
plot(E,(pi-T)./T)
xlabel('E')
ylabel('\DeltaT/T')