function PlotKeane()

[X,Y] = meshgrid(0:0.2:10,0:0.2:10);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Keane(z);
    end
end

figure(2);
surf(X,Y,Z);
title('Keane Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-1 10 -1 10 -1 0]);

end