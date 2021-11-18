#赵处两个数中最大的数
a=float(input('第一个数'))
b=float(input('第二个数'))

if a>b:
    print('两个数中最大数为',a)
else:
    print('两个数中最大数为',a)
#找出三个数中最大的数
a=float(input('第1个数：'))
b=float(input('第2个数：'))
c=float(input('第3个数：'))


if a>b and a>c:
    print('三个数中最大数为',a)
elif b>c:
    print('三个数中最大数为',a)
else:
    print('三个数中最大数为',a)
# 百分制转换成A~E等级制
score = float(input('请输入成绩(0-100):'))


if score>=90:
    print('A')
elif score>=80:
    print('B')
elif score>=70:
    print('C')
elif score>=60:
    print('D')
else:
    print('E')
