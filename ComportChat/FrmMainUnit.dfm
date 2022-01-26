object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 319
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 436
    Top = 24
    Width = 105
    Height = 33
    Caption = 'Ba'#287'lan'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 436
    Top = 63
    Width = 105
    Height = 42
    Caption = 'Ba'#287'lant'#305' Kes'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 436
    Top = 111
    Width = 105
    Height = 42
    Caption = 'Ayarlar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 24
    Width = 385
    Height = 209
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 32
    Top = 256
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = 311
    Top = 254
    Width = 105
    Height = 25
    Caption = 'G'#246'nder'
    TabOrder = 5
    OnClick = Button4Click
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM3'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 464
    Top = 200
  end
end
