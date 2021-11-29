

# 乘法表
# n=int(input())
# for i in range(1,11):
#     print("%d * %d = %d"%(i,n,i*n))

# 3.连续奇数的和
# def jishuhe(a,b):
#     s = 0
#     for i in range(a + 1, b):
#         if i % 2 == 1:
#             s = s + i
#     return s
# if __name__ == '__main__':
#     a=int(input())
#     b=int(input())
#     if a>b:
#         a,b=b,a
#         rst= jishuhe(a,b)
#         print(rst)
#     else:
#         rst= jishuhe(a, b)
#         print(rst)

# a=int(input())
# b=int(input())
# if a>b:
#     a,b=b,a
#     s = 0
#     for i in range(a + 1, b):
#         if i % 2 == 1:
#             s = s + i
#     print(s)
# else:
#     s = 0
#     for i in range(a + 1, b):
#         if i % 2 == 1:
#             s = s + i
#     print(s)
#

Tmp=[]    #初置空列表
for i in range(100,1000):
    a=int(str(i)[2])         #取个位
    b=int(str(i)[1])         #取十位
    c=int(str(i)[0])         #取百位
    if a**3+b**3+c**3==i:
        Tmp.append(i)
print(Tmp)
