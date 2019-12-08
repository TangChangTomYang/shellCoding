#!/bin/bash


index=0
# shell 中的for 实现死循环
for (( ; ; ))
do 
	index=`expr $index + 1`
	echo "死循环: $index" 

	if [ $index -gt 100 ]
	then
		exit
	fi
done


			
 





