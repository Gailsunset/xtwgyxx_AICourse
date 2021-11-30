# Python程序设计_for循环学案

By 吴铭英 211123

[TOC]
课件及学案电子版下载
<img src="./pic/2.png" alt="avatar" style="zoom:20%;" align = center/>

# 一、新课讲解

## 1.1知识点for-in,range()

<img src="./pic/1.png" alt="avatar" style="zoom:50%;" align = center/>



## 1.2如何使用

```python
1.for i in range(6):
    print(i) 
```

输出结果：



```python
2. for i in range(1,6,2):
    print(i)
```

输出结果：



```python
3. for i in range(6,1,-1):
    print(i)
```

输出结果：



# 二、案例分析

## 2.1 求和

1. 计算```1~4```所有数的和。使用```range()```函数，起始值为```1```，终值为```？```

```python
sum = 0
for i in range(1,___):
	sum + = i
print(sum)
```

```1-4```中所有奇数呢？

```1-100```呢？



2.计算```1~100```所有奇数的和。

使用函数```range()```，起始值为```1```，终值为```100```，步长为```2```。

```python
sum = 0
for i in range(1,___,____):
	sum = sum +i
print("1~100所有奇数的和：",sum)
```

打印结果：__________________

## 2.2 乘法表

输入一个整数 N，输出 N 的乘法表。

**输入样例：**

```
140
```

**输出样例：**

```C++
1 x 140 = 140
2 x 140 = 280
3 x 140 = 420
4 x 140 = 560
5 x 140 = 700
6 x 140 = 840
7 x 140 = 980
8 x 140 = 1120
9 x 140 = 1260
10 x 140 = 1400
```

请补全如下python 代码：

```python
# 乘法表
n=int(input()) #从命令行输入，input()返回字符串，整型int()对返回的字符串进行强制类型转换。
for i in range(______):
    print("%d * %d = %d"%(i,n,i*n))
```

**知识延伸**——基本的数据类型

* int  integer 整型   

```python
apple=100                                                                 
```

* float 浮点 

```python
ApplePrice=2.5
```

* str  string 字符串 

```python
university="北京大学"
print(university)
```

* bool  True|False 布尔值

## 2.3 水仙花数

水仙花数是指一个3位数，它的每个位上的数字的3次幂之和等于它本身，例如：$1^3$+$5^3$+$3^3$=153。

```python
Tmp=[]    #初置空列表
for ___________________
	a=int(str(i)[2]) #取个位
	b=int(str(i)[1]) #取十位
	c=int(str(i)[0]) #取百位
  if a**3+b**3+c**3==i:
      Tmp.append(i)
print(Tmp)
```

还想挑战？试试**玫瑰花数**？

# 三、总结

| **新知**                                      | **已知**                                                     |
| :-------------------------------------------- | ------------------------------------------------------------ |
| for-in循环                                    | if-else;if-elif-else                                         |
| range()函数                                   | 其他内置函数                                                 |
| 1.求1-100的奇(偶)数；  2.乘法表；3.求水仙花数 | 1.【顺序】海伦公式  2.【分支】比较两个数大小，输出较小的数  3.【分支】出租车  4.【多分支】比较三个数a、b、c，输出其中最大的数  5.【多分支】百分制转换成A～E等级制 |

# 四、学习资料

1. **浙江**信息技术教材八年级上册
2. Python官方文档
3. 与孩子一起学编程
4. **Python**学习手册 第三版
5. 精选案例化解Python教学之难
6. **笨**方法学python
7. Github **python100**天从新手到大师

