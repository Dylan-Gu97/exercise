#include <stdlib.h>
#include "STACK.h"
#include "Item.h"

typedef struct STACKnode* link;
typedef struct {
	Item item;
	link next;
}STACKnode;
static link head;

link NEW_node( Item item, link next ){
	link x = malloc( sizeof *x );
	x->item = item;
	x->next = next;
	return x;
}

void STACKinit( int MaxN ){
	head = NULL;
}

int STACKempty(){
	return ( head == NULL );
}

void STACKpush( Item item ){
	head = NEW_node( item, head );
}

Item STACKpop(){
	Item item = head->item;
	link t = head->next;
	free( head );
	head = t;
	return item;
}
