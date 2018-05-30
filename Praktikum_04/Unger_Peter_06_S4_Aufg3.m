%% Aufg3 - Absolute Errors
exact_r = sqrt(2);
fn = @(x) x.^2 - 2;
a = 0;
b = 2;
tol1 = 10.^-15;
tol2 = 10.^-16;

[root1, xit1, n1] = Unger_Peter_06_S4_Aufg2(fn, a, b, tol1);
[root2, xit2, n2] = Unger_Peter_06_S4_Aufg2(fn, a, b, tol2);

plotAbsError(xit1, exact_r, n1, {2,2,1});
plotAbsError(xit2, exact_r, n2, {2,2,2});

%% Aufg3 - Iterations
plotIterationsForTolerance(fn, a, b, 20, {2,2,3});

function [] = plotAbsError(approxIterations, exactValue, iterationCount, subplot_params)
    abs_error = zeros(1, iterationCount);
    iterations = 1:1:iterationCount;
    
    for i=1:iterationCount
        abs_error(i) = abs(approxIterations(i) - exactValue);
    end

    subplot(subplot_params{:})
    semilogy(iterations, abs_error);
    xlabel('iterations');
    ylabel('absolute errors');
end

function [] = plotIterationsForTolerance(fn, a, b, steps, subplot_params)
    tolerance = zeros(1, steps);
    iterations = zeros(1, steps);

    for i=1:steps
        tolerance(i) = 10^(-i);
    end

    for n=1:steps
        [~, ~, cn] = Unger_Peter_06_S4_Aufg2(fn, a, b, tolerance(n));
        iterations(n) = cn;
    end
    
    disp(iterations);

    subplot(subplot_params{:})
    loglog(tolerance, iterations);
    xlabel('tolerance');
    ylabel('iterations');
end