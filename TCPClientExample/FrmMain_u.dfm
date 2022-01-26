object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 324
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Ba'#287'l'#305' De'#287'il'
  end
  object Label2: TLabel
    Left = 24
    Top = 183
    Width = 68
    Height = 13
    Caption = 'Gelen Cevap :'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 30
    Height = 13
    Caption = 'Komut'
  end
  object Label4: TLabel
    Left = 175
    Top = 96
    Width = 73
    Height = 13
    Caption = 'Register Adresi'
  end
  object Label5: TLabel
    Left = 254
    Top = 96
    Width = 29
    Height = 13
    Caption = 'De'#287'er'
  end
  object Label6: TLabel
    Left = 24
    Top = 16
    Width = 53
    Height = 13
    Caption = 'Ip Adress :'
  end
  object Edit1: TEdit
    Left = 24
    Top = 32
    Width = 25
    Height = 21
    TabOrder = 0
    Text = '127'
  end
  object Edit2: TEdit
    Left = 55
    Top = 32
    Width = 26
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Edit3: TEdit
    Left = 87
    Top = 32
    Width = 26
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edit4: TEdit
    Left = 119
    Top = 32
    Width = 28
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object Button1: TButton
    Left = 153
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Ba'#287'lan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 30
    Width = 75
    Height = 25
    Caption = 'Ba'#287'lant'#305' Kes'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 152
    Width = 75
    Height = 25
    Caption = 'G'#246'nder'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 115
    Width = 145
    Height = 21
    TabOrder = 7
    Text = '03-Read Holding Register'
    Items.Strings = (
      '03-Read Holding Register'
      '06-Write Single Register')
  end
  object Edit5: TEdit
    Left = 175
    Top = 115
    Width = 73
    Height = 21
    Alignment = taRightJustify
    TabOrder = 8
    Text = '0'
  end
  object Edit6: TEdit
    Left = 254
    Top = 115
    Width = 73
    Height = 21
    Alignment = taRightJustify
    TabOrder = 9
    Text = '1'
  end
  object IdTCPClient1: TIdTCPClient
    OnDisconnected = IdTCPClient1Disconnected
    OnConnected = IdTCPClient1Connected
    ConnectTimeout = 0
    Port = 0
    ReadTimeout = -1
    Left = 472
    Top = 248
  end
end
