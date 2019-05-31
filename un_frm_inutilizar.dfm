object frm_inutilizar_nota: Tfrm_inutilizar_nota
  Left = 0
  Top = 0
  ClientHeight = 330
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel2: TcxLabel
    Left = 84
    Top = 60
    Caption = 'Da nota'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 300
    Top = 60
    Caption = 'At'#233' a nota'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 8
    Top = 128
    Caption = 'Justificativa'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object justificativa_inulitizar: TcxMemo
    Left = 8
    Top = 157
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Height = 108
    Width = 481
  end
  object da_nota: TcxSpinEdit
    Left = 85
    Top = 89
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 121
  end
  object ate_nota: TcxSpinEdit
    Left = 300
    Top = 89
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 121
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 16
    Width = 265
    Height = 34
    Alignment = taCenter
    AutoSize = False
    Caption = 'Inutilizar Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object cxButton1: TcxButton
    Left = 120
    Top = 280
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 7
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 300
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = cxButton2Click
  end
end
