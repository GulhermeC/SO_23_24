#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <signal.h>

#define NTIMES 60

static void Interrupt (int signum)
{
    printf("\nSignal: %u",signum);
    if (signum == SIGINT || signum == SIGTERM) {
        printf("\nStay calm, I haven't reached %u yet!\n", NTIMES);
    }
    else 
    { 
        printf ("A signal different from SIGINT was received\n");
        exit (EXIT_FAILURE);
    }
}


static void IntKill (int signum)
{
    printf("\nSignal: %u",signum);
    if (signum == SIGTERM) {
        printf("\nKill Prevented\n");
    }
    else 
    { 
        printf ("A signal different from SIGINT was received\n");
        exit (EXIT_FAILURE);
    }
}

int main(void)
{
    /* Installing the handling routine */
    struct sigaction sigact;
    sigact.sa_handler = Interrupt;
    sigemptyset (&sigact.sa_mask);
    sigact.sa_flags = 0;
    if (sigaction (SIGINT, &sigact, NULL) < 0)
    { 
        perror ("Rotina de atendimento não instalada\n");
        return EXIT_FAILURE;
    }

    struct sigaction sigact2;
    sigact2.sa_handler = IntKill;
    sigemptyset (&sigact2.sa_mask);
    sigact2.sa_flags = 0;
    if (sigaction (SIGTERM, &sigact2, NULL) < 0)
    { 
        perror ("Rotina de atendimento não instalada\n");
        return EXIT_FAILURE;
    }
    

    /* counting */
    printf("PID = %u\n", getpid());
    for (uint32_t i = 0; i < NTIMES; i++)
    { 
        printf ("\r%08u ", i);
        fflush (stdout);
        usleep(500000);
    }
    printf ("\n");

    return EXIT_SUCCESS;
}

