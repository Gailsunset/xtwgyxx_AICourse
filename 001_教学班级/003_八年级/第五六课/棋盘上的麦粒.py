#n表示棋盘的格子数
n=int(input("请输入棋盘格子数："))

p=1      #第一格棋盘麦粒数p置初值1

s=0      #累加器初始化为0

#通过for语句循环累加，并输出麦粒总数
for i in range(1,n+1):
    s=s+p
    p=p*2

print("棋盘格子数为：",n,"，麦粒总数：",s)
