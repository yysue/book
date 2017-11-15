#!/bin/sh
# 数组的定义及输出
arr=(v1 v2 v3 v4)
echo ${arr[*]}
echo ${arr[@]}
echo ${arr[1]}

arr2=([1]=one [2]=two [3]=three)
echo ${arr2[*]}
echo ${arr2[1]}

arr3[0]=a;
arr3[1]=b;
arr3[2]=c;
echo ${arr3[*]}

arr4=($(ls /))
echo ${arr4[*]}

# 数组个数
echo ${#arr[*]}
echo ${#arr2[*]}
echo ${#arr3[*]}
echo ${#arr4[*]}

# 数组的修改
echo ${arr[*]}
arr[1]=update
echo ${arr[*]}

# 数组的删除
unset arr[1]
echo ${arr[*]}
echo ${arr2[*]}
unset arr2
echo ${arr2[*]}

# 数组的截取和替换
arr=($(seq 10))
echo ${arr[*]}
echo ${arr[*]:1:3}
echo ${arr[*]/1/b}

#arr=(a1 a22 a333 a4444 a55555)
arr=(one two three four five)
echo ${arr[*]}
echo "从左边开始匹配最短的数组元素并删除：${arr[*]#o*}"
echo "从左边开始匹配最长的数组元素并删除：${arr[*]##o*}"
echo "从右边开始匹配最短的数组元素并删除：${arr[*]%f*}"
echo "从右边开始匹配最长的数组元素并删除：${arr[*]%%f*}"

