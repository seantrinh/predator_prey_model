function predator_prey
    %Params
    f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
    tspan = [0, 10];
    y0 = [6, 2];
    n = 100;
    tol = 0.1;
    maxH = 0.1;
    minH = 0.0005;
    
    %Euler
    figure(1)
    [time_1, w_1] = euler(f, tspan, y0, n);
    plot(time_1, w_1(:,1), 'b.', time_1, w_1(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Euler's Method");
    xlabel("Time");
    ylabel("Population Size");
    
    figure(2)
    plot(w_1(:,1), w_1(:,2));
    title("Phase Plot Euler's Method");
    xlabel("Prey");
    ylabel("Predator");
    
    %Modified Euler
    figure(3)
    [time_2, w_2] = modified_euler(f, tspan, y0, n);
    plot(time_2, w_2(:,1), 'b.', time_2, w_2(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Modified Euler's Method");
    xlabel("Time");
    ylabel("Population Size");
    
    figure(4)
    plot(w_2(:,1), w_2(:,2));
    title("Phase Plot Modified Euler's Method");
    xlabel("Prey");
    ylabel("Predator");
    
    %rk4
    figure(5)
    [time_3, w_3] = rk4(f, tspan, y0, n);
    plot(time_3, w_3(:,1), 'b.', time_3, w_3(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Runge Kutta 4th Order");
    xlabel("Time");
    ylabel("Population Size");
    
    figure(6)
    plot(w_3(:,1), w_3(:,2));
    title("Phase Plot Runge Kutta 4th Order");
    xlabel("Prey");
    ylabel("Predator");
    
    %rk45
    figure(7)
    [time_4, w_4] = rk45(f, tspan, y0, tol, maxH, minH);
    plot(time_4, w_4(:,1), 'b.', time_4, w_4(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("Runge Kutta Fehlberg (rk45)");
    xlabel("Time");
    ylabel("Population Size");
    
    figure(8)
    plot(w_4(:,1), w_4(:,2));
    title("Phase Plot Runge Kutta Fehlberg (rk45)");
    xlabel("Prey");
    ylabel("Predator");
    
    %ode45 (built-in)
    figure(9)
    [time_5, w_5] = ode45(f, tspan, y0);
    plot(time_5, w_5(:,1), 'b.', time_5, w_5(:,2), 'r.');
    legend('Species 1', 'Species 2');
    title("ODE 45 (Built-in)");
    xlabel("Time");
    ylabel("Population Size");
    
    figure(10)
    plot(w_5(:,1), w_5(:,2));
    title("Phase Plot ODE 45 (Built-in)");
    xlabel("Prey");
    ylabel("Predator");
    
    figure(11)
    plot(w_1(:,1),w_1(:,2),'-',w_2(:,1),w_2(:,2),'-',w_3(:,1),w_3(:,2),'-',w_4(:,1),w_4(:,2),'-',w_5(:,1),w_5(:,2),'-');
    title('Phase Plane Plot for All')
    legend('Euler','Modified Euler', 'rk4', 'rk45', 'ode45');
    xlabel("Prey");
    ylabel("Predator");