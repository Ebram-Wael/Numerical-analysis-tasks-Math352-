function [x,y] = HeunsMethod(f,xinit,xend,yinit,h)

 N = round((xend-xinit)/h);

 x = [xinit zeros(1, N)];
 y = [yinit zeros(1, N)];
 for i=1:N
    x(i+1) = x(i)+h;
    ynew = y(i) + h*feval(f,x(i),y(i));
    y(i+1) = y(i) + h*feval(f,x(i),y(i))/2 + h*feval(f,x(i+1),ynew)/2;
 end
 figure;
    plot(x,y,'o-');
    xlabel('x');
    ylabel('y');
    title("Heun's Approximation");
    grid on;
    legend("Heuns Approximation");
 end

