xval1 = -5:0.1:5;
yval1 = exp(xval1);
subplot(1,3,1), plot(xval1, yval1);

xval2 = -10:0.1:10;
yval2 = xval2.^5 + 3 * xval2.^4 + 3 * xval2.^2 + xval2 + 1;
subplot(1,3,2), plot(xval2, yval2);

xval3 = -2*pi:0.1:2*pi;
gx = sin(xval3);
hx = cos(xval3);
subplot(1,3,3), plot(xval3, gx);
hold on
subplot(1,3,3), plot(xval3, hx);
hold off