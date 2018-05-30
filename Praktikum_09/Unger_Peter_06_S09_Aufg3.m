function [] = Unger_Peter_06_S09_Aufg3()
    m_max = 1000;
    dx_max_values = zeros(1, m_max);
    dx_obs_values = zeros(1, m_max);
    max_obs_values = zeros(1, m_max);
    
    for m = 1:m_max
        A = rand(100, 100);
        b = rand(100, 1);
        Ae = A + (rand(100,100) / 10^5);
        be = b + (rand(100,1) / 10^5);
        
        [~, ~, dx_max, dx_obs] = Unger_Peter_06_S09_Aufg2(A, Ae, b, be);
        
        if isnan(dx_max)
            dx_max = 0;
        end
        
        dx_max_values(m) = dx_max;
        dx_obs_values(m) = dx_obs;
        max_obs_values(m) = dx_max / dx_obs;
    end
    
    figure
    semilogy(dx_max_values);
    hold on;
    semilogy(dx_obs_values);
    semilogy(max_obs_values);
    legend('dx_{max}', 'dx_{obs}', 'dx_{max/obs}');
end

% Kommentar: Nein, da der dx_max Wert nicht immer grösser ist als dx_obs