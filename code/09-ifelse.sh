#!/bin/bash


# 1. 判断是否有输入参数
if ! [ $# -eq 1 ]
then 
	echo "必须输入1个参数(文件名)"
	exit
fi


# 2. 判断是否是文件夹
if [ -d $1 ]
then
	echo "$1 是一个文件夹"
else 
	# 3. 判断是否是一个普通文件
	if [ -f $1 ]
	then 
		echo "$1 是一个普通文件"
	else
		echo "$1 的类型未知"
	fi
fi



