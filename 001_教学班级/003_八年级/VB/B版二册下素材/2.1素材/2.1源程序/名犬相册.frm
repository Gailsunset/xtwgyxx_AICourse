VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "名犬相册"
   ClientHeight    =   4524
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   5940
   Icon            =   "名犬相册.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "名犬相册.frx":08CA
   ScaleHeight     =   4524
   ScaleWidth      =   5940
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton CmdQuit 
      Caption         =   "退出"
      Height          =   492
      Left            =   4200
      TabIndex        =   3
      Top             =   3960
      Width           =   1092
   End
   Begin VB.CommandButton CmdJww 
      Caption         =   "吉娃娃"
      Height          =   492
      Left            =   2880
      TabIndex        =   2
      Top             =   3960
      Width           =   1092
   End
   Begin VB.CommandButton CmdBmq 
      Caption         =   "博美犬"
      Height          =   492
      Left            =   1560
      TabIndex        =   1
      Top             =   3960
      Width           =   1092
   End
   Begin VB.CommandButton CmdHsq 
      Caption         =   "哈士奇"
      Height          =   492
      Left            =   240
      TabIndex        =   0
      Top             =   3960
      Width           =   1092
   End
   Begin VB.Image ImgDog 
      Height          =   3012
      Left            =   960
      Stretch         =   -1  'True
      Top             =   360
      Width           =   3732
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CmdHsq_Click()
ImgDog.Picture = LoadPicture(App.Path & "\pic\hsq.jpg")
End Sub
Private Sub CmdBmq_Click()
ImgDog.Picture = LoadPicture(App.Path & "\pic\bmq.jpg")
End Sub

Private Sub CmdJww_Click()
ImgDog.Picture = LoadPicture(App.Path & "\pic\jww.jpg")
End Sub


Private Sub CmdQuit_Click()
End
End Sub
