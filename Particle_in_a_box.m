h=(6.626e-34)/(2*pi);
m=9.1e-31;
n=10;
l=1e-10;
E=(n^2)*(h^2)*(pi^2)/(2*m*l^2);
x=0:(l/10000):l;
dx=l/10000;
psi=zeros(10001,1);
psi(2)=1e-4; %initialising second step to a higher value than zero.
for i=1:9999
    psi(i+2)=psi(i+1)*(2-2*m*(dx^2)*E/(h^2))-psi(i);
end
plot(x,psi);