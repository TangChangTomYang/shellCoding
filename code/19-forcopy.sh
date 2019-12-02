#!/bin/bash


if  ! [ -d $1 -o -f $1 ]
then
	echo "参数1: $1 , 必须是文件或文件夹"
	exit
fi

 
 

if ! [ $# -eq 2 ]
then
	echo "只能输入2个参数, sourcefile  distDir"
	exit
fi

if  ! [ -d $2 ]
then
	echo "参数2: $2 , 必须是文件夹"
	exit
fi


# 获取 $1 下的所有文件或文件夹
filelist=`ls $1`
for f in $filelist
do 
	if [ -d $f]
	then 
		echo "$f 是一个文件夹, 不能拷贝"
	else
		cp $f $2
		echo "拷贝, $f 完成"
	fi
done



			
 





