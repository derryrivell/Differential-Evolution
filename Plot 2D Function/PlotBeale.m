function PlotBeale()

[X,Y] = meshgrid(-10:0.03:10,-10:0.03:10);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Beale(z);
    end
end

figure(2);
mesh(X,Y,Z);
title('Beale Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-5 5 -5 5 0 450000]);

end