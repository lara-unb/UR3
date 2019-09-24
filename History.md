# **History**
## __22-02-2019__
>>Início.

## __20-03-2019__
>>Unboxing e fixação do robô a mesa.

## __24-03-2019__
>>Ligou-se robô e foi executado os primeiro passos recomendados no manual do University Robots.

 ## __25-03-2019__
 >> Foi feito alguns testes de trajetória no modo apreder do robô. Executado com sucesso.

 ## __25-03-2019__
 >>Tentativa executar movimentos com o UR3 via ROS sem sucesso.

 ## __26-03-2019__
 >> Foi feito uma pesquisa para tendar averiguar onde estava o proplema e foi a contado que a interface era incompatível com a versão do Polyscope 3.7.

## __27-03-2019__
>>Foi constatado que era necessario um novo driver para interegir com versão do PolyScope 3.7. Esse novo driver se chama ur_modern_drive e pode ser encontrado em https://github.com/ros-industrial/ur_modern_driver. 

## __28-03-2019__
>> Foi colocado o novo driver no diretório catkin_ws/src.

>>O problema de interface foi resolvido, porém o robô UR3 não responde aos comando do programa teste test_move.py.

## __29-03-2019__
>> Hoje o robô respondeu aos comandos do do código teste test_move.py .
>> Foi descoberto que precisaria instalar o rosdep para minha versão do ROS.

>> Para instalar, vá para o diretório catkin_ws e execute esta linha de comando para sua DISTRO
>>>$ rosdep install --from-paths src --ignore-src --rosdistro $DISTRO

## __30-03-2019__
>>  Novos teste com o código test_move.py.

>>  Foi feito novas tragetórias com o braço e foi aferiguado que, por segurança, as juntas do robô só podem girar 356° para não danificar a fiação eletrica interna do robô.

## __31-03-2019__
>> Hoje fiz mais um pesquisa para tentar fazer a garra rg2 funcional, não obtive sucesso. 

>>Parece não existir muitas referência para a pinça robôtica. Nós próximos dias, estarei fazendo mais pesquisas a respeito do assunto. 

## __21-09-2019__

>> Atuamente, estamos com problemas na transferância de dados do computador do robô para o computador que coleta os dados.

>> próximos dias seram feitos experimentos com uma nova bibliotéca de de transferencia de dados. Os testes que foram feitos até agora foi usado a bibliotéca socket.h . 

## __22-09-2019__
>> Hoje depois de uma pesquisa sobre a comunicação tcp usando a biblióteca socket.h, foi constatado que o numero da porta era uma variávei de total relevancia para a comunicação. Depois da pesquisa, foi percebido que a porta 5000 era usada tanto pelo SO quanto pela minha aplicação.

>>Uma porta que poderia ser usada somente pela a aplicção é a porta 60200. depois de alguns testes foi verificado que ainda há perda de cacostes com essaporta.

## __23-09-2019__
>> Foi sugerido pelo professor Geovany mudar a bibliotéca de comunicação. A sugestão foi trocar a socket.h pela zmq.h(zeromq).

>>Segundo a documentação da zeromq ela funciona de forma assíncriona colocando em uma fila os pacotes atrazados.

>> Próxinos dias será estudado como é feita sua implementação em C para ser anexado ao codigo da interface.

