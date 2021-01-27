#include <apue.h>
#include <errno.h>
#include <>

static err_doit(int, int, const char*, va_list);

void err_sys(const char* fmt, ...){
	va_list		ap;
	
	va_start(ap, fmt);
	err_doit(1, errno, fmt, ap);
	va_end(ap);
	exit(1);
}

static 
err_doit(int erronflag, int error, const char* fmt, va_list ap){
	char	buf[MAXLINE];

	vsnprintf(buf, MAXLINE - 1, fmt, ap);
	if(erronflag){
		snprintf(buf + strlen(buf), MAXLINE - strlen(buf) - 1, "%s: ", strerror(error));
	
	}
}
