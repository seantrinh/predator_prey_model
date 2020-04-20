%Function for modelling two species in a predator prey model using euler's method
%   Params:
%       func - a system of two equations
%           Ex: f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
%       a - the lower, inclusive bound for time t
%       b - the upper, inclusive bound for time t
%       initial_1 - the initial value for species 1
%       initial_2 - the initial value for species 2
%       n - the number of equally spaced approximations to produce on the
%           interval [a,b] in addition to the approximation at t=0
function euler_model(func, a, b, initial_1, initial_2, n)
    approx = euler(func, a, b, initial_1, initial_2, n);
    for i=1:length(approx)
        t = approx(i,1);
        y1 = approx(i,2);
        y2 = approx(i,3);
        plot(t, y1, 'b.', t, y2, 'r.'); hold on
    end
    hold off
    legend('rabbit', 'foxes')