#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define STRMAX 10000 // the number of the char in the string 
#define PTRMAX 100   // the number of the pointer array to the single char of string

char buf[STRMAX];    // the buffer to store the whole string
int M = 0;           // the present number of the srting pointer
int compare ( void *i, void *j ){
	return strcmp( *(char **)i, *(char **)j );
}
/*
 * sort the single char in the strings 
 * 
 */
int main(){
	FILE *input;
	int i, N;
	char *a[PTRMAX]; //the array to store the pointer to the single world
	input = fopen( "string.txt", "r" );
	if ( input == NULL ){
		perror( "string.txt" );
		exit( EXIT_FAILURE );
	}
	for( N = 0 ; N < PTRMAX ; N++ ){
		a[N] = &buf[M];
		if ( fscanf( input, "%s", a[N]) == EOF) break;
		M += strlen( a[N] ) + 1 ;
	}
	qsort( a, N, sizeof(char*), compare );
	for( i = 0; i <= N; i++){
		printf("%s\n", a[i]);
	}
	fclose(input);
#if 0
	puts(buf);
	for(i = 0; *(buf + i) != '\n'; i++){
		printf("%c", *(buf + i));
	}
#endif
	return 0;
}
