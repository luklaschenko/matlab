N = 80;
x = 0:1/N:1;
[approx, exact, error] = euler(N,0,1,50);

T = table(approx');
plot(x,approx)