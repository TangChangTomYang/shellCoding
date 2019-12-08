# 整个makefile 文件的含义上将 func2.c 生成 func2.o 并放在 上一级的obj目录下
# ../$(OBJS_DIR)/func2.o 是目标文件
# 这里表示的是上一层的obj 文件, 也就是说生成的 .o 文件放在上一级的 obj 目录下
../$(OBJS_DIR)/func2.o:func2.c
	# $^ 表示的是所有不重复的 目标依赖文件 , 以空格分开
	# $@ 表示的目标依赖文件的全名, 此处等价于 ../obj/func2.o 
	$(CC) -c $^ -o $@