clc, clear, close all

%Ripetizione esperimento
rng(0,'twister')

%Lettura dataset
dataset = readtable('insurance.csv');
%Conversione feature testuali in numeriche
dataset = convertvars(dataset,{'sex','smoker','region'},'categorical');
dataset = convertvars(dataset,{'sex','smoker','region'},'double');
dataset = dataset{:,:};

[r,c] = size(dataset);

%Separo input e output
x = [ones(r,1) dataset(:,1:c-1)];
y = dataset(:,c);

%Normalizzo prezzo
y = log10(y);

%Divido dataset in training set e test set
th = floor(0.8 * length(x));
x_train = x(1:th,:);
y_train= y(1:th,:);
x_test = x(th+1:r,:);
y_test = y(th+1:r,:);

%Inizializzo parametri theta casualmente
m = length(x_train(1,:));
theta_batch = rand(m,1);
theta_sgd = theta_batch;
theta_batch_opt = theta_batch;

%Fitting dei parametri attraverso discesa del gradiente stocastica e batch
lr_sgd = 0.0003;
it_sgd = 50;

lr_batch = 0.000001;
it_batch = 50;

lr_ott = 0.0000005;
it_ott = 50;

[theta_sgd, cost_hist_sgd] = sgd(theta_sgd,x_train,y_train,lr_sgd,it_sgd);

tic;
[theta_batch, cost_hist_batch] = batch_gradient_descent(theta_batch,x_train,y_train,lr_batch,it_batch);
end1 = toc;
tic;
[theta_batch_opt, cost_hist_batch_opt] = batch_gradient_descent_ottimizzato(theta_batch_opt,x_train,y_train,lr_ott,it_ott);
end2 = toc;
disp("Speed-up batch opt:")
disp(end1/end2)
%Calcolo dei parametri attraverso le normal equations
theta_ne = (x_train' * x_train)\(x_train' * y_train);

%Valore della funzione costo
cost_ne = cost_func(theta_ne,x,y);
cost_sgd= cost_func(theta_sgd,x,y);
cost_batch = cost_func(theta_batch,x,y);
cost_batch_opt = cost_func(theta_batch_opt,x,y);

%Andamento funzione costo discesa del gradiente stocastica e batch
figure(1)
plot((1:it_batch),cost_hist_batch,'r','LineWidth',2)
title('BATCH')
xlabel('iterations') 
ylabel('cost function') 
figure(2)
plot((1:it_sgd),cost_hist_sgd,'b','LineWidth',2)
title('SGD')
xlabel('iterations') 
ylabel('cost function') 
figure(3)
plot((1:it_ott),cost_hist_batch_opt,'b','LineWidth',2)
title('BATCH OPT')
xlabel('iterations') 
ylabel('cost function')

%Valori funzione costo
disp("cost_batch = ")
disp(cost_batch)
disp("cost_batch_opt = ")
disp(cost_batch_opt)
disp("cost_sgd = ")
disp(cost_sgd)
disp("cost_ne = ")
disp(cost_ne)

%MSE
mse_batch = mse(h(x_test,theta_batch),y_test);
mse_batch_opt = mse(h(x_test,theta_batch_opt),y_test);
mse_sgd = mse(h(x_test,theta_sgd),y_test);
mse_ne = mse(h(x_test,theta_ne),y_test);

disp("mse_batch = ")
disp(mse_batch)
disp("mse_batch_opt = ")
disp(mse_batch_opt)
disp("mse_sgd = ")
disp(mse_sgd)
disp("mse_ne = ")
disp(mse_ne)
