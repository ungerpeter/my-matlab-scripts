function y = Unger_Peter_06_S1_rekFak(n)
% FAK y = fak(n) berechnet die Fakultät von n % fak(n) = n * fak(n -1), fak(0) = 1 % Fehler, falls n < 0 oder nicht ganzzahlig

    if n < 0 || fix(n) ~= n
        error('ERROR: FAK ist nur für nicht-negative, ganze Zahlen definiert');
    end
    if n <= 1
        y = 1; 
    else
        y = n*Unger_Peter_06_S1_rekFak(n-1); 
    end
end