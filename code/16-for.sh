#!/bin/bash

# seq 是获取一个序列的命令, 有3个参数
# 参数1, 表示的是开始值
# 参数2, 表示的是 递增值, 可以省略默认是1
# 参数3, 表示的是 结束值

# 计算 1~100 的数相加
sum=0

for i in `seq 1  100` 
do
	sum=`expr $sum + $i`
done 
echo $sum
			
 





