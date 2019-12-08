
# 定义makefile 变量 
OBJS=func1.o func2.o func3.o 
OBJS+=main.o 
CFLAGS=-Wall -c 
CC=gcc

VPATH=func1:func2:func3



main : $(OBJS) 
	$(CC) $^ -o $@
	@echo "执行main 目标..." 

func1.o : func1.c 
	$(CC) $(CFLAGS) $< -o $@
	@echo "执行func1.o 目标..." 

func2.o : func2.c 
	$(CC) $(CFLAGS) $< -o $@
	@echo "执行func2.o 目标..." 

func3.o : func3.c 
	$(CC) $(CFLAGS) $< -o $@
	@echo "执行func3.o 目标..." 

main.o : main.c head.h
	$(CC) $(CFLAGS) $< -o $@ 
	@echo "执行main.o 目标..." 

# 清除(删除所有的 .o文件 和 main可执行文件)
.PHONY:clean
clean:
	rm *.o main
	@echo "执行 clean 目标"

# 清除当前目录下的所有.o文件(删除所有的 .o文件 和 main可执行文件)
.PHONY:clean-all
clean-all:
	find ./ -name "*.o" -exec rm {} \;; rm main;
	@echo "执行 clean-all 目标"	;




