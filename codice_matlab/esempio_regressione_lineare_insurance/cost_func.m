function [cost] = cost_func(theta,x,y)
cost = 1/2 * sum((h(x,theta)-y).^2 , 1);
end

