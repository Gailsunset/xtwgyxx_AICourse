import tkinter as tk
from tkinter import ttk

root = tk.Tk()
root.title('Change page')
root.geometry("300x200")

def forButton():
    print("This is a button")

n = ttk.Notebook(root)
view1 = tk.Frame(n)
view1.grid(column=1, row=0, columnspan=3, rowspan=3, sticky=(tk.N, tk.S, tk.E, tk.W))
view2 = tk.Frame(n)
view2.grid(column=1, row=0, columnspan=3, rowspan=3, sticky=(tk.N, tk.S, tk.E, tk.W))

n.add(view1, text='One')
n.add(view2, text='Two')

texta = tk.Label(view1, font=('Microsoft YaHei light', 14), justify=tk.LEFT,
                 text="Hello,")
textb = tk.Label(view1, font=('Microsoft YaHei light', 14), justify=tk.CENTER,
                 text="This is a notebook from ttk.")
textc = tk.Label(view1, font=('Microsoft YaHei light', 14), justify=tk.RIGHT,
                 text="See me!")

button = tk.Button(view2, text="Special", font=('Microsoft YaHei light', 14),
                   command=forButton, justify=tk.CENTER)
button.grid(column=1, row=1, padx=5, pady=5)

texta.grid(column=0, row=0)
textb.grid(column=1, row=0, rowspan=3)
textc.grid(column=2, row=2)

n.pack()

root.mainloop()