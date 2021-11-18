score = int(input("输入成绩>>>"))
if score < 0 or score > 100:
    print("输入参数错误")
elif score >= 90:
    print("A")
elif score >= 80:
    print("B")
elif score >= 70:
    print("C")
elif score >= 60:
    print("D")
else:
    print("E")


num1 = float(input("输入数1>>>"))
num2 = float(input("输入数2>>>"))
num3 = float(input("输入数3>>>"))
b2s = []
if num1 > num2 and num1 > num3:
    b2s.append(num1)
    na = num2
    nb = num3
elif num2 > num1 and num2 > num3:
    b2s.append(num2)
    na = num1
    nb = num3
else:
    b2s.append(num3)
    na = num2
    nb = num1

if na > nb:
    b2s.append(na)
    b2s.append(nb)
else:
    b2s.append(nb)
    b2s.append(na)

print(b2s[0], b2s[1], b2s[2], sep=" > ")
print("\n")