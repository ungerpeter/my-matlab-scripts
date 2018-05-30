%% Aufg1 a - Analytisches Vorgehen

y1 = @(x) 5 ./ nthroot((2 * x.^2), 3);
y2 = @(x) 10.^5 * (2 * exp(1)).^(-x ./ 100);
y3 = @(x) ((10.^(2 * x)) ./ (2.^(5 * x))).^2;

log_y = @(x, fy) log(fy(x));
log_y_start = @(log_y) log_y(2);
log_y_end = @(log_y) log_y(end);

m = @(p1, p2) (p2(1,1) - p1(1,1)) ./ (p2(1,2) - p1(1,2));

x = linspace(0, 100, 1000);
log_x = log(x);


hold on;
grid on;
plot(log_x, log_y(x, y1), 'r');
plot(x, log_y(x, y2), 'g');
plot(x, log_y(x, y3), 'b');
legend("y1 - exp.f", "y2 - pow.f", "y3 - pow.f");
xlim([-5 10]);

%% Aufg1 a - Steigung

p1 = [log_x(2), log_y_start(log_y(x, y1))];
p2 = [log_x(end), log_y_end(log_y(x, y1))];
m1 = m(p1, p2);
disp(m1);

p3 = [x(2), log_y_start(log_y(x, y2))];
p4 = [x(end), log_y_end(log_y(x, y2))];
m2 = m(p3, p4);
disp(m2);

p5 = [x(2), log_y_start(log_y(x, y3))];
p6 = [x(end), log_y_end(log_y(x, y3))];
m3 = m(p5, p6);
disp(m3);
