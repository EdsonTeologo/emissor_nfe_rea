object frmEmpresas: TfrmEmpresas
  Left = 0
  Top = 0
  Width = 1200
  Height = 517
  TabOrder = 0
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1200
    Height = 89
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 924
  end
  object rd_grupo: TcxRadioGroup
    Left = 6
    Top = 4
    Caption = 'Ramo Atividade'
    Properties.Items = <
      item
        Caption = 'Distribuidoras'
      end
      item
        Caption = 'Direta'
      end
      item
        Caption = 'Armazenagem'
      end>
    Properties.OnChange = rd_grupoPropertiesChange
    TabOrder = 0
    Height = 75
    Width = 185
  end
  object cxButton1: TcxButton
    Left = 314
    Top = 30
    Width = 169
    Height = 25
    Caption = 'Selecionar a Empresa para Uso'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 602
    Top = 30
    Width = 169
    Height = 25
    Caption = 'Trocar Certificado da Empresa'
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object rd_ambiente: TcxRadioGroup
    Left = 991
    Top = 8
    Caption = 'Ambiente'
    Enabled = False
    ParentFont = False
    Properties.Items = <
      item
        Caption = 'Produ'#231#227'o'
      end
      item
        Caption = 'Homologa'#231#227'o'
      end>
    ItemIndex = 0
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Height = 75
    Width = 185
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 89
    Width = 1200
    Height = 428
    Align = alClient
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dasoemp
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1NOMEMP: TcxGridDBColumn
        Caption = 'Raz'#227'o Social'
        DataBinding.FieldName = 'RAZAO_NFE'
      end
      object cxGrid1DBTableView1VALIDADE_CERTIFICADO: TcxGridDBColumn
        Caption = 'Validade Certificado'
        DataBinding.FieldName = 'VALIDADE_CERTIFICADO'
      end
      object cxGrid1DBTableView1dias_vencer: TcxGridDBColumn
        Caption = 'Dias Vencer'
        DataBinding.FieldName = 'dias_vencer'
      end
      object cxGrid1DBTableView1CNPJ: TcxGridDBColumn
        DataBinding.FieldName = 'CNPJ'
      end
      object cxGrid1DBTableView1IE: TcxGridDBColumn
        DataBinding.FieldName = 'IE'
      end
      object cxGrid1DBTableView1ENDERECO: TcxGridDBColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'ENDERECO'
      end
      object cxGrid1DBTableView1BAIRRO: TcxGridDBColumn
        Caption = 'Bairro'
        DataBinding.FieldName = 'BAIRRO'
      end
      object cxGrid1DBTableView1CIDADE: TcxGridDBColumn
        Caption = 'Cidade'
        DataBinding.FieldName = 'CIDADE'
      end
      object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'ESTADO'
      end
      object cxGrid1DBTableView1CEP: TcxGridDBColumn
        DataBinding.FieldName = 'CEP'
      end
      object cxGrid1DBTableView1ULTIMA_NOTA: TcxGridDBColumn
        Caption = #250'ltima nota'
        DataBinding.FieldName = 'ULTIMA_NOTA'
      end
      object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
        Caption = 'numero'
        DataBinding.FieldName = 'NUMERO'
      end
      object cxGrid1DBTableView1COMPLEMENTO: TcxGridDBColumn
        Caption = 'Complemento'
        DataBinding.FieldName = 'COMPLEMENTO'
      end
      object cxGrid1DBTableView1IBGE: TcxGridDBColumn
        DataBinding.FieldName = 'IBGE'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dasoemp: TDataSource
    AutoEdit = False
    DataSet = cldaseemp
    Left = 408
    Top = 104
  end
  object cldaseemp: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM EMPRESAS WHERE RAZAO_NFE IS NOT NULL AND NOTA_ELET' +
      'RONICA=-1'
    Params = <>
    ProviderName = 'daseprdin1'
    RemoteServer = dmconexao.SocketConnection1
    Left = 496
    Top = 40
    object cldaseempCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldaseempRAZAO_NFE: TStringField
      DisplayLabel = 'Raz'#227'o Social (NFE)'
      FieldName = 'RAZAO_NFE'
      Size = 60
    end
    object cldaseempCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cldaseempIE: TStringField
      FieldName = 'IE'
    end
    object cldaseempENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cldaseempBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cldaseempCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cldaseempESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cldaseempCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cldaseempULTIMA_NOTA: TIntegerField
      FieldName = 'ULTIMA_NOTA'
    end
    object cldaseempNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cldaseempCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cldaseempIBGE: TStringField
      FieldName = 'IBGE'
      Size = 7
    end
    object cldaseempSENHA: TStringField
      FieldName = 'SENHA'
      Size = 50
    end
    object cldaseempNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Size = 50
    end
    object cldaseempFORMATO_NOTA: TStringField
      FieldName = 'FORMATO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldaseempVALIDADE_CERTIFICADO: TSQLTimeStampField
      FieldName = 'VALIDADE_CERTIFICADO'
    end
    object cldaseempdias_vencer: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'dias_vencer'
      Calculated = True
    end
    object cldaseempNOTA_ELETRONICA: TSmallintField
      FieldName = 'NOTA_ELETRONICA'
    end
  end
end
