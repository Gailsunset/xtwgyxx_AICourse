VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "简单记事本"
   ClientHeight    =   6810
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8835
   LinkTopic       =   "Form1"
   ScaleHeight     =   6810
   ScaleWidth      =   8835
   StartUpPosition =   3  '窗口缺省
   Begin VB.Frame color 
      Caption         =   "颜色"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   5880
      TabIndex        =   3
      Top             =   4920
      Width           =   2800
      Begin VB.OptionButton optBlack 
         Caption         =   "黑色"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   12
         Top             =   1240
         Width           =   1000
      End
      Begin VB.OptionButton optBlue 
         Caption         =   "蓝色"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   11
         Top             =   820
         Width           =   1000
      End
      Begin VB.OptionButton optRed 
         Caption         =   "红色"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   10
         Top             =   360
         Width           =   1000
      End
   End
   Begin VB.Frame size 
      Caption         =   "字号"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   3000
      TabIndex        =   2
      Top             =   4920
      Width           =   2800
      Begin VB.OptionButton opt16 
         Caption         =   "16"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   9
         Top             =   1240
         Width           =   1000
      End
      Begin VB.OptionButton opt12 
         Caption         =   "12"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   8
         Top             =   820
         Width           =   1000
      End
      Begin VB.OptionButton opt8 
         Caption         =   "8"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   7
         Top             =   360
         Width           =   1000
      End
   End
   Begin VB.Frame type 
      Caption         =   "字型"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   120
      TabIndex        =   1
      Top             =   4920
      Width           =   2800
      Begin VB.CheckBox chkUnderline 
         Caption         =   "下划线"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   6
         Top             =   1240
         Width           =   1500
      End
      Begin VB.CheckBox chkItalic 
         Caption         =   "斜  体"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   5
         Top             =   820
         Width           =   1500
      End
      Begin VB.CheckBox chkBold 
         Caption         =   "粗  体"
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   1500
      End
   End
   Begin VB.TextBox note 
      Height          =   4815
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8830
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkBold_Click()
  note.FontBold = chkBold.Value
End Sub

Private Sub chkItalic_Click()
  note.FontItalic = chkItalic.Value
End Sub

Private Sub chkUnderline_Click()
  note.FontUnderline = chkUnderline.Value
End Sub

Private Sub opt12_Click()
  note.FontSize = opt12.Caption
End Sub

Private Sub opt16_Click()
  note.FontSize = opt16.Caption
End Sub

Private Sub opt8_Click()
  note.FontSize = opt8.Caption
End Sub

Private Sub optBlack_Click()
  note.ForeColor = vbBlack
End Sub

Private Sub optBlue_Click()
  note.ForeColor = vbBlue
End Sub

Private Sub optRed_Click()
  note.ForeColor = vbRed
End Sub

