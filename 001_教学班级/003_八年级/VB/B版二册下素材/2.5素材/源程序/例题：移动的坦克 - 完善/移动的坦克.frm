VERSION 5.00
Begin VB.Form mtank 
   BackColor       =   &H00008000&
   Caption         =   "�ƶ���̹��"
   ClientHeight    =   4980
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8115
   Icon            =   "�ƶ���̹��.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4980
   ScaleWidth      =   8115
   StartUpPosition =   3  '����ȱʡ
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
         Picture         =   "�ƶ���̹��.frx":08CA
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
        '�ж�Ҫ�ƶ�������ߵ�λ���Ƿ񵽴���߽�
        If Imgtank.Left - 20 < 0 Then
           '�ִ���߽�
           Imgtank.Left = 0
        Else
           Imgtank.Left = Imgtank.Left - 20
        End If
     Case 39
        Imgtank.Picture = LoadPicture(App.Path & "\pic\tankright.jpg")
        '�ж�Ҫ�ƶ������ұߵ�λ���Ƿ񵽴��ұ߽�
        If (Imgtank.Left + Imgtank.Width) + 20 > Picgrand.Width Then
           '�ִ��ұ߽�
           Imgtank.Left = Picgrand.Width - Imgtank.Width
        Else
           Imgtank.Left = Imgtank.Left + 20
        End If
     Case 38
        Imgtank.Picture = LoadPicture(App.Path & "\pic\tankup.jpg")
        If Imgtank.Top - 20 < 0 Then
           Imgtank.Top = 0
        Else
           Imgtank.Top = Imgtank.Top - 20
        End If
     Case 40
        Imgtank.Picture = LoadPicture(App.Path & "\pic\tankdown.jpg")
        If (Imgtank.Top + Imgtank.Height) + 20 > Picgrand.Height Then
           Imgtank.Top = Picgrand.Height - Imgtank.Height
        Else
           Imgtank.Top = Imgtank.Top + 20
        End If
    End Select
    
    
End Sub

