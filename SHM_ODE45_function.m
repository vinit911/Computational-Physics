% Equation is d2y/dt2 = -y
function dy = SHM_ODE45_function(t,y)
% y is the state vector
y1 = y(1); % y1 is displacement
v = y(2); % y2 is velocity
% write down the state equations
dy1=v;
dy2=-y1;
dy=[dy1;dy2];
% collect the equations into a column vector, velocity in column 1,
% displacement in column 2
