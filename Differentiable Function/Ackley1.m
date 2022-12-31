function y = Ackley1(x)
    y = -20*exp(-0.2*sqrt((1/2)*sum(x(1)^2+x(2)^2)))-exp((1/2)*sum(cos(2*pi*x(1))+cos(2*pi*x(2))))+20+exp(1);