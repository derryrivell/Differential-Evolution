function PlotBukin6()

[X,Y] = meshgrid(-20:0.03:20,-20:0.03:20);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Bukin6(z);
    end
end

figure(2);
mesh(X,Y,Z);
title('Bukin 6 Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-15 15 -15 15 0 500]);

end