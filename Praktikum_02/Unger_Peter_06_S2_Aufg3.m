% Aufg 3a
%% a
% Für Grosse n erhöht sich das Resultat massiv, da die Maschinenzahl
% zeitweise zu klein ist, weshalb die Division s_n^2 / 4 ein riesiges
% Resultat ergibt.

s2_a = @(s) sqrt(2-2*sqrt(1-(s^2/4)));
n = 6;
max_n = 1000;
s_a = 1;
a = s_a*n;

while n(end) < max_n
   a(end+1) = s_a(end)*n(end);
   s_a(end+1) = s2_a(s_a(end));
   n(end+1) = n(end)*2;
end

plot(n, a, 'r');

% Aufg 3b
%% b
% Durch Umstellung der Berechnung heben sich die Effekte vor
% der Berechnung der Wurzel auf, und die Zahlen bleiben durchwegs im
% anzeigbaren Bereich, wodurch die Berechnungen weiterhin funktionieren bis
% zur maximalen Genauigkeit von Pi die darstellbar ist.

s2_b = @(s) sqrt(s^2./(2*(1+sqrt(1-(s^2/4)))));
n = 6;
max_n = 1000;
s_b = 1;
b = s_b*n;

while n(end) < max_n
   b(end+1) = s_b(end)*n(end);
   s_b(end+1) = s2_b(s_b(end));
   n(end+1) = n(end)*2;
end

plot(n, b, 'b');