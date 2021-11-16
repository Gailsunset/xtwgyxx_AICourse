# 百分制转换成A～E等级制
score = float(input('请输入成绩（0-100）：'))

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