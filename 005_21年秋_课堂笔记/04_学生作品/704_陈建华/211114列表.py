"""列表是一种可变序列，可以储存各种数据。
如['a', 'b', 'c']就是一个列表。
我们称列表内每一个数据叫做列表的“元素”或“项”。
列表内的元素也有编号，这种编号叫作索引：
    从前往后数，第一个元素的索引为0，第二个为1，以此类推；
    从后往前数，第一个元素的索引为-1，第二个为-2，以此类推。
"""

print('列表有四种创建方法：')
print('1，使用一对方括号来表示空列表')
createList1 = []
print(createList1)
print('2，使用方括号，其中的项以逗号分隔')
createList2 = ['a']  # 'a' 是一个元素
createList3 = ['a', 'b', 'c']  # 这有'a'、'b'、'c'三个元素
print(createList2)
print(createList3)
print('3，使用列表推导式')
createList4 = ['v' for i in range(3)]
# 这里会创建一个有三个'v'作为三个元素的列表，即['v', 'v', 'v']
print(createList4)
print('4，使用类型的构造器')  # 指函数list()
createList5 = list()  # []
createList6 = list('list')  # ['l', 'i', 's', 't']
createList7 = list(range(3))  # [0, 1, 2]
print(createList5, createList6, createList7, sep='\n')

print('')

_list = ['Ctrl','Shift','Alt','Esc']
print('列表操作示范')

print('A.列表作为序列的操作')

print('A1.数据是否存在列表（序列）里')
print('Shift' in _list)
print('Tab' in _list)
print('Shift' not in _list)
print('Tab' not in _list)

print('A2.拼接')
_list = _list+['Backspace'] ; print(_list)  # _list与['Backspace']拼接
print(['a']*3)  # 3个['a']自己进行拼接，即['a', 'a', 'a']

print('A3.切片')
print(_list[1])  # s[i]：列表s中索引为i的元素
print(_list[3:])  # s[i:]：列表s从i（含）到末尾的切片
print(_list[:3])  # s[:j]：列表s从开头到j（不含）的切片
print(_list[1:4])  # s[i:j]：列表s从i（含）到j（不含）的切片
print(_list[1:4:2])  # s[i:j:k]：列表s从i到j步长为k的切片

print('A4.检测长度') ; print(len(['a', 1 ,True, 0.7]))

print('A5.检测最小项')
print(min([1, 2, 3]))
print(min(['a', 'b', 'c']), min(['ya', 'yb', 'yc']))
print(min([True, False]))

print('A6.检测最大项')
print(max([1, 2, 3]))
print(max(['a', 'b', 'c']), max(['ya', 'yb', 'yc']))
print(max([True, False, 3]))

print('A7.检测一个数据在列表中首次出现项的索引号')
_A78 = ['a', 'b', 'a', 'c', 'b', 'a', 'd', 'a', 'av']
print(_A78.index('a'))  # 检测'a'在列表_A7中首次出现项的索引号
print(_A78.index('a',3))  # 检测'a'在列表_A7中第3项（含）后首次出现项的索引号
print(_A78.index('a',3,6))  # 检测'a'在列表_A7中第三项（含）后第6项（不含）前首次出现项的索引号
# 找不到会返回ValueError

print('A8.检测一个数据在列表中出现的总次数')
print(_A78.count('a'))

print('B.列表作为可变序列的操作')
print('原列表“_list”：', _list, sep='')
_B = [1, 7, False, '&', 3.2, '^', b'\xce\x9b', [1, 2], True, 'g']
print("原列表“_B”：", _B, sep='')

print('B1.替换元素')

_list[2] = 'Enter'  # 将列表_list中索引为2的元素替换为'Enter'
print(_list)

_B[1:8:3] = [4, 8.3, ['a', 'b']]
# 其中[1:8:3]表示切片，同上文所述切片方法都可以写在这。
# 这里会将切出来的内容所在位置替换为偶棉列表中对应的元素。
# 如例子，切出来[7, 3.2, [1, 2]]，将原列表的它们分别替换为[4, 8.3, ['a', 'b']]。
# 替换目标和替换数据两个列表长度需一致。
print('更改后：', _B)

print('B2.移除索引对应元素')
del _B[1:8:2]  # 将切出来的内容从原列表中移除
print(_B)
del _B[0]
print(_B)
print(_B.pop(-2))  # 提取元素并从原列表中移除，默认-1
print(_B)

print('B3.向列表中追加元素')
_B.append(b'\xba')
print(_B)
_B.extend('*')
_B.extend(b'\xba')
print(_B)
_B += [5, True]
print(_B)

print('B4.清除列表所有项')
_B4 = ['a','*', 6]
print(_B4)
_B4.clear()
print(_B4)

print('B5.浅拷贝列表', _B, _B.copy(), sep='\n')

print('B6.使用列表的内容重复n次来对其进行更新')
_B6 = ['a', True]
_B6 *= 3
# 	使用列表“_B6”的内容重复3次来对其进行更新
print(_B6)

print('B7.添加元素')
print(_B)
_B.insert(3, '%')
print(_B)

print('B8.删除元素')
_B8 = [1, 4, 1, 6]
_B8.remove(1)
print(_B8)

print('B9.反转列表')
print(_B)
_B.reverse()
print(_B)

print('')

print('C.列表额外提供的方法“sort”')
print('''此方法会对列表进行原地排序，只使用 < 来进行各项间比较。
异常不会被屏蔽 —— 如果有任何比较操作失败，整个排序操作将失败
（而列表可能会处于被部分修改的状态）。''')
_C = [True, 17, 8.1]
_C.sort()
print(_C)
_C = [True, 17, 8.1]
_C.sort(reverse=True)
print(_C)