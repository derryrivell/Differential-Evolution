function PlotShekel7()

[X,Y] = meshgrid(-5:0.2:5,-5:0.2:5);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Shekel7(z);
    end
end

figure(2);
surf(X,Y,Z);
title('Shekel 7 Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([0 5 0 5 -11 0]);

end