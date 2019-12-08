
 #include <stdio.h>
 
 // 导入自定义头文件
 #include "head.h"

int main(int argc, char const *argv[])
{
	f1();
	f2();
	f3();

	int i = 1.0 * 4;

	printf("messsage end main \n");
	return 0;
}



/*

对于这么多.c文件 (func1.c   func2.c    func3.c   main_0.c) 来说,
按照我们通常的经验来说, 
	func1.c 会生成 func1.o
	func2.c 会生成 func2.o
	func3.c 会生成 func3.o
	main_0.c 会生成 main_0.o


对于上面这些文件, 如果写makefile 的话, 我们可以这样来写

在写 makefile 之前, 我们可以使用一个简洁的命令, 来检查一下, 这些文件有没有语法错误

gcc *.c -Wall

*/