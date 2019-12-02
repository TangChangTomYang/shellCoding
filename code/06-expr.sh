#!/bin/bash

# 算术运算符两边要有空格隔开
# 错误写法 expr 4+5
# 正确写法
expr 4 + 5

# 在shell 中 * 代表的是通配符
# 如果想要 * 表示的是乘法的意思需要在 * 前面添加转义符号\, 即 \* 表示的是乘号
expr 3 + 5 \* 3 / 2




# 在shell 中如果要把一个 expr 计算的结果赋值给一个shell变量, 不能直接使用 赋值符号 =
# count = expr 3 + 4   这是错误写法
# 正确写法, 需要用到 命令置换 ``
count=`expr 3 + 5`
echo $count



num=9
total=`expr $num \* 3`
echo $total