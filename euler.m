% Euler method to evaluate coupled ODE
%   Params:
%       func - represents the multivariable function equal to dy/dt
%       a - the lower, inclusive bound for t
%       b - the upper, inclusive bound for t
%       init1 - the initial condition for y1(a)
%       init2 - the initial condition for y2(a)
%       n - N+1 equally spaced approximations on the interval [a,b]
%           are produced
%   Output:
%       2D array of (t, w1, w2), where w is the approximation at t

function approx = euler(func, a, b, init1, init2, n)
    approx = zeros(n+1, 3);
    h = (b - a) / n;
    t = a;
    w = zeros(1, 2);
    w(1) = init1;
    w(2) = init2;
    approx(1, 1) = t;
    approx(1, 2) = w(1);
    approx(1, 3) = w(2);
    for i=1:n
        w = w + (h * func(t, w));
        t = a + (i * h);
        approx(i+1, 1) = t;
        approx(i+1, 2) = w(1);
        approx(i+1, 3) = w(2);
    end
    
    