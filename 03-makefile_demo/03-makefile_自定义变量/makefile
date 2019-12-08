# 定义makefile 变量 
# OBJS=func1.o func2.o func3.o 
# OBJS+=main.o 
# CFLAGS=-Wall -c 
# CC=gcc

# 使用makefile 变量使用要用 $() 包裹
# 注意: 
# 1. $^ 只能用来代替 所有的  目标依赖
# 2. $< 用来代替第一个依赖 (可以是文件依赖也可以是目标依赖)
# 3. $@ 代表的是完整依赖名
# 4. 在makefile 中打印使用 @echo "被打印信息", make 只能在target之后, 且前面要有 tab
 


main : $(OBJS) 
	$(CC) $^ -o $@
	@echo "执行main 目标..."
	@echo "全部目标依赖: $^"
	@echo "目标名:$@ \n" 

func1.o : func1.c 
	$(CC) $(CFLAGS) $< -o $@
	@echo "执行func1.o 目标..."
	@echo "第一个依赖: $<"
	@echo "目标名: $@ \n"

func2.o : func2.c 
	$(CC) $(CFLAGS) $< -o $@
	@echo "执行func2.o 目标..."
	@echo "第一个依赖: $<"
	@echo "目标名: $@ \n"

func3.o : func3.c 
	$(CC) $(CFLAGS) $< -o $@
	@echo "执行func3.o 目标..."
	@echo "第一个依赖: $<"
	@echo "目标名: $@ \n"

main.o : main.c head.h
	$(CC) $(CFLAGS) $< -o $@ 
	@echo "执行main.o 目标..."
	@echo "第一个依赖: $<"
	@echo "目标名: $@ \n"

# 清除(删除所有的 .o文件 和 main可执行文件)
.PHONY:clean
clean:
	rm *.o main
	@echo "执行 clean 目标"




