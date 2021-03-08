VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFC0FF&
   Caption         =   "抽奖"
   ClientHeight    =   4680
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   7920
   LinkTopic       =   "Form1"
   ScaleHeight     =   4680
   ScaleWidth      =   7920
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox TextName 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   615
      Index           =   2
      Left            =   800
      TabIndex        =   7
      Top             =   3600
      Width           =   2722
   End
   Begin VB.TextBox TextName 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   615
      Index           =   1
      Left            =   800
      TabIndex        =   6
      Top             =   2760
      Width           =   2722
   End
   Begin VB.TextBox TextName 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   615
      Index           =   0
      Left            =   800
      TabIndex        =   2
      Top             =   1920
      Width           =   2722
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "抽奖"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   4080
      TabIndex        =   1
      Top             =   720
      Width           =   1092
   End
   Begin VB.TextBox TextBingo 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   612
      Left            =   800
      TabIndex        =   0
      Top             =   720
      Width           =   2772
   End
   Begin VB.Label Label3 
      Caption         =   "请在此填写第三个员工的姓名"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3840
      TabIndex        =   5
      Top             =   3720
      Width           =   3375
   End
   Begin VB.Label Label2 
      Caption         =   "请在此填写第二个员工的姓名"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3840
      TabIndex        =   4
      Top             =   2880
      Width           =   3375
   End
   Begin VB.Label Label1 
      Caption         =   "请在此填写第一个员工的姓名"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3840
      TabIndex        =   3
      Top             =   2040
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdStart_Click()
  Randomize
  TextBingo.Text = TextName(Int(Rnd * 3)).Text
End Sub
