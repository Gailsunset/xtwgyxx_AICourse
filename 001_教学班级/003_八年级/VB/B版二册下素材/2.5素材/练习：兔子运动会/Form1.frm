VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0000C000&
   Caption         =   "小兔运动会"
   ClientHeight    =   6240
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11970
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":08CA
   ScaleHeight     =   6240
   ScaleWidth      =   11970
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   8760
      Top             =   1320
   End
   Begin VB.CommandButton re 
      Caption         =   "再来一次"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   13.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   8280
      TabIndex        =   1
      Top             =   360
      Width           =   1452
   End
   Begin VB.CommandButton ss 
      Caption         =   "开始"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   13.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   6600
      TabIndex        =   0
      Top             =   360
      Width           =   1212
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   8280
      Top             =   1320
   End
   Begin VB.Image rab2 
      Height          =   972
      Left            =   10560
      Picture         =   "Form1.frx":34C2B
      Stretch         =   -1  'True
      Top             =   3240
      Width           =   1092
   End
   Begin VB.Image rab1 
      Height          =   972
      Left            =   10560
      Picture         =   "Form1.frx":355F5
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   1212
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   6
      X1              =   10560
      X2              =   10560
      Y1              =   3240
      Y2              =   6240
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer
Dim step1 As Integer
Dim step2 As Integer
Private Sub Form_Load()
a = 0
End Sub
'重新开始时将重新初始化速度
Private Sub re_Click()
  Timer1.Enabled = False
  Timer2.Enabled = False
  a = 0
  step1 = Int(Rnd * (300 - 100 + 1) + 100)
  step2 = Int(Rnd * (300 - 100 + 1) + 100)
  rab1.Left = 10680 '重新设置起点
  rab2.Left = 10680
End Sub

Private Sub ss_Click()
  If ss.Caption = "开始" Then
     ss.Caption = "停止"
     step1 = Int(Rnd * (300 - 100 + 1) + 100)
     step2 = Int(Rnd * (300 - 100 + 1) + 100)
     Timer1.Enabled = True
     Timer2.Enabled = True
  Else
     ss.Caption = "开始"
     Timer1.Enabled = False
     Timer2.Enabled = False
  End If
End Sub

Private Sub Timer1_Timer()
'将这8张图片加载到1号小兔
  Select Case a
    Case 0
      rab1.Picture = LoadPicture(App.Path & "\pic\cc01.gif")
    Case 1
      rab1.Picture = LoadPicture(App.Path & "\pic\cc02.gif")
    Case 2
      rab1.Picture = LoadPicture(App.Path & "\pic\cc03.gif")
    Case 3
      rab1.Picture = LoadPicture(App.Path & "\pic\cc04.gif")
    Case 4
      rab1.Picture = LoadPicture(App.Path & "\pic\cc05.gif")
    Case 5
      rab1.Picture = LoadPicture(App.Path & "\pic\cc06.gif")
    Case 6
      rab1.Picture = LoadPicture(App.Path & "\pic\cc07.gif")
    Case 7
      rab1.Picture = LoadPicture(App.Path & "\pic\cc08.gif")
    Case Else
      a = 0
  End Select
  a = a + 1
  If rab1.Left > 0 Then
     rab1.Left = rab1.Left - step1
  Else
     Timer1.Enabled = False
     MsgBox "1号小兔胜出！"
     ss.Caption = "开始"
     Timer1.Enabled = False
     Timer2.Enabled = False
     rab1.Left = 10680 '重新设置起点
     rab2.Left = 10680
  End If
End Sub

Private Sub Timer2_Timer()
  Select Case a
    Case 0
      rab2.Picture = LoadPicture(App.Path & "\pic\cc01.gif")
    Case 1
      rab2.Picture = LoadPicture(App.Path & "\pic\cc02.gif")
    Case 2
      rab2.Picture = LoadPicture(App.Path & "\pic\cc03.gif")
    Case 3
      rab2.Picture = LoadPicture(App.Path & "\pic\cc04.gif")
    Case 4
      rab2.Picture = LoadPicture(App.Path & "\pic\cc05.gif")
    Case 5
      rab2.Picture = LoadPicture(App.Path & "\pic\cc06.gif")
    Case 6
      rab2.Picture = LoadPicture(App.Path & "\pic\cc07.gif")
    Case 7
      rab2.Picture = LoadPicture(App.Path & "\pic\cc08.gif")
    Case Else
      a = 0
  End Select
  a = a + 1
  If rab2.Left > 0 Then
     rab2.Left = rab2.Left - step2
  Else
     Timer2.Enabled = False
     MsgBox "2号小兔胜出！"
     ss.Caption = "开始"
     Timer1.Enabled = False
     Timer2.Enabled = False
     rab1.Left = 10680 '重新设置起点
     rab2.Left = 10680
  End If
End Sub
