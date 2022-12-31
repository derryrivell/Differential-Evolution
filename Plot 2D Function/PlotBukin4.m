function PlotBukin4()

[X,Y] = meshgrid(-20:0.05:20,-20:0.05:20);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Bukin4(z);
    end
end

figure(2);
mesh(X,Y,Z);
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
title('Bukin 4 Function');
axis([-20 20 -20 20 0 50000]);

end