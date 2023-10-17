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
    psem_up(sem, 0);
    


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
    
    /* launch child process */
    uint32_t nc = 2;
    uint32_t next;
    pid_t cpid[nc];
    for(uint32_t i = 0; i < nc; i++)
    {
        if((cpid[i] = pfork()) == 0)
        {
            while(*sam != 1)
            {
                next = (i+1)%2;
                psem_down(sem, i%2);
                if(*sam != 1)
                {
                    *sam = *sam - 1;
                    printf("Child %d with PID %d Minus ONE: %d\n", i+1, getpid(), *sam);
                }
                else
                {
                    exit(EXIT_SUCCESS);
                }
                psem_up(sem, next);
            }
            exit(EXIT_SUCCESS);
        }
    }

    /* Wait for Childs to finish */
    for (uint32_t i = 0; i < nc; i++)
    {
        waitpid(cpid[i], NULL, 0);
        printf("Child %u finished\n", i+1);
    }

    return 0;
}
