#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "process.h"
#include "bwdelay.h"
#include "fifo.h"
//#include "utils.h"


int main(int argc, char *argv[]){
    
    /* Create variable in shared memory */
    uint32_t shmid = pshmget(IPC_PRIVATE, sizeof(int), IPC_CREAT | 0600);
    uint32_t  *sam = (uint32_t  *)pshmat(shmid, NULL, 0);
    uint32_t sem = psemget(IPC_PRIVATE, 2, IPC_CREAT | 0600);

    *sam = 1;
    uint32_t  x;

    printf("\nGive me a number: ");
        scanf("%d",&x);
        while(x>20 || x < 10)
        {
            printf("\nError Value not within borders");
            printf("\nGive me a number: ");
            scanf("%d",&x);    
        }
    *sam = x;
    printf("Inserted %d\n",*sam);
    //psem_up(sem, 0);
    

    /* launch child process */
    uint32_t nc = 2;
    uint32_t next;
    pid_t cpid[nc];
    for(uint32_t i = 0; i < nc; i++)
    {
        if((cpid[i] = pfork()) == 0)
        {
            next = (i+1)%2;
            psem_down(sem, i);
            if(*sam != 1)
            {
                *sam = *sam - 1;
                printf("Child %d with PID %d Minus ONE: %d", i, getpid(), *sam);
            }
            else
            {
                exit(EXIT_SUCCESS);
            }
            psem_up(sem, next);
        }
    }

    pwait(NULL);
    printf("Final: %d", *sam);

    return 0;
}
