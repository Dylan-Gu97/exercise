#include <stdlib.h>
#include <stdio.h>
#include "list.h"

struct node{
	int item;
	link next;
};

link init_list(int N)
{
	link node_now;
	link head = (link)calloc(N, sizeof *node_now);
	int i;
	for(i = 0; i < N; i++)
	{
		node_now = &head[i];
		node_now->next = &head[i + 1];
		node_now->item = rand()%1000;
	}
	node_now->next = NULL;
	return head; 
}

link reverse_list(link x)
{
	/*
	 * Construct three node pointer: node_pre, node_now, node_next
	 * three steps:
	 * 1. initial: three node node_pre = NULL, node_now = input node
	 *    node_next = node_now->next
	 * 2. inverse: node_pre move to node_now->next
	 * 3. polling to next node: node_now move to node_pre, node_next
	 *    move to node_now
	 */
	link node_pre = NULL, node_now = x, node_next, heada;
	heada = malloc(sizeof *heada);
	while(node_now != NULL)
	{
		node_next = node_now->next;
		node_now->next = node_pre;
		node_pre = node_now;
		node_now = node_next;
	}
	node_now = heada;
	node_now->next = node_pre;
	return node_now;
}

void print_list(link x)
{
	while(x != NULL)
	{
		printf("%d->", x->item);
		x = x->next;
	}
	printf("\n");
}
