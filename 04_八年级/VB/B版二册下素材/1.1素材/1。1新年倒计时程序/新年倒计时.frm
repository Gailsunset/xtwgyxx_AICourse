VERSION 5.00
Begin VB.Form FormJiShiQi 
   BackColor       =   &H000000FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "���굹��ʱ"
   ClientHeight    =   3990
   ClientLeft      =   30
   ClientTop       =   360
   ClientWidth     =   6585
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "���굹��ʱ.frx":0000
   ScaleHeight     =   3990
   ScaleWidth      =   6585
   StartUpPosition =   1  '����������
   Begin VB.Timer TimerJiShi 
      Interval        =   1000
      Left            =   840
      Top             =   1080
   End
   Begin VB.Label LabMiao 
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
   Begin VB.Label LabTiShi 
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
   Begin VB.Label LabShuZi 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "10"
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
      Height          =   1935
      Left            =   960
      TabIndex        =   0
      Top             =   960
      Width           =   2175
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
  LabShuZi.Caption = ""
  LabShuZi.Caption = 10  '����ʱ���ֵ
End Sub

Private Sub TimerJiShi_Timer()
  t = LabShuZi.Caption     '��ʾʱ�����t�ĳ�ֵ
      If t > 0 Then
         TimerJiShi.Enabled = True   '��ʱ����ʼ��ʱ
         t = t - 1                   '���ֵݼ�1
         LabShuZi.Caption = t
      Else
        TimerJiShi.Enabled = False  '��ʱ��ֹͣ��ʱ
      End If
End Sub
