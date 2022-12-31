function PlotStep3()

[X,Y] = meshgrid(-10:0.03:10,-10:0.03:10);
N = size(X,1);

for i = 1:N
    for j = 1:N
        z = [X(i,j),Y(i,j)];
        Z(i,j) = Step3(z);
    end
end

figure(2);
mesh(X,Y,Z);
title('Step 3 Function');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
axis([-10 10 -10 10 0 200]);

end