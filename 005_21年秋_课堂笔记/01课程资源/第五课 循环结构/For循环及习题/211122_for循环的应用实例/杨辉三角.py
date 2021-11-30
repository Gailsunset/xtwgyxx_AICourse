#输出你想打印的杨辉三角形的行数
h=int(input('请输入打印杨辉三角形的行数(行数>2)：'))
#打印第一行和第二行
print([1])
list=[1,1]
print(list)

#打印从第三行开始的其它行
for i in range(2,h):    #外部循环除1、2行外还需打印的行数
    r=[]
    for j in range(0,len(list)-1):  #内循环，除前后的1以外的别的元素
        r.append(list[j]+list[j+1])
    #把两端的1加入
    list=[1]+r+[1]
    print(list)
    
