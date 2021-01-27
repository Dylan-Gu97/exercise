#include <stdio.h>
#include <string.h>
#include "Item.h"
#include "STACK.h"

int main(){
	FILE *input;
	char *a;
	int N = strlen(a);
	int i;

	STACKinit( N );
	for( i = 0; i < N; i++ ){
		if( a[i] == '+' )
			STACKpush( STACKpop() + STACKpop() );
		if( a[i] == '*' )
			STACKpush( STACKpop() * STACKpop() );
		if( ( a[i] >= '0' ) && ( a[i] <= '9' ) )
			STACKpush(0);
		while( ( a[i] >= '0' ) && ( a[i] <= '9' ) )
			STACKpush( 10 * STACKpop() + ( a[i++] - '0' ) );
	}
	printf( "%d\n", STACKpop() );
}
