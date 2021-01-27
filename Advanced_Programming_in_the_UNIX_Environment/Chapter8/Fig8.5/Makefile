sources := $(wildcard *.c)
objects := $(sources:.c=.o)
dependence := $(sources:.c=.d)

cc = gcc
CFLAGES = -g
pr_exit : $(objects)
	@echo "Start linking $< Creating $@"
	$(CC) $(CFLAGES) $^ -o $@
	@echo "End linking the objects"

%.o : %.c
	@echo "compiling $< Creating $@"
	$(CC) $(CFLAGES) -c $< -o $@
	@echo "end compiling the source file"

%.d : %.c
	@echo "Start creating $@"
	@set -e; rm -f $@;\
	$(CC) -MM $(CFLAGES) $< > $@.$$$$;\
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g'<$@.$$$$>$@;\
	rm -f $@.$$$$
	@echo "Ending creating $@"
-include $(dependence)

.PHONY: clean
clean:
	rm -rf creat_hole_file $(objects) $(dependence)
