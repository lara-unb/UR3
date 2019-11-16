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


## __23-09-2019__
>> Hoje foi feito um teste para averiguar se o gargalo da comunicação estava acontecendo no rotiador. O resultado é que 64 bytes leva 1ms p ser enviado.


 ## __24-09-2019__
 >> A bibliotéca zmq.h não funcionou. O robô não entende as mensagens enviadas pelo computador.

 ## __25-09-2019__
 >> um solução que aumentou o taxa de amostragem para 100hz foi tirar algumas partes de códico do loop do ros. 
 
 >> A parte de escrever dados foi retirada. Agora os dados são inscritos usando o comando rosbag record /arm /end_effector /ref. 


 >> Proximos dias o envio de dados será feito por um thread fora do loop dos ros.

 >> Foi confirmado que as perdadas de pacotes se devem ao loop do ros está rodando mais rapido do que a aquisição de dados.

## __27-09-2019__
>> A thread de envio de dados foi feita e está funcionado sem erros.
>> As perdadas de pacotes não ocorrem mais. Foi feito 5 experimentos de 5 minutos cadas e não houve perdas de pacotes. 

## __28-09-2019__
>>Hoje, vou entrar nos diretórios do ur3, usando sftp, na tentativa de achar aguma função que ler as correntes dos motores do robô.
>>
__01-10-2019__

>> Depois de muita pequisa, descobrimos que exite uns registradores que guardam as correntes. Usado a funça read_port_register(register number) podemos ler as correntes. A tal função retorna a leitura da corrente mA os registradores das juntas vão de 290 a 295 que vai da base ao pulso.
## __FIM__ 