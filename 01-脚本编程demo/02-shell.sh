

# $0,与键入的命令行一样, 包含脚本文件名
echo "\$0 脚本文件名称: $0"

# $1 $2 ... $9,分别获取第一个到第九个参数
echo "\$1 第一个参数: $1"
echo "\$2 第二个参数: $2"

# 在使用 $+index 时需要注意, 如果index > 9 时需要使用 {} 括起来否则 $10 会被理解为 $1 和字符串0
echo "\$+index, index 超出9需要使用{}包裹: \$10错误写法: $10"
echo "\$10正确写法: ${10}"
echo "\$11正确写法: ${11}"

# $#, 获取参数的个数
echo "\$#  一共有: $# 个参数"

# #@ 获取所有的参数
echo "\$@ 获取所有的参数: $@"

# $? 获取前一个命令的退出状态
echo "\$? 前命令退出状态: $?"

# $* 与 $@ 一样, 都是获取所有的命令参数
echo "\$* 所有的命令参数: $*"

# $$ 获取正在执行的进程ID
echo "\$$ 正在执行的进程: $$"

# 在shell 中$是特殊符号, 要输出需要使用转义符号 \
echo "输出\$0: $0"


