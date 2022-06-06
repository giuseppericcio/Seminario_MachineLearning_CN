function [J] = cost(theta, x, y)
  J = sum((-y.*log(h(x,theta)))-((1-y).*log(1-h(x,theta)))); 
end