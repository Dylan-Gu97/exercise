#include "test_bytes.h"
void test_bytes(int val){
	int ival = val;
	float fval = (float)ival;
	int * pval = &ival;
	show_int(ival);
	/*
	show_float(fval);
	show_pointer(pval);
	*/
}
