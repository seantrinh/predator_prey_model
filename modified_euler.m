% Modified Euler method
function approx = modified_euler(func, a, b, init1, init2, n)
    approx = zeros(n+1,3);
    h = (b - a) / n;
    t = a;
    w = zeros(1, 2);
    w(1) = init1;
    w(2) = init2;
    approx(1, 1) = t;
    approx(1, 2) = w(1);
    approx(1, 3) = w(2);
    for i=1:n
        w = w + (h * (func(t, w) + func(t + h, w + (h * func(t, w)))) / 2);
        t = a + (i * h);
        approx(i+1, 1) = t;
        approx(i+1, 2) = w(1);
        approx(i+1, 3) = w(2);
    end