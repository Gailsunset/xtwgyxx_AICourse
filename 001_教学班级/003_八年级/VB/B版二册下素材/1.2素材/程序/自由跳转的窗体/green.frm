VERSION 5.00
Begin VB.Form formgreen 
   BackColor       =   &H00E0E0E0&
   Caption         =   "我是窗体二（Formgreen)"
   ClientHeight    =   2085
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4815
   LinkTopic       =   "Form2"
   ScaleHeight     =   2085
   ScaleWidth      =   4815
   StartUpPosition =   3  '窗口缺省
End
Attribute VB_Name = "formgreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
  formred.Visible = True
  formgreen.Visible = False
End Sub

Private Sub Form_Load()
  formgreen.BackColor = vbGreen
End Sub
