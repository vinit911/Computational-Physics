c=3e8;
k=1.38064852e-23;
T=1e2;
h=6.626e-34;

n=100;
for i=1:n
omega(i)=1e6*(2^i);
nu(i)=omega(i)/(2*pi);
E(i)=(h*nu(i))/(exp(h*nu(i)/(k*T))-1);
end
rho=(omega.^3*k*T)/(pi*c^3);
plot(nu,E);
