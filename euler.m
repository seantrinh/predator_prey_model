% Euler method to evaluate coupled ODE
%   Params:
%       func - represents the multivariable function equal to dy/dt
%       tspan - [t0 tf]
%       y0 - [y01, y02]
%       n - N+1 equally spaced approximations on the interval [a,b]
%           are produced
%   Output:
%       2D array of (t, w1, w2), where w is the approximation at t

function [time, approx] = euler(func, tspan, y0, n)
    time = zeros(1, n+1);
    approx = zeros(n+1, 2);
    h = (tspan(2) - tspan(1)) / n;
    t = tspan(1);
    w = zeros(2, 1);
    w(1) = y0(1);
    w(2) = y0(2);
    time(1) = t;
    approx(1, 1) = w(1);
    approx(1, 2) = w(2);
    for i=1:n
        w = w + (h * func(t, w));
        t = tspan(1) + (i * h);
        time(i+1) = t;
        approx(i+1, 1) = w(1);
        approx(i+1, 2) = w(2);
    end
    
    