// Programa para teste na junta 5 do ur3////////////////////////////////
// compilar : g++ open_socket.cpp socket_ur3_server.cpp -o server///////
////////////////////////////////////////////////////////////////////////
#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "control_msgs/GripperCommand.h"
#include "std_msgs/Header.h"
#include "sensor_msgs/Joy.h"
#include "ur3/end_Effector_msg.h"
#include "geometry_msgs/Wrench.h"
#include "geometry_msgs/Pose.h"
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
float refe[8];
int gripper_boll[1];
      
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
void joyCallback(const sensor_msgs::Joy::ConstPtr& joy_data){
	 int button0 = joy_data->buttons[0];
	 int button2 = joy_data->buttons[2];
	 int button3 = joy_data->buttons[3];

	 if (button0 == 0){
     	refe[0] = joy_data->axes[3];
	 	refe[1] = (joy_data->axes[0])*-1;
	 	refe[2] = joy_data->axes[1];
	 	refe[3] = 0;
	 	refe[4] = 0;
	 	refe[5] = 0;
	 } 
	 else
	 {
		refe[0] = 0;
	 	refe[1] = 0;
	 	refe[2] = 0;
		refe[3] = joy_data->axes[1];
	 	refe[4] = joy_data->axes[3];
	 	refe[5] = joy_data->axes[0];
	 }
	 
	 gripper_boll[0] = button2;
	 gripper_boll[1] = button3; 
	
}
///////////////////////////////////////

int main(int argc, char **argv){ 
	bool statado;
	refe[0] = 0; refe[1] = 0; refe[2] = 0; refe[3] = 0; refe[4] = 0;
	refe[5] = 0; refe[6] = 40; refe[7] = 10; refe[8] = 0;
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
    //int32_t buffer_in  = 0;
	int32_t buffer_in_[8];
	int8_t buffer_out[2024]; 
	float tempo = 0;
   	/////////////////////////////
	// criação de um arquivo .csv para armazenar os dados
	FILE *fp;
    char filename[20]= "dados.csv";
	fp=fopen(filename,"w+");
	fprintf(fp,"     t     ,   pj0    ,    vj0    ,    tj0    ,    pj1    ,    vj1    ,    tj1    ,    pj2    ,    vj2    ,    tj2    ,    pj3    ,    vj3    ,    tj3    ,    pj4    ,    vj4    ,    tj4    ,    pj5    ,    vj5    ,    tj5    \n");
	//////////////////////
	/////////////////////
	float norma_float = 1000000.0;
	
	float conta = 0;
	///////////////////////
	//ROS 
	ros::init(argc, argv, "ur3");
	ros::NodeHandle n;
	//Declaração das publicões 
	ros::Publisher arm_pub = n.advertise<sensor_msgs::JointState>("arm",0);
	ros::Publisher end_Effector_pub = n.advertise<ur3::end_Effector_msg>("end_effector",0);
	//ros::Publisher gripper_pub = n.advertise<control_msgs::GripperCommand>("gripper",0);
	///////////////////////////////////////////////////////////////////////////////////
	ros::Subscriber sub_joy = n.subscribe("joy", 10, joyCallback);
	ros::Rate loop_rate(55);
	//Declaração das estruturas de dados para as publicações
	sensor_msgs::JointState arm;
	ur3::end_Effector_msg end_effector;
	//control_msgs::GripperCommand gripper;
	/////////////////////////////////////
	//gripper.position = 0;
	//gripper.max_effort = 0;
	//gripper.gripper.position = 0;
	//gripper.gripper.max_effort = 0;
	arm.header.frame_id = " ";
	arm.name.resize(6);
	arm.position.resize(6);
	arm.velocity.resize(6);
	arm.effort.resize(6); 
	arm.name[0] = "Base";
	arm.name[1] = "Shoulder";
	arm.name[2] = "Elbow";
	arm.name[3] = "Wrist 1";
	arm.name[4] = "Wrist 2";
	arm.name[5] = "Wrist 3";
	
	int number = 0;
	
	//////////////////////////////////////////////////////////
    while (ros::ok()){
		/////////////////////////////////////////////////////
		//arm ur3
		buffer_in_[0] = (int)(refe[0]*norma_float);
		buffer_in_[0] = reverse(buffer_in_[0]);
		buffer_in_[1] = (int)(refe[1]*norma_float);
		buffer_in_[1] = reverse(buffer_in_[1]);
		buffer_in_[2] = (int)(refe[2]*norma_float);
		buffer_in_[2] = reverse(buffer_in_[2]);
		buffer_in_[3] = (int)(refe[3]*norma_float);
		buffer_in_[3] = reverse(buffer_in_[3]);
		buffer_in_[4] = (int)(refe[4]*norma_float);
		buffer_in_[4] = reverse(buffer_in_[4]);
		buffer_in_[5] = (int)(refe[5]*norma_float);
		buffer_in_[5] = reverse(buffer_in_[5]);
		// gripper
		if(gripper_boll[0] == 1){
			refe[6] = refe[6] + 0.5;
		}
		if(gripper_boll[1] == 1){
			refe[6] = refe[6] - 0.5;
		} 
		
		buffer_in_[6] = (int)(refe[6]*norma_float);
		buffer_in_[6] = reverse(buffer_in_[6]);
		buffer_in_[7] = (int)(refe[7]*norma_float);
		buffer_in_[7] = reverse(buffer_in_[7]);
		send(new_socket, buffer_in_, 32, 0);
		/////////////////////////////////////////////////////////
		number = 0;
		///////////////////////////////////////////////////////////
		number = recv(new_socket, &buffer_out, 256, 0);
		
		/////////////////////////////////////////////////////
		data_join_out = join_data(buffer_out);
		/////////////////////////////////////////////////
		// gripper
		end_effector.gripper.position = data_join_out[18];
		end_effector.gripper.max_effort = data_join_out[19];
		end_effector.state.data = data_join_out[20]; // estado da grarr (aberto ou fechado)
		/////////////////////////////////////////
		// tcp pose
		////position
		end_effector.pose.position.x = data_join_out[21];
		end_effector.pose.position.y = data_join_out[22];
		end_effector.pose.position.z = data_join_out[23];
		////orientation
		end_effector.pose.orientation.x = data_join_out[24];
		end_effector.pose.orientation.y = data_join_out[25];
		end_effector.pose.orientation.z = data_join_out[26];
		////////////////////////////////////////////////////
		// tcp velocity
		//// linear
		end_effector.velocity.linear.x = data_join_out[27];
		end_effector.velocity.linear.y = data_join_out[28];
		end_effector.velocity.linear.z = data_join_out[29];
		//// angular
		end_effector.velocity.angular.x = data_join_out[30];
		end_effector.velocity.angular.y = data_join_out[31];
		end_effector.velocity.angular.z = data_join_out[32];
		////////////////////////////////////////
		// tcp force
		//// force
		end_effector.wrench.force.x = data_join_out[33];
		end_effector.wrench.force.y = data_join_out[34];
		end_effector.wrench.force.z = data_join_out[35];
		//// torque
		end_effector.wrench.torque.x = data_join_out[36];
		end_effector.wrench.torque.x = data_join_out[37];
		end_effector.wrench.torque.x = data_join_out[38];
		////////////////////////////////////////
		arm.position[5] = data_join_out[15];
		arm.velocity[5] = data_join_out[16];
		arm.effort[5] = data_join_out[17];
		///////////////////////////////////////
		arm.position[4] = data_join_out[12];
		arm.velocity[4] = data_join_out[13];
		arm.effort[4] = data_join_out[14];
		///////////////////////////////////////
		arm.position[3] = data_join_out[9];
		arm.velocity[3] = data_join_out[10];
		arm.effort[3] = data_join_out[11];
		////////////////////////////////////////
		arm.position[2] = data_join_out[6];
		arm.velocity[2] = data_join_out[7];
		arm.effort[2] = data_join_out[8];
		//////////////////////////////////////
		arm.position[1] = data_join_out[3];
		arm.velocity[1] = data_join_out[4];
		arm.effort[1] = data_join_out[5];
		//////////////////////////////////////
		arm.position[0] = data_join_out[0];
		arm.velocity[0] = data_join_out[1];
		arm.effort[0] = data_join_out[2];
		//////////////////////////////////////
		fprintf(fp, "\n%10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f, %10.5f", tempo, data_join_out[0], data_join_out[1], data_join_out[2], data_join_out[3], data_join_out[4], data_join_out[5], data_join_out[6], data_join_out[7], data_join_out[8], data_join_out[9], data_join_out[10], data_join_out[11], data_join_out[12], data_join_out[13], data_join_out[14], data_join_out[15], data_join_out[16], data_join_out[17]);
		//fprintf(fp, "\n%10.5f, %10.5f", tempo, data_join_out[0]);
		tempo = tempo + 0.02;
		
		arm.header.stamp = ros::Time::now();
		end_effector.header.stamp = ros::Time::now();
		arm_pub.publish(arm);
		end_Effector_pub.publish(end_effector);
		ros::spinOnce();
		loop_rate.sleep();		
		
	}
	fclose(fp);
	return 0;
} 
