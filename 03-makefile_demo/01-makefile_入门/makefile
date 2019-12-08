main : func1.o func2.o func3.o main.o 
	gcc func1.o func2.o func3.o main.o  -o main

func1.o : func1.c 
	gcc -Wall -c func1.c -o func1.o
func2.o : func2.c 
	gcc -Wall -c func2.c -o func2.o
func3.o : func3.c 
	gcc -Wall -c func3.c -o func3.o
main.o : main.c head.h
	gcc -Wall -c main.c -o main.o -Wall

# 清除(删除所有的 .o文件 和 main可执行文件)
.PHONY:clean
clean:
	rm *.o main
