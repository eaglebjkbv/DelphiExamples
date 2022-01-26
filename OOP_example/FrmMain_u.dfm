object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 367
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 35
    Width = 13
    Height = 13
    Caption = 'Ad'
  end
  object Label2: TLabel
    Left = 8
    Top = 62
    Width = 17
    Height = 13
    Caption = 'Ya'#351
  end
  object Edit1: TEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 48
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 48
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Ekle'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 48
    Top = 144
    Width = 201
    Height = 129
    ItemHeight = 13
    TabOrder = 3
  end
  object Göster: TButton
    Left = 174
    Top = 279
    Width = 75
    Height = 25
    Caption = 'G'#246'ster'
    TabOrder = 4
    OnClick = GösterClick
  end
end
