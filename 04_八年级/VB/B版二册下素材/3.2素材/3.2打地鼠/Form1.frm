VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0080FF80&
   ClientHeight    =   3192
   ClientLeft      =   60
   ClientTop       =   348
   ClientWidth     =   7596
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   3192
   ScaleWidth      =   7596
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command4 
      BackColor       =   &H00FFC0C0&
      Caption         =   "��������"
      Height          =   495
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   720
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0E0FF&
      Caption         =   "�˳�"
      Height          =   615
      Left            =   5520
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0E0FF&
      Caption         =   "����"
      Height          =   615
      Left            =   4320
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "��½"
      Height          =   615
      Left            =   3120
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   4320
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1440
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4320
      TabIndex        =   2
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "������"
         Size            =   15.6
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   1
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "�û���"
      BeginProperty Font 
         Name            =   "������"
         Size            =   15.6
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      TabIndex        =   0
      Top             =   840
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "107" And Text2.Text = "111" Then
Form1.Hide
Form2.Show
Else
MsgBox "�������,����������"
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Command4_Click()
MsgBox "��½��107  ����111"
End Sub

Private Sub Command5_Click()
End Sub

