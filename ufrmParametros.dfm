object frmParametros: TfrmParametros
  Left = 0
  Top = 0
  Width = 1091
  Height = 770
  TabOrder = 0
  OnEnter = FrameEnter
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1091
    Height = 770
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 766
    ClientRectLeft = 4
    ClientRectRight = 1087
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Diret'#243'rios'
      ImageIndex = 0
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitHeight = 738
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 173
        Caption = 'PDF'
        TabOrder = 0
        Height = 80
        Width = 756
        object cxLabel1: TcxLabel
          Left = 10
          Top = 46
          Caption = 'Diret'#243'rio'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 100
          Top = 45
          DataBinding.DataField = 'DIRETORIO_NFE_PDF'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 1
          Width = 560
        end
        object cxButton1: TcxButton
          Left = 675
          Top = 45
          Width = 75
          Height = 21
          Caption = '...'
          TabOrder = 2
          OnClick = cxButton1Click
        end
        object dxDBToggleSwitch2: TdxDBToggleSwitch
          Left = 12
          Top = 18
          Caption = 'Ap'#243's Autoriza'#231#227'o (Sefaz) Salvar PDF'
          DataBinding.DataField = 'APOS_ENVIO_PDF_NFE'
          DataBinding.DataSource = dasoparametros
          ParentShowHint = False
          Properties.ReadOnly = False
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'N'#227'o'
          Properties.StateIndicator.OnText = 'Sim'
          Properties.ValueChecked = -1
          Properties.ValueUnchecked = 0
          ShowHint = False
          TabOrder = 3
          Transparent = True
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 3
        Top = 267
        Caption = 'XML - Secund'#225'rio'
        TabOrder = 1
        Height = 77
        Width = 756
        object cxLabel2: TcxLabel
          Left = 16
          Top = 44
          Caption = 'Diret'#243'rio'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 100
          Top = 43
          DataBinding.DataField = 'DIRETORIO_XML_NFE'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 1
          Width = 560
        end
        object cxButton2: TcxButton
          Left = 675
          Top = 43
          Width = 75
          Height = 21
          Caption = '...'
          TabOrder = 2
          OnClick = cxButton2Click
        end
        object dxDBToggleSwitch3: TdxDBToggleSwitch
          Left = 16
          Top = 17
          Caption = 'Ap'#243's Autoriza'#231#227'o (Sefaz) Salvar XML'
          DataBinding.DataField = 'APOS_ENVIO_XML_NFE'
          DataBinding.DataSource = dasoparametros
          ParentShowHint = False
          Properties.ReadOnly = False
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'N'#227'o'
          Properties.StateIndicator.OnText = 'Sim'
          Properties.ValueChecked = -1
          Properties.ValueUnchecked = 0
          ShowHint = False
          TabOrder = 3
          Transparent = True
        end
      end
      object btn_edi: TcxButton
        Left = 515
        Top = 446
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = btn_ediClick
      end
      object btn_gra: TcxButton
        Left = 596
        Top = 446
        Width = 75
        Height = 25
        Caption = 'Gravar'
        Enabled = False
        TabOrder = 3
        OnClick = btn_graClick
      end
      object btn_can: TcxButton
        Left = 677
        Top = 446
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 4
        OnClick = btn_canClick
      end
      object cxGroupBox3: TcxGroupBox
        Left = 3
        Top = 352
        Caption = 'Email'
        TabOrder = 5
        Height = 81
        Width = 756
        object cxLabel3: TcxLabel
          Left = 16
          Top = 44
          Caption = 'Diret'#243'rio'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 100
          Top = 43
          DataBinding.DataField = 'DIRETORIO_TEMPORARIO_EMAIL'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 1
          Width = 560
        end
        object cxButton3: TcxButton
          Left = 678
          Top = 42
          Width = 75
          Height = 23
          Caption = '...'
          TabOrder = 2
          OnClick = cxButton3Click
        end
        object dxDBToggleSwitch4: TdxDBToggleSwitch
          Left = 16
          Top = 18
          Caption = 'Ap'#243's Autoriza'#231#227'o (Sefaz) Enviar Email'
          DataBinding.DataField = 'APOS_ENVIAR_EMAIL'
          DataBinding.DataSource = dasoparametros
          ParentShowHint = False
          Properties.ReadOnly = False
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'N'#227'o'
          Properties.StateIndicator.OnText = 'Sim'
          Properties.ValueChecked = -1
          Properties.ValueUnchecked = 0
          ShowHint = False
          TabOrder = 3
          Transparent = True
        end
        object dxDBToggleSwitch5: TdxDBToggleSwitch
          Left = 372
          Top = 18
          Caption = 'Atachar o PDF da nota ao Email'
          DataBinding.DataField = 'ATACHAR_PDF_EMAIL'
          DataBinding.DataSource = dasoparametros
          ParentShowHint = False
          Properties.ReadOnly = False
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'N'#227'o'
          Properties.StateIndicator.OnText = 'Sim'
          Properties.ValueChecked = -1
          Properties.ValueUnchecked = 0
          ShowHint = False
          TabOrder = 4
          Transparent = True
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 3
        Top = 3
        Caption = 'Diret'#243'rios do Sistema'
        TabOrder = 6
        Height = 158
        Width = 758
        object cxLabel4: TcxLabel
          Left = 10
          Top = 21
          Caption = 'Eventos'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 100
          Top = 20
          DataBinding.DataField = 'DIR_SISTEMA_EVENTO'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 1
          Width = 560
        end
        object cxButton4: TcxButton
          Left = 675
          Top = 20
          Width = 75
          Height = 21
          Caption = '...'
          TabOrder = 2
          OnClick = cxButton4Click
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 46
          Caption = 'Inutilizados'
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 100
          Top = 45
          DataBinding.DataField = 'DIR_SISTEMA_INU'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 4
          Width = 560
        end
        object cxButton5: TcxButton
          Left = 675
          Top = 45
          Width = 75
          Height = 21
          Caption = '...'
          TabOrder = 5
          OnClick = cxButton5Click
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 73
          Caption = 'NFE'
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 100
          Top = 72
          DataBinding.DataField = 'DIR_SISTEMA_NFE'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 7
          Width = 560
        end
        object cxButton6: TcxButton
          Left = 675
          Top = 72
          Width = 75
          Height = 21
          Caption = '...'
          TabOrder = 8
          OnClick = cxButton6Click
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 100
          Caption = 'Envios/Retornos'
          Transparent = True
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 100
          Top = 99
          DataBinding.DataField = 'DIR_SISTEMA_SALVAR'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 10
          Width = 560
        end
        object cxButton7: TcxButton
          Left = 675
          Top = 99
          Width = 75
          Height = 21
          Caption = '...'
          TabOrder = 11
          OnClick = cxButton7Click
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 127
          Caption = 'Schemas'
          Transparent = True
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 100
          Top = 126
          DataBinding.DataField = 'DIR_SISTEMA_SCHEMAS_40'
          DataBinding.DataSource = dasoparametros
          Enabled = False
          TabOrder = 13
          Width = 560
        end
        object cxButton8: TcxButton
          Left = 675
          Top = 126
          Width = 75
          Height = 21
          Caption = '...'
          TabOrder = 14
          OnClick = cxButton8Click
        end
      end
      object dxDBToggleSwitch1: TdxDBToggleSwitch
        Left = 3
        Top = 444
        Caption = 'Ap'#243's Autoriza'#231#227'o (Sefaz) imprimir DANFE'
        DataBinding.DataField = 'APOS_ENVIO_IMPRIMIR_NFE'
        DataBinding.DataSource = dasoparametros
        ParentShowHint = False
        Properties.ReadOnly = False
        Properties.StateIndicator.Kind = sikText
        Properties.StateIndicator.OffText = 'N'#227'o'
        Properties.StateIndicator.OnText = 'Sim'
        Properties.ValueChecked = -1
        Properties.ValueUnchecked = 0
        ShowHint = False
        TabOrder = 7
        Transparent = True
      end
    end
  end
  object cldaseparametros: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CONFIG_EMISSOR'
    Params = <>
    ProviderName = 'daseprdin1'
    RemoteServer = dmconexao.SocketConnection1
    Left = 744
    Top = 232
    object cldaseparametrosCONFIG_ID: TSmallintField
      FieldName = 'CONFIG_ID'
      Required = True
    end
    object cldaseparametrosDIRETORIO_NFE_PDF: TStringField
      FieldName = 'DIRETORIO_NFE_PDF'
      Size = 300
    end
    object cldaseparametrosAPOS_ENVIO_PDF_NFE: TSmallintField
      FieldName = 'APOS_ENVIO_PDF_NFE'
    end
    object cldaseparametrosAPOS_ENVIO_IMPRIMIR_NFE: TSmallintField
      FieldName = 'APOS_ENVIO_IMPRIMIR_NFE'
    end
    object cldaseparametrosDIRETORIO_XML_NFE: TStringField
      FieldName = 'DIRETORIO_XML_NFE'
      Size = 300
    end
    object cldaseparametrosAPOS_ENVIO_XML_NFE: TSmallintField
      FieldName = 'APOS_ENVIO_XML_NFE'
    end
    object cldaseparametrosDIRETORIO_TEMPORARIO_EMAIL: TStringField
      FieldName = 'DIRETORIO_TEMPORARIO_EMAIL'
      Size = 300
    end
    object cldaseparametrosAPOS_ENVIAR_EMAIL: TSmallintField
      FieldName = 'APOS_ENVIAR_EMAIL'
    end
    object cldaseparametrosATACHAR_PDF_EMAIL: TSmallintField
      FieldName = 'ATACHAR_PDF_EMAIL'
    end
    object cldaseparametrosDIR_SISTEMA_EVENTO: TStringField
      FieldName = 'DIR_SISTEMA_EVENTO'
      Size = 300
    end
    object cldaseparametrosDIR_SISTEMA_INU: TStringField
      FieldName = 'DIR_SISTEMA_INU'
      Size = 300
    end
    object cldaseparametrosDIR_SISTEMA_NFE: TStringField
      FieldName = 'DIR_SISTEMA_NFE'
      Size = 300
    end
    object cldaseparametrosDIR_SISTEMA_SALVAR: TStringField
      FieldName = 'DIR_SISTEMA_SALVAR'
      Size = 300
    end
    object cldaseparametrosDIR_SISTEMA_SCHEMAS: TStringField
      FieldName = 'DIR_SISTEMA_SCHEMAS'
      Size = 300
    end
    object cldaseparametrosDIR_SISTEMA_SCHEMAS_40: TStringField
      FieldName = 'DIR_SISTEMA_SCHEMAS_40'
      Size = 300
    end
  end
  object dasoparametros: TDataSource
    AutoEdit = False
    DataSet = cldaseparametros
    OnStateChange = dasoparametrosStateChange
    Left = 748
    Top = 296
  end
end
