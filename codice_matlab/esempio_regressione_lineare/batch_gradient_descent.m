function [theta,cost_hist,n] = batch_gradient_descent(theta,x,y,lr,it)
  cost_hist = zeros(it,1);
  
  for n = 1 : it
      for j = 1 : length(theta)
        theta(j) = theta(j) - lr * ( h(x,theta) -y )' * x(:,j);
      cost_hist(n) = cost_func(theta,x,y);
      end
 end
end

