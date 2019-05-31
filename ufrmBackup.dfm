object frmBackup: TfrmBackup
  Left = 0
  Top = 0
  Width = 871
  Height = 615
  TabOrder = 0
  object Gauge1: TGauge
    Left = 32
    Top = 269
    Width = 100
    Height = 36
    Progress = 0
    Visible = False
  end
  object cxLabel1: TcxLabel
    Left = 32
    Top = 32
    Caption = 'Data Inicial'
    Transparent = True
  end
  object cxdt_ini: TcxDateEdit
    Left = 104
    Top = 32
    TabOrder = 1
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 65
    Caption = 'Data Final'
    Transparent = True
  end
  object cxdt_fin: TcxDateEdit
    Left = 104
    Top = 64
    TabOrder = 3
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 32
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object rd_grupo: TcxRadioGroup
    Left = 32
    Top = 104
    Caption = 'Grupo'
    Properties.Items = <
      item
        Caption = 'Distribuidor'
      end
      item
        Caption = 'Direta'
      end
      item
        Caption = 'Armazem'
      end>
    ItemIndex = 0
    TabOrder = 5
    Height = 105
    Width = 185
  end
  object cldasenfe_xml: TClientDataSet
    Aggregates = <>
    CommandText = 'select * FROM VI_NFE_XML3'
    Params = <>
    ProviderName = 'daseprz'
    RemoteServer = dmconexao.sock_bak
    Left = 232
    Top = 232
    object cldasenfe_xmlCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
    end
    object cldasenfe_xmlXML_NFE: TBlobField
      FieldName = 'XML_NFE'
      Size = 8
    end
    object cldasenfe_xmlCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cldasenfe_xmlDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cldasenfe_xmlID_NFE: TStringField
      FieldName = 'ID_NFE'
      Size = 60
    end
  end
end
