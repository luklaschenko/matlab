function [speed1aft, speed2aft, accel1, accel2] = vectoralfunc(pos1, pos2, speed1pre, speed2pre, t)

    m1 = 475;
    m2 = 53;
    k1 = 5400;
    k2 = 135000;
    c1 = 310;
    c2 = 1200;

    bigH = [[0 0 1 0];
            [0 0 0 1];
            [-k1/m1 k2/m1 -c1/m1 c1/m1];
            [k1/m2 -k1/m2-k2/m2 c1/m2 -c1/m2-c2/m2]];

    [h hprime] = pathfunc(t);

    gvec = [0; 0; 0; c1/m2*hprime + k2/m2*h]';

    v = [pos1 pos2 speed1pre speed2pre]';

    vdot = bigH * v + gvec;

    speed1aft = vdot(1);
    speed2aft = vdot(2);
    accel1    = vdot(3);
    accel2    = vdot(4);

end