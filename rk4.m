% Runge Kutta 4th Order to estimate coupled ODE
% f should be the derivative vector of the predator and prey
% t is unused but this is written to be interchangable w/ode45
% f: [t,y] -> [y1,y2]
% tspan: [t0 tf] interval
% y0: [y01, y02] initial values
% h: step size

function [t,y] = rk4(f,tspan,y0,h)
    current_time = tspan(1);
    end_time = tspan(2);
    iterations = (end_time - current_time) / h;
    current_values = y0;
    t = [];
    y = [];
    for i = 1:iterations
        
    end
end