#include "./rs232.h"
#include <stdio.h>
#include <math.h>
#include <stddef.h>

/* 
open rs232
*/
void* rs232_open(const char* com)
{
    printf("file: %s\n", com);
    return (void*)fopen(com, "w+");
}

void rs232_close(void* com)
{
    fclose((FILE*)com);
}

int rs232_send(const void* com, const char* cc, int size)
{
    printf("write: %s/%d\n", cc, size);
    return fwrite(cc, 1, size, (FILE*)com);
}

int rs232_recv(const void* com, char* cc, int size)
{
    printf("read:");
    return fread(cc, 1, size, (FILE*)com);
}


