#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "thread.h"

bool isPar();

pthread_mutex_t acc;
pthread_cond_t vc[2];
int num = 0;

void childProc(uint32_t id)
{
    while(num != 1)
    {
        mutex_lock(&acc);
        
        if(id%2 == 0)
        {
            while(!isPar())
            {
                cond_wait(&vc[id],&acc);
            }
        }
        else{
            while(isPar())
            {
                cond_wait(&vc[id],&acc);
            }
        }

        if(num == 1)
        {
            thread_exit(NULL);
        }else{
            num = num - 1;
        }
        printf("ID %d: number -> %d\n", id+1, num);
        u_int32_t broadcast = (id+1)%2;
        cond_broadcast(&vc[broadcast]);
        
        mutex_unlock(&acc);
    }
    thread_exit(NULL);
}

void *childThread(void *arg) 
{
    uint32_t *id = (uint32_t*)arg; 
    childProc(*id);
    return NULL;
}



int main(int argc, char *argv[])
{
    /* Variables */
    uint32_t nc = 2;
    int input;
    

    printf("Parent says: \n  Insert number: ");
    scanf("%d",&input);
    while(input<10||input>20)
    {
        printf("\nError Value not within borders");
        printf("\nParent says: \n  Insert number: ");
        scanf("%d",&input);
    }
    num = input;

    /* init mutex and condition variables */
    cond_init(&vc[0], NULL);
    cond_init(&vc[1], NULL);
    mutex_init(&acc, NULL);

    int id[2] = {0, 1};
    int* point = id;

    pthread_t pthr[nc];
    for(uint32_t i = 0; i < nc; i++)
    {
        thread_create(&pthr[i], NULL, childThread, point+i);
    }
    
    for(uint32_t i = 0; i < nc; i++)
    {
        thread_join(pthr[i], NULL);
        printf("Child %u finished\n", i+1);
    }

    /* destroy mutex and condition variables */
    cond_destroy(&vc[0]);
    cond_destroy(&vc[1]);
    mutex_destroy(&acc);

    return 0;
}


bool isPar()
{
    if(num%2 == 0)
    {
        return true;
    }
    return false;
}
