object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 286
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 61
    Width = 209
    Height = 212
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 24
      Width = 40
      Height = 30
      Caption = #172
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 64
      Top = 24
      Width = 40
      Height = 30
      Caption = 'C'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 110
      Top = 24
      Width = 40
      Height = 30
      Caption = '/'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 156
      Top = 24
      Width = 40
      Height = 30
      Caption = '*'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button5: TButton
      Left = 16
      Top = 60
      Width = 40
      Height = 30
      Caption = '7'
      TabOrder = 4
      OnClick = Button13Click
    end
    object Button6: TButton
      Left = 64
      Top = 60
      Width = 40
      Height = 30
      Caption = '8'
      TabOrder = 5
      OnClick = Button13Click
    end
    object Button7: TButton
      Left = 110
      Top = 60
      Width = 40
      Height = 30
      Caption = '9'
      TabOrder = 6
      OnClick = Button13Click
    end
    object Button8: TButton
      Left = 156
      Top = 60
      Width = 40
      Height = 30
      Caption = '-'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button9: TButton
      Left = 16
      Top = 96
      Width = 40
      Height = 30
      Caption = '4'
      TabOrder = 8
      OnClick = Button13Click
    end
    object Button10: TButton
      Left = 64
      Top = 96
      Width = 40
      Height = 30
      Caption = '5'
      TabOrder = 9
      OnClick = Button13Click
    end
    object Button11: TButton
      Left = 110
      Top = 96
      Width = 40
      Height = 30
      Caption = '6'
      TabOrder = 10
      OnClick = Button13Click
    end
    object Button12: TButton
      Left = 156
      Top = 96
      Width = 40
      Height = 49
      Caption = '+'
      TabOrder = 11
      OnClick = Button3Click
    end
    object Button13: TButton
      Left = 16
      Top = 132
      Width = 40
      Height = 30
      Caption = '1'
      TabOrder = 12
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 64
      Top = 132
      Width = 40
      Height = 30
      Caption = '2'
      TabOrder = 13
      OnClick = Button13Click
    end
    object Button15: TButton
      Left = 110
      Top = 132
      Width = 40
      Height = 30
      Caption = '3'
      TabOrder = 14
      OnClick = Button13Click
    end
    object Button16: TButton
      Left = 156
      Top = 151
      Width = 40
      Height = 47
      Caption = '='
      TabOrder = 15
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 16
      Top = 168
      Width = 88
      Height = 30
      Caption = '0'
      TabOrder = 16
      OnClick = Button13Click
    end
    object Button18: TButton
      Left = 110
      Top = 168
      Width = 40
      Height = 30
      Caption = ','
      TabOrder = 17
      OnClick = Button18Click
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 14
    Width = 236
    Height = 41
    BorderStyle = bsSingle
    Enabled = False
    TabOrder = 1
    object Edit1: TEdit
      Left = -1
      Top = 0
      Width = 204
      Height = 17
      Alignment = taRightJustify
      BorderStyle = bsNone
      Enabled = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = -1
      Top = 17
      Width = 204
      Height = 17
      Alignment = taRightJustify
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
  end
  object BitBtn1: TBitBtn
    Left = 225
    Top = 61
    Width = 25
    Height = 212
    Glyph.Data = {
      82030000424D82030000000000003E0000002800000012000000D10000000100
      010000000000440300000000000000000000020000000000000000000000FFFF
      FF00FFFFC000FFFFC000FFFFC000FFFFC000F7FFC000F7FFC000F7FFC000F7FF
      C000F7FFC000F7FFC000F3FFC000F3FFC000F3FFC000F3FFC000F3FFC000F3FF
      C000F3FFC000F3FFC000F3FFC000F3FFC000F3FFC000F1FFC000F1FFC000F1FF
      C000F1FFC000F1FFC000F1FFC000F1FFC000F1FFC000F1FFC000F1FFC000F1FF
      C000F0FFC000F0FFC000F0FFC000F0FFC000F0FFC000F0FFC000F0FFC000F0FF
      C000F0FFC000F0FFC000F0FFC000F0FFC000F07FC000F07FC000F07FC000F07F
      C000F07FC000F07FC000F07FC000F07FC000F07FC000F07FC000F07FC000F03F
      C000F03FC000F03FC000F03FC000F03FC000F03FC000F03FC000F03FC000F03F
      C000F03FC000F03FC000F01FC000F01FC000F01FC000F01FC000F01FC000F01F
      C000F01FC000F01FC000F01FC000F01FC000F01FC000F00FC000F00FC000F00F
      C000F00FC000F00FC000F00FC000F00FC000F00FC000F00FC000F00FC000F003
      C000F003C000F003C000F003C000F003C000F003C000F003C000F003C000F003
      C000F001C000F001C000F001C000F001C000F001C000F001C000F001C000F001
      C000F001C000F001C000F001C000F001C000F001C000F001C000F001C000F001
      C000F001C000F001C000F003C000F003C000F003C000F003C000F003C000F003
      C000F003C000F003C000F00FC000F00FC000F00FC000F00FC000F00FC000F00F
      C000F00FC000F00FC000F00FC000F00FC000F00FC000F01FC000F01FC000F01F
      C000F01FC000F01FC000F01FC000F01FC000F01FC000F01FC000F01FC000F01F
      C000F01FC000F03FC000F03FC000F03FC000F03FC000F03FC000F03FC000F03F
      C000F03FC000F03FC000F03FC000F03FC000F07FC000F07FC000F07FC000F07F
      C000F07FC000F07FC000F07FC000F07FC000F07FC000F07FC000F07FC000F0FF
      C000F0FFC000F0FFC000F0FFC000F0FFC000F0FFC000F0FFC000F0FFC000F0FF
      C000F0FFC000F0FFC000F1FFC000F1FFC000F1FFC000F1FFC000F1FFC000F1FF
      C000F1FFC000F1FFC000F1FFC000F1FFC000F1FFC000F3FFC000F3FFC000F3FF
      C000F3FFC000F3FFC000F3FFC000F3FFC000F3FFC000F3FFC000F3FFC000F3FF
      C000F7FFC000F7FFC000F7FFC000F7FFC000F7FFC000F7FFC000F7FFC000FFFF
      C000FFFFC000}
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 253
    Top = 61
    Width = 25
    Height = 212
    Glyph.Data = {
      82030000424D82030000000000003E0000002800000012000000D10000000100
      010000000000440300000000000000000000020000000000000000000000FFFF
      FF00FFFFC000FFFFC000FFFFC000FFFFC000FFFBC000FFFBC000FFFBC000FFFB
      C000FFFBC000FFFBC000FFF3C000FFF3C000FFF3C000FFF3C000FFF3C000FFF3
      C000FFF3C000FFF3C000FFF3C000FFF3C000FFF3C000FFE3C000FFE3C000FFE3
      C000FFE3C000FFE3C000FFE3C000FFE3C000FFE3C000FFE3C000FFE3C000FFE3
      C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3
      C000FFC3C000FFC3C000FFC3C000FFC3C000FF83C000FF83C000FF83C000FF83
      C000FF83C000FF83C000FF83C000FF83C000FF83C000FF83C000FF83C000FF03
      C000FF03C000FF03C000FF03C000FF03C000FF03C000FF03C000FF03C000FF03
      C000FF03C000FF03C000FE03C000FE03C000FE03C000FE03C000FE03C000FE03
      C000FE03C000FE03C000FE03C000FE03C000FE03C000FC03C000FC03C000FC03
      C000FC03C000FC03C000FC03C000FC03C000FC03C000FC03C000FC03C000F003
      C000F003C000F003C000F003C000F003C000F003C000F003C000F003C000F003
      C000E003C000E003C000E003C000E003C000E003C000E003C000E003C000E003
      C000E003C000E003C000E003C000E003C000E003C000E003C000E003C000E003
      C000E003C000E003C000F003C000F003C000F003C000F003C000F003C000F003
      C000F003C000F003C000FC03C000FC03C000FC03C000FC03C000FC03C000FC03
      C000FC03C000FC03C000FC03C000FC03C000FC03C000FE03C000FE03C000FE03
      C000FE03C000FE03C000FE03C000FE03C000FE03C000FE03C000FE03C000FE03
      C000FE03C000FF03C000FF03C000FF03C000FF03C000FF03C000FF03C000FF03
      C000FF03C000FF03C000FF03C000FF03C000FF83C000FF83C000FF83C000FF83
      C000FF83C000FF83C000FF83C000FF83C000FF83C000FF83C000FF83C000FFC3
      C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3C000FFC3
      C000FFC3C000FFC3C000FFE3C000FFE3C000FFE3C000FFE3C000FFE3C000FFE3
      C000FFE3C000FFE3C000FFE3C000FFE3C000FFE3C000FFF3C000FFF3C000FFF3
      C000FFF3C000FFF3C000FFF3C000FFF3C000FFF3C000FFF3C000FFF3C000FFF3
      C000FFFBC000FFFBC000FFFBC000FFFBC000FFFBC000FFFBC000FFFBC000FFFF
      C000FFFFC000}
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object GroupBox2: TGroupBox
    Left = 256
    Top = 61
    Width = 65
    Height = 212
    TabOrder = 4
    object Button19: TButton
      Left = 12
      Top = 24
      Width = 40
      Height = 30
      Caption = #8730
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 12
      Top = 60
      Width = 40
      Height = 30
      Caption = 'sin'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 12
      Top = 96
      Width = 40
      Height = 30
      Caption = 'cos'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 12
      Top = 132
      Width = 40
      Height = 30
      Caption = 'tan'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 12
      Top = 168
      Width = 40
      Height = 30
      Caption = 'cot'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button23Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 328
    Top = 64
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer2Timer
    Left = 329
    Top = 117
  end
end
