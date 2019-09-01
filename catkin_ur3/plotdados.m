function plotdados(x)

figure;
T = readtable('dados.csv');
dados = table2array(T);
x = x*3;
subplot(1,3,1);
plot(dados(:,1),dados(:,x + 2),'r');
ylim([-1.5 1.5]);
title('position');
grid on;
%%%%%%%%%%%%%%%%;%%%%%%%%%%%%%%%%%%
subplot(1,3,2);
plot(dados(:,1),dados(:,x + 3),'g');
ylim([-0.6 0.6]);
title('velocity');
grid on ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,3);
plot(dados(:,1),dados(:,x + 4),'b');
ylim([-6 6]);
title('effort')
grid on; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear all;