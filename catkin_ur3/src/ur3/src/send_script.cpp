#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctime>
#include <errno.h>
#include <arpa/inet.h>

int send_script(){

    int sfd =0, n=0, b;
    char rbuff[1024];
    char sendbuffer[100];

    struct sockaddr_in serv_addr;

    memset(rbuff, '0', sizeof(rbuff));
    sfd = socket(AF_INET, SOCK_STREAM, 0);

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(30002);
    serv_addr.sin_addr.s_addr = inet_addr("192.168.1.56");

    b=connect(sfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
    if (b==-1) {
        perror("Connect");
        return 1;
    }
    // resetar o robô
    FILE *fp1 = fopen("prog_reset.script", "rb");
    if(fp1 == NULL){
        perror("File");
        return 2;
    }

     while( (b = fread(sendbuffer, 1, sizeof(sendbuffer), fp1))>0 ){
        send(sfd, sendbuffer, b, 0);
    }

    fclose(fp1);
    sleep(5);
    // mada o arquivo que será esxecutado
    FILE *fp = fopen("rg.script", "rb");
    if(fp == NULL){
        perror("File");
        return 2;
    }

    while( (b = fread(sendbuffer, 1, sizeof(sendbuffer), fp))>0 ){
        send(sfd, sendbuffer, b, 0);
    }

    fclose(fp);
    return 0;

}