#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "process.h"
#include "fifo.h"

int main(int argc, char *argv[]){
    
    /* Create variable in shared memory */
    uint32_t  shmid = shmget(IPC_PRIVATE, sizeof(int), IPC_CREAT | 0600);
    uint32_t  *sam = (uint32_t  *)shmat(shmid, NULL, 0);
    *sam = 1;
    uint32_t  x;

    /* launch Child process */
    if(fork() == 0)
    {
        printf("\nGive me a number: ");
        scanf("%d",&x);
        while(x>20 || x < 10)
        {
            printf("\nError Value not within borders");
            printf("\nGive me a number: ");
            scanf("%d",&x);    
        }
        printf("Inserted %d\n",x);

        printf("Child Start: %d\n", *sam);
        while(*sam != x)
        {
            *sam = *sam + 1;
            printf("Child Plus ONE: %d\n",*sam);
        }
        printf("Child Finished \n");
        exit(EXIT_SUCCESS);
    }else{
        /*Parent process*/
        wait(NULL);
        printf("Parent Start: %d\n", *sam);
        while(*sam != 1)
        {
            *sam = *sam - 1;
            printf("Parent Minus ONE: %d\n", *sam);
        }
        printf("Parent Finished \n");
    }

    return 0;
}