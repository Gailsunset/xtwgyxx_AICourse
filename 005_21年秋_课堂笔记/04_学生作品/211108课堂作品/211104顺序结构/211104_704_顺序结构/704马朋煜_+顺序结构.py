
a,b,c=map(float,input().split())

p=(a+b+c)/2
print(p)
#炒菜，计算面积
s=(p*(p-a)*(p-b)*(p-c))**0.5
print("%.2f"%s)