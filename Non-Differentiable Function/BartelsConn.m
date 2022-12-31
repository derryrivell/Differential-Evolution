function y = BartelsConn(x)
    y = abs(x(1).^2+x(2).^2+x(1)*x(2))+abs(sin(x(1)))+abs(cos(x(2)));