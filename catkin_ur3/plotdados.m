function [dados,x] = plotdados(x)
hold off;

T = readtable('dados.csv');
dados = table2array(T);
x = x*3;
% subplot(1,3,1);
% plot(dados(:,1),dados(:,x + 3),'m');
% xlabel('tempo(s)');
% ylabel('Ângulo(rad)');
% ylim([-0.5 0.5]);
% xlim([0 20]);
% title('Posição');
% grid on;
% % %%%%%%%%%%%%%%%%;%%%%%%%%%%%%%%%%%%
% subplot(1,3,2);
plot(dados(:,1),dados(:,x + 4),'r');
xlabel('tempo(s)');
ylabel('Velocidade(rad/s)');
hold on;
plot(dados(:,1),dados(:,2),'k');
ylim([-0.5 0.5]);
xlim([0 4]);
title('Velocidade');
grid on ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% subplot(1,3,3);
% plot(dados(:,1),dados(:,x + 5),'b');
% xlabel('tempo(s)');
% ylabel('Torque(N.m)');
% ylim([-2 2]);
% xlim([0 20]);
% title('Torque');
% grid on; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
