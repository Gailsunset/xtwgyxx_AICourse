# name="xihuan"
# number=10
# print("Name is %s, Num is %d"%(name,number))
#
# """3位自然数"""
#
# x=int(input("输入三位数的自然数："))
# a=x//100   #求百位的数
# b=#        #求十位的数
# c=x%10     #求个位的数
# print(a,b,c,sep=',')
#
# name="xihuan"
# number=10
# score=99.5
# print("Name is %s, Num is %d, Score is %.2f"%(name,number,score))
#
# for (int i=0, k=1; i < n;i++)
#
#     {
#     for (int j=0;j < n;j++, k++)
#     {
#     // cout << k << " ";
#     printf(" %4d ", k); // “-”号代表在后面补全空格，正号前面补空格
#     }
#     cout << endl;
#     }


# 打印菱形
# n=9
# sum=0
# c=9//2
# for i in range(0,n+1):
#     for j in range(0,n+1):
#         if (abs(i-c)+abs(j-c)<=c):
#             print("*",end=' ')
#         else:
#             print(" ",end=' ')
#     print('\n',end='')


#noc真题 递归计算级数
# 1/2+2/3+3/4+..n/n+1
def digui(n):
    if n == 1:
        return 1/2
    else:
        res=digui(n-1)+ n/(n+1)
        return res

if __name__ == '__main__':
    n=10
    res1=digui(n)
    print("%.1f"%res1)