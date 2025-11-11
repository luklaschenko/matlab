function [approx, exact, error] = euler(parts,start,conc,iv)

step = (conc-start)/parts;

w_i = iv;
approx = [ w_i ];
exact = [ iv ];

for i=start:step:conc - step

    exactvalue = solution(i);
    funcvalue = func(i,w_i);
    w_i1 = w_i + step * funcvalue;

    approx = [approx w_i1];
    exact = [exact exactvalue];

    w_i = w_i1;
end

error = exact - approx;
exact = [exact solution(conc)];
exact(1) = [];
