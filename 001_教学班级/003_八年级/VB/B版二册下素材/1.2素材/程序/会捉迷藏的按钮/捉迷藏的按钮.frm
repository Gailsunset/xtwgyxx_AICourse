VERSION 5.00
Begin VB.Form formshijian 
   Caption         =   "会捉迷藏的按钮"
   ClientHeight    =   1740
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4890
   BeginProperty Font 
      Name            =   "宋体"
      Size            =   14.25
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   1740
   ScaleWidth      =   4890
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Comtinghua 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   3495
   End
End
Attribute VB_Name = "formshijian"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    formshijian.BackColor = vbBlue    '设置窗体的背景属性为蓝色
    formshijian.Caption = "会捉迷藏的按钮"   '设置窗体的标题属性
    Comtinghua.Caption = "听话的按钮“单击窗体时我没了，双击窗体时我就出来，不信你试试"  '设置按钮的标题属性
End Sub

Private Sub Form_Click()
    Comtinghua.Visible = False  '隐藏按钮
End Sub

Private Sub Form_DblClick()
     Comtinghua.Visible = True   '显示按钮
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
 formshijian.BackColor = vbRed   '键盘按下时窗体变红色
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
     formshijian.BackColor = vbGreen  '键盘抬起时窗体变绿色
End Sub

