VERSION 5.00
Begin VB.Form mtank 
   BackColor       =   &H00008000&
   Caption         =   "移动的坦克"
   ClientHeight    =   4980
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8115
   Icon            =   "移动的坦克.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4980
   ScaleWidth      =   8115
   StartUpPosition =   3  '窗口缺省
   Begin VB.PictureBox Picgrand 
      BackColor       =   &H80000005&
      Height          =   4212
      Left            =   360
      ScaleHeight     =   4155
      ScaleWidth      =   6915
      TabIndex        =   0
      Top             =   240
      Width           =   6972
      Begin VB.Image Imgtank 
         Height          =   1120
         Left            =   2640
         Picture         =   "移动的坦克.frx":08CA
         Stretch         =   -1  'True
         Top             =   1800
         Width           =   1120
      End
   End
End
Attribute VB_Name = "mtank"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Picgrand_KeyDown(KeyCode As Integer, Shift As Integer)


   Select Case KeyCode
     Case 37
        Imgtank.Picture = LoadPicture(App.Path & "\pic\tankleft.jpg")
        Imgtank.Left = Imgtank.Left - 20
     Case 39
        Imgtank.Picture = LoadPicture(App.Path & "\pic\tankright.jpg")
        Imgtank.Left = Imgtank.Left + 20
     Case 38
        Imgtank.Picture = LoadPicture(App.Path & "\pic\tankup.jpg")
        Imgtank.Top = Imgtank.Top - 20
     Case 40
        Imgtank.Picture = LoadPicture(App.Path & "\pic\tankdown.jpg")
        Imgtank.Top = Imgtank.Top + 20
    End Select
    
End Sub

