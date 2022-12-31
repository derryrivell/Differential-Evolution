function PlotPrice1()

[X,Y] = meshgrid(-5:0.03:5,-5:0.03:5);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Price1(z);
    end
end

figure(2);
mesh(X,Y,Z);
title('Price 1 Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-5 5 -5 5 0 45]);

end