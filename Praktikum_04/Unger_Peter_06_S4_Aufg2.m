function [root, xit, n] = Unger_Peter_06_S4_Aufg2(func, a, b, tol)

    fa = func(a);
    fb = func(b);
    if((fa > 0 && fb > 0) || (fa < 0 && fb < 0))
        error("No Point at y = 0 found");
        return;

    else
        ai = a;
        bi = b;
        maxIterations = 1000;
        xit = zeros(1, maxIterations);
        n = 1;
        currPrecision = abs(ai - bi);
        last_root = 0;

        while n < maxIterations && currPrecision > tol
            n = n + 1;
            root = ((ai + bi) / 2.0);
            if last_root == root
                return;
            else 
                last_root = root;
            end
            if bisecCalc(func, ai, bi) >= 0
                ai = root;
            else
                bi = root;
            end
            xit(n) = root;
            currPrecision = abs(ai - bi);
        end
        root = ((ai+bi)/2.0);
    end
end

function [ val ] = bisecCalc(fn, ai, bi)
    val = fn((ai+bi) / 2) * fn(ai);
end

