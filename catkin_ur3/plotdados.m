clear all
T = readtable('dados.csv');
dados = table2array(T);
subplot(2,3,1)
plot(dados(:,1),dados(:,2))
ylim([-1 1])
title('vj0')
grid on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
plot(dados(:,1),dados(:,3))
ylim([-1 1])
title('vj1')
grid on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
plot(dados(:,1),dados(:,4))
ylim([-1 1])
title('vj2')
grid on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
plot(dados(:,1),dados(:,5))
ylim([-1 1])
title('vj3')
grid on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
plot(dados(:,1),dados(:,6))
ylim([-1 1])
title('vj4')
grid on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
plot(dados(:,1),dados(:,7))
ylim([-1 1])
title('vj5')
grid on 
clear all