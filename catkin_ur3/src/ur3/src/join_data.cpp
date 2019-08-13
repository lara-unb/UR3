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
	float* data = new float[20];
	data[2] = 0;
	data[1] = 0;
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

	data[0] = ((180/PI)*(float)pose_int32)/norma_float;
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

	data[3] = ((180/PI)*(float)pose_int32)/norma_float;
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

	data[6] = ((180/PI)*(float)pose_int32)/norma_float;
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

	data[9] = ((180/PI)*(float)pose_int32)/norma_float;
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

	data[12] = ((180/PI)*(float)pose_int32)/norma_float;
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

	data[15] = ((180/PI)*(float)pose_int32)/norma_float;
	data[16] = ((float)vel_int32)/norma_float;
	data[17] = ((float)torque_int32)/norma_float;
	 
	//////////////////////////////////////////////////////////
	return data;
} 

