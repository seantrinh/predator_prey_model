% Runge-Kutta-Fehlnerg 
% This method uses varying step size
% It is also known as rk45

function [ret_t,ret_y] = rk45(f,tspan,y0,tol,max_h,min_h)
    t = tspan(1);
    w = y0;
    h = max_h; 
    FLAG = 1;
    ret_t = [t];
    ret_y = [y0];
    
    while FLAG == 1
        K1 = h * f(t,w);
        K2 = h * f(t+1/4*h,w+1/4 * K1);
        K3 = h * f(t+3/8*h, w + 3/32 * K1 + 9/32 * K2);
        K4 = h * f(t+12/13 * h, w+ 1932/2197 * K1 -7200/2197* K2 + 7296/2197 *K3);
        K5 = h * f(t+h, w + 439/216 * K1 - 8 * K2 + 3680/513 * K3 - 845/4104 *K4);
        K6 = h * f(t+1/2*h,w -8/27 *K1 + 2*K2 - 3544/2565 *K3 + 1859/4104 *K4 -11/40 *K5);
        
        R = sum(1/h * abs(1/360*K1 - 128/4275 * K3 - 2197/75240 * K4 + 1/50 * K5 +2/55 * K6));
        
        if R <= tol
            t = t + h; 
            w = w + 25/216 * K1 + 1408/2565 *K3 + 2197/4104 *K4 - 1/5 * K5;
            ret_t = [ret_t;t];
            ret_y = [ret_y;w];
        end
        delta = .84 * (tol/R)^(1/4);
        if delta <= .1 
            h =.1*h;
        elseif delta >=4 
            h = 4*h;
        else
            h = delta * h;
        end
        if h > max_h 
            h = max_h;
        end
        if t >= tspan(2)
            FLAG = 0;
        elseif t+h > tspan(2)
            h = tspan(2)-t;
        elseif h < min_h
            FLAG = 0;
            disp('minimum h exceeded');
            exit(1);
        end
    end
end
