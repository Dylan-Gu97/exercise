obj := Main.o show_bytes.o test_bytes.o

%.d : %.c
	rm -f $@;\
	cc $< -MM;\
	 

test : $(obj)
	cc $< -g -o $@  

$(obj) : %.o : %.c
	include 
	cc $< -g -c -o $@

.PHONY : clean

clean :
	rm -f test $(obj) %.d
