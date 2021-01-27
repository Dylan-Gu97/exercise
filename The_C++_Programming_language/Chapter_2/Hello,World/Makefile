obj := Hello,World.o

Hello,World : $(obj)
	g++ $< -o $@

$(obj) : %.o : %.cpp
	g++ $< -c -o $@

.PHONY : clean

clean:
	rm -f Hello,World $(obj)	
