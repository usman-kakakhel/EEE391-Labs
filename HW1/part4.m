T = 0.0001;
f1 = 15;
f2 = 1000;
t = (0:T:3.0);
x4 = cos(2 * pi * f2 * t) .* cos(2 * pi * f1 * t);

yAxis = (x4(1:(0.01/T) + 1));
times = (0:T:0.01);

plot(times, yAxis);
xlabel('time duration 0.01s with interval 0.0001');
ylabel('value of function in duration 0.01s');
title('plot of cos .* cos, in duration 0.01s for freq 15Hz and 1000Hz');
grid ON;

soundsc(x4, 1/T);

trig = 0.5 * (cos((2 * pi * f2 * t) + (2 * pi * f1 * t)) + cos((2 * pi * f1 * t) - (2 * pi * f2 * t)));

soundsc(trig, 1/T);