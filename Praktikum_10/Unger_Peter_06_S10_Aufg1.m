addpath('../Praktikum_09');

A = [8 5 2; 5 9 1; 4 2 7];
[L, D, R] = ldr(A);
x0 = [1; -1; 3];
b = [19; 5; 34];
solves = zeros(3,4);

solves(:, 1) = x0;
for i=2:size(solves, 2)
    solves(:, i) = -D^-1 * ((L + R) * solves(:, i-1) - b); 
end

disp(solves);