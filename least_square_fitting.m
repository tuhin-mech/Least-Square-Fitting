% Least square fitting
% Equation: y = a + b * sin(x)

clc; close all; figure

M = csvread('data.csv');
x = M(:,1);y = M(:,2);

set(gcf,'doublebuffer','on')
h = plot(x,y,'o',x,0*x,'r-');
h(3) = title('');

lambda0 = [0.001,0.01];
lambda = fminsearch(@equation,lambda0,[],x,y,h);

set(h(2),'color','red', 'LineWidth', 1.5)
xlabel('X value')
ylabel('Y value')
h=legend('Data','Fitted Curve','Location','SouthEast');
v = get(h,'title');

disp(['a = ', num2str(lambda(1))])
disp(['b = ', num2str(lambda(2))])



