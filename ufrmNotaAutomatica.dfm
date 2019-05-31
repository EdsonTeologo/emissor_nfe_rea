object frmNotaAutomatica: TfrmNotaAutomatica
  Left = 0
  Top = 0
  Width = 1127
  Height = 534
  TabOrder = 0
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1127
    Height = 534
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = cxButton1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    DesignSize = (
      1127
      534)
    object cxButton1: TcxButton
      Left = 362
      Top = 203
      Width = 402
      Height = 127
      Anchors = []
      Caption = 'Iniciar M'#243'dulo Autom'#225'tico de NFE'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
end
