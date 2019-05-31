object frm_le_certificado: Tfrm_le_certificado
  Left = 0
  Top = 0
  Caption = 'Sele'#231#227'o de Certificado'
  ClientHeight = 216
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 161
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 24
    Caption = 'N'#250'mero de S'#233'rie'
  end
  object edt_serie: TcxTextEdit
    Left = 125
    Top = 23
    Enabled = False
    StyleDisabled.BorderColor = clWindowFrame
    StyleDisabled.Color = clWindow
    StyleDisabled.TextColor = clWindowText
    TabOrder = 2
    Width = 308
  end
  object cxButton2: TcxButton
    Left = 439
    Top = 21
    Width = 109
    Height = 25
    Caption = 'Localizar Certificado'
    TabOrder = 3
    OnClick = cxButton2Click
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 57
    Caption = 'Senha'
  end
  object cxButton3: TcxButton
    Left = 308
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = cxButton3Click
  end
  object edt_senha1: TcxTextEdit
    Left = 125
    Top = 56
    TabOrder = 6
    Width = 121
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 97
    Caption = 'Validade'
  end
  object dte_validade: TcxDateEdit
    Left = 125
    Top = 96
    Enabled = False
    StyleDisabled.BorderColor = clWindowFrame
    StyleDisabled.Color = clWindow
    StyleDisabled.TextColor = clWindowText
    TabOrder = 8
    Width = 164
  end
end
