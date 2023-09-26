#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "delays.h"
#include "process.h"

int main(void)
{
    printf("Counting Start: \n");
    //int num = 0;
    pid_t ident = fork();
    
    if(ident == 0)
    {
        printf("Child Start: \n");
        int num = 0;
        while(num != 11)
        {
            printf("%d \n", num);
            num++;
        }
    }
    else
    {
        //usleep(20000);
        wait(NULL);
        printf("Parent Start: \n");
        int num = 11;
        while(num != 21)
        {
            printf("%d \n",num);
            num++;
        }
    }
    

    return EXIT_SUCCESS;
}