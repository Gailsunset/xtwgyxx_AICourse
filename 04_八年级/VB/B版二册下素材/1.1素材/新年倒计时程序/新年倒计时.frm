VERSION 5.00
Begin VB.Form Formjishiqi 
   BackColor       =   &H000000FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "���굹��ʱ"
   ClientHeight    =   3720
   ClientLeft      =   30
   ClientTop       =   360
   ClientWidth     =   6225
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "���굹��ʱ.frx":0000
   ScaleHeight     =   3720
   ScaleWidth      =   6225
   StartUpPosition =   1  '����������
   Begin VB.Timer Timerjishi 
      Interval        =   1000
      Left            =   360
      Top             =   5040
   End
   Begin VB.Label Labmiao 
      BackStyle       =   0  'Transparent
      Caption         =   "��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   3600
      TabIndex        =   2
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Label Labtishi 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "���µ�һ�굽������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   855
      Left            =   600
      TabIndex        =   1
      Top             =   120
      Width           =   4935
   End
   Begin VB.Label Labshuzi 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "����"
         Size            =   80.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   2775
      Left            =   1080
      TabIndex        =   0
      Top             =   840
      Width           =   2055
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "Formjishiqi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim t As Integer

Private Sub Form_Load()
t = 10
End Sub
Private Sub Timerjishi_Timer()  '����Ԥ��1��ļ�ʱ��
    LabNum.Caption = t   '��ʾʱ�����t��ֵ
    If t >= 0 Then
       Timer.Enabled = True   '��ʱ��ֹͣ��ʱ
       t = t - 1 '���ֵݼ�1
    Else
       Timer.Enabled = False  '��ʱ��ֹͣ��ʱ
    End If
End Sub
