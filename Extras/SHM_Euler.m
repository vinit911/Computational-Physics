
function [time,y] = SHM_Euler (initial_displacement)
npoints = 2500; %Discretize time into 250 intervals
dt = 0.04; % time step in seconds
v = zeros(npoints,1); % initializes v, a vector of dimension npoints X 1,to being all zeros
y = zeros(npoints,1); % initializes y, a vector of dimension npoints X 1,to being all zeros
time = zeros(npoints,1); % this initializes the vector time to being all zeros
y(1)=initial_displacement; % need some initial displacement
% Euler solution
for step = 1:npoints-1 % loop over the timesteps
v(step+1) = v(step) - y(step)*dt;
y(step+1) = y(step)+v(step)*dt;
time(step+1) = time(step) + dt;
end
