T = 0.0001;
a = 1;
fD = 440;
t = (0:T:3.0);
x3 = exp(-((a * a) + 2) * t) .* cos(2 * pi * fA * t);

yAxis = (x3(1:(0.01/T) + 1));
times = (0:T:0.01);

plot(t, x3);
xlabel('time duration 0.01s with interval 0.0001');
ylabel('value of function in duration 0.01s');
title('plot of exp .* cos, in duration 0.01s for freq 440Hz and decay');
grid ON;

soundsc(x3, 1/T);
