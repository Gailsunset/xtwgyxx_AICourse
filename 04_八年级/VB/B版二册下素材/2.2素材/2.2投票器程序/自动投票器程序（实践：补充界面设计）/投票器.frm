VERSION 5.00
Begin VB.Form tpq 
   BackColor       =   &H00004000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "投票器"
   ClientHeight    =   4110
   ClientLeft      =   -15
   ClientTop       =   390
   ClientWidth     =   5580
   Icon            =   "投票器.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4110
   ScaleWidth      =   5580
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton commandboy 
      Caption         =   "请给小黄投票"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   3360
      Width           =   1335
   End
   Begin VB.Label bt 
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
      Left            =   1200
      TabIndex        =   2
      Top             =   0
      Width           =   2895
   End
   Begin VB.Image boy 
      Height          =   1095
      Left            =   600
      Picture         =   "投票器.frx":08CA
      Stretch         =   -1  'True
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label labelboy 
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
      Left            =   600
      TabIndex        =   1
      Top             =   2880
      Width           =   1335
   End
End
Attribute VB_Name = "tpq"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

  Dim s1 As Integer
Private Sub Commandboy_Click()
  s1 = s1 + 1
  labelboy.Caption = s1
  boy.Top = boy.Top - 100
End Sub

