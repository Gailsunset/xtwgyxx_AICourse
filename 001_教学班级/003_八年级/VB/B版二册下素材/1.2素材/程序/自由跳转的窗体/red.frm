VERSION 5.00
Begin VB.Form formred 
   BackColor       =   &H000000FF&
   Caption         =   "我是窗体一（formred)"
   ClientHeight    =   2115
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4605
   LinkTopic       =   "Form1"
   ScaleHeight     =   2115
   ScaleWidth      =   4605
   StartUpPosition =   3  '窗口缺省
End
Attribute VB_Name = "formred"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
    formred.Visible = False
    formgreen.Visible = True
End Sub

