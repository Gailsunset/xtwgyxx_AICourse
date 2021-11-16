# 形参种类
# parameter -- 形参，形式参数
def function1(a, /, b, *, c, **d):
    # a: positional-only，仅限位置，指定一个只能通过位置传入的参数。仅限位置形参可通过在函数定义的形参列表中它们之后包含一个 / 字符来定义。
    # b: positional-or-keyword，位置或关键字，指定一个可以作为 位置参数 传入也可以作为 关键字参数 传入的实参。这是默认的形参类型。
    # c: keyword-only，仅限关键字，指定一个只能通过关键字传入的参数。
    #    仅限关键字形参可通过在函数定义的形参列表中包含单个可变位置形参或者在多个可变位置形参之前放一个 * 来定义。
    # d: var-keyword，可变关键字，指定可以提供任意数量的关键字参数（附加在其他形参已接受的关键字参数之后）。
    #    这种形参可通过在形参名称前加缀 ** 来定义。
    print(a, b, c, d, type(d), sep=", ")

def function2(*e, **f):
    # e: var-positional，可变位置，指定可以提供由一个任意数量的位置参数构成的序列（附加在其他形参已接受的位置参数之后）。
    #    这种形参可通过在形参名称前加缀 * 来定义。
    print(e, type(e), f, type(f), sep=", ")
#         |a     |b   |c         |d                  --d|
function1(False, "3", c=(3 * 2), anum=1, bnum=2, what="?")
#         |e       --e|  |f    --f|
function2("a", 3.5, "#", ag=1, bc=2)


# 形参（形式参数）和实参（实际参数）
def func3(sep=" ", *word):  # 参数为 形参
    # 形参 是指出现在函数定义中的名称，而 实参 则是在调用函数时实际传入的值。形参定义了一个函数能接受何种类型的实参。
    for i in word:
        print(i, end=sep)
    print("\b\n")
func3(',', 'a', 'b', 'c')  # 参数为 实参


# 标注形参和返回值
def do_math(num1: int, *num2: float) -> float:
    # 形参可以带有标注，其形式为在形参名称后加上 ": expression"。
    # 任何形参都可以带有标注，甚至 *identifier 或 **identifier 这样的形参也可以。
    # 函数可以带有“返回”标注，其形式为在形参列表后加上 "-> expression"。
    # 这些标注可以是任何有效的 Python 表达式。标注的存在不会改变函数的语义。
    addnum = 0
    for i in num2:
        addnum += i
    num = num1 ** num1 + addnum
    return num
print(do_math(2, 3.1, 4.2, 18.3))


# 参考文档：docs.python.org/zh-cn