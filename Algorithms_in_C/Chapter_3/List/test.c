#include "list.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
	link list_start;
	int node_count = atoi(argv[1]);
	list_start = init_list(node_count);
	print_list(list_start);	
	list_start = reverse_list(list_start);
	print_list(list_start);
}
