clc, clear, close all 

%Ripetibilità esperimento
rng(0,'twister');

%Lettura file csv
dataset = readmatrix('data_covid.txt');

%Shuffle dataset
dataset = dataset(randperm(size(dataset, 1)), :);

%Divido variabili di input e output. In conformità al modello aggiungo
%colonna pari a 1 alle variabili di input
[r,c] = size(dataset);
x = [ones(r,1) dataset(:,1:c-1)];
y = dataset(:,c);

%Splitto il dataset in training set (80%), test set (20%) 
th = floor(0.8 * length(x(:,1)));
x_train = x(1:th,:);
y_train= y(1:th,:);
x_test = x(th+1 : length(x(:,1)),:);
y_test = y(th+1 : length(x(:,1)));
  
%Fitting parametri del modello di regressione logistica 
n = 1000;
alpha = 0.0001;
m = length(x(1,:));
theta = rand(m,1);
[theta,hist] =  regressione_logistica(x_train,y_train,theta,alpha,n);

%Andamento loss function al variare delle iterazioni
figure(1)
plot(1:n,log10(hist),'LineWidth',2,'Color','r');

%Valuto le prestazioni del modello sul test set in termini di accuracy
p = predict(theta,x_test);
accuracy = sum(p == y_test)/length(x_test);

%Matrice di confusione
conf_matrix = confusionmat(y_test,double(p));
figure(2)
confusionchart(y_test,double(p));

disp("Accuracy:")
disp(accuracy)
disp("Matrice di confusione:")
disp(conf_matrix)

tp = conf_matrix(2,2);
fn = conf_matrix(2,1);
fp = conf_matrix(1,2);
tn = conf_matrix(1,1);

%Frazione di pazienti predetti posivitivi realmente positiva
precision = tp/(tp+fp);

%Frazione di pazienti predetti correttamente positivi 
recall = tp/(tp+fn);

accuracy = (tp + tn)/length(x_test(:,1));

disp('Accuracy:')
disp(accuracy)


disp('Precision:')
disp(precision)

disp('Recall:')
disp(recall)

f1_score = 2 * precision * recall /(precision+recall);
disp('F1_SCORE:')
disp(f1_score)

%Esempio predizioni (aggiungo 1 in prima posizione in conformità al
%modello)
x_trial1 = [1 1 1 1 0 0 0 0 0 0 1 0 1 1 0 0 0 0 0 0 0];
p1 = h(x_trial1,theta);
disp("Probabilità positività p1: ")
disp(p1)

x_trial2 = [1 1 1 0 1 0 0 0 0 0 0 0 1 0 0 1 0 1 1 1 0];
p2 = h(x_trial2,theta);
disp("Probabilità positività p2: ")
disp(p2)