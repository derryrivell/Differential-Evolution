function PlotXinSheYang2()

[X,Y] = meshgrid(-5:0.2:5,-5:0.2:5);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = XinSheYang2(z);
    end
end

figure(2);
surf(X,Y,Z);
title('Xin She Yang Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-5 5 -5 5 0 50]);

end