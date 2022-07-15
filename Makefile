semaphores: semaphores.c
	gcc -g -O2 -o semaphores semaphores.c -pthread -fsanitize=thread
