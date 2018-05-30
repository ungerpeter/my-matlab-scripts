%% Aufg 3
x0 = 9; 
x1 = 8; 
tol = 10^-4;
func = @(x) (((x^2)*pi)/3)*(15-x)-471;
y = Unger_Peter_06_S6_Aufg3(x0, x1, tol, func);
disp(y);