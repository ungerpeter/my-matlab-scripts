%% Aufg1 b

y1 = @(x) 5 ./ nthroot((2 * x.^2), 3);
y2 = @(x) 10.^5 * (2 * exp(1)).^(-x ./ 100);
y3 = @(x) ((10.^(2 * x)) ./ (2.^(5 * x))).^2;
x = linspace(0, 100, 1000);

subplot(3,1,1)
loglog(x, y1(x), 'r');
subplot(3,1,2)
semilogy(x, y2(x), 'g');
subplot(3,1,3)
semilogy(x, y3(x), 'b');