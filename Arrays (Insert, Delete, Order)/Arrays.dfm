object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnGenerate: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Generate'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnGenerateClick
  end
  object btnDelete: TBitBtn
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Delete'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = btnDeleteClick
  end
  object seInput: TSpinEdit
    Left = 104
    Top = 8
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object edtInput: TEdit
    Left = 104
    Top = 70
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnInsert: TBitBtn
    Left = 8
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Insert'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = btnInsertClick
  end
  object redOut: TRichEdit
    Left = 231
    Top = 8
    Width = 208
    Height = 186
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 112
    Width = 217
    Height = 82
    Caption = 'Sort Arrays'
    TabOrder = 6
    object rdAscending: TRadioButton
      Left = 96
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Ascending'
      TabOrder = 0
    end
    object rdDescending: TRadioButton
      Left = 96
      Top = 55
      Width = 113
      Height = 17
      Caption = 'Descending'
      TabOrder = 1
    end
    object btnSort: TBitBtn
      Left = 15
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Sort'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
end
