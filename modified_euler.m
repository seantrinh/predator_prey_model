% Modified Euler method
function approx = modified_euler(func, a, b, initial_condition, n)
    approx = zeros(n+1,2);
    h = (b - a) / n;
    t = a;
    w = initial_condition;
    approx(1, 1) = t;
    approx(1, 2) = w;
    for i=1:n
        w = w + (h * (func(t, w) + func(t + h, w + (h * func(t, w)))) / 2);
        t = a + (i * h);
        approx(i+1, 1) = t;
        approx(i+1, 2) = w;
    end