function PlotBartelsConn()

[X,Y] = meshgrid(-10:0.03:10,-10:0.03:10);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = BartelsConn(z);
    end
end

figure(2);
surf(X,Y,Z);
title('Bartel Conn Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-1 1 -1 1.5 1 6]);

end