%Function for modelling two species in a predator prey model using
% Runge Kutta 4th Order method
%   Params:
%       func - a system of two equations
%           Ex: f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
%       tspan - [t0, tf]
%       y0 - [y01, y02]
%       n - the number of equally spaced approximations to produce on the
%           interval [a,b] in addition to the approximation at t=0
function rk4_model(func, tspan, y0, n)
    [time, w] = rk4(func, tspan, y0, n);
    for i=1:length(time)
        t = time(i);
        y1 = w(i,1);
        y2 = w(i,2);
        plot(t, y1, 'b.', t, y2, 'r.'); hold on
    end
    hold off
    legend('Species 1', 'Species 2')