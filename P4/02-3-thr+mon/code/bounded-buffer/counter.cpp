#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <libgen.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "thread.h"


void *childThread(void *arg)
{
    int a1;
    int *rec = (int*)arg;
    printf("Child says: \n  Insert number: ");
    scanf("%d",&a1);

    while(a1<10||a1>20)
    {
        printf("\nError Value not within borders");
        printf("\nChild says: \n  Insert number: ");
        scanf("%d",&a1);
    }

    printf("---------------------- Start ----------------------\n");

    while(*rec < a1)
    {
        *rec = *rec + 1;
        printf("Child says: ");
        printf("%d",*rec);
        printf("\n");
    }
    thread_exit(NULL);
    return NULL;
}

int main(int argc, char *argv[]){

    /* Variables */
    int x1;
    int* x = (int*)malloc(sizeof(int)); 
    
    printf("Parent says: \n  Insert number: ");
    scanf("%d",&x1);
    while(x1<1||x1>9)
    {
        printf("\nError Value not within borders");
        printf("\nParent says: \n  Insert number: ");
        scanf("%d",&x1);
    }

    pthread_t pthr[1];
    *x = x1;
    thread_create(&pthr[1], NULL, childThread, x);

    thread_join(pthr[1], NULL);
    printf("Child Finished\n");

    //printf("\nParent says: \n number is %d\n", *x);

    while (*x > 1)
    {
        *x = *x-1;
        printf("Parent says: ");
        printf("%d",*x);
        printf("\n");
    }


    printf("----------------------Finished----------------------\n");
    return 0;
}


