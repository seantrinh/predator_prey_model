% Runge Kutta 4th Order to estimate coupled ODE
% f should be the derivative vector of the predator and prey
% t is unused but this is written to be interchangable w/ode45
% f: [t,y] -> [y1;y2]
% tspan: [t0 tf] interval
% y0: [y01, y02] initial values
% n: number of steps


function [ret_t,ret_y] = rk4(f,tspan,y0,n)
    h = (tspan(2) - tspan(1)) / n;
    ret_t = [tspan(1)];
    ret_y = [y0];
    t = tspan(1);
    w = transpose(y0);
    for i = 1:n
        K1 = h * f(t,w);
        K2 = h * f(t + h/2, w + K1/2);
        K3 = h * f(t+h/2,w+K2/2);
        K4 = h * f(t+h,w+K3);
        w =  w + (K1+2*K2+2*K3+K4)/6;
        t = tspan(1) + i*h;
        ret_t = [ret_t;t];
        ret_y = [ret_y;transpose(w)];
    end
end