#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <stdlib.h>

struct thread_data {
    pthread_t thread_id;
    long long range;
    long long sum;
};

void* thread_func (void *thread_data) {
    long long sum = 0;
    struct thread_data data = *((struct thread_data*)thread_data);
    long long range = data.range;

    for (int i = 0; i < range; i++) {
        sum += i;
    }
    ((struct thread_data*)thread_data)->sum = sum;
    return NULL;
}

int main (int argc, char *argv[]) {
    struct thread_data threads[argc];

    for (int i = 1; i < argc; i++) {
        printf("Arugment: %s\n", argv[i]);
        threads[i].range = atoll(argv[i]);
        pthread_create(&threads[i].thread_id, NULL, thread_func, &threads[i]);
        printf("Thread %d created\n", i);
    }

    for (int i = 1; i < argc; i++) {
        pthread_join(threads[i].thread_id, NULL);
        printf("Thread %d finished execution. The sum is %lld\n", i, threads[i].sum);
    }
    printf("Thread finished execution.\n");
    return 0;
}