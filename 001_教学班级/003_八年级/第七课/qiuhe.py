
js = 0  # 计数员——求和
lj = 0  # 累加器——数数
xstr = input("请输入")
#input返回string类型，类型转换
while xstr != "":
	#非空的时候进行的操作
    if xstr=='quit':
        #当输入quit的时候，退出循环体
        break
    zh = float(xstr)
    #类型转换
    js = js+zh
    #技术员跟转换相加后的数求和
    lj = lj+1
    #数一下每次增加一个人，最后的人数
    xstr = input("请输入")
    #再输入一个数字
#如果输入的是空格，即不满足while的条件
#则输出结果
#newline
print("\n输入的个数为：", lj)
print("输入的和为：", js)
