VERSION 5.00
Begin VB.Form tpq 
   BackColor       =   &H00004000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "投票器"
   ClientHeight    =   4815
   ClientLeft      =   -15
   ClientTop       =   390
   ClientWidth     =   5460
   Icon            =   "投票器.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4815
   ScaleWidth      =   5460
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton CommandGirl 
      Caption         =   "请给小红投票"
      Height          =   615
      Left            =   3360
      TabIndex        =   1
      Top             =   4200
      Width           =   1335
   End
   Begin VB.CommandButton commandBoy 
      Caption         =   "请给小黄投票"
      Height          =   615
      Left            =   840
      TabIndex        =   0
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Label Bt 
      BackStyle       =   0  'Transparent
      Caption         =   "终极PK投票"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   975
      Left            =   1440
      TabIndex        =   4
      Top             =   0
      Width           =   2895
   End
   Begin VB.Image ImgGirl 
      Height          =   975
      Left            =   3480
      Picture         =   "投票器.frx":08CA
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Image ImgBoy 
      Height          =   975
      Left            =   840
      Picture         =   "投票器.frx":EA34
      Stretch         =   -1  'True
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label LabelGirl 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BeginProperty Font 
         Name            =   "黑体"
         Size            =   25.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   3360
      TabIndex        =   3
      Top             =   3720
      Width           =   1305
   End
   Begin VB.Label LabelBoy 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BeginProperty Font 
         Name            =   "黑体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   840
      TabIndex        =   2
      Top             =   3720
      Width           =   1305
   End
End
Attribute VB_Name = "tpq"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim s1, s2 As Integer
Private Sub CommandBoy_Click()
  s1 = s1 + 1
  LabelBoy.Caption = s1
  ImgBoy.Top = ImgBoy.Top - 100
End Sub
Private Sub CommandGirl_Click()
  s2 = s2 + 1
  LabelGirl.Caption = s2
  ImgGirl.Top = ImgGirl.Top - 100
End Sub


