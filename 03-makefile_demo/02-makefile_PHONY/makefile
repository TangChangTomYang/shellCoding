# 定义makefile 变量 
OBJS=func1.o func2.o func3.o 
OBJS+=main.o 
CFLAGS=-Wall -c 
CC=gcc

# 使用makefile 变量使用要用 $() 包裹
main : $(OBJS) 
	$(CC) $(OBJS)  -o main

func1.o : func1.c 
	$(CC) $(CFLAGS) func1.c -o func1.o
func2.o : func2.c 
	$(CC) $(CFLAGS) func2.c -o func2.o
func3.o : func3.c 
	gcc -Wall -c func3.c -o func3.o
main.o : main.c head.h
	gcc -Wall -c main.c -o main.o -Wall

# 清除(删除所有的 .o文件 和 main可执行文件)
.PHONY:clean
clean:
	rm *.o main