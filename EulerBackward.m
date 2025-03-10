function [x, y] = EulerBackward(f,x0,y0,h,xn)
    n = round((xn -x0)/h);

    x = zeros(1, n+1);
    y = zeros(1, n+1);

    x(1) = x0;
    y(1) = y0;

    for i = 1:n
        y(i+1) = y(i) + h * feval(f,x(i+1), y(i+1));
        x(i+1) = x(i) + h;
    end

    figure;
    plot(x,y,'o-');
    xlabel('x');
    ylabel('y');
    title("Euler's Backward Approximation");
    grid on;
    legend("Euler Approximation");

end
