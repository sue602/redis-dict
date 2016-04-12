# $@ -- 目标文件，$^ -- 所有依赖文件
# main 即为可执行文件
# *.c (用 -c 生成,-c是只编译，不链接，默认GCC/G++是编译链接) *.o(目标文件（二进制）) ，-o 命令可以给可执行文件命名

main: main.o dict.o sds.o zmalloc.o
	gcc -o $@ $^	### gcc -o main main.o
main.o: main.c dict.c sds.c zmalloc.c
	gcc -c main.c dict.c sds.c zmalloc.c

clean: 
	rm main.o dict.o sds.o zmalloc.o main
