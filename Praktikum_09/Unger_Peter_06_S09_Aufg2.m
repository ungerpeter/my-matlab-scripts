function [ x, xe, dx_max, dx_obs ] = Unger_Peter_06_S09_Aufg2(A, Ae, b, be)
    mmn = @(M) Matrix_Max_Norm(M);
    vmn = @(V) Vector_Max_Norm(V);
    x = linsolve(A,b);
    xe = linsolve(Ae, be);
    A_diff = A - Ae;
    b_diff = b - be;
    x_diff = x - xe;
    nenner = cond(A, inf) * (mmn(A_diff) / mmn(A));
    dx_obs = vmn(x_diff) / vmn(x);
    if nenner < 1 
        dx_max = (cond(A, inf) / (1 - nenner)) * ((mmn(A_diff) / mmn(A)) + (vmn(b_diff) / vmn(b)));
    else
        dx_max = NaN;
    end
end