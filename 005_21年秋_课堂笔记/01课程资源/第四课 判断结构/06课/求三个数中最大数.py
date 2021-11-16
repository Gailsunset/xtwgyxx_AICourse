# 找出三个数中最大的数
a = float(input('第1个数：'))
b = float(input('第2个数：'))
c = float(input('第3个数：'))

if a>b and a>c:
    print('三个数中最大数为', a)
elif b>c:
    print('三个数中最大数为', b)
else:
    print('三个数中最大数为', c)
