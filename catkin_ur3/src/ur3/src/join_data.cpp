#include <X11/keysymdef.h>
#include <sys/socket.h>
#include <stdlib.h> 
#include <netinet/in.h> 
#include <iostream>
#include <stdio.h>   /* Standard input/output definitions */
#include <string.h>  /* String function definitions */
#include <unistd.h>  /* UNIX standard function definitions */
#include <fcntl.h>   /* File control definitions */
#include <errno.h>   /* Error number definitions */
#include <termios.h> /* POSIX terminal control definitions */
#include <string> 
#include <stdlib.h>
#include <sstream>
#include <inttypes.h>
#include "reverse_word.h"
#define PI 3.1415
float* join_data(int8_t* buffer_out){ 
	float* data = new float[64];
	data[2] = 0;
	data[1] = 0;
	data[0] = 0;
	float norma_float = 1000000.0;
	////////////////////////////
	int32_t pose_int32;
	int32_t vel_int32;
	int32_t torque_int32;
	///////////////////////////////////////////////////////
	memcpy(&pose_int32, &buffer_out[0], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[4], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[8], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);

	data[0] = ((float)pose_int32)/norma_float;
	data[1] = ((float)vel_int32)/norma_float;
	data[2] = ((float)torque_int32)/norma_float;
	////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
	 
	memcpy(&pose_int32, &buffer_out[12], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[16], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[20], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);

	data[3] = ((float)pose_int32)/norma_float;
	data[4] = ((float)vel_int32)/norma_float;
	data[5] = ((float)torque_int32)/norma_float;
	//////////////////////////////////////////////////////////

	////////////////////////////////////////////////////////
	memcpy(&pose_int32, &buffer_out[24], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[28], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[32], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);

	data[6] = ((float)pose_int32)/norma_float;
	data[7] = ((float)vel_int32)/norma_float;
	data[8] = ((float)torque_int32)/norma_float;
	//////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////
	memcpy(&pose_int32, &buffer_out[36], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[40], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[44], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);

	data[9] = ((float)pose_int32)/norma_float;
	data[10] = ((float)vel_int32)/norma_float;
	data[11] = ((float)torque_int32)/norma_float;
	//////////////////////////////////////////////////////////
 	///////////////////////////////////////////////////////
	memcpy(&pose_int32, &buffer_out[48], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[52], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[56], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);

	data[12] = ((float)pose_int32)/norma_float;
	data[13] = ((float)vel_int32)/norma_float;
	data[14] = ((float)torque_int32)/norma_float;
	//////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////
	memcpy(&pose_int32, &buffer_out[60], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[64], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[68], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);

	data[15] = ((float)pose_int32)/norma_float;
	data[16] = ((float)vel_int32)/norma_float;
	data[17] = ((float)torque_int32)/norma_float;
	//////////////////////////////////////////////////////////
	/// pinça
	memcpy(&pose_int32, &buffer_out[72], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[76], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[80], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);
	
	data[18] = ((float)pose_int32)/norma_float; // abetura da garra 
	data[19] = ((float)vel_int32)/norma_float; // força de aperto
	data[20] = ((float)torque_int32)/norma_float; // estado da garra 
    ////////////////////////////////////////////////////////////////
	//posição do end_effector: inicio 
	memcpy(&pose_int32, &buffer_out[84], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[88], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[92], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);
	//position
	data[21] = ((float)pose_int32)/norma_float; // x  
	data[22] = ((float)vel_int32)/norma_float; // y
	data[23] = ((float)torque_int32)/norma_float; // z 

	memcpy(&pose_int32, &buffer_out[96], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[100], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[104], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);
	//orientation
	data[24] = ((float)pose_int32)/norma_float; // x  
	data[25] = ((float)vel_int32)/norma_float; // y
	data[26] = ((float)torque_int32)/norma_float; // z 
	
	//velocidade do end_effector: fim
	memcpy(&pose_int32, &buffer_out[108], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[112], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[116], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);
	//linear
	data[27] = ((float)pose_int32)/norma_float; // x  
	data[28] = ((float)vel_int32)/norma_float; // y
	data[29] = ((float)torque_int32)/norma_float; // z
	//////////////////////////////////////////////////////////
	memcpy(&pose_int32, &buffer_out[120], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[124], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[128], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);
	//angula
	data[30] = ((float)pose_int32)/norma_float; // x  
	data[31] = ((float)vel_int32)/norma_float; // y
	data[32] = ((float)torque_int32)/norma_float; // z
	///////////////////////////////////////////////////
	//forças do end_effector: fim
	memcpy(&pose_int32, &buffer_out[132], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[136], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[140], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);
	//force
	data[33] = ((float)pose_int32)/norma_float; // x  
	data[34] = ((float)vel_int32)/norma_float; // y
	data[35] = ((float)torque_int32)/norma_float; // z
	//////////////////////////////////////////////////////////
	memcpy(&pose_int32, &buffer_out[144], sizeof(int32_t));
	memcpy(&vel_int32, &buffer_out[148], sizeof(int32_t));
	memcpy(&torque_int32, &buffer_out[152], sizeof(int32_t));

	pose_int32 = reverse_word(pose_int32);
	vel_int32 = reverse_word(vel_int32);
	torque_int32 = reverse_word(torque_int32);
	//torque
	data[35] = ((float)pose_int32)/norma_float; // x  
	data[37] = ((float)vel_int32)/norma_float; // y
	data[38] = ((float)torque_int32)/norma_float; // z
	//referencia
	// memcpy(&pose_int32, &buffer_out[156], sizeof(int32_t));
	// pose_int32 = reverse_word(pose_int32);
	// data[39] = ((float)pose_int32)/norma_float; // x 
	//////////////////////////////////////////////////////////
	return data;
} 

