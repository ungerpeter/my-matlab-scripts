function y = Unger_Peter_06_S1_Aufg3(n)
    
    if n < 0 || fix(n) ~= n
        error('ERROR: FAK ist nur für nicht-negative, ganze Zahlen definiert');
    end
    
    y = n;
    for m = n-1:-1:1
        y = y * m;
    end
end