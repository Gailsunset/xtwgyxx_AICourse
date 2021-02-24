VERSION 5.00
Begin VB.Form FormJiShiQi 
   BackColor       =   &H000000FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "新年倒计时"
   ClientHeight    =   3996
   ClientLeft      =   36
   ClientTop       =   360
   ClientWidth     =   6576
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "新年倒计时.frx":0000
   ScaleHeight     =   3996
   ScaleWidth      =   6576
   StartUpPosition =   1  '所有者中心
   Begin VB.Timer TimerJiShi 
      Interval        =   1000
      Left            =   840
      Top             =   1080
   End
   Begin VB.Label LabMiao 
      BackStyle       =   0  'Transparent
      Caption         =   "秒"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   3600
      TabIndex        =   2
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Label LabTiShi 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "距新的一年到来还有"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.4
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   855
      Left            =   600
      TabIndex        =   1
      Top             =   120
      Width           =   4935
   End
   Begin VB.Label LabShuZi 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "10"
      BeginProperty Font 
         Name            =   "黑体"
         Size            =   80.4
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1935
      Left            =   960
      TabIndex        =   0
      Top             =   960
      Width           =   2175
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "FormJiShiQi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim t As Integer

Private Sub Form_Load()
  LabShuZi.Caption = ""             '清空显示的内容
  t = 10                            '设置时间变量t的初值
End Sub

Private Sub TimerJiShi_Timer()
   LabShuZi.Caption = t              '显示时间变量t的当前值
   If t > 0 Then
         t = t - 1                   '时间变量t的值递减1
      Else
        TimerJiShi.Enabled = False  '计时器停止计时
      End If
End Sub
