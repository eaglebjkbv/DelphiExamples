object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 211
  ClientWidth = 418
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
    Left = 144
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Ba'#287'lan'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 24
    Top = 24
    Width = 89
    Height = 113
    ItemHeight = 13
    TabOrder = 1
  end
  object Button2: TButton
    Left = 144
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Ayarlar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 144
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Ba'#287'lant'#305' Kes'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM4'
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
    Left = 320
    Top = 32
  end
end
