function [] = Unger_Peter_06_S11_Aufg1 (func, x, y)
    z = func(x,y);
    
    subplot(1,3,1);
    mesh(x,y,z);
    meshc(x,y,z);
    title('mesh + meshc');
    xlabel('x');
    ylabel('y');
    zlabel('z');
    
    subplot(1,3,2);
    contour(z);
    title('contour');
    xlabel('x');
    ylabel('y');
    
    subplot(1,3,3);
    surface(z);
    colorbar hsv;
    title('surface');
    xlabel('x');
    ylabel('y');
end