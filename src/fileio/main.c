#include <fcntl.h>
#include <unistd.h>
#include <string.h>

int main() {
 int fd = open("foo", O_WRONLY | O_CREAT, 0644);
 char* buffer = "Hello World";
 write(fd, buffer, strlen(buffer));
 close(fd);
 return 0;
}
