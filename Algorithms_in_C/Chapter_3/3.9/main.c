#include <stdlib.h>
#include <stdio.h>
/*
	Josephus problem
*/
typedef struct node * link;
struct node{
	int item;
	link next;
};
int main(int argc, char * argv[])
{
	int total_number = atoi(argv[1]);
	int skip_number = atoi(argv[2]);
	int i, j, k;
/*
	if (total_number <= skip_number)
	{
		printf("args[2] need to be smaller than args[1], please try again\n");
		exit(1);
	}
*/
	/*
		initial node_1
	*/
	link node_1 = malloc(sizeof(*node_1));
	link node_pre = node_1;
	link node_x, node_free;
	link node_now = node_1;
	node_1->item = 1;
	node_1->next = node_1;
	/*
		insert node_x	
	*/	
	for(i = 2; i <= total_number; i++){ 
		node_x = malloc(sizeof(*node_x));
		node_pre->next = node_x;
		node_x->item = i;
		node_x->next = node_1;
		node_pre = node_pre->next;	
	}
	/*
		delete chosen node
	*/
	node_now = node_1;
	for(i = 0; node_now->next != node_now; i++)
	{
		printf("%d", node_now->item);
		for (j = 1; j <= total_number - i ; j++){
			node_now = node_now->next; 
			printf("->%d", node_now->item);	
		}
		printf("\n");
		for(k = 1; k < skip_number ; k++)
		{
			node_now = node_now->next;
		}
	 	node_free = node_now->next;
		node_now->next = node_free->next;
		free(node_free);
	}
	printf("%d\n", node_now->item);

	return 0;
}

