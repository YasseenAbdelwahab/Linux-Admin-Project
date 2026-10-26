#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(){


printf("\n\nTask Manager started !\n\n");

sleep(1);

pid_t cpu_worker = fork();

if(cpu_worker == 0){

printf("\n\nCPU Monitor started !\n\n");

sleep(1);

char *args[] = {"/usr/bin/mpstat",NULL};

execv(args[0], args);

}

sleep(2);

pid_t process_worker = fork();

if(process_worker == 0){

printf("\n\nProcess Monitor started !\n\n");

sleep(1);

char *args[] = {"/usr/bin/ps","-ef",NULL};

execv(args[0], args);

}

waitpid(cpu_worker, NULL, 0);

waitpid(process_worker, NULL, 0);

sleep(1);

printf("\n\nBoth tasks have finished !\n\n");

sleep(1);

printf("\n\nTask Manager exiting !\n\n");

return 0;
}
