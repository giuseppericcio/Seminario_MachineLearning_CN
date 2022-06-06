clc, clear, close all

%Ripetibilità esperimento
rng(0,'twister');

%Generazione dataset
x = 50*rand(250,1);
y =  x.^3 + 50^2 .* randn(250,1);
x = [ones(length(x),1) x];

%Parametri theta inizializzati casualmente
theta_sgd = rand(1,length(x(1,:)));
lr = 0.000001;
it = 100;

%Fitting parametri con sgd
[theta_sgd, cost_hist_sgd, n_sgd] = sgd(theta_sgd,x,y,lr,it);

%Visualizzazione retta stimata
y_pred = h(x,theta_sgd);
figure(1)
scatter(x(:,2),y,'filled')
hold on 
plot(x(:,2),y_pred, 'r','LineWidth',2)
title('Esempio underfitting')
xlabel('x') 
ylabel('y')
legend('training set','y pred')

