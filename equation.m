function res = equation(lambda,x,y,h)
z = lambda(1)+lambda(2)*sin(x);
res = (norm(z-y))^2;
set(h(2),'ydata',z);
set(h(3),'string',sprintf('Result: a = %8.4f and b = %8.4f.',lambda))
pause(.01)