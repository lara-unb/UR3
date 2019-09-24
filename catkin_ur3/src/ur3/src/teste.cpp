#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cstdio>
#include <stdlib.h>
#include "read_data.h"

		
int main () {
	float* data;
  data = read_data();
  float x[3000];

  for (size_t i = 0; i < 3000; i++){
      x[i] = data[i];  
      //printf("%f\n",x[i]);
  }

	return 0;
}

	
		

