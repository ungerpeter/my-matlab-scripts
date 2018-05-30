%% Aufg2
A = [0 10 20; 20 30 50; 100 150 200];
b = [150 470 2150]';
[ A_triangle, detA, x ] = Unger_Peter_06_Aufg2(A, b);
disp(A_triangle);
disp(detA);
disp(x);
