VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "兔子跑"
   ClientHeight    =   6855
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12270
   LinkTopic       =   "Form1"
   Picture         =   "逐帧动画.frx":0000
   ScaleHeight     =   6855
   ScaleWidth      =   12270
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdStop 
      Caption         =   "停止"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   13.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   2760
      TabIndex        =   4
      Top             =   6120
      Width           =   1572
   End
   Begin VB.OptionButton optFast 
      Caption         =   "快速"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   13.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   348
      Left            =   10680
      TabIndex        =   3
      Top             =   6120
      Width           =   1092
   End
   Begin VB.OptionButton optMid 
      Caption         =   "中速"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   13.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   348
      Left            =   9120
      TabIndex        =   2
      Top             =   6120
      Width           =   1092
   End
   Begin VB.OptionButton optSlow 
      Caption         =   "慢速"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   13.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   348
      Left            =   7560
      TabIndex        =   1
      Top             =   6120
      Width           =   1092
   End
   Begin VB.CommandButton cmdStart 
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
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   6120
      Width           =   1575
   End
   Begin VB.Timer tmrRun 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   8280
      Top             =   3240
   End
   Begin VB.Image imgRabbit 
      Height          =   1092
      Left            =   11040
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   1092
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer
Private Sub Form_Load()
   a = 1
End Sub
Private Sub cmdStart_Click()
  tmrRun.Enabled = True
End Sub

Private Sub cmdStop_Click()
    tmrRun.Enabled = False
End Sub
Private Sub optFast_Click()
   tmrRun.Interval = 100
End Sub

Private Sub optMid_Click()
   tmrRun.Interval = 300
End Sub

Private Sub optSlow_Click()
 tmrRun.Interval = 500
End Sub

Private Sub tmrRun_Timer()
     If a = 1 Then
    imgRabbit.Picture = LoadPicture(App.Path & "\pic\1.gif")
    a = 2
  Else
    imgRabbit.Picture = LoadPicture(App.Path & "\pic\2.gif")
    a = 1
  End If
  imgRabbit.Left = imgRabbit.Left - 200
  If imgRabbit.Left < 0 Then imgRabbit.Left = 11160
 End Sub
