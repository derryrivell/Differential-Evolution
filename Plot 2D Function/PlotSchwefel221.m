function PlotSchwefel221()

[X,Y] = meshgrid(-50:0.03:50,-50:0.03:50);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Schwefel221(z);
    end
end

figure(2);
mesh(X,Y,Z);
title('Schwefel 2.21 Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-50 50 -50 50 0 50]);

end