gugu : gugu.o
	ld gugu.o -lc --dynamic-linker /lib64/ld-linux-x86-64.so.2


gugu.o : gugu.asm
	nasm -felf64 gugu.asm

clean :
	rm gugu.o
	rm a.out
