#include <pthread.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// For passing arguments to thread.
typedef struct thread_args {
  int sleep_time;
  char *name;
} thread_args;

// The function that runs in each thread.
void *mythread(void *arg);

// Declare semaphores here.

int main() {
  // Semaphore initialization goes here.

  thread_args threadA_args = {0, "A"};
  thread_args threadB_args = {1, "B"};

  pthread_t p1, p2;
  pthread_create(&p1, NULL, mythread, &threadA_args);
  pthread_create(&p2, NULL, mythread, &threadB_args);

  pthread_join(p1, NULL);
  pthread_join(p2, NULL);

  return 0;
}

void *mythread(void *arg) {
  thread_args *args = (thread_args *)arg;

  sleep(args->sleep_time);
  printf("Thread %s start\n", args->name);

  if (args->name == "A") {
    // Semaphore signaling goes here
  } else {
    // Semaphore signaling goes here
  }

  sleep(args->sleep_time);
  printf("Thread %s stop\n", args->name);
}
