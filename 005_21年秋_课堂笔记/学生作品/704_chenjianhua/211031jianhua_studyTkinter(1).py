import tkinter as tk
from tkinter import ttk

root = tk.Tk()  # 定义
root.geometry('960x540')  # 一种定义窗口长宽的方式（长x宽）
root.title('Test program')  # 窗口标题

# 后面程序要用的各函数
all = []
def _print(*thing):
    all.append(thing)
    print(thing)
def clickPrint1():
    _print('Hello, you clicked button 1.')
def clickPrint2():
    _print('Hello, you clicked button 2.')
def entryPrint():
    _print('Entry get: ' + entry.get())
choice1 = tk.StringVar()
def choicePrint1():
    _print(choice1.get())
choice2 = tk.StringVar()
def choicePrint2():
    _print(choice2.get())
choice3 = tk.StringVar()
def choicePrint3():
    _print(choice3.get())
def moreChoicePrint():
    choicePrint2()
    choicePrint3()
def comboPrint():
    _print(combo.get())
def windowSeeOut():
    window = tk.Toplevel()
    window.geometry('200x300')
    window.title('Outputs')

    scrollY = tk.Scrollbar(window, orient=tk.VERTICAL)
    scrollY.pack(side=tk.RIGHT, fill=tk.Y)
    scrollX = tk.Scrollbar(window, orient=tk.HORIZONTAL)
    scrollX.pack(side=tk.BOTTOM, fill=tk.X)

    alldatas = tk.Listbox(window, font=('Microsoft YaHei UI light', 14),
                          xscrollcommand=scrollX.set, yscrollcommand=scrollY.set)
    num = 1
    for i in all:
        i = str(i)
        alldatas.insert(num, i)
        num += 1
    scrollX.config(command=alldatas.xview)
    scrollY.config(command=alldatas.yview)
    alldatas.pack(padx=5, pady=5, fill=tk.BOTH, expand=True)
    window.mainloop()


# 定义框架
centerFrame = tk.Frame(root, height=2)
centerFrame.pack()
leftFrame = tk.Frame(root, height=2)
leftFrame.pack(side=tk.LEFT)
rightFrame = tk.Frame(root, height=2)
rightFrame.pack(side=tk.RIGHT)

# 定义标签（文本输出）
centerLabel = tk.Label(centerFrame, text='Hello,world!', font=('Microsoft YaHei UI', 18),
                       justify=tk.CENTER)
centerLabel.pack()
leftLabel = tk.Label(leftFrame, text='Left', font=('Microsoft YaHei Light', 16),
                     justify=tk.CENTER)
leftLabel.pack()
leftLabel = tk.Label(rightFrame, text='Right', font=('Microsoft YaHei Light', 16),
                     justify=tk.CENTER)
leftLabel.pack()

# 定义按钮
leftButton = tk.Button(leftFrame, bg='#eeeeee', fg='#00aaaa',
                       activebackground='#aaaaaa', activeforeground='#006666',
                       text='Click me!', command=clickPrint1,
                       font=('Microsoft YaHei UI light', 14, 'underline'),
                       padx=20, pady=5)
leftButton.pack()
rightButton = tk.Button(rightFrame, bg='#eeeeee', fg='#aa00aa',
                        activebackground='#aaaaaa', activeforeground='#660066',
                        text='Click me!', command=clickPrint2,
                        font=('Microsoft YaHei light', 14, 'underline'),
                        padx=20, pady=5)
rightButton.pack()
outButton = tk.Button(centerFrame, bg='#eeeeee', fg='#ff0000',
                      activebackground='#aaaaaa', activeforeground='#d000d0',
                      text='Show output', command=windowSeeOut,
                      font=('Microsoft YaHei light', 14),)
outButton.pack(padx=20, pady=5)

# 定义输入入口
entry = tk.Entry(centerFrame, bg='#eeeeee', fg='#ff0000', font=('Microsoft YaHei light', 14),
                 highlightcolor='#ff2222', selectforeground='#ee2222', show='#',
                 width=35, exportselection=0, justify='center', relief=tk.SUNKEN,
                 )
entry.pack(padx=5, pady=5)
printEntry = tk.Button(centerFrame, bg='#eeeeee', fg='#ff0000',
                       activebackground='#aaaaaa', activeforeground='#ee2222',
                       text='Show entry', command=entryPrint,
                       font=('Microsoft YaHei light', 14), padx=5)  # 按钮输出输入内容
printEntry.pack(padx=5, pady=5)

# 单选按钮
# 各单选按钮组件使用同一个记录变量时就能实现控制单选。
# 可以设置按钮对选项进行处理，也可以像此处设置command在被选中时进行操作。
# # 程序有报错
radioButton1 = tk.Radiobutton(leftFrame, bg='#eeeeee', fg='#f000f0', font=('Microsoft YaHei UI Light', 14),
                              activebackground='#aaaaaa', activeforeground='#d000d0', highlightcolor='#da00da',
                              text='1', variable=choice1, value='1', command=choicePrint1)
radioButton1.pack()
radioButton2 = tk.Radiobutton(leftFrame, bg='#eeeeee', fg='#f000f0', font=('Microsoft YaHei UI Light', 14),
                              activebackground='#aaaaaa', activeforeground='#d000d0', highlightcolor='#da00da',
                              text='2', variable=choice1, value='2', command=choicePrint1)
radioButton2.pack()

# 多选按钮
checkBotton1 = tk.Checkbutton(rightFrame, bg='#eeeeee', fg='#f000f0', font=('Microsoft YaHei UI Light', 14),
                              activebackground='#aaaaaa', activeforeground='#d000d0', highlightcolor='#da00da',
                              text='a', variable=choice2)
checkBotton1.pack(pady=5)
checkBotton2 = tk.Checkbutton(rightFrame, bg='#eeeeee', fg='#f000f0', font=('Microsoft YaHei UI Light', 14),
                              activebackground='#aaaaaa', activeforeground='#d000d0', highlightcolor='#da00da',
                              text='b', variable=choice3)
checkBotton2.pack(pady=5)
printCheck = tk.Button(rightFrame, bg='#eeeeee', fg='#ff0000',
                       activebackground='#aaaaaa', activeforeground='#d000d0',
                       text='Show choice', command=moreChoicePrint,
                       font=('Microsoft YaHei light', 14), padx=5)
printCheck.pack()

# 组合框
comboList = ['apple', 'boy', 'cat', 'dog']
combo = ttk.Combobox(centerFrame, font=('Microsoft YaHei UI', 14), values=comboList)
combo.pack(padx=5, pady=5)
printCombo = tk.Button(centerFrame, bg='#eeeeee', fg='#ff0000',
                       activebackground='#aaaaaa', activeforeground='#d000d0',
                       text='Show combo', command=comboPrint,
                       font=('Microsoft YaHei light', 14), padx=5)
printCombo.pack(padx=5, pady=5)

root.mainloop()  # 触发 GUI