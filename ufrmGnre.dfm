object frmGnre: TfrmGnre
  Left = 0
  Top = 0
  Width = 1107
  Height = 715
  TabOrder = 0
  OnEnter = FrameEnter
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 1107
    Height = 715
    ActivePage = tash_geral
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 1078
    ExplicitHeight = 648
    object tash_geral: TTabSheet
      Caption = 'tash_geral'
      ExplicitWidth = 1070
      ExplicitHeight = 620
      object Label2: TLabel
        Left = 12
        Top = 8
        Width = 60
        Height = 13
        Caption = 'Notas do dia'
      end
      object Label4: TLabel
        Left = 12
        Top = 54
        Width = 42
        Height = 13
        Caption = 'at'#233' o dia'
      end
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1099
        Height = 112
        Align = alTop
        ExplicitLeft = -1
        ExplicitWidth = 1070
      end
      object nota_de: TDateTimePicker
        Left = 12
        Top = 27
        Width = 143
        Height = 21
        Date = 42370.000000000000000000
        Time = 0.384395520843099800
        TabOrder = 0
      end
      object nota_ate: TDateTimePicker
        Left = 12
        Top = 73
        Width = 145
        Height = 21
        Date = 42400.000000000000000000
        Time = 0.384395520843099800
        TabOrder = 1
      end
      object Button2: TButton
        Left = 181
        Top = 22
        Width = 115
        Height = 72
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 311
        Top = 22
        Width = 105
        Height = 72
        Caption = 'Gerar GNRE'
        TabOrder = 3
        OnClick = Button3Click
      end
      object FileListBox1: TFileListBox
        Left = 811
        Top = 3
        Width = 214
        Height = 103
        ItemHeight = 13
        TabOrder = 4
        Visible = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 112
        Width = 625
        Height = 575
        Align = alLeft
        DataSource = dasovi_nf
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NFE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PRODUTOS'
            Title.Caption = 'Valor Produtos'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Caption = 'Cliente'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO_SOCIAL'
            Title.Caption = 'Raz'#227'o Social'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTADO'
            Title.Caption = 'UF'
            Width = 23
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 625
        Top = 112
        Width = 474
        Height = 575
        Align = alClient
        DataSource = daso_lotes
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'nfe'
            Title.Caption = 'NFE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resultado'
            Title.Caption = 'Resultado GNRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resultado_fp'
            Title.Caption = 'Resultado GNRE FP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recibo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recibo_fb'
            Visible = True
          end>
      end
      object Button9: TButton
        Left = 576
        Top = 22
        Width = 127
        Height = 72
        Caption = 'Verificar Processando'
        TabOrder = 7
        OnClick = Button9Click
      end
      object Button6: TButton
        Left = 434
        Top = 22
        Width = 121
        Height = 72
        Caption = 'Verificar Divergencias'
        TabOrder = 8
        OnClick = Button6Click
      end
    end
    object tash_erros: TTabSheet
      Caption = 'tash_erros'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 1099
        Height = 50
        Align = alTop
        ExplicitLeft = -1
        ExplicitWidth = 1070
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 249
        Width = 1099
        Height = 438
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1070
        ExplicitHeight = 371
        object TabSheet2: TTabSheet
          Caption = 'memoresp'
          ImageIndex = 1
          object memoresp: TMemo
            Left = 0
            Top = 0
            Width = 1091
            Height = 410
            Align = alClient
            TabOrder = 0
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'wbresposta'
          ImageIndex = 3
          object wbresposta: TWebBrowser
            Left = 0
            Top = 0
            Width = 1091
            Height = 410
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 1062
            ExplicitHeight = 343
            ControlData = {
              4C000000C2700000602A00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'memoRespWS'
          ImageIndex = 4
          object memoRespWS: TMemo
            Left = 0
            Top = 0
            Width = 1091
            Height = 410
            Align = alClient
            TabOrder = 0
          end
        end
      end
      object Button1: TButton
        Left = 310
        Top = 12
        Width = 121
        Height = 25
        Caption = 'Voltar'
        TabOrder = 1
      end
      object btn_div_gnre: TButton
        Left = 14
        Top = 12
        Width = 123
        Height = 25
        Caption = 'Divergencia GNRE'
        TabOrder = 2
      end
      object btn_div_gnre_fp: TButton
        Left = 161
        Top = 12
        Width = 123
        Height = 25
        Caption = 'Divergencia GNRE FP'
        TabOrder = 3
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 50
        Width = 1099
        Height = 199
        Align = alTop
        DataSource = daso_lotes
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nfe'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recibo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resultado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recibo_fb'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'resultado_fp'
            Visible = True
          end>
      end
    end
  end
  object cldaselotes: TClientDataSet
    PersistDataPacket.Data = {
      090100009619E0BD0100000018000000070000000000030000000901036E6665
      040001000000000009726573756C7461646F0100490000000100055749445448
      020002001E000B6172717569766F5F786D6C04004B0000000100075355425459
      504502004900070042696E617279000C726573756C7461646F5F667001004900
      000001000557494454480200020014000E6172717569766F5F786D6C5F667004
      004B0000000100075355425459504502004900070042696E6172790006726563
      69626F01004900000001000557494454480200020028000972656369626F5F66
      62010049000000010005574944544802000200280001000D44454641554C545F
      4F524445520200820000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'nfe'
        DataType = ftInteger
      end
      item
        Name = 'resultado'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'arquivo_xml'
        DataType = ftBlob
      end
      item
        Name = 'resultado_fp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'arquivo_xml_fp'
        DataType = ftBlob
      end
      item
        Name = 'recibo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'recibo_fb'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'nfe'
    Params = <>
    StoreDefs = True
    Left = 496
    Top = 80
    object cldaselotesnfe: TIntegerField
      FieldName = 'nfe'
    end
    object cldaselotesresultado: TStringField
      FieldName = 'resultado'
      Size = 30
    end
    object cldaselotesarquivo_xml: TBlobField
      FieldName = 'arquivo_xml'
    end
    object cldaselotesresultado_fp: TStringField
      FieldName = 'resultado_fp'
    end
    object cldaselotesarquivo_xml_fp: TBlobField
      FieldName = 'arquivo_xml_fp'
    end
    object cldaselotesrecibo: TStringField
      FieldName = 'recibo'
      Size = 40
    end
    object cldaselotesrecibo_fb: TStringField
      FieldName = 'recibo_fb'
      Size = 40
    end
  end
  object cldasenota: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NF WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdin7'
    RemoteServer = dmconexao.SocketConnection1
    Left = 864
    Top = 368
    object cldasenotaCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasenotaIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
      Required = True
    end
    object cldasenotaCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object cldasenotaTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasenotaTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenotaVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasenotaPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasenotaNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasenotaPESO: TStringField
      FieldName = 'PESO'
    end
    object cldasenotaVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object cldasenotaSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object cldasenotaBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenotaICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenotaBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Precision = 19
      Size = 2
    end
    object cldasenotaST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasenotaVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object cldasenotaVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasenotaVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object cldasenotaTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasenotaFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object cldasenotaOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasenotaDATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object cldasenotaHORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object cldasenotaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cldasenotaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cldasenotaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cldasenotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldasenotaMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object cldasenotaDEVOLVIDO: TSmallintField
      FieldName = 'DEVOLVIDO'
    end
    object cldasenotaCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object cldasenotaCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object cldasenotaCANCELADO_MOTIVO: TBlobField
      FieldName = 'CANCELADO_MOTIVO'
      Size = 8
    end
    object cldasenotaFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      FixedChar = True
      Size = 1
    end
    object cldasenotaCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object cldasenotaNOTA_CLIENTE: TSmallintField
      FieldName = 'NOTA_CLIENTE'
    end
    object cldasenotaDEV_ENV_EST: TSmallintField
      FieldName = 'DEV_ENV_EST'
    end
    object cldasenotaDT_ENTRADA_ESTOQUE: TDateField
      FieldName = 'DT_ENTRADA_ESTOQUE'
    end
    object cldasenotaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cldasenotaPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenotaTOTAL_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenotaOBS_ADICIONAL: TBlobField
      FieldName = 'OBS_ADICIONAL'
      Size = 8
    end
    object cldasenotaGNRE_PAGA: TSmallintField
      FieldName = 'GNRE_PAGA'
    end
    object cldasenotaCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 60
    end
    object cldasenotaMOVIMENTA_ESTOQUE: TSmallintField
      FieldName = 'MOVIMENTA_ESTOQUE'
    end
    object cldasenotaUTILIZADA_BOLETO: TSmallintField
      FieldName = 'UTILIZADA_BOLETO'
    end
    object cldasenotaEXP_ESTOQUE: TIntegerField
      FieldName = 'EXP_ESTOQUE'
    end
    object cldasenotaISS: TFMTBCDField
      FieldName = 'ISS'
      Precision = 19
      Size = 2
    end
    object cldasenotaSERVICO: TFMTBCDField
      FieldName = 'SERVICO'
      Precision = 19
      Size = 2
    end
    object cldasenotaIND_PRESENCA: TStringField
      FieldName = 'IND_PRESENCA'
      Size = 5
    end
    object cldasenotaIBGE_DEVOLUCAO: TStringField
      FieldName = 'IBGE_DEVOLUCAO'
      Size = 15
    end
    object cldasenotaEMISSAO_DEVOLUCAO: TSQLTimeStampField
      FieldName = 'EMISSAO_DEVOLUCAO'
    end
    object cldasenotaCNPJ_DEVOLUCAO: TStringField
      FieldName = 'CNPJ_DEVOLUCAO'
    end
    object cldasenotaMODELO_DEVOLUCAO: TStringField
      FieldName = 'MODELO_DEVOLUCAO'
      Size = 5
    end
    object cldasenotaSERIE_DEVOLUCAO: TStringField
      FieldName = 'SERIE_DEVOLUCAO'
      Size = 15
    end
    object cldasenotaNUMERO_DEVOLUCAO: TIntegerField
      FieldName = 'NUMERO_DEVOLUCAO'
    end
    object cldasenotaCHAVE_DEVOLUCAO: TStringField
      FieldName = 'CHAVE_DEVOLUCAO'
      Size = 50
    end
    object cldasenotaPERC_FP: TFMTBCDField
      FieldName = 'PERC_FP'
      Precision = 19
      Size = 2
    end
    object cldasenotaVLR_FP: TFMTBCDField
      FieldName = 'VLR_FP'
      Precision = 19
      Size = 2
    end
    object cldasenotaGNRE_UNICA: TSmallintField
      FieldName = 'GNRE_UNICA'
    end
    object cldasenotaGUIA_GNRE: TBlobField
      FieldName = 'GUIA_GNRE'
      Size = 8
    end
    object cldasenotaGUIA_GNRE_FP: TBlobField
      FieldName = 'GUIA_GNRE_FP'
      Size = 8
    end
    object cldasenotaPG_GUIA_GNRE: TBlobField
      FieldName = 'PG_GUIA_GNRE'
      Size = 8
    end
    object cldasenotaPG_GUIA_GNRE_FP: TBlobField
      FieldName = 'PG_GUIA_GNRE_FP'
      Size = 8
    end
    object cldasenotaLIB_DESP_OUT_EST: TSmallintField
      FieldName = 'LIB_DESP_OUT_EST'
    end
    object cldasenotaGNRE_LOTE: TStringField
      FieldName = 'GNRE_LOTE'
      Size = 30
    end
    object cldasenotaGNRE_RETORNO_INCONSISTENCIA: TBlobField
      FieldName = 'GNRE_RETORNO_INCONSISTENCIA'
      Size = 8
    end
    object cldasenotaGNRE_RECIBO: TStringField
      FieldName = 'GNRE_RECIBO'
      Size = 40
    end
    object cldasenotaGNRE_RETORNO_TXT: TBlobField
      FieldName = 'GNRE_RETORNO_TXT'
      Size = 8
    end
    object cldasenotaGNRE_BARRA: TStringField
      FieldName = 'GNRE_BARRA'
      Size = 100
    end
    object cldasenotaGNRE_RECIBO_FP: TStringField
      FieldName = 'GNRE_RECIBO_FP'
      Size = 40
    end
    object cldasenotaGNRE_RETORNO_TXT_FP: TBlobField
      FieldName = 'GNRE_RETORNO_TXT_FP'
      Size = 8
    end
    object cldasenotaGNRE_BARRA_FP: TStringField
      FieldName = 'GNRE_BARRA_FP'
      Size = 100
    end
    object cldasenotaGNRE_RETORNO_INCONSISTENCIA_FP: TBlobField
      FieldName = 'GNRE_RETORNO_INCONSISTENCIA_FP'
      Size = 8
    end
    object cldasenotaGNRE_STATUS: TStringField
      FieldName = 'GNRE_STATUS'
    end
    object cldasenotaGNRE_STATUS_FP: TStringField
      FieldName = 'GNRE_STATUS_FP'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 880
    Top = 280
  end
  object cldasevi_nf: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM VI_NF7b'
    Filter = 'emitegnre=true'
    Params = <>
    ProviderName = 'daseprdin1'
    RemoteServer = dmconexao.SocketConnection1
    Left = 872
    Top = 200
    object cldasevi_nfCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
    end
    object cldasevi_nfIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
    end
    object cldasevi_nfCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object cldasevi_nfTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasevi_nfTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasevi_nfTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nfVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasevi_nfNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasevi_nfPESO: TStringField
      FieldName = 'PESO'
    end
    object cldasevi_nfVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object cldasevi_nfSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object cldasevi_nfFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nfVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasevi_nfMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nfCLIENTE: TStringField
      FieldName = 'CLIENTE'
    end
    object cldasevi_nfRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object cldasevi_nfNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cldasevi_nfDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cldasevi_nfemitegnre: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'emitegnre'
    end
    object cldasevi_nfDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cldasevi_nfST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cldasevi_nfCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object cldasevi_nfCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object cldasevi_nfCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object cldasevi_nfTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfVLR_FP: TFMTBCDField
      FieldName = 'VLR_FP'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfGNRE_UNICA: TSmallintField
      FieldName = 'GNRE_UNICA'
    end
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41367.473068715300000000
    ReportOptions.LastChange = 42723.333300902800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo1.Visible := <Guia."Ambiente"> = '#39'9'#39';'
      '  Memo2.Visible := <Guia."Ambiente"> = '#39'9'#39';'
      '  Memo3.Visible := <Guia."Ambiente"> = '#39'9'#39';'
      '  Memo52.Visible := <Guia."Juros"> > 0;'
      '  Memo53.Visible := <Guia."Multa"> > 0;'
      '  Memo109.Visible := <Guia."Juros"> > 0;'
      '  Memo110.Visible := <Guia."Multa"> > 0;'
      '  Memo164.Visible := <Guia."Juros"> > 0;'
      '  Memo168.Visible := <Guia."Multa"> > 0;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 668
    Top = 368
    Datasets = <
      item
        DataSetName = 'Guia'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 952.189432100000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSetName = 'Guia'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 34.346400060000000000
          Top = 3.519666000000001000
          Width = 457.322834650000000000
          Height = 230.551185980000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 53.243902380000000000
          Top = 9.078747969999997000
          Width = 411.968770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Guia Nacional de Recolhimento de Tributos Estaduais - GNRE')
          ParentFont = False
          Wysiwyg = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 491.449104000000000000
          Top = 3.519692849999998000
          Width = 181.417322830000000000
          Height = 230.551185980000000000
          Frame.Typ = []
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 571.039357390000000000
          Top = 4.519692849999998000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 498.984242200000000000
          Top = 4.661434409999998000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF Favorecida')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 577.354320940000000000
          Top = 4.661436850000001000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo da Receita')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 14.858282850000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."UFFavorecida"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 572.818884940000000000
          Top = 14.858282850000000000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."CodReceita"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 120.629994000000000000
          Top = 74.212616000000000000
          Width = 525.354670000000100000
          Height = 177.637910000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -60
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   Guia Inv'#225'lida '
            'para Pagamento')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 121.629994000000000000
          Top = 719.189384500000000000
          Width = 506.457020000000000000
          Height = 177.637910000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -60
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   Guia Inv'#225'lida '
            'para Pagamento')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 121.629994000000000000
          Top = 395.929334500000000000
          Width = 506.457020000000000000
          Height = 177.637910000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -60
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '   Guia Inv'#225'lida '
            'para Pagamento')
          ParentFont = False
        end
        object BarCode2: TfrxBarCodeView
          AllowVectorExport = True
          Left = 37.259907940000000000
          Top = 897.386276390000000000
          Width = 412.800000000000000000
          Height = 49.133860710000000000
          BarType = bcCode_2_5_interleaved
          Expression = '<Guia."CodigoBarras">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '858000000011000000901300800120130328190000028004'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 84.818902030000000000
          Top = 884.165952850000100000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[FormatMaskText('#39'00000000000 0 00000000000 0 00000000000 0 00000' +
              '000000 0;0;'#39#39#39',<Guia."RepresentacaoNumerica">)]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 578.953167940000000000
          Top = 881.606892850000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '3'#170' via - Contribuinte/Fisco')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 35.259864000000000000
          Top = 649.819254500000100000
          Width = 457.322834650000000000
          Height = 230.551181100000000000
          Frame.Typ = []
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 492.362567940000000000
          Top = 649.819281350000000000
          Width = 181.417322830000000000
          Height = 230.551181100000000000
          Frame.Typ = []
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 571.952821330000000000
          Top = 650.819281350000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 573.732348880000000000
          Top = 650.598811350000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo da Receita')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 650.598808910000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF Favorecida')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 54.157366330000000000
          Top = 654.378336470000000000
          Width = 411.968770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Guia Nacional de Recolhimento de Tributos Estaduais - GNRE')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 573.732348880000000000
          Top = 661.157871350000100000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."CodReceita"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 661.157871350000100000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."UFFavorecida"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 673.496461350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 35.259907940000000000
          Top = 673.496446700000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 675.275991350000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' de Controle')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 199.669271320000000000
          Top = 676.275974260000000000
          Width = 132.283550000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Contribuinte Emitente')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 565.394107940000000000
          Top = 684.835051350000000000
          Width = 105.826840000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."NumeroControle"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 381.102474000000000000
          Top = 685.724793160000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/Insc. Est:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 685.724793160000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social:')
          ParentFont = False
          Wysiwyg = False
        end
        object Line35: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 697.173612060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 381.102474000000000000
          Top = 695.173612060000000000
          Width = 105.826840000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."DocEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 695.173612060000000000
          Width = 328.819110000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."RazaoSocialEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 697.953171350000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Vencimento')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 591.850817940000000000
          Top = 706.512231350000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."DataVencimento"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 86.952857940000000000
          Top = 706.512231350000000000
          Width = 393.071120000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."EnderecoEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 706.512194740000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          Wysiwyg = False
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 718.850821350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 406.315257940000000000
          Top = 717.850821350000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."UFEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 86.952857940000000000
          Top = 717.850821350000000000
          Width = 279.685220000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."MunicipioEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 386.197137940000000000
          Top = 717.661891350000000000
          Width = 18.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 717.661891350000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 719.874399460000000000
          Width = 105.826840000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Documento de Origem')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 546.496457940000000000
          Top = 730.189411350000000000
          Width = 124.724490000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."NumDocOrigem"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 407.315257940000000000
          Top = 729.189411350000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."TelefoneEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 64.275677940000000000
          Top = 729.189411350000000000
          Width = 151.181200000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."CEPEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 364.519957940000000000
          Top = 729.189360090000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 729.189360090000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = 594.629986680000000000
          Top = 743.528001350000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 742.527972060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 218.566921320000000000
          Top = 744.528001350000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados do Destinat'#225'rio')
          ParentFont = False
          Wysiwyg = False
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = 35.480377940000000000
          Top = 742.772037260000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 598.409514240000000000
          Top = 743.417706550000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 743.417706550000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo de Refer'#234'ncia')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 603.189407940000000000
          Top = 753.866591350000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IIF(<Guia."Parcela"> <> '#39'0'#39', <Guia."Parcela">,'#39#39')]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 511.142097940000000000
          Top = 753.866591350000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."PeriodoReferencia"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 127.748157940000000000
          Top = 753.866591350000000000
          Width = 355.275820000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<Guia."DocDestinatario"> <> '#39'0'#39', <Guia."DocDestinatario">,'#39 +
              #39')]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 753.866525440000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/Insc. Est:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 676.693427940000000000
          Top = 764.425651350000000000
          Width = 7.559060000000000000
          Height = 109.606370000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'A'
            'u'
            't'
            'e'
            'n'
            't'
            'i'
            'c'
            'a'
            #231
            #227
            'o')
          ParentFont = False
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 766.205181350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 86.952857940000000000
          Top = 766.205181350000000000
          Width = 393.071120000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."MunicipioDestinatario"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 766.205108120000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 767.094871900000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Principal')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 774.764241350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."ValorPrincipal"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 209.118096320000000000
          Top = 780.543771350000000000
          Width = 109.606370000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reservado '#224' Fiscaliza'#231#227'o')
          ParentFont = False
          Wysiwyg = False
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 35.259907940000000000
          Top = 779.653927020000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 788.882273480000000000
          Width = 98.267780000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Atualiza'#231#227'o Monet'#225'ria')
          ParentFont = False
          Wysiwyg = False
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 787.882332060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 124.748157940000000000
          Top = 791.882427260000000000
          Width = 355.275820000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."Convenio"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 791.882361350000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conv'#234'nio/Protocolo:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 798.441421350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."AtualizacaoMonetaria"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 79.952857940000000000
          Top = 803.221017260000100000
          Width = 400.630180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."Produto"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 803.220944030000100000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 812.559438830000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
          Wysiwyg = False
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 811.559541350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 822.118601349999900000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."Juros"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 35.259907940000000000
          Top = 824.118601349999900000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 170.984397940000000000
          Top = 825.898197260000000000
          Width = 309.921460000000000000
          Height = 34.015762680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."InfoComplementares"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 38.818967940000000000
          Top = 825.898131350000000000
          Width = 128.504020000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Informa'#231#245'es Complementares:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 836.236604180000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
          Wysiwyg = False
        end
        object Line45: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 836.236692060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 844.795781350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."Multa"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 494.889746200000000000
          Top = 859.913769540000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total a Recolher')
          ParentFont = False
          Wysiwyg = False
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 857.913901349999900000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 580.425647940000000000
          Top = 866.252491350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Guia."ValorPrincipal"> +'
            '<Guia."AtualizacaoMonetaria"> +'
            '<Guia."Juros"> +'
            '<Guia."Multa">]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 212.677347940000000000
          Top = 866.472961350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."DataLimitePagamento"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 38.818967940000000000
          Top = 866.472824660000000000
          Width = 162.519790000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento V'#225'lido para pagamento at'#233':')
          ParentFont = False
          Wysiwyg = False
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 37.393754000000000000
          Top = 646.039766000000000000
          Width = 638.740570000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 35.259864000000000000
          Top = 326.559204500000000000
          Width = 457.322834650000000000
          Height = 230.551181100000000000
          Frame.Typ = []
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 492.362567940000000000
          Top = 326.559231350000000000
          Width = 181.417322830000000000
          Height = 230.551181100000000000
          Frame.Typ = []
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 571.952821330000000000
          Top = 327.559231350000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 573.818884940000000000
          Top = 327.338761350000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo da Receita')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 327.338758910000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF Favorecida')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 54.157366330000000000
          Top = 331.118286470000000000
          Width = 411.968770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Guia Nacional de Recolhimento de Tributos Estaduais - GNRE')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 573.818884940000000000
          Top = 337.897821350000000000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."CodReceita"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 337.897821350000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."UFFavorecida"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 493.448806200000000000
          Top = 350.236411350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 35.259907940000000000
          Top = 350.236396700000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 352.015941350000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' de Controle')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 199.669271320000000000
          Top = 353.015924260000000000
          Width = 132.283550000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Contribuinte Emitente')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 561.819234000000000000
          Top = 361.575001350000000000
          Width = 109.606370000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."NumeroControle"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 381.102474000000000000
          Top = 362.464743160000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/Insc. Est:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 362.464743160000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social:')
          ParentFont = False
          Wysiwyg = False
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 373.913562060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 381.102474000000000000
          Top = 371.913562060000000000
          Width = 105.826840000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."DocEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 371.913562060000000000
          Width = 328.819110000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."RazaoSocialEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 374.693121350000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Vencimento')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 591.850817940000000000
          Top = 383.252181350000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."DataVencimento"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 86.952857940000000000
          Top = 383.252181350000000000
          Width = 393.071120000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."EnderecoEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 383.252144740000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          Wysiwyg = False
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 395.590771350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 406.315257940000000000
          Top = 394.590771350000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."UFEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 86.952857940000000000
          Top = 394.590771350000000000
          Width = 279.685220000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."MunicipioEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 386.197137940000000000
          Top = 394.401841350000000000
          Width = 18.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 394.401841350000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 396.614349460000000000
          Width = 105.826840000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Documento de Origem')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 546.496457940000000000
          Top = 406.929361350000000000
          Width = 124.724490000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."NumDocOrigem"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 407.315257940000000000
          Top = 405.929361350000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."TelefoneEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 64.275677940000000000
          Top = 405.929361350000000000
          Width = 151.181200000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."CEPEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 364.519957940000000000
          Top = 405.929310090000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 405.929310090000000000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 594.629986680000000000
          Top = 420.267951350000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 419.267922060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 218.566921320000000000
          Top = 421.267951350000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados do Destinat'#225'rio')
          ParentFont = False
          Wysiwyg = False
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 35.480377940000000000
          Top = 419.511987260000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 598.409514240000000000
          Top = 420.157656550000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 420.157656550000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo de Refer'#234'ncia')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 603.189407940000000000
          Top = 430.606541350000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IIF(<Guia."Parcela"> <> '#39'0'#39', <Guia."Parcela">,'#39#39')]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 511.142097940000000000
          Top = 430.606541350000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."PeriodoReferencia"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 127.748157940000000000
          Top = 430.606475440000000000
          Width = 355.275820000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<Guia."DocDestinatario"> <> '#39'0'#39', <Guia."DocDestinatario">,'#39 +
              #39')]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 430.606475440000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/Insc. Est:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 676.693427940000000000
          Top = 441.165601350000000000
          Width = 7.559060000000000000
          Height = 109.606370000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'A'
            'u'
            't'
            'e'
            'n'
            't'
            'i'
            'c'
            'a'
            #231
            #227
            'o')
          ParentFont = False
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 442.945131350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 86.952857940000000000
          Top = 442.945131350000000000
          Width = 393.071120000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."MunicipioDestinatario"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 442.945058120000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 443.834821900000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Principal')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 451.504191350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."ValorPrincipal"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 209.118096320000000000
          Top = 457.283721350000000000
          Width = 109.606370000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reservado '#224' Fiscaliza'#231#227'o')
          ParentFont = False
          Wysiwyg = False
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 35.259907940000000000
          Top = 456.393877020000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 465.622223480000000000
          Width = 98.267780000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Atualiza'#231#227'o Monet'#225'ria')
          ParentFont = False
          Wysiwyg = False
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 464.622282060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 124.748157940000000000
          Top = 468.622377260000000000
          Width = 355.275820000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."Convenio"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 468.622311350000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conv'#234'nio/Protocolo:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 475.181371350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."AtualizacaoMonetaria"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 79.952857940000000000
          Top = 479.960967260000000000
          Width = 400.630180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."Produto"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 479.960894030000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 489.299388830000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
          Wysiwyg = False
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 488.299491350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 498.858551350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."Juros"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 35.259907940000000000
          Top = 500.858551350000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 170.984397940000000000
          Top = 502.638147260000000000
          Width = 309.921460000000000000
          Height = 34.015762680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."InfoComplementares"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 38.818967940000000000
          Top = 502.638081350000000000
          Width = 128.504020000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Informa'#231#245'es Complementares:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 512.976554180000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
          Wysiwyg = False
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 512.976642060000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 580.512227940000000000
          Top = 521.535731350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."Multa"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 495.448806200000000000
          Top = 536.653719540000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total a Recolher')
          ParentFont = False
          Wysiwyg = False
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 492.583037940000000000
          Top = 534.653851350000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 580.425647940000000000
          Top = 542.992441350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Guia."ValorPrincipal"> +'
            '<Guia."AtualizacaoMonetaria"> +'
            '<Guia."Juros"> +'
            '<Guia."Multa">]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 212.677347940000000000
          Top = 543.212911350000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."DataLimitePagamento"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 38.818967940000000000
          Top = 543.212774660000000000
          Width = 162.519790000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento V'#225'lido para pagamento at'#233':')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 84.818902030000000000
          Top = 560.110561350000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[FormatMaskText('#39'00000000000 0 00000000000 0 00000000000 0 00000' +
              '000000 0;0;'#39#39#39',<Guia."RepresentacaoNumerica">)]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 579.512184000000000000
          Top = 558.551501350000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '2'#170' via - Contribuinte')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 574.330884890000000000
          Width = 412.800000000000000000
          Height = 49.133860710000000000
          BarType = bcCode_2_5_interleaved
          Expression = '<Guia."CodigoBarras">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '858000000011000000901300800120130328190000028004'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 37.952814000000000000
          Top = 322.661596000000000000
          Width = 638.740570000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 61.771680890000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 72.921377500000010000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 386.197094000000000000
          Top = 72.921377500000010000
          Width = 18.897650000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 84.448846239999990000
          Width = 22.677180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 364.519914000000000000
          Top = 84.448846239999990000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          Wysiwyg = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 34.480334000000000000
          Top = 98.031523400000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 34.259864000000000000
          Top = 132.913413170000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 217.566877380000000000
          Top = 98.787487500000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados do Destinat'#225'rio')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 108.126011590000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/Insc. Est:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 119.464594270000000000
          Width = 45.354360000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 50.433098210000000000
          Width = 328.819110000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."RazaoSocialEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 381.102474000000000000
          Top = 50.433098210000000000
          Width = 105.826840000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."DocEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 85.952814000000000000
          Top = 61.771717499999990000
          Width = 393.071120000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."EnderecoEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 85.952814000000000000
          Top = 73.110307500000000000
          Width = 279.685220000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."MunicipioEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 406.315214000000000000
          Top = 73.110307500000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."UFEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 63.275634000000000000
          Top = 84.448897500000000000
          Width = 151.181200000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."CEPEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 407.315214000000000000
          Top = 84.448897500000000000
          Width = 75.590600000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."TelefoneEmitente"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 123.748114000000000000
          Top = 108.126077500000000000
          Width = 355.275820000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<Guia."DocDestinatario"> <> '#39'0'#39', <Guia."DocDestinatario">,'#39 +
              #39')]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 85.952814000000000000
          Top = 119.464667500000000000
          Width = 393.071120000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."MunicipioDestinatario"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 208.118052380000000000
          Top = 134.803257500000000000
          Width = 109.606370000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Reservado '#224' Fiscaliza'#231#227'o')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 146.141847500000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Conv'#234'nio/Protocolo:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 157.480430180000000000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 123.748114000000000000
          Top = 146.141913410000000000
          Width = 355.275820000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."Convenio"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 78.952814000000000000
          Top = 157.480503410000000000
          Width = 400.630180000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."Produto"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 34.259864000000000000
          Top = 178.378087500000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 181.157617500000000000
          Width = 128.504020000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Informa'#231#245'es Complementares:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 168.984354000000000000
          Top = 181.157683410000000000
          Width = 309.921460000000000000
          Height = 34.015762680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."InfoComplementares"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 220.732310810000000000
          Width = 162.519790000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento V'#225'lido para pagamento at'#233':')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 210.677304000000000000
          Top = 220.732447500000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Guia."DataLimitePagamento"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 51.433098210000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 74.110307500000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 97.787458210000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 121.464667500000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 143.141818210000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 165.819027500000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 187.496178210000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 491.582994000000000000
          Top = 210.173387500000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 593.629942740000000000
          Top = 98.787487500000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 52.212657500000010000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Vencimento')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 75.133885609999990000
          Width = 105.826840000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Documento de Origem')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 98.677192700000010000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo de Refer'#234'ncia')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 597.409470300000000000
          Top = 98.677192700000010000
          Width = 37.795300000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 122.354358050000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Principal')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 144.141759630000000000
          Width = 98.267780000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Atualiza'#231#227'o Monet'#225'ria')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 166.818924980000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 188.496090330000000000
          Width = 30.236240000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 212.173255690000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total a Recolher')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 590.850774000000000000
          Top = 61.771717499999990000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."DataVencimento"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 545.496414000000000000
          Top = 85.448897500000000000
          Width = 124.724490000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."NumDocOrigem"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 510.142054000000000000
          Top = 109.126077500000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."PeriodoReferencia"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 602.189364000000000000
          Top = 109.126077500000000000
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IIF(<Guia."Parcela"> <> '#39'0'#39', <Guia."Parcela">,'#39#39')]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 579.512184000000000000
          Top = 129.023727500000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."ValorPrincipal"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 579.512184000000000000
          Top = 152.700907500000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."AtualizacaoMonetaria"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 579.512184000000000000
          Top = 174.378087500000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."Juros"]')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 579.512184000000000000
          Top = 196.055267500000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."Multa"]')
          ParentFont = False
          Wysiwyg = False
        end
        object BarCode: TfrxBarCodeView
          AllowVectorExport = True
          Left = 37.818967940000000000
          Top = 252.629951040000000000
          Width = 412.800000000000000000
          Height = 49.133860710000000000
          BarType = bcCode_2_5_interleaved
          Expression = '<Guia."CodigoBarras">'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '858000000011000000901300800120130328190000028004'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 578.512184000000000000
          Top = 235.071037500000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '1'#170' via - Banco')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 675.693384000000000000
          Top = 114.685137500000000000
          Width = 7.559060000000000000
          Height = 109.606370000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'A'
            'u'
            't'
            'e'
            'n'
            't'
            'i'
            'c'
            'a'
            #231
            #227
            'o')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 84.818902030000000000
          Top = 237.858291400000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[FormatMaskText('#39'00000000000 0 00000000000 0 00000000000 0 00000' +
              '000000 0;0;'#39#39#39',<Guia."RepresentacaoNumerica">)]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 579.425604000000000000
          Top = 219.511977500000000000
          Width = 90.708720000000000000
          Height = 11.338582680000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Guia."ValorPrincipal"> +'
            '<Guia."AtualizacaoMonetaria"> +'
            '<Guia."Juros"> +'
            '<Guia."Multa">]')
          ParentFont = False
          Wysiwyg = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 34.464564000000000000
          Top = 27.519692850000000000
          Width = 457.323130000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 199.873927380000000000
          Top = 30.299220410000000000
          Width = 132.283550000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Contribuinte Emitente')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 36.818924000000000000
          Top = 40.748039310000000000
          Width = 56.692950000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social:')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 381.102474000000000000
          Top = 40.748039310000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ/CPF/Insc. Est:')
          ParentFont = False
          Wysiwyg = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 492.787694000000000000
          Top = 27.519707500000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 494.448806200000000000
          Top = 29.299237500000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' de Controle')
          ParentFont = False
          Wysiwyg = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 561.819234000000000000
          Top = 39.858297500000000000
          Width = 109.606370000000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Guia."NumeroControle"]')
          ParentFont = False
          Wysiwyg = False
        end
      end
    end
  end
  object cldasegen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'daseprdin3'
    RemoteServer = dmconexao.SocketConnection1
    Left = 496
    Top = 360
  end
  object cldasegen2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'daseprdin4'
    RemoteServer = dmconexao.SocketConnection1
    Left = 392
    Top = 320
  end
  object ACBrGNRE1: TACBrGNRE
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.ExibirErroSchema = False
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.PathSalvar = 'C:\GNRE_PDF\'
    Configuracoes.Arquivos.Salvar = False
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathGNRE = True
    Configuracoes.Arquivos.SalvarApenasGNREProcessadas = True
    Configuracoes.Arquivos.PathGNRE = 'c:\gnre_pdf\gnre'
    Configuracoes.Arquivos.PathArqTXT = 'C:\GNRE_PDF\TXT'
    Configuracoes.Arquivos.SalvarTXT = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    GNREGuia = ACBrGNREGuiaFR1
    Left = 400
    Top = 264
  end
  object ACBrGNREGuiaFR1: TACBrGNREGuiaFR
    ACBrGNRE = ACBrGNRE1
    PathPDF = 'c:\gnre_pdf\salvar\'
    MostrarPreview = False
    MostrarStatus = True
    TamanhoPapel = tpA4
    NumCopias = 1
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    EspessuraBorda = 1
    ShowDialog = False
    Left = 296
    Top = 288
  end
  object dasovi_nf: TDataSource
    AutoEdit = False
    DataSet = cldasevi_nf
    Left = 296
    Top = 344
  end
  object daso_lotes: TDataSource
    AutoEdit = False
    DataSet = cldaselotes
    Left = 88
    Top = 384
  end
  object XMLDocument1: TXMLDocument
    Left = 160
    Top = 224
    DOMVendorDesc = 'MSXML'
  end
  object cldasegen3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'daseprdin6'
    RemoteServer = dmconexao.SocketConnection1
    Left = 104
    Top = 176
  end
end
