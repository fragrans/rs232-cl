%module rs232
 //%include "cdata.i"
 //%include "rs232.h"

 //%apply (const char *STRING, size_t LENGTH) { (const char *str, size_t len) };
void* rs232_open(const char* com);
int rs232_send(const void* com, const char* cc, size_t size);
int rs232_recv(const void* com, const char* cc, size_t size);
