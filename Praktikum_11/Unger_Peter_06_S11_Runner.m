[v0, a] = meshgrid(0:0.1:100, 0:0.1:pi/2);
%v0 = linspace(0, 0.1, 100);
%a = linspace(0, 0.1, 90);
g = 9.81;
wurfweite = @(v0, a) (v0.^2 .* sin(2*a)) ./ g;

Unger_Peter_06_S11_Aufg1(wurfweite, v0, a);