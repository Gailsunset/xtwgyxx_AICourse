lst=[]    #初置空列表

for i in range(100,1000):
    a=i%10         #取个位
    b=(i//10)%10   #取十位
    c=i//100       #取百位
    if a**3+b**3+c**3==i:
        lst.append(i)

print(lst)
   
