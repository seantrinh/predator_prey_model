% Modified Euler method
function approx = modified_euler(func, tspan, y0, n)
    approx = zeros(n+1,3);
    h = (tspan(2) - tspan(1)) / n;
    t = tspan(1);
    w = zeros(1, 2);
    w(1) = y0(1);
    w(2) = y0(2);
    approx(1, 1) = t;
    approx(1, 2) = w(1);
    approx(1, 3) = w(2);
    for i=1:n
        w = w + (h * (func(t, w) + func(t + h, w + (h * func(t, w)))) / 2);
        t = tspan(1) + (i * h);
        approx(i+1, 1) = t;
        approx(i+1, 2) = w(1);
        approx(i+1, 3) = w(2);
    end