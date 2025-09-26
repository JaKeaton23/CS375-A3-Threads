// Join.c
#include <stdio.h>
#include <pthread.h>
#include <sched.h>   /

void *helper(void *arg) {
    printf("HELPER\n");
    return NULL;
}

int main() {
    pthread_t thread;
    pthread_create(&thread, NULL, &helper, NULL);
    sched_yield();          // Yield to allow the new thread to run
    printf("MAIN\n");
    return 0;
}