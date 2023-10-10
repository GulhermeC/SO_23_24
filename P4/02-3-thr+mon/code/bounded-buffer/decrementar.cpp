#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "thread.h"


struct data
{
    int num;
    pthread_mutex_t acc;
};

void childProc(int numb, pthread_mutex_t acc)
{
    mutex_lock(&acc);
    //check fifo-safe
    if(numb == 1)
    {
        thread_exit(NULL);
    }else{
        numb = numb - 1;
    }
    printf("PID %d: number -> %d\n", getpid(), numb);
    mutex_unlock(&acc);
}

void *childThread(void *arg) 
{
    data *all = (data*)arg; 
    childProc(all-> num, all->acc);
    return NULL;
}

int main(int argc, char *argv[])
{
    /* Variables */
    uint32_t nc = 2;
    int input;
    data *sum;
    sum = (data*)malloc(sizeof(data));
    //int* x = (int*)malloc(sizeof(int));

    printf("Parent says: \n  Insert number: ");
    scanf("%d",&input);
    while(input<10||input>20)
    {
        printf("\nError Value not within borders");
        printf("\nParent says: \n  Insert number: ");
        scanf("%d",&input);
    }

    pthread_mutex_t access;

    mutex_init(&access, NULL);
    *sum = {input, access};
    
    pthread_t pthr[nc];
    for(uint32_t i = 0; i < nc; i++)
    {
        thread_create(&pthr[i], NULL, childThread, sum);
    }
    
    for(uint32_t i = 0; i < nc; i++)
    {
        thread_join(pthr[i], NULL);
    }

    mutex_destroy(&access);

    return 0;
}
