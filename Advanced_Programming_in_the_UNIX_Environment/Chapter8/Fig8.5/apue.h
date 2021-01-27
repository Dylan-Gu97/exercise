#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#define FILE_MODE	( S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH )

#define MAXLINE 4096
void err_sys(const char*, ...) __attribute__((noreturn));
void pr_exit(int status);
