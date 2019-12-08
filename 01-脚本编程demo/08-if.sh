#!/bin/bash


# if ... then ... fi  条件语句, 等价于C语言中的 if(){}


# 判断有没有输入文件名
if  [ $# -ne 1 ]  # 参数个数 $# 等于1
then 
	echo "用法: $0 filename"
	exit # 退出脚本vne
fi 



# 判断文件是否存在
if ! [ -e $1 ]   # ! 表示取反, 在shell 中判断结果为0表示真  
then 
	echo " '$1' 文件不存在"
	exit
fi 

echo "$1 文件存在" 

