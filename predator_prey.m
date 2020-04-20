function predator_prey
    %Params
    f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
    tspan = [0, 10];
    y0 = [6, 2];
    n = 100;
    
    %Euler
    [time, w] = euler(f, tspan, y0, n);
    plot(time, w(:,1), 'b.', time, w(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Euler's Method");
    xlabel("Time");
    ylabel("Population Size");
    
    %Modified Euler