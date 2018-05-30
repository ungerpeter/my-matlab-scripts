function [y] = Unger_Peter_06_S6_Aufg3(x0, x1, tol, func)
    while(abs(x0-x1) > tol)
        x2 = x1 - (((x1-x0)/(func(x1)-func(x0))) * func(x1));
        x0 = x1;    
        x1 = x2;
    end
y = x1;
end

%Für das Newton-Verfahren müsste man noch die Ableitung berechnen können.


% Rekursive Variante
function [y] = Unger_Peter_06_S6_Aufg3_Rek(x0, x1, tol, func)
    x_temp = x1;
    x1 = x1 - ( (x1 - x0) / (func(x1) - func(x0)) ) * func(x1);
    x0 = x_temp;
    
    if(abs(x1-x0) < tol)
        y = x1;
    else
        y = Unger_Peter_06_S6_Aufg3_Rek(x0, x1, tol, func);
    end
end
