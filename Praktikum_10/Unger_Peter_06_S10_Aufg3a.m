% Example parameters resp. function call:
% A = [8 5 2; 5 9 1; 4 2 7];
% b = [19;5;34];
% tol = 10^-4;
% opt = 1;
% [xn, n, n2] = Unger_Peter_06_S10_Aufg3a(A,b,x0,tol,opt)

%Jacobi:     opt = 1
%Gauss-Sedel opt = 0

function [xn, n, n2] = Unger_Peter_06_S10_Aufg3a(A,b,x0,tol,opt)
    [L, D, R] = ldr(A);
    fault = tol + 1;
    
    if(opt==1)
        %a-priori
        B = norm((-D^(-1))*(L+R));
        x = norm((-(D^(-1))*(L+R)*x0+(D^(-1))*b)-x0);
        n2 = log(tol*(1-B)/x)/log(B);
        
        n = 0;
        x1 = x0;
        while(fault >= tol)
            n = n+1;
            x0 = x1;
            x1 = -(D^(-1))*(L+R)*x0+(D^(-1))*b;
            %a-posteriori
            x = norm(x1 - x0);
            fault = (B/(1-B))*x;
        end
    elseif(opt==0)
        %a-priori
        B = norm((-(D+L)^(-1))*R);
        x = norm(-((D+L)^(-1))*R*x0+((D+L)^(-1))*b-x0);
        n2 = log(tol*(1-B)/x)/log(B);
        
        n = 0;
        x1 = x0;
        while(fault >= tol)
            n = n+1;
            x0 = x1;
            x1 = -((D+L)^(-1))*R*x0+((D+L)^(-1))*b;
            x = norm(x1 - x0);
            fault = (B/(1-B))*x;
        end
    end
    xn = x1;
end
