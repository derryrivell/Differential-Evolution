clear all
clc

N = 2;
NP = 100;       
G = 200;              
F = 0.2;  
CR = 0.9;           
Xmax = [2*pi, 2*pi];
Xmin = [-2*pi, -2*pi];

f = @XinSheYang2;

iter = 0;
for m = 1: NP
    for n = 1: N
        X(m,n) = Xmin(n) + rand()*(Xmax(n) - Xmin(n));
    end
end
    
for i = 1: G
    iter = iter+1;
    for m = 1: NP 
        r = randperm(NP);
        V = X(r(1),:) + F*(X(r(2),:) - X( r(3),:));
 
        delta = floor(rand()*N+1);
        for n = 1: N
            r = rand();
            if (r > CR && n ~= delta)
                    U(1,n) = X(m,n);
                else
                    U(1,n) = V(1,n);
            end
            if U(1,n) > Xmax(1,n)
                U(1,n) = Xmax(1,n);
            end
            if U(1,n) < Xmin(1,n)
                U(1,n) = Xmin(1,n);
            end
        end

        if f(U(1,:)) < f(X(m,:))
            X(m,:) = U(1,:);
        else
            X(m,:) = X(m,:);
        end
            Fitness(m,1) = f(X(m,:));
    end
 
        [y,ind1] = sort(Fitness,1);
        Fitness_Minimum = y(1,1);
        [FitnessMinimum,ind] = min(Fitness);
            
        figure(1);
        plot(iter,FitnessMinimum,'b.');
        xlabel('Banyaknya Iterasi');
        ylabel('Rentang Fitness');
        title(sprintf('Global Optimum = (%f,%f), Fitness = %f', X(m,:), FitnessMinimum));
        grid on
        hold on
end
hold off
PlotXinSheYang2();
hold on
scatter3(X(ind,1),X(ind,1),FitnessMinimum,'fill','red')
