% Aufg2
a = [1 0 0];
xmin = -10;
xmax = 10;
Unger_Peter_06_S1_Aufg2(a, xmin, xmax);

% Aufg3
format long;
disp(Unger_Peter_06_S1_Aufg3(12));

t_start1 = tic();
Unger_Peter_06_S1_rekFak(10);
t_elapsed1 = toc(t_start1);
disp(["rekFak: n = 10", sprintf('%1.12f',t_elapsed1)]);
t_start2 = tic();
Unger_Peter_06_S1_Aufg3(10);
t_elapsed2 = toc(t_start2);
disp(["forFak: n = 10", sprintf('%1.12f',t_elapsed2)]);

t_start3 = tic();
Unger_Peter_06_S1_rekFak(100);
t_elapsed3 = toc(t_start3);
disp(["rekFak: n = 100", sprintf('%1.12f',t_elapsed3)]);
t_start4 = tic();
Unger_Peter_06_S1_Aufg3(100);
t_elapsed2 = toc(t_start4);
disp(["forFak: n = 100", sprintf('%1.12f',t_elapsed4)]);

t_start5 = tic();
Unger_Peter_06_S1_rekFak(50000);
t_elapsed5 = toc(t_start5);
disp(["rekFak: n = 50000", sprintf('%1.12f',t_elapsed5)]);
t_start6 = tic();
Unger_Peter_06_S1_Aufg3(50000);
t_elapsed6 = toc(t_start6);
disp(["forFak: n = 50000", sprintf('%1.12f',t_elapsed6)]);

% Für sehr kleine n-Werte performt die rekursive Funktion im Durchschnitt
% besser. 
% Für grössere n-Werte ist die for-Schleifen Implementierung um Einiges
% performanter. Das asymptotische Verhalten der for-Implementierung steigt
% langsamer an als die rekursive Implementierung.