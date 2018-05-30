function [ y, ydiff, yint ] = Unger_Peter_06_S1_Aufg2(a, xmin, xmax)
%Unger_Peter_06_S1_Aufg1 Plot functions by given coefficients vector
%   coefficients vector starts with highest exp (high -> low)
%   [2 1 0 5]

    x = xmin:0.01:xmax;
    s = size(x, 2);
    dim = size(a, 2);
    y = zeros(1,s);
    ydiff = zeros(1,s);
    yint = zeros(1,s);

    for i = 1:s
        for a_i = 0:dim-1
            co = a(a_i+1);
            pot = (dim-1-a_i);
            y(i) = y(i) + co * x(i).^pot;
            ydiff(i) = ydiff(i) + pot * co * x(i).^(pot-1);
            yint(i) = yint(i) + 1/(pot+1) * co * x(i).^(pot+1);
        end
    end

    hold on;
    grid on;
    grid minor;
    xlim([xmin, xmax]);
    ylim([xmin, xmax]);
    plot(x,y,'r', x,ydiff,'g', x,yint,'b');
    legend("f(x)","f'(x)","fint(x)");
end