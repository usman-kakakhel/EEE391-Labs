T = 0.0001;
phi = pi;
fD = 587;
t = (0:T:3.0);
x2 = cos((2 * pi * fA * t) + phi);

yAxis = (x2(1:(0.01/T) + 1));
times = (0:T:0.01);

plot(times, yAxis);
xlabel('time duration 0.01s with interval 0.0001');
ylabel('value of function in duration 0.01s');
title('plot of cos, in duration 0.01s for freq 587Hz with phase pi');
grid ON;

soundsc(x2, 1/T);
