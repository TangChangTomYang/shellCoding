#!/bin/bash
 

# 定义一个shell 的函数
func1(){
	# 在函数里面可以使用 ${index} 来获取用户调用时传的参数
	echo "用户输入的参数个数: $#"
	echo "用户输入的是 $1"
	echo "用户输入的信息: $@"
	return 10
}


echo -n "输入一个名字: "
read info

# 函数调用
value=`func1 $info`
echo "-------------"
# 获取函数的返回值
echo $value

			
 





