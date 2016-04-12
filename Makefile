# 可执行文件
TARGET=main
# C文件
SRCS = main.c dict.c sds.c zmalloc.c adlist.c
# 目标文件
OBJS = $(SRCS:.c=.o)

# 指令编译器和选项
CC=gcc
CFLAGS=-Wall -std=gnu99

$(TARGET):$(OBJS)
#	@echo TARGET:$@
#	@echo OBJECTS:$^
	$(CC) -o $@ $^

clean:
	rm -rf $(TARGET) $(OBJS)

%.o:%.c
	$(CC) $(CFLAGS) -o $@ -c $<
