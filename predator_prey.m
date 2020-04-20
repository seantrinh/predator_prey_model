function predator_prey
    %Params
    f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
    tspan = [0, 10];
    y0 = [6, 2];
    n = 100;
    
    %Euler
    figure(1)
    [time_1, w_1] = euler(f, tspan, y0, n);
    plot(time_1, w_1(:,1), 'b.', time_1, w_1(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Euler's Method");
    xlabel("Time");
    ylabel("Population Size");
    
    %Modified Euler
    figure(2)
    [time_2, w_2] = modified_euler(f, tspan, y0, n);
    plot(time_2, w_2(:,1), 'b.', time_2, w_2(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Modified Euler's Method");
    xlabel("Time");
    ylabel("Population Size");
    
    %rk4
    figure(3)
    [time_3, w_3] = rk4(f, tspan, y0, n);
    plot(time_3, w_3(:,1), 'b.', time_3, w_3(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Runge Kutta 4th Order");
    xlabel("Time");
    ylabel("Population Size");