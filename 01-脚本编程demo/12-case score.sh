#!/bin/bash

echo -n "请输入你的考试分数: "   # 打印不换行
read score


if [ $score -lt 0 -o $score -gt 100 ] # -o 相当于C于洋中的 || 或者的意思
then
	echo "成绩只能是 0~100 之间的范围"
	exit # 相当于是C语言中的return

# 将结果简化分类
sc=`expr $score / 10`  # 命令置换
case $sc in
	9 | 10)
		echo "$score 成绩优秀"
		;;
	6 | 7 | 8)
		echo "$score 成绩良好"
		;;
	*)
		echo "$score 成绩不及格"
		;;
esac
			
 





