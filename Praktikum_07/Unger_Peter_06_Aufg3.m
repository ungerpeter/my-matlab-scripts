
%Es gibt keine erkennbare Unterschiede
%A1
A1 = [4 -1 -5; -12 4 17; 32 -10 -41];
b11 = [-5; 19; -39];
b12 = [6; -12; 48];

disp('Solutions for A1*x11=b11');
[A_triangle,detA,x11_gaussAlg] = Unger_Peter_06_Aufg2(A1,b11);
x11_gaussAlg
x11_backslash = A1\b11
x11_linsolve = linsolve(A1,b11)

disp('Solutions for A1*x12=b12');
[A_triangle,detA,x12_gaussAlg] = Unger_Peter_06_Aufg2(A1,b12);
x12_gaussAlg
x12_backslash = A1\b12
x12_linsolve = linsolve(A1,b12)


%A2
A2 = [2 7 3; -4 -10 0; 12 34 9];
b21 = [25; -24; 107];
b22 = [5; -22; 42];

disp('Solutions for A2*x21=b21');
[A_triangle,detA,x21_gaussAlg] = Unger_Peter_06_Aufg2(A2,b21);
x21_gaussAlg
x21_backslash = A2\b21
x21_linsolve = linsolve(A2,b21)

disp('Solutions for A2*x22=b22');
[A_triangle,detA,x22_gaussAlg] = Unger_Peter_06_Aufg2(A2,b22);
x22_gaussAlg
x22_backslash = A2\b22
x22_linsolve = linsolve(A2,b22)


%A3
A3 = [-2 5 4; -14 38 22; 6 -9 -27];
b31 = [1; 40; 75];
b32 = [16; 82; -120];

disp('Solutions for A3*x31=b31');
[A_triangle,detA,x31_gaussAlg] = Unger_Peter_06_Aufg2(A3,b31);
x31_gaussAlg
x31_backslash = A3\b31
x31_linsolve = linsolve(A3,b31)

disp('Solutions for A3*x32=b32');
[A_triangle,detA,x32_gaussAlg] = Unger_Peter_06_Aufg2(A3,b32);
x32_gaussAlg
x32_backslash = A3\b32
x32_linsolve = linsolve(A3,b32)


%A4
A4 = [-1 2 3 2 5 4 3 -1; 3 4 2 1 0 2 3 8; 2 7 5 -1 2 1 3 5; 3 1 2 6 -3 7 2 -2; 5 2 0 8 7 6 1 3; -1 3 2 3 5 3 1 4; 8 7 3 6 4 9 7 9; -3 14 -2 1 0 -2 10 5];
b4 = [-11; 103; 53; -20; 95; 78; 131; -26];

disp('Solutions for A4*x4=b4');
[A_triangle,detA,x4_gaussAlg] = Unger_Peter_06_Aufg2(A4,b4);
x4_gaussAlg
x4_backslash = A4\b4
x4_linsolve = linsolve(A4,b4)
