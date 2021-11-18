try:
    a, b, c = map(int, input('输入三条边边长，用逗号隔开>>>').split(sep=','))
except:
    print("参数输入错误")
else:
    _a = not (a + b > c)
    _b = not (b + c > a)
    _c = not (a + c > b)
    if _a or _b or _c:
        print('无法组成三角形')
    else:
        p = (a + b + c)
        area = round(((p * (p - a) * (p - b) * (p - c)) ** 0.5), 2)
        print("三角形面积（保留两位）：", area, sep=' ')
