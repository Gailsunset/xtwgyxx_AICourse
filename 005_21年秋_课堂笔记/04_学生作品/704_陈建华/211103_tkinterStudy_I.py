import tkinter as tk

root = tk.Tk()
root.title('Login')
root.geometry('300x150')

usnV = tk.StringVar()
usnV.set('')
pswV = tk.StringVar()
pswV.set('')
def Yes():
    yesw = tk.Toplevel()
    yesl = tk.Label(yesw, text="Yes", font=("等线", 16),
                    padx=5, pady=5)
    yesl.pack()
def No():
    now = tk.Toplevel()
    nol = tk.Label(now, text="No", font=("等线", 16),
                   padx=5, pady=5)
    nol.pack()
users = {'Jack': '123k', 'Mandy': '991'}
def login():
    try:
        if users[usnV.get()] == pswV.get():
            Yes()
        else:
            No()
    except:
        No()
def clear():
    usnV.set('')
    pswV.set('')
def quit():
    root.quit()


frame = tk.Frame(root, padx=5, pady=5, )
frame.pack()

allLabel = tk.Label(frame, text="Log in here", font=("等线", 14),
                    padx=5, pady=5)
allLabel.grid(row=0, column=0)
usern_Label = tk.Label(frame, text="Username:", font=("等线", 14),
                       padx=5, pady=5)
usern_Label.grid(row=1, column=0)
usern_Entry = tk.Entry(frame, font="等线Light", width=14, textvariable=usnV)
usern_Entry.grid(row=1, column=1)

psw_Label = tk.Label(frame, text="Password:", font=("等线", 14),
                     padx=5, pady=5)
psw_Label.grid(row=2, column=0)
psw_Entry = tk.Entry(frame, font="等线Light", width=14, fg="#ee0000",
                     textvariable=pswV, show="*")
psw_Entry.grid(row=2, column=1)
butF = tk.Frame(root)
butF.pack()
btnLog = tk.Button(butF, text='Log in', font=("等线", 11), command=login)
btnLog.grid(row=0, column=0, padx=5, pady=5)
btnCl = tk.Button(butF, text='Clear', font=("等线", 11), command=clear)
btnCl.grid(row=0, column=1, padx=5, pady=5)
btnOut = tk.Button(butF, text='Quit', font=("等线", 11), command=quit)
btnOut.grid(row=0, column=2, padx=5, pady=5)

root.mainloop()
