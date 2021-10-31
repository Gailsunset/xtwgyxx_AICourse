print('练习1：打印出自己的姓名和年龄')
name = "xihuan"  # 将字符串“xihuan”赋值给变量”name“
number = 10  # 将整型”10“赋值给变量”number“
score = 99.5  # 将浮点数”99.5“赋值给变量”score“
print("Name is %s, Num is %d, Score is %.2f" % (name, number, score))
# 输出数据
# 这个字符串中”%s”是插入字符串，“%d”是插入十进制整数，“%f”是插入浮点数，
# 而“%.2f”代表将插入的浮点数保留两位小数。
# 后面百分号后括号内的参数代表前面字符串里从前到后几个插入位置依次插入这几个量。

print('练习2: 编写一个程序，分别要求用户输入两个人的成绩，然后输出两个人的平均成绩。')
score1 = input("请输入用户1的成绩:")
score2 = input("请输入用户2的成绩:")
# 函数“input”表示在输出区输出这段文字并在后面提供操作人输入数据的地方，
# 在按下回车键后将数据以字符串形式输出，这里用变量赋值来接收。
score3 = int(score1)
score4 = int(score2)
# 函数“int()”将数据转化成整型
average_score = (score3 + score4) / 2
# 两量相加的和除以2
print("平均分为:%s" % average_score)
# 将变量数据插入前面字符串里“%s”的位置

print('练习3：华氏温度转换为摄氏温度。')
# 提示：华氏温度到摄氏温度的转换公式为：C=(F-32)/1.8
f = float(input('请输入华氏温度: '))
# 将输入数据转化成浮点数（用函数float()）后赋值给变量“f”
c = (f - 32) / 1.8
# 将变量“f”的值减去32后除以1.8并赋值给变量“c“
print('%.1f华氏度 = %.1f摄氏度' % (f, c))

print('练习4：输入一个三位数的自然数，然后依次输出这个数每位上的数字，并用逗号分隔开')
x = int(input("输入三位数的自然数："))
a = x // 100
# 取变量”x”的值除以100并去掉余数，然后赋值给变量“a”
b = x // 10 % 10
# 取变量”x”的值除以10并去掉余数，再除以10并只留余数，最后赋值给变量“b”
c = x % 10
# 取变量”x”的值除以10并只留余数，然后赋值给变量“c”
print(a, b, c, sep=',')
# 参数“sep”表示输出几个量时相邻两个量之间用什么字符串连接

print('练习5：输入圆的半径计算计算周⻓和面积。')
radius = float(input('请输入圆的半径: '))
perimeter = 2 * 3.1416 * radius
# 将2乘3.1416乘变量“radius”的值的结果赋值给“perimeter”
# 将3.1416乘变量“radius”的值乘变量“radius”的值的结果赋值给变量“area”
area = 3.1416 * radius * radius
print('周⻓: %.2f' % perimeter)
print('面积: %.2f' % area)

print('练习6：输入年份判断是不是闰年。')
year = int(input('请输入年份: '))
# 如果代码太⻓写成一行不便于阅读 可以使用\对代码进行折行
is_leap = year % 4 == 0 and year % 100 != 0 or \
          year % 400 == 0
# 关键字“and”：当两边的布尔运算都成立时才成立，否则不成立
# 关键字“or”：当两边的布尔运算都不成立时不成立，否则成立
print(is_leap)