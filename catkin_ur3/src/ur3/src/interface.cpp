// Programa para teste na junta 5 do ur3////////////////////////////////
// compilar : g++ open_socket.cpp socket_ur3_server.cpp -o server///////
////////////////////////////////////////////////////////////////////////
#include "ros/ros.h"
#include "ur3/arm_msg.h"
#include <X11/keysymdef.h>
#include <sys/socket.h>
#include <stdlib.h> 
#include <netinet/in.h> 
#include <iostream>
#include <stdio.h>   
#include <string.h>  
#include <string> 
#include <stdlib.h>
#include <sstream>
#include <inttypes.h>
#include <math.h>
#include <ctime>
#include "open_socket.h"
#include "send_script.h"
#include "reverse_word.h"
#include "join_data.h"

#define PORT 5000
#define PI 3.1415
float referencia = 0;
/// little endian <-> big endian ///////
 int reverse(int32_t num){
	uint32_t b0,b1,b2,b3;
	uint32_t res;
	b0 = (num & 0x000000ff) << 24u;
	b1 = (num & 0x0000ff00) << 8u;
	b2 = (num & 0x00ff0000) >> 8u;
	b3 = (num & 0xff000000) >> 24u;
	res = b0 | b1 | b2 | b3;
	return res;
}
///////////////////////////////////////

int main(int argc, char **argv){ 
	float* data_join_out;
	// primeira coisa:
	// tem que enviar o arquivo urscript
	send_script(); // a função send_script envia o arquivo para o robô
	///////////////////////////////////
	int new_socket;
	// abrindo a comunicaçção tcp socket
	new_socket = open_socket();
	////////////////////////////////////
	// Declaração dos buffers de entrada e saida 
    int32_t buffer_in  = 0;
	int8_t buffer_out[2024]; 
   	/////////////////////////////
	// criação de um arquivo .csv para armazenar os dados
	FILE *fp;
    char filename[20]= "dados.csv";
	fp=fopen(filename,"w+");
	fprintf(fp,"     t     ,   vj0    ,    vj1    ,    vj2   ,    vj3   ,    vj4   ,    vj5    ,    bytes \n");
    float tempo = 0;
	//////////////////////
	double vel_float = 0;
	int32_t vel_int32 = 0;
	int64_t vel_int64 = 0;
	//////////////////////
	double pose_float = 0;
	int32_t pose_int32 = 0;
	/////////////////////
	double torque_float = 0;
	int32_t torque_int32 = 0;
	/////////////////////
	float norma_float = 1000000.0;
	
	float conta = 0;
	///////////////////////
	//ROS 
	ros::init(argc, argv, "talker");
	ros::NodeHandle n;
	//Declaração das publicões 
	ros::Publisher arm_pub = n.advertise<ur3::arm_msg>("arm",32);
	ros::Rate loop_rate(50);
	//Declaração das estruturas de dados para as publicações
	ur3::arm_msg arm;
	int number = 0;
	int x = 0;
	//////////////////////////////////////////////////////////
    while (ros::ok()){
		/////////////////////////////////////////////////////
		referencia = 1*sin ((conta*PI)/180);
		buffer_in = (int)(referencia*norma_float);
		buffer_in = reverse(buffer_in);
		send(new_socket, &buffer_in, sizeof buffer_in, 0);
		number = 0;
		///////////////////////////////////////////////////////////
		number = recv(new_socket, &buffer_out, 128, 0);
		
		/////////////////////////////////////////////////////
		data_join_out = join_data(buffer_out);
		/////////////////////////////////////////////////
		pose_float = data_join_out[0];
		vel_float = data_join_out[1];
		torque_float = data_join_out[2];
		/////////////////////////////////////////
		arm.pose[5] = data_join_out[15];
		arm.velocity[5] = data_join_out[16];
		arm.torque[5] = data_join_out[17];
		///////////////////////////////////////
		arm.pose[4] = data_join_out[12];
		arm.velocity[4] = data_join_out[13];
		arm.torque[4] = data_join_out[14];
		///////////////////////////////////////
		arm.pose[3] = data_join_out[9];
		arm.velocity[3] = data_join_out[10];
		arm.torque[3] = data_join_out[11];
		////////////////////////////////////////
		arm.pose[2] = data_join_out[6];
		arm.velocity[2] = data_join_out[7];
		arm.torque[2] = data_join_out[8];
		//////////////////////////////////////
		arm.pose[1] = data_join_out[3];
		arm.velocity[1] = data_join_out[4];
		arm.torque[1] = data_join_out[5];
		//////////////////////////////////////
		arm.pose[0] = data_join_out[0];
		arm.velocity[0] = data_join_out[1];
		arm.torque[0] = data_join_out[2];
		//////////////////////////////////////
		fprintf(fp, "\n%10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f,  %i", tempo, data_join_out[1],
		 data_join_out[4], data_join_out[7], data_join_out[10], data_join_out[13], data_join_out[16], number);
		
		tempo = tempo + 0.02;
		conta = conta + 1;
	
		
		arm_pub.publish(arm);
		ros::spinOnce();
		loop_rate.sleep();		
		

	}
	fclose(fp);
	return 0;
} 
