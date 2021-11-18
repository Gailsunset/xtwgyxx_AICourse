"""浩哲代码优化"""
a=float(input())
b=float(input())
c=float(input())
# if a>b>c:
if a>b and a>c:
    print(a)
elif b>c:
    print(b)
else:
    print(c)

# 问题：
# a>b>c 不能保证 a>c>b
# 例如： 9 3 6 会输出6最大
