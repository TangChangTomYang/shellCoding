#!/bin/bash

echo -n "请输入: yes 或 no "   # 打印不换行
read rst

# 多分支语句 相当于是 switch case 语句
case $rst in   # 多分支语句开始
	yes | Yes | YES | Y | y)   # 多个满足, 多重满足 
		echo "输入的是 yes"
		 ;;  
	no) 
		echo "输入的是 no"
		;;
	n)
		echo "输入的是 n"
		;;
	*) 		# 相当于C语言中的default
		echo "输入的是其它"
		;;

esac   # 多分支语句结束





