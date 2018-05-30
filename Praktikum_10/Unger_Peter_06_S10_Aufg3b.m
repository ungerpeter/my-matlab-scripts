%Jacobi runtime         = 175.519537 seconds
%Gauss-Sedel runtime    =  37.325853 seconds
%Gauss runtime          = 292.334274 seconds

addpath('../Praktikum_07');

A = diag( diag(ones(3000)*4000))+ ones(3000);
x = [1:1:1500,1500:-1:1]';
b = A*x;
x0 = zeros(3000,1);
tol = 1e-4;

%% Jacobi
t1 = tic;
[xn, n, n2] = Unger_Peter_06_S10_Aufg3a(A,b,x0,tol,1);
disp('Jacobi runtime:');
toc(t1)

%% Gauss-Seidel
t3 = tic;
[xn, n, n2] = Unger_Peter_06_S10_Aufg3a(A,b,x0,tol,0);
disp('Gauss-Seidel runtime:');
toc(t3)

%% Gauss
t4 = tic;
[A_triangle, det_A, x] = Unger_Peter_06_Aufg2(A,b);
disp('Gauss runtime:');
toc(t4)