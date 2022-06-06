function [theta,cost_hist] = sgd(theta,x,y,lr,it)
  cost_hist = zeros(it,1);
  for n = 1 : it
      for i = 1 : length(x)
           for j = 1 : length(theta)
                theta(j) = theta(j) - lr.* (h(x(i,:),theta) -y(i)) * x(i,j);
           end
      end
      cost_hist(n) = cost_func(theta,x,y);
 end
end

