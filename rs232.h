#pragma once
#include <stddef.h>

void* rs232_open(const char* com);
void rs232_close(void* com);
int rs232_send(const void* com, const char* cc, int size);
int rs232_recv(const void* com, char* cc, int size);


