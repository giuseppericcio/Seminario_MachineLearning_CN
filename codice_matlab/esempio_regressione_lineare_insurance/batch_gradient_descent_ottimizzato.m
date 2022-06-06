function [theta,cost_hist,n] = batch_gradient_descent_ottimizzato(theta,x,y,lr,it)
  cost_hist = zeros(it,1);
  for n = 1 : it
        theta = theta - lr.* ( x'*x*theta - x' * y );
        cost_hist(n) = cost_func(theta,x,y);   
  end
end




