#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
int main(){

int fd = open("p64.s", 'r');
char buf[1024];
int buflen;
while((buflen = read(fd, buf, 1024)) > 0)
{
    write(1, buf, buflen);
}
close(fd);
return 0;
}