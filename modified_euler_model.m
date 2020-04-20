%Function for modelling two species in a predator prey model using
% modified euler's method
%   Params:
%       func - a system of two equations
%           Ex: f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
%       tspan - [t0, tf]
%       y0 - [y01, y02]
%       n - the number of equally spaced approximations to produce on the
%           interval [a,b] in addition to the approximation at t=0
function modified_euler_model(func, tspan, y0, n)
    approx = modified_euler(func, tspan, y0, n);
    for i=1:length(approx)
        t = approx(i,1);
        y1 = approx(i,2);
        y2 = approx(i,3);
        plot(t, y1, 'b.', t, y2, 'r.'); hold on
    end
    hold off
    legend('Species 1', 'Species 2');
    title("Modified Euler's Method");
    xlabel("Time");
    ylabel("Population Size");