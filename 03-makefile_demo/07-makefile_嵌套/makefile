CC=gcc
# 子模块目录, 每个子模块下面有一个makefile 文件
SUBDIRS=func1 \
		func2 \
		func3 \
		main  \
		obj
# 子模块, 目标依赖名
OBJS=func1.o func2.o func3.o main.o
# 存放.o 文件的目录
OBJS_DIR=obj

# 可执行文件的名称
BIN=myapp
# 存放二进制可执行文件的 目录
BIN_DIR=bin 




# 导出变量
export CC OBJS BIN OBJS_DIR BIN_DIR
 

all:CHECK_DIR $(SUBDIRS)

# 检查并创建 bin目录
CHECK_DIR:
	# mkdir -p 是递归创建目录, eg: mkdir -p c/d 如果c 不存在, 会先创建c 再创建d
	mkdir -p $(BIN_DIR)

# 一次读取子 makefile文件编译子模块, 之前先打印要编译的子模块
$(SUBDIRS): ECHO
	# make -c 读取指定目录下的 makefile 文件
	# 此处相当于是依次执行 SUBDIRS 下的makefile 文件
	make -C $@

# 依次打印要编译的子模块
ECHO:
	@echo $(SUBDIRS)
	@echo begin compile


.PHONY:clean-all CLEAN
CLEAN:
	# 删除所有的 .o 文件
	# RM  是系统预定医德一个变量实际就是 rm -f
	@$(RM) $(OBJS_DIR)/*.o
	# 删除二进制可执行文件
	@rm -rf $(BIN_DIR)


# 其实外层的makefile 没有做什么事情, 主要的是起到一个流程控制
# 一层层的调用 子目录下的 makefile
