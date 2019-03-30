# **History**
## __22-02-2019__
>>Início.

## __20-3-2019__
>>Unboxing e fixação do robô a mesa.

## __24-3-2019__
>>Ligou-se robô e foi executado os primeiro passos recomendados no manual do University Robots.

 ## __25-3-2019__
 >> Foi feito alguns testes de trajetória no modo apreder do robô. Executado com sucesso.

 ## __25-3-2019__
 >>Tentativa executar movimentos com o UR3 via ROS sem sucesso.

 ## __26-3-2019__
 >> Foi feito uma pesquisa para tendar averiguar onde estava o proplema e foi a contado que a interface era incompatível com a versão do Polyscope 3.7.

## __27-3-2019__
>>Foi constatado que era necessario um novo driver para interegir com versão do PolyScope 3.7. Esse novo driver se chama ur_modern_drive e pode ser encontrado em https://github.com/ros-industrial/ur_modern_driver. 

## __28-3-2019__
>> Foi colocado o novo driver no diretório catkin_ws/src.

>>O problema de interface foi resolvido, porém o robô UR3 não responde aos comando do programa teste test_move.py.

## __29-3-2019__
>> Hoje o robô respondeu aos comandos do do código teste test_move.py .
>> Foi descoberto que precisaria instalar o rosdep para minha versão do ROS.
>> Para instalar, vá para o diretório catkin_ws e execute esta linha de comando para sua DISTRO
>>>$ rosdep install --from-paths src --ignore-src --rosdistro $DISTRO

## __30-3-2019__
>>  Novos teste com o código test_move.py.
>>  Foi feito novas tragetórias com o braço e foi aferiguado que, por segurança, as juntas do robô só podem girar 356° para não danificar a fiação eletrica interna do robô.
