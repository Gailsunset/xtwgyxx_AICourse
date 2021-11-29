# std = [1,2,3,4]
# for i in std:
	# print("%d * 8 = %d" %(i,i*8))
# for i in range(1,6):
#     print("%d * 8 = %d" %(i,i*8))
# for i in range(6):
#     print(i)
# for i in range(1,6,2):
#     print(i)
# for i in range(6,1,-1):
#     print(i)
# lst = []  # 初置空列表
#
# for i in range(100, 1000):
#     a = i % 10  # 取个位
#     b = (i // 10) % 10  # 取十位
#     c = i // 100  # 取百位
#     if a ** 3 + b ** 3 + c ** 3 == i:
#         lst.append(i)
#
# print(lst)


# 输出你想打印的杨辉三角形的行数
# h = int(input('请输入打印杨辉三角形的行数(行数>2)：'))
# # 打印第一行和第二行
# print([1])
# list = [1, 1]
# print(list)

# 打印从第三行开始的其它行
# for i in range(2, h):  # 外部循环除1、2行外还需打印的行数
#     r = []
#     for j in range(0, len(list) - 1):  # 内循环，除前后的1以外的别的元素
#         r.append(list[j] + list[j + 1])
#     # 把两端的1加入
#     list = [1] + r + [1]
#     print(list)

std = [1,2,3,4]
for i in std:
    print("%d只青蛙 %d张嘴，%d只眼睛 %d条腿" %(i,i,i*2,i*4))

