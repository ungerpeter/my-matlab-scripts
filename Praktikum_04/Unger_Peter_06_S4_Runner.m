%% Aufg2
a = 0;
b = 10;
tol = 0.00001;
func = @(x) cos(x).*sin(x);
[root,xint,n] = Unger_Peter_06_S4_Aufg2(func,a,b,tol);