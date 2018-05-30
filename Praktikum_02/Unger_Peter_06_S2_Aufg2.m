% Aufg 2a
%% a
f1 = @(x) x.^7 - 14 * x.^6 + 84 * x.^5 - 280 * x.^4 + 560 * x.^3 - 672 * x.^2 + 448 * x - 128;
f2 = @(x) (x-2).^7;
d = (2.01 - 1.99) / 501;
x = 1.99:d:2.01;
hold on;
grid on;
grid minor;
plot(x, f1(x), 'r');
plot(x, f2(x), 'g');
% f1 enthält ungenauere y-Werte, da Rundungsfehler und Fortpflanzungsfehler öfter einbezogen werden

% Aufg 2b
%% b
g = @(x) x./ (sin(1 + x) - sin(1));
x = -10^-14:10^-17:10^-14;
plot(x, g(x), 'r');
% Nein, y-Werte springen

% Aufg 2c
%% c
x = -10^-14:10^-17:10^-14;
g2 = @(x) x ./ (2 * cos((2+x) ./ 2) .* sin(x ./ 2));
plot(x, g2(x), 'g');
syms x;
disp(limit(g2(x), 0));
% lim x->0: g2(x) = 1/cos(1) =~ 1.85
% Nenner wird bei g2(0) nicht 0
% y-Werte springen nicht mehr