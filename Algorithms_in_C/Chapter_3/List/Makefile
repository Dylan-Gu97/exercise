sources :=$(wildcard *.c)
objects :=$(sources:.c=.o)
dependence := $(sources:.c=.d)

CC = gcc
CFLAGS = -g

test : $(objects)
	@echo "linking $^ Creating $@" 
	$(CC) $(CFLAGS) $^ -o $@
	@echo "end linking the objects"

%.o:%.c
	@echo "compiling $< Creating $@"
	$(CC) $(CFLAGS) -c $< -o $@
	@echo end compiling the source file

%.d:%.c
	@echo "Creating $@"
	@set -e; rm -f $@;\
	$(CC) -MM $(CFLAGS) $< > $@.$$$$;\
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g'<$@.$$$$>$@;\
	rm -f $@.$$$$
-include $(dependence)

.PHONY: clean
clean:
	rm -rf test $(objects) $(dependence)
