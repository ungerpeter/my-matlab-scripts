plots = 10;

A = rand(101,plots); x = [0:5:500];

rows = ceil(plots / 3);
cols = 0;

if plots > 3
    cols = 3;
else
    cols = plots;
end

for i = 1:plots
 subplot(rows,cols,i), plot(x, A(:,i), 'r'); 
end