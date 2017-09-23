clear;
length= 9.8; %pendulum length in metres
g=9.8; % acceleration due to gravity
q=0.5;
F_Drive=0.01; % damping strength
Omega_D=0.5;
npoints =10000; %Discretize time
dt = 0.01; % time step in seconds
omega = zeros(npoints,1); % initializes omega, a vector of dimension npoints X 1,to being all zeros
theta = zeros(npoints,1); % initializes theta, a vector of dimension npoints X 1,to being all zeros
time = zeros(npoints,1); % this initializes the vector time to being all zeros
theta(1)=0.2; 
omega(1)=0;
temporary_theta_step_plus_1=0;
for step = 1:npoints-1;
omega(step+1)=omega(step)+(-(g/length)*sin(theta(step))- q*omega(step)+F_Drive*sin(Omega_D*time(step)))*dt;
temporary_theta_step_plus_1 = theta(step)+omega(step+1)*dt;

 if (temporary_theta_step_plus_1 < -pi)
 temporary_theta_step_plus_1= temporary_theta_step_plus_1+2*pi;
 elseif (temporary_theta_step_plus_1 > pi)
 temporary_theta_step_plus_1= temporary_theta_step_plus_1-2*pi;
 end;
 theta(step+1)=temporary_theta_step_plus_1;
time(step+1) = time(step) + dt;
end;
plot (time,omega,'b' ); %plots the numerical solution
xlabel('time (seconds)');
ylabel('theta (radians)');