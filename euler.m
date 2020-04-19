% Euler method to evaluate coupled ODE
%   Params:
%       func - represents the multivariable function equal to dy/dt
%       a - the lower, inclusive bound for t
%       b - the upper, inclusive bound for t
%       initial_condition - the initial condition for y(a)
%       n - N+1 equally spaced approximations on the interval [a,b]
%           are produced
%   Output:
%       2D array of (t, w), where w is the approximation at t
%
%   Example Usage:
%     func = @(t,y) y - t^2 + 1;
%     a = 0;
%     b = 2;
%     initial_condition = 0.5;
%     n = 4;
%     disp(euler(func, a, b, initial_condition, n));
%
%   Output from Example:
%       0    0.5000
%     0.5000    1.2500
%     1.0000    2.2500
%     1.5000    3.3750
%     2.0000    4.4375
%
function approx = euler(func, a, b, initial_condition, n)
    approx = zeros(n+1, 2);
    h = (b - a) / n;
    t = a;
    w = initial_condition;
    approx(1, 1) = t;
    approx(1, 2) = w;
    for i=1:n
        w = w + (h * func(t, w));
        t = a + (i * h);
        approx(i+1, 1) = t;
        approx(i+1, 2) = w;
    end
    
    