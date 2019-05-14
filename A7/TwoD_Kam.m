function result = TwoD_Kam(your_func, xa, xb, ya, yb, Nx, Ny) %% no. of terms to be used for estimation Nx and Ny; Note both needs to be odd for Simpson's method

%% Reading input arguments

f = str2func(your_func);

%% Defining coefficient matrices for 2D integration using trapezoidal and Simpson's rule

%%Column matrices are formed
Trapz_vecx = zeros(Nx, 1);
Trapz_vecy = zeros(Ny, 1);

Simps_vecx = zeros(Nx, 1);
Simps_vecy = zeros(Ny, 1);

%% For X-vector
for i = 1:1:Nx
    
    if i == 1 | i == Nx
    Trapz_vecx(i) = 1;
    Simps_vecx(i) = 1;
    
    else
        Trapz_vecx(i) = 2;
        if mod(i, 2) == 0
            Simps_vecx(i) = 4;
        else
            Simps_vecx(i) = 2;
        end
    end
    
end

%% For Y-vector
for i = 1:1:Ny
    
    if i == 1 | i == Ny
    Trapz_vecy(i) = 1;
    Simps_vecy(i) = 1;
    
    else
        Trapz_vecy(i) = 2;
        if mod(i, 2) == 0
            Simps_vecy(i) = 4;
        else
            Simps_vecy(i) = 2;
        end
    end
    
end

%% Final Matrices
[X, Y] = meshgrid(Trapz_vecx, Trapz_vecy);

Trapz_Mat = X.*Y;

[X, Y] = meshgrid(Simps_vecx, Simps_vecy);

Simps_Mat = X.*Y;

%% Collecting Data Points

x_sample = linspace(xa, xb, Nx);
y_sample = linspace(ya, yb, Ny);

stepx = x_sample(2) - x_sample(1);
stepy = y_sample(2) - y_sample(1);

[X, Y] = meshgrid(x_sample, y_sample);

func_val = f(X, Y);

Trapz_ans = (0.25)*stepx*stepy*sum(sum(func_val.*Trapz_Mat));

Simps_ans = (1/9)*stepx*stepy*sum(sum(func_val.*Simps_Mat));

result = [Trapz_ans; Simps_ans];

%% Results
%%For 1st function 1.6641; 1.6250
%%For 2nd function 1.0293; 1.0495........(exact answer = 1.0500)
