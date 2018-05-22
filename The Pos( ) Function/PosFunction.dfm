object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 105
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnConvert: TBitBtn
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Convert'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = btnConvertClick
  end
  object memOut: TMemo
    Left = 221
    Top = 8
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object edtInput: TEdit
    Left = 8
    Top = 8
    Width = 201
    Height = 21
    TabOrder = 2
    TextHint = 'Name#Surname#Age'
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 66
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
  end
end
