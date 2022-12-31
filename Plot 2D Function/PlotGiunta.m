function PlotGiunta()

[X,Y] = meshgrid(-20:0.03:20,-20:0.03:20);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Giunta(z);
    end
end

figure(2);
mesh(X,Y,Z);
title('Giunta Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-1 1 -1 1 0 1]);

end