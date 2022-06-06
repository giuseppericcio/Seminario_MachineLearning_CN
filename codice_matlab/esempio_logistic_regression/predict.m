function p = predict(theta, x)
  %Restituisco un valore predetto pari a 0 o 1 a seconda dell'output
  %del modello di regressione logistica
  p=(h(x,theta)>=0.5);
 
end
