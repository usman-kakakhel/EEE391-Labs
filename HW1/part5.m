T = 0.01;
f0 = 2500;
mew = -500;
fnew = 500;
mewnew = 500;
t = (0:T:2.0);
phi = 0;
x5 = cos((2 * pi * mewnew * t .* t) + (2 * pi * fnew * t) + phi);

yAxis = (x5(1:(0.01/T) + 1));
times = (0:T:0.01);

plot(times, yAxis);
xlabel('time duration 0.01s with interval 0.0001s');
ylabel('value of function in duration 0.01s');
title('chirp signal with mew = -500 and f0 = 2500 and phi = 0');
grid ON;

soundsc(x5, 1/T);

