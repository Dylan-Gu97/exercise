#include "apue.h"
#include <sys/wait.h>

void 
pr_exit(int status){
	if (WIFEXITED(status))
		printf("normal termination, exit status is %d\n",
				WEXITSTATUS(status));
	else if (WIFSIGNALED(status))
		printf("abnormal termination, signal number is %d%s\n",
				WTERMSIG(status),
#ifdef	WCOREDUMP
				WCOREDUMP(status) ? " (core file generated)" : "");
#else
				"");
#endif
	else if (WIFSTOPPED(status))
		printf("child stopped, signal number is %d\n",
				WSTOPSIG(status));
}
