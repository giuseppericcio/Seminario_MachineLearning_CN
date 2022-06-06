clc, clear, close all

%Ripetibilità esperimento
rng(0,'twister');

%Generazione dataset
%x rappresenta la superficie di una casa
%y rappresenta il prezzo della casa di area x

low = 50;
high = 100;
x = (high-low).*rand(200,1) + low;
y = 2 * x + 10 .* randn(200,1);

%Normalizzo i dati 
x = normalize(x,'range',[0 1]);
y = normalize(y,'range',[0 1]);

%Visualizzazione dataset
figure(1)
scatter(x,y,'filled')
xlabel('Area') 
ylabel('Prezzo') 

x = [ones(length(x),1) x];

%Divido dataset in training set e test set
n = size(x,1);
th = floor(0.8 * n);
x_train = x(1:th,:);
y_train= y(1:th,:);
x_test = x(th+1:n,:);
y_test = y(th+1:n,:);

%Inizializzo parametri theta casualmente
theta_batch = rand(1,length(x_train(1,:)));
theta_sgd = theta_batch;

%Fitting parametri con sgd e batch gradient descent
lr = 0.01;
it = 50;

[theta_sgd, cost_hist_sgd, n_sgd] = sgd(theta_sgd,x_train,y_train,lr,it);
[theta_batch, cost_hist_batch, n] = batch_gradient_descent(theta_batch,x_train,y_train,lr,it);

%Fitting con normal equations
theta_ne = (x_train' * x_train)\(x_train' * y_train);

%Valore della funzione costo nei tre casi
cost_ne = cost_func(theta_ne',x,y);
cost_sgd= cost_func(theta_sgd,x,y);
cost_batch = cost_func(theta_batch,x,y);

%Valore predetto nei 3 casi
y_pred_ne= h(x_train,theta_ne');
y_pred_sgd = h(x_train,theta_sgd);
y_pred_batch = h(x_train,theta_batch);

%Visualizzazione delle tre rette stimate
figure(1)
scatter(x_train(:,2),y_train,'filled')
hold on 
plot(x_train(:,2),y_pred_ne,'LineWidth',1.5)
hold on 
plot(x_train(:,2),y_pred_sgd,'LineWidth',1.5)
hold on 
plot(x_train(:,2),y_pred_batch,'LineWidth',1.5)
xlabel('Area') 
ylabel('Prezzo')
legend('training set','y_pred_ne','y_pred_sgd','y_pred_batch')

%Andamento valore funzione costo sgd e batch gradient descent al variare
%delle iterazioni
figure(2)
plot((1:it),cost_hist_batch,'r','LineWidth',1)
hold on 
plot((1:it),cost_hist_sgd,'b','LineWidth',1)
legend('batch','sgd')
xlabel('iterations') 
ylabel('cost function') 

%Valori funzione costo assunti nei tre casi
disp("cost_batch = ")
disp(cost_batch)
disp("cost_sgd = ")
disp(cost_sgd)
disp("cost_ne = ")
disp(cost_ne)

%MSE
mse_batch = mse(h(x_test,theta_batch),y_test);
mse_sgd = mse(h(x_test,theta_sgd),y_test);
mse_ne = mse(h(x_test,theta_ne'),y_test);

disp("mse_batch = ")
disp(mse_batch)
disp("mse_sgd = ")
disp(mse_sgd)
disp("mse_ne = ")
disp(mse_ne)

%Predizione del prezzo delle case sul test set
max_y = max(y);
min_y = min(y);

prediction = int32(1000*[x_test(:,2) h(x_test,theta_batch) h(x_test,theta_sgd) h(x_test,theta_ne') y_test]);
prediction_rescaled = (max_y-min_y)*prediction + min_y;
writematrix(prediction_rescaled,'prediction.csv');