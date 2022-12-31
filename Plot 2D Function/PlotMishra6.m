function PlotMishra6()

[X,Y] = meshgrid(-15:0.2:15,-15:0.2:15);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Mishra6(z);
    end
end

figure(2);
surf(X,Y,Z);
title('Mishra 6 Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-15 15 -15 15 -10 45]);
