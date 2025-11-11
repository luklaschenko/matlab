function [h, hprime] = pathfunc(t)
    v = 65/3.6; % m/s
    H = 0.24;   % m
    L = 1;      % m

    h = H/2 * (1 - cos(pi*v/L * t));
    hprime = H/2 * sin(pi*v/L * t) * (pi*v/L);
end