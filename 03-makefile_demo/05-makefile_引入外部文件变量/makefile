
# 使用include 引入外部变量
include mfile


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




