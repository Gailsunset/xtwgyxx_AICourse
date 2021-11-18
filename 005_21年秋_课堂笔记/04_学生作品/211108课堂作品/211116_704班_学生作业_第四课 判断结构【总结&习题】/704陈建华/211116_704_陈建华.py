def _a():
    a1 = float(input(">>>"))
    a2 = float(input(">>>"))
    if a1 > a2:
        print(a1)
    else:
        print(a2)

def _b():
    b1 = float(input(">>>"))
    b2 = float(input(">>>"))
    b3 = float(input(">>>"))
    if b1 > b2 and b2 > b3:
        print(b1)
    elif b2 > b3:
        print(b2)
    else:
        print(b3)

def _c():
    score = int(input(">>>"))
    if score > 100 or score < 0:
        print("Error")
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

def _d():
    a4, b4, c4, d4 = map(int, input('split with ",">>>').split(","))

    if (b4 > c4) and (d4 > a4) and ((c4 + d4) > (a4 + b4)) and (c4 > 0 and d4 > 0) and (a4 % 2 == 0):
        print("Valores aceitos")
    else:
        print("Valores no aceitos")

_d()