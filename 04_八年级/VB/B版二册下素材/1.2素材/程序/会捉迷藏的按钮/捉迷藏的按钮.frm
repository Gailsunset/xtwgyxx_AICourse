VERSION 5.00
Begin VB.Form formshijian 
   Caption         =   "��׽�Բصİ�ť"
   ClientHeight    =   1740
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4890
   BeginProperty Font 
      Name            =   "����"
      Size            =   14.25
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   1740
   ScaleWidth      =   4890
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Comtinghua 
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   3495
   End
End
Attribute VB_Name = "formshijian"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    formshijian.BackColor = vbBlue    '���ô���ı�������Ϊ��ɫ
    formshijian.Caption = "��׽�Բصİ�ť"   '���ô���ı�������
    Comtinghua.Caption = "�����İ�ť����������ʱ��û�ˣ�˫������ʱ�Ҿͳ���������������"  '���ð�ť�ı�������
End Sub

Private Sub Form_Click()
    Comtinghua.Visible = False  '���ذ�ť
End Sub

Private Sub Form_DblClick()
     Comtinghua.Visible = True   '��ʾ��ť
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
 formshijian.BackColor = vbRed   '���̰���ʱ������ɫ
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
     formshijian.BackColor = vbGreen  '����̧��ʱ�������ɫ
End Sub

