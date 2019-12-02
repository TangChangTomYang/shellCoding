#!/bin/bash

A="how"
B="how"

# 在shell 中使用test 命令来对字符串   整数  文件进行测试

# 比较两个字符串是否相等, 比较结果为0表示相等, 非0为不等
test $A = $B 
# 使用 $? 获取上一条命令的执行结果, 这里使用 $? 来获取上面字符串的比较结果
echo $?



num1=20
num2=40
test $num1 -eq $num2
echo $?


 
# 字符串测试
#  $p1 = $p2 测试两个字符串是否相当
#  $p1 != $p2 测试两个字符串是否 有差异
#  -z $p 测试字符串长度是否为0
#  -n $p 测试字符串长度是否 大于

# 整数测试
# $a -eq $b 测试整数 是否相等
# $a -ne $b 测试整数 是否 不相等
# $a -gt $b 测试整数 a > b
# $a -ge $b 测试整数 a >= b
# $a -lt $b 测试整数 a < b
# $a -le $b 测试整数 a <= b


# 文件测试
# -d $fileName 测试是否是一个目录
# -e $fileName 测试文件是否存在
# -f $fileName 测试是否是普通文件
# -L $fileName 测试是否为符号链接
# -r $fileName 测试文件是否存在,且为可读
# -w $fileName 测试文件是否存在,且为可写
# -x $fileName 测试文件是否存在,且为可执行
# -s $fileName 测试文件是否存在,且为长度不为0

# $f1 -nt f2 测试文件f1 是否比f2 新
# $f1 -nt f2 测试文件f1 是否比f2 旧

 

