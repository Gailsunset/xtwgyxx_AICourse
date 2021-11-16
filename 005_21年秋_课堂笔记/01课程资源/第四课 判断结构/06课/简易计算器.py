# 简易计算器（四则运算）
x = input('请输入第一个运算数：')
y = input('请输入第二个运算数：')
op = input('请输入运算符(+-*/)：') 
c = 0

if op=='+':
    c = x + y
    print('运算结果为：', c)
elif op=='-':
    c = x - y
    print('运算结果为：', c)
elif op=='*':
    c = x * y
    print('运算结果为：', c)
elif op=='/':
    try:
        c = x / y
        print('运算结果为：', c)
    except:
        print('除数不能为零！')
else:
    print('运算符输入有误！')

