%Function for modelling two species in a predator prey model using euler's method
%   Params:
%       func - a system of two equations
%           Ex: f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
%       tspan - [t0, tf]
%       y0 - [y01, y02]
%       n - the number of equally spaced approximations to produce on the
%           interval [a,b] in addition to the approximation at t=0
function euler_model(func, tspan, y0, n)
    [time, w] = euler(func, tspan, y0, n);
    plot(time, w(:,1), 'b.', time, w(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Euler's Method");
    xlabel("Time");
    ylabel("Population Size");