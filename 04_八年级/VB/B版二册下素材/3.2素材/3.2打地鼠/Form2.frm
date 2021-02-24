VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00C0FFC0&
   Caption         =   "打地鼠"
   ClientHeight    =   6930
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7140
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MousePointer    =   99  'Custom
   ScaleHeight     =   6930
   ScaleWidth      =   7140
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton cmdStop 
      Caption         =   "退出"
      Height          =   612
      Left            =   6000
      TabIndex        =   3
      Top             =   5760
      Width           =   972
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   6960
      Top             =   6360
   End
   Begin VB.CommandButton cmdStart 
      BackColor       =   &H00C0C0FF&
      Caption         =   "开始"
      Height          =   492
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   5040
      Width           =   975
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   11
      Left            =   960
      MouseIcon       =   "Form2.frx":0000
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   10
      Left            =   4320
      MouseIcon       =   "Form2.frx":2CEA
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   9
      Left            =   720
      MouseIcon       =   "Form2.frx":59D4
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   1800
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   8
      Left            =   3360
      MouseIcon       =   "Form2.frx":86BE
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   7
      Left            =   4200
      MouseIcon       =   "Form2.frx":B3A8
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   6
      Left            =   2520
      MouseIcon       =   "Form2.frx":E092
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4440
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   5
      Left            =   1200
      MouseIcon       =   "Form2.frx":10D7C
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4440
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   4
      Left            =   3960
      MouseIcon       =   "Form2.frx":13A66
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   4440
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   3
      Left            =   3240
      MouseIcon       =   "Form2.frx":16750
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   2
      Left            =   2040
      MouseIcon       =   "Form2.frx":1943A
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   1
      Left            =   1560
      MouseIcon       =   "Form2.frx":1C124
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   1800
      Width           =   735
   End
   Begin VB.Image Image4 
      Height          =   615
      Index           =   0
      Left            =   2520
      MouseIcon       =   "Form2.frx":1EE0E
      MousePointer    =   99  'Custom
      Stretch         =   -1  'True
      Top             =   1800
      Width           =   735
   End
   Begin VB.Label sum 
      BackColor       =   &H00C0C0FF&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   6120
      TabIndex        =   2
      Top             =   1200
      Width           =   852
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "得分"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   372
      Left            =   6120
      TabIndex        =   1
      Top             =   600
      Width           =   852
   End
   Begin VB.Image ds 
      Height          =   612
      Left            =   2160
      MouseIcon       =   "Form2.frx":21AF8
      Picture         =   "Form2.frx":247E2
      Stretch         =   -1  'True
      Top             =   6960
      Visible         =   0   'False
      Width           =   612
   End
   Begin VB.Image em 
      Height          =   612
      Left            =   2880
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   612
   End
   Begin VB.Image Image1 
      Height          =   6735
      Left            =   120
      MouseIcon       =   "Form2.frx":27F8A
      MousePointer    =   99  'Custom
      Picture         =   "Form2.frx":2AC74
      Stretch         =   -1  'True
      Top             =   120
      Width           =   5655
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i, a, x As Integer

Private Sub cmdStart_Click()
Timer1.Enabled = True
End Sub

Private Sub cmdStop_Click()
End
End Sub

Private Sub Image4_Click(Index As Integer)
If Image4(Index).Picture = ds.Picture Then
  Image4(Index).Picture = em.Picture
  sum.Caption = sum.Caption + 1
End If
End Sub

Private Sub Timer1_Timer()
For i = 0 To 11
   Image4(i).Picture = em.Picture
Next i
For a = 0 To 4
   j = Int(Rnd * 12)
   Image4(j).Picture = ds.Picture
Next a
End Sub
