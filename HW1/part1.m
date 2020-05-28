T = 0.0001;
fA = 440;
fC = 554;
fE = 659;
t = (0:T:3.0);
x1 = sin(2 * pi * fA * t);

yAxis = (x1(1:(0.01/T) + 1));
times = (0:T:0.01);

plot(times, yAxis);
xlabel('time duration 0.01s with interval 0.0001');
ylabel('value of function in duration 0.01s');
title('plot of sin, in duration 0.01s for freq 440Hz');
grid ON;

soundsc(x1, 1/T);

s = sin(2 * pi * fA * t) + sin(2 * pi * fC * t) + sin(2 * pi * fE * t);
times1 = (0:T:3);

plot(times1, s);
xlabel('time duration 3s with interval 0.0001');
ylabel('value of function in duration 3s');
title('plot of A, E and C added together, in duration 3s');
grid ON;

soundsc(s, 1/T);