function [y,value,abs_err,rel_err] = Unger_Peter_06_S3_Aufg3(x,B,nmax)
%Unger_Peter_06_S3_Aufg3 Summary(x,B,nmax)
%   accepts:
%       x:          decimal number
%       B:          base (1 < base < 10)
%       nmax:       decimal count
%   returns:
%       y:          x in new base (signed)
%       value:      value of y
%       abs_err:    absolute error afer conversion
%       rel_err:    relative error afer conversion

    validateParameters(B, nmax);
    [y, value] = convertToBase(x, B, nmax);
    abs_err = x - value;
    rel_err = abs_err / x;

end

function [] = validateParameters(B, nmax)
    if(2 > B || 9 < B)
        error('B must be between 1 and 10'); 
    end
    if(nmax < 0)
        error('n max must be at least 0');
    end
end

function [y, value] = convertToBase(x, B, nmax)
    [intStr, intValue] = convertIntToBase(x, B);
    [floatStr, floatValue] = convertFloatingPointToBase(x, B, nmax);
    y = strcat(intStr, floatStr);
    value = intValue + floatValue;
end

function [y, value] = convertIntToBase(x, B)
    value = fix(x);
    x = value;
    y = 0;
    while(x > 0)
        digit = mod(x, B);
        if y == 0
            y = num2str(digit);
        else
            y = strcat(num2str(digit), y);
        end
        x = x - digit;
        x = x / B;
    end
    if x < 0 
        y = strcat('-', y);
    else
        y = strcat('+', y);
    end
end

function [y, value] = convertFloatingPointToBase(x, B, nmax)
    y = '.';
    value = 0;
    n_used = 0;
    d = abs(x - fix(x));
    while(nmax > 0) 
        d = d * B;
        digit = floor(d);
        value = (value * B) + digit;
        y = strcat(y, num2str(digit));
        d = d - digit;
        nmax = nmax - 1;
        n_used = n_used + 1;
    end
    
    value = value / B^n_used;
    if length(y) == 1
        y = '.0';
    end
end