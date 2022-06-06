function [theta,hist] = regressione_logistica(x,y,theta,lr,n)
m = length(x(1,:));
hist = zeros(n,1);

%Discesa del gradiente per il modello di regressione logistica
%A ogni iterazione salvo il valore corrente della funzione costo
for i = 1:n
    for j = 1:m
        theta(j) = theta(j) - lr .* (h(x,theta) -y)' *x(:,j);
    end
    hist(i) = cost(theta,x,y);
end
end
