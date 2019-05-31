object frmNotas: TfrmNotas
  Left = 0
  Top = 0
  Width = 1200
  Height = 516
  TabOrder = 0
  OnEnter = FrameEnter
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 521
    Height = 406
    Align = alLeft
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dasoemissor
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1NFE: TcxGridDBColumn
        Caption = 'Nfe'
        DataBinding.FieldName = 'NFE'
      end
      object cxGrid1DBTableView1DATA_EMISSAO: TcxGridDBColumn
        Caption = 'Dt. Emiss'#227'o'
        DataBinding.FieldName = 'DATA_EMISSAO'
      end
      object cxGrid1DBTableView1HORA_EMISSAO: TcxGridDBColumn
        Caption = 'Hora Emiss'#227'o'
        DataBinding.FieldName = 'HORA_EMISSAO'
      end
      object cxGrid1DBTableView1CHAVE_NFE: TcxGridDBColumn
        Caption = 'Chave'
        DataBinding.FieldName = 'CHAVE_NFE'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 406
    Width = 1200
    Height = 110
    Align = alBottom
    TabOrder = 1
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 104
    ClientRectLeft = 2
    ClientRectRight = 1194
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'Transmitir ao Sefaz'
      ImageIndex = 0
      object cxButton1: TcxButton
        Left = 3
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Transmitir'
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Transmitidas ao Sefaz'
      ImageIndex = 1
      object cxButton2: TcxButton
        Left = 352
        Top = 26
        Width = 105
        Height = 25
        Caption = 'Imprimir Danfe'
        TabOrder = 0
        OnClick = cxButton2Click
      end
      object cxLabel10: TcxLabel
        Left = 2
        Top = 13
        Caption = 'Emitida de'
        Transparent = True
      end
      object cxLabel11: TcxLabel
        Left = 34
        Top = 39
        Caption = 'At'#233
        Transparent = True
      end
      object de: TcxDateEdit
        Left = 63
        Top = 12
        TabOrder = 3
        Width = 117
      end
      object ate: TcxDateEdit
        Left = 63
        Top = 38
        TabOrder = 4
        Width = 117
      end
      object cxButton7: TcxButton
        Left = 186
        Top = 13
        Width = 78
        Height = 44
        Caption = 'Processar'
        TabOrder = 5
        OnClick = cxButton7Click
      end
      object cxButton8: TcxButton
        Left = 727
        Top = 25
        Width = 105
        Height = 25
        Caption = 'Cancelar Nota'
        TabOrder = 6
        OnClick = cxButton8Click
      end
      object cxButton9: TcxButton
        Left = 854
        Top = 25
        Width = 105
        Height = 25
        Caption = 'Carta Corre'#231#227'o'
        TabOrder = 7
        OnClick = cxButton9Click
      end
      object cxButton3: TcxButton
        Left = 601
        Top = 26
        Width = 105
        Height = 25
        Caption = 'Inutilizar Numera'#231#227'o'
        TabOrder = 8
        OnClick = cxButton3Click
      end
      object cxButton6: TcxButton
        Left = 478
        Top = 25
        Width = 105
        Height = 25
        Caption = 'Danfe (PDF)'
        TabOrder = 9
        OnClick = cxButton6Click
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Notas com Problema'
      ImageIndex = 2
      object cxButton4: TcxButton
        Left = 3
        Top = 28
        Width = 140
        Height = 25
        Caption = 'Liberar para Transmitir'
        TabOrder = 0
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 229
        Top = 28
        Width = 161
        Height = 25
        Caption = 'Desistir da A'#231#227'o com Problema'
        TabOrder = 1
        OnClick = cxButton5Click
      end
      object cxButton10: TcxButton
        Left = 445
        Top = 28
        Width = 369
        Height = 25
        Caption = 
          'Carregar XML - (Duplicidade de NF-e com diferen'#231'a na Chave de Ac' +
          'esso)'
        TabOrder = 2
        OnClick = cxButton10Click
      end
    end
  end
  object cxpgstatus: TcxPageControl
    Left = 521
    Top = 0
    Width = 679
    Height = 406
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tashatual
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 400
    ClientRectLeft = 2
    ClientRectRight = 673
    ClientRectTop = 26
    object tashatual: TcxTabSheet
      Caption = #218'ltima Situa'#231#227'o'
      ImageIndex = 0
      object cxLabel8: TcxLabel
        Left = 31
        Top = 20
        Caption = 'A'#231#227'o'
        Transparent = True
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 64
        Top = 18
        DataBinding.DataField = 'ACAO'
        DataBinding.DataSource = dasoemissor
        Properties.Items = <
          item
            Description = 'Enviar'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Cancelar'
            Value = 2
          end
          item
            Description = 'Inutilizar'
            Value = 3
          end
          item
            Description = 'Carta Corre'#231#227'o'
            Value = 4
          end>
        TabOrder = 1
        Width = 129
      end
      object cxLabel9: TcxLabel
        Left = 210
        Top = 20
        Caption = 'Resultado'
        Transparent = True
      end
      object cxDBImageComboBox2: TcxDBImageComboBox
        Left = 268
        Top = 18
        DataBinding.DataField = 'RESULTADO'
        DataBinding.DataSource = dasoemissor
        Properties.Items = <
          item
            Description = 'Novo'
            Value = 0
          end
          item
            Description = 'OK'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Aguardando'
            Value = 2
          end
          item
            Description = 'Problema'
            Value = 3
          end>
        TabOrder = 3
        Width = 129
      end
      object cxDBMemo6: TcxDBMemo
        Left = 64
        Top = 49
        DataBinding.DataField = 'STATUS_ATUAL'
        DataBinding.DataSource = dasoemissor
        Properties.ScrollBars = ssVertical
        TabOrder = 4
        Height = 307
        Width = 593
      end
      object cxLabel15: TcxLabel
        Left = 8
        Top = 52
        Caption = 'Resposta'
        Transparent = True
      end
    end
    object tashenvio: TcxTabSheet
      Caption = 'Envio'
      ImageIndex = 1
      object cxLabel1: TcxLabel
        Left = 16
        Top = 18
        Caption = 'Protocolo'
        Transparent = True
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 72
        Top = 18
        DataBinding.DataField = 'PROTOCOLO'
        DataBinding.DataSource = dasoemissor
        TabOrder = 1
        Width = 129
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 280
        Top = 18
        DataBinding.DataField = 'DATA_HORA_RECIBO'
        DataBinding.DataSource = dasoemissor
        TabOrder = 2
        Width = 129
      end
      object cxLabel16: TcxLabel
        Left = 237
        Top = 18
        Caption = 'Dt.Hr.'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 17
        Top = 45
        Caption = 'Resposta'
        Transparent = True
      end
      object cxDBMemo1: TcxDBMemo
        Left = 72
        Top = 45
        DataBinding.DataField = 'STAT_RESP_ENVIO'
        DataBinding.DataSource = dasoemissor
        Properties.ScrollBars = ssVertical
        TabOrder = 5
        Height = 311
        Width = 585
      end
    end
    object tashcancelado: TcxTabSheet
      Caption = 'Cancelamento'
      ImageIndex = 2
      object cxLabel3: TcxLabel
        Left = 24
        Top = 18
        Caption = 'Protocolo'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 79
        Top = 18
        DataBinding.DataField = 'PROTOCOLO_CANCELAMENTO'
        DataBinding.DataSource = dasoemissor
        TabOrder = 1
        Width = 129
      end
      object cxLabel14: TcxLabel
        Left = 243
        Top = 18
        Caption = 'Dt.Hr.'
        Transparent = True
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 283
        Top = 18
        DataBinding.DataField = 'DATA_HORA_REC_CANC'
        DataBinding.DataSource = dasoemissor
        TabOrder = 3
        Width = 129
      end
      object cxLabel4: TcxLabel
        Left = 24
        Top = 169
        Caption = 'Resposta'
        Transparent = True
      end
      object cxDBMemo4: TcxDBMemo
        Left = 79
        Top = 168
        DataBinding.DataField = 'STAT_RESP_CANCELAMENTO'
        DataBinding.DataSource = dasoemissor
        Properties.ScrollBars = ssVertical
        TabOrder = 5
        Height = 188
        Width = 578
      end
      object cxDBMemo2: TcxDBMemo
        Left = 79
        Top = 45
        DataBinding.DataField = 'MOTIVO_CANCELAMENTO'
        DataBinding.DataSource = dasoemissor
        Properties.ScrollBars = ssVertical
        TabOrder = 6
        Height = 117
        Width = 578
      end
      object cxLabel12: TcxLabel
        Left = 37
        Top = 46
        Caption = 'Motivo'
        Transparent = True
      end
    end
    object tashcarta: TcxTabSheet
      Caption = 'Carta Corre'#231#227'o'
      ImageIndex = 3
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 671
        Height = 178
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dscorrecao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1PROTOCOLO_CARTA: TcxGridDBColumn
            Caption = 'Protocolo'
            DataBinding.FieldName = 'PROTOCOLO_CARTA'
            Width = 172
          end
          object cxGrid2DBTableView1DATA_HORA_REC_CARTA: TcxGridDBColumn
            Caption = 'Dt.Hr.Protocolo'
            DataBinding.FieldName = 'DATA_HORA_REC_CARTA'
            Width = 164
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 178
        Align = alBottom
        TabOrder = 1
        Height = 196
        Width = 671
        object cxLabel5: TcxLabel
          Left = 10
          Top = 7
          Caption = 'Resposta'
          Transparent = True
        end
        object cxDBMemo3: TcxDBMemo
          Left = 71
          Top = 6
          DataBinding.DataField = 'STAT_RESP_CARTA'
          DataBinding.DataSource = dscorrecao
          Properties.ScrollBars = ssBoth
          TabOrder = 1
          Height = 59
          Width = 595
        end
        object cxDBMemo5: TcxDBMemo
          Left = 71
          Top = 71
          DataBinding.DataField = 'MUDANCA_CARTA'
          DataBinding.DataSource = dscorrecao
          Properties.ScrollBars = ssBoth
          TabOrder = 2
          Height = 117
          Width = 594
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 72
          Caption = 'Corre'#231#227'o'
          Transparent = True
        end
      end
    end
    object tashinut: TcxTabSheet
      Caption = 'Inutiliza'#231#227'o'
      ImageIndex = 4
      object cxDBMemo7: TcxDBMemo
        Left = 64
        Top = 72
        DataBinding.DataField = 'MOTIVO_INUT'
        DataBinding.DataSource = dasoemissor
        Properties.ScrollBars = ssVertical
        TabOrder = 0
        Height = 115
        Width = 593
      end
      object cxLabel20: TcxLabel
        Left = 22
        Top = 73
        Caption = 'Motivo'
        Transparent = True
      end
      object cxLabel18: TcxLabel
        Left = 8
        Top = 18
        Caption = 'Protocolo'
        Transparent = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 64
        Top = 18
        DataBinding.DataField = 'PROTOCOLO_INUT'
        DataBinding.DataSource = dasoemissor
        TabOrder = 3
        Width = 132
      end
      object cxLabel21: TcxLabel
        Left = 231
        Top = 18
        Caption = 'Dt.Hr.'
        Transparent = True
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 271
        Top = 18
        DataBinding.DataField = 'DATA_HORA_REC_UNIT'
        DataBinding.DataSource = dasoemissor
        TabOrder = 5
        Width = 129
      end
      object cxLabel19: TcxLabel
        Left = 9
        Top = 194
        Caption = 'Resposta'
        Transparent = True
      end
      object cxLabel22: TcxLabel
        Left = 11
        Top = 45
        Caption = 'At'#233' Nota'
        Transparent = True
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 64
        Top = 45
        DataBinding.DataField = 'NOTA_INUT_ATE'
        DataBinding.DataSource = dasoemissor
        TabOrder = 8
        Width = 132
      end
      object cxDBMemo8: TcxDBMemo
        Left = 64
        Top = 193
        DataBinding.DataField = 'STAT_RESP_INUT'
        DataBinding.DataSource = dasoemissor
        Properties.ScrollBars = ssVertical
        TabOrder = 9
        Height = 163
        Width = 593
      end
    end
  end
  object cldasevi_nf: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM VI_NF9EC'
    Params = <>
    ProviderName = 'daseprdina'
    RemoteServer = dmconexao.SocketConnection1
    Left = 32
    Top = 72
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
    object cldasevi_nfCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object cldasevi_nfPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasevi_nfNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasevi_nfTOTAL_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
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
    object cldasevi_nfST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfFUNDO_POBREZA: TFMTBCDField
      FieldName = 'FUNDO_POBREZA'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfGNRE_UNICA: TSmallintField
      FieldName = 'GNRE_UNICA'
    end
    object cldasevi_nfICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasevi_nfFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nfEXP_UF_EMBARQUE: TStringField
      FieldName = 'EXP_UF_EMBARQUE'
      Size = 2
    end
    object cldasevi_nfEXP_LOC_EMBARQUE: TStringField
      FieldName = 'EXP_LOC_EMBARQUE'
      Size = 60
    end
    object cldasevi_nfEXP_DESP_EMBARQUES: TStringField
      FieldName = 'EXP_DESP_EMBARQUES'
      Size = 60
    end
    object cldasevi_nfCLIENTE: TStringField
      FieldName = 'CLIENTE'
    end
    object cldasevi_nfRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object cldasevi_nfIE: TStringField
      FieldName = 'IE'
    end
    object cldasevi_nfESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      FixedChar = True
      Size = 2
    end
    object cldasevi_nfNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cldasevi_nfDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cldasevi_nfIBGE_DEVOLUCAO: TStringField
      FieldName = 'IBGE_DEVOLUCAO'
      Size = 15
    end
    object cldasevi_nfEMISSAO_DEVOLUCAO: TSQLTimeStampField
      FieldName = 'EMISSAO_DEVOLUCAO'
    end
    object cldasevi_nfCNPJ_DEVOLUCAO: TStringField
      FieldName = 'CNPJ_DEVOLUCAO'
    end
    object cldasevi_nfMODELO_DEVOLUCAO: TStringField
      FieldName = 'MODELO_DEVOLUCAO'
      Size = 5
    end
    object cldasevi_nfSERIE_DEVOLUCAO: TStringField
      FieldName = 'SERIE_DEVOLUCAO'
      Size = 15
    end
    object cldasevi_nfNUMERO_DEVOLUCAO: TIntegerField
      FieldName = 'NUMERO_DEVOLUCAO'
    end
    object cldasevi_nfCHAVE_DEVOLUCAO: TStringField
      FieldName = 'CHAVE_DEVOLUCAO'
      Size = 50
    end
    object cldasevi_nfFINALIDADE_NOTA: TSmallintField
      FieldName = 'FINALIDADE_NOTA'
    end
  end
  object cldasevi_nf_gold: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM VI_NF9EC WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdina'
    RemoteServer = dmconexao.SocketConnection1
    Left = 120
    Top = 72
    object cldasevi_nf_goldIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
    end
    object cldasevi_nf_goldCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object cldasevi_nf_goldTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasevi_nf_goldTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasevi_nf_goldTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nf_goldVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object cldasevi_nf_goldPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasevi_nf_goldNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasevi_nf_goldTOTAL_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cldasevi_nf_goldPESO: TStringField
      FieldName = 'PESO'
    end
    object cldasevi_nf_goldVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object cldasevi_nf_goldSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object cldasevi_nf_goldFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nf_goldVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasevi_nf_goldMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nf_goldCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object cldasevi_nf_goldCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object cldasevi_nf_goldTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasevi_nf_goldFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cldasevi_nf_goldCLIENTE: TStringField
      FieldName = 'CLIENTE'
    end
    object cldasevi_nf_goldRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object cldasevi_nf_goldIE: TStringField
      FieldName = 'IE'
    end
    object cldasevi_nf_goldESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      FixedChar = True
      Size = 2
    end
    object cldasevi_nf_goldNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cldasevi_nf_goldDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object cldasenf: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NF WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdind'
    RemoteServer = dmconexao.SocketConnection1
    Left = 232
    Top = 72
    object cldasenfCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasenfIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
      Required = True
    end
    object cldasenfCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object cldasenfTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasenfTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenfVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasenfPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasenfNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasenfPESO: TStringField
      FieldName = 'PESO'
    end
    object cldasenfVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object cldasenfSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object cldasenfBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenfICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenfBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Precision = 19
      Size = 2
    end
    object cldasenfST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasenfVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object cldasenfVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasenfVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object cldasenfTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasenfFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object cldasenfOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasenfDATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object cldasenfHORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object cldasenfCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cldasenfESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cldasenfCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cldasenfTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldasenfMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object cldasenfDEVOLVIDO: TSmallintField
      FieldName = 'DEVOLVIDO'
    end
    object cldasenfCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object cldasenfCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object cldasenfCANCELADO_MOTIVO: TBlobField
      FieldName = 'CANCELADO_MOTIVO'
      Size = 8
    end
    object cldasenfFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      FixedChar = True
      Size = 1
    end
    object cldasenfCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object cldasenfNOTA_CLIENTE: TSmallintField
      FieldName = 'NOTA_CLIENTE'
    end
    object cldasenfDEV_ENV_EST: TSmallintField
      FieldName = 'DEV_ENV_EST'
    end
    object cldasenfDT_ENTRADA_ESTOQUE: TDateField
      FieldName = 'DT_ENTRADA_ESTOQUE'
    end
    object cldasenfFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cldasenfPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenfTOTAL_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenfOBS_ADICIONAL: TBlobField
      FieldName = 'OBS_ADICIONAL'
      Size = 8
    end
    object cldasenfGNRE_PAGA: TSmallintField
      FieldName = 'GNRE_PAGA'
    end
    object cldasenfCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 60
    end
    object cldasenfMOVIMENTA_ESTOQUE: TSmallintField
      FieldName = 'MOVIMENTA_ESTOQUE'
    end
    object cldasenfUTILIZADA_BOLETO: TSmallintField
      FieldName = 'UTILIZADA_BOLETO'
    end
    object cldasenfEXP_ESTOQUE: TIntegerField
      FieldName = 'EXP_ESTOQUE'
    end
    object cldasenfISS: TFMTBCDField
      FieldName = 'ISS'
      Precision = 19
      Size = 2
    end
    object cldasenfSERVICO: TFMTBCDField
      FieldName = 'SERVICO'
      Precision = 19
      Size = 2
    end
    object cldasenfIND_PRESENCA: TStringField
      FieldName = 'IND_PRESENCA'
      Size = 5
    end
    object cldasenfIBGE_DEVOLUCAO: TStringField
      FieldName = 'IBGE_DEVOLUCAO'
      Size = 15
    end
    object cldasenfEMISSAO_DEVOLUCAO: TSQLTimeStampField
      FieldName = 'EMISSAO_DEVOLUCAO'
    end
    object cldasenfCNPJ_DEVOLUCAO: TStringField
      FieldName = 'CNPJ_DEVOLUCAO'
    end
    object cldasenfMODELO_DEVOLUCAO: TStringField
      FieldName = 'MODELO_DEVOLUCAO'
      Size = 5
    end
    object cldasenfSERIE_DEVOLUCAO: TStringField
      FieldName = 'SERIE_DEVOLUCAO'
      Size = 15
    end
    object cldasenfNUMERO_DEVOLUCAO: TIntegerField
      FieldName = 'NUMERO_DEVOLUCAO'
    end
    object cldasenfCHAVE_DEVOLUCAO: TStringField
      FieldName = 'CHAVE_DEVOLUCAO'
      Size = 50
    end
    object cldasenfPERC_FP: TFMTBCDField
      FieldName = 'PERC_FP'
      Precision = 19
      Size = 2
    end
    object cldasenfVLR_FP: TFMTBCDField
      FieldName = 'VLR_FP'
      Precision = 19
      Size = 2
    end
    object cldasenfGNRE_UNICA: TSmallintField
      FieldName = 'GNRE_UNICA'
    end
    object cldasenfGUIA_GNRE: TBlobField
      FieldName = 'GUIA_GNRE'
      Size = 8
    end
    object cldasenfGUIA_GNRE_FP: TBlobField
      FieldName = 'GUIA_GNRE_FP'
      Size = 8
    end
    object cldasenfPG_GUIA_GNRE: TBlobField
      FieldName = 'PG_GUIA_GNRE'
      Size = 8
    end
    object cldasenfPG_GUIA_GNRE_FP: TBlobField
      FieldName = 'PG_GUIA_GNRE_FP'
      Size = 8
    end
    object cldasenfLIB_DESP_OUT_EST: TSmallintField
      FieldName = 'LIB_DESP_OUT_EST'
    end
    object cldasenfGNRE_LOTE: TStringField
      FieldName = 'GNRE_LOTE'
      Size = 30
    end
    object cldasenfGNRE_RETORNO_INCONSISTENCIA: TBlobField
      FieldName = 'GNRE_RETORNO_INCONSISTENCIA'
      Size = 8
    end
    object cldasenfGNRE_RECIBO: TStringField
      FieldName = 'GNRE_RECIBO'
      Size = 40
    end
    object cldasenfGNRE_RETORNO_TXT: TBlobField
      FieldName = 'GNRE_RETORNO_TXT'
      Size = 8
    end
    object cldasenfGNRE_BARRA: TStringField
      FieldName = 'GNRE_BARRA'
      Size = 100
    end
    object cldasenfGNRE_RECIBO_FP: TStringField
      FieldName = 'GNRE_RECIBO_FP'
      Size = 40
    end
    object cldasenfGNRE_RETORNO_TXT_FP: TBlobField
      FieldName = 'GNRE_RETORNO_TXT_FP'
      Size = 8
    end
    object cldasenfGNRE_BARRA_FP: TStringField
      FieldName = 'GNRE_BARRA_FP'
      Size = 100
    end
    object cldasenfGNRE_RETORNO_INCONSISTENCIA_FP: TBlobField
      FieldName = 'GNRE_RETORNO_INCONSISTENCIA_FP'
      Size = 8
    end
    object cldasenfGNRE_STATUS: TStringField
      FieldName = 'GNRE_STATUS'
    end
    object cldasenfGNRE_STATUS_FP: TStringField
      FieldName = 'GNRE_STATUS_FP'
    end
    object cldasenfEXP_UF_EMBARQUE: TStringField
      FieldName = 'EXP_UF_EMBARQUE'
      Size = 2
    end
    object cldasenfEXP_LOC_EMBARQUE: TStringField
      FieldName = 'EXP_LOC_EMBARQUE'
      Size = 60
    end
    object cldasenfEXP_DESP_EMBARQUES: TStringField
      FieldName = 'EXP_DESP_EMBARQUES'
      Size = 60
    end
    object cldasenfCOLIGADA_BREST: TSmallintField
      FieldName = 'COLIGADA_BREST'
    end
    object cldasenfFINALIDADE_NOTA: TSmallintField
      FieldName = 'FINALIDADE_NOTA'
    end
    object cldasenfPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Precision = 19
      Size = 3
    end
    object cldasenfPESO_LIQUITO: TFMTBCDField
      FieldName = 'PESO_LIQUITO'
      Precision = 19
      Size = 3
    end
    object cldasenfCHAVE_NOTA_ORIGEM: TStringField
      FieldName = 'CHAVE_NOTA_ORIGEM'
      Size = 60
    end
  end
  object CLDASENFITEM: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NF_ITENS'
    Params = <>
    ProviderName = 'daseprdinb'
    RemoteServer = dmconexao.SocketConnection1
    Left = 320
    Top = 72
    object CLDASENFITEMCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object CLDASENFITEMIDENTIFICACAO: TSmallintField
      FieldName = 'IDENTIFICACAO'
      Required = True
    end
    object CLDASENFITEMCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Required = True
      Size = 12
    end
    object CLDASENFITEMQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object CLDASENFITEMVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMICMS_OP_PROPRIA: TFMTBCDField
      FieldName = 'ICMS_OP_PROPRIA'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMICMS_SUBS_TRI: TFMTBCDField
      FieldName = 'ICMS_SUBS_TRI'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMALI_ICMS: TIntegerField
      FieldName = 'ALI_ICMS'
    end
    object CLDASENFITEMIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMALI_IPI: TIntegerField
      FieldName = 'ALI_IPI'
    end
    object CLDASENFITEMPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMIRPJ: TFMTBCDField
      FieldName = 'IRPJ'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object CLDASENFITEMCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 8
    end
    object CLDASENFITEMPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Size = 12
    end
    object CLDASENFITEMSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object CLDASENFITEMCONTR_SOCIAL: TFMTBCDField
      FieldName = 'CONTR_SOCIAL'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMALI_SUBS_TRI: TIntegerField
      FieldName = 'ALI_SUBS_TRI'
    end
    object CLDASENFITEMBCSUBSTRI: TFMTBCDField
      FieldName = 'BCSUBSTRI'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMBASEICMSOP: TFMTBCDField
      FieldName = 'BASEICMSOP'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object CLDASENFITEMTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object CLDASENFITEMIMPORTADO: TIntegerField
      FieldName = 'IMPORTADO'
    end
    object CLDASENFITEMRECOLHIDO_ATE: TFMTBCDField
      FieldName = 'RECOLHIDO_ATE'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMICMS_RECATE: TFMTBCDField
      FieldName = 'ICMS_RECATE'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMDESCR_PRODUTO: TBlobField
      FieldName = 'DESCR_PRODUTO'
      Size = 8
    end
    object CLDASENFITEMCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object CLDASENFITEMDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 5
    end
    object CLDASENFITEMCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 5
    end
    object CLDASENFITEMCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 5
    end
    object CLDASENFITEMALI_PIS: TFMTBCDField
      FieldName = 'ALI_PIS'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMALI_COFINS: TFMTBCDField
      FieldName = 'ALI_COFINS'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMISS: TFMTBCDField
      FieldName = 'ISS'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMCODIGO_ORIGINAL: TStringField
      FieldName = 'CODIGO_ORIGINAL'
      Size = 12
    end
    object CLDASENFITEMSERVICO: TFMTBCDField
      FieldName = 'SERVICO'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMPERC_FP: TFMTBCDField
      FieldName = 'PERC_FP'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMVLR_FP: TFMTBCDField
      FieldName = 'VLR_FP'
      Precision = 19
      Size = 2
    end
    object CLDASENFITEMGNRE_UNICA: TSmallintField
      FieldName = 'GNRE_UNICA'
    end
  end
  object cldasenfitem_gold: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NF_ITENS'
    Params = <>
    ProviderName = 'daseprdinb'
    RemoteServer = dmconexao.SocketConnection1
    Left = 320
    Top = 120
    object cldasenfitem_goldIDENTIFICACAO: TIntegerField
      FieldName = 'IDENTIFICACAO'
      Required = True
    end
    object cldasenfitem_goldSEQUENCIAL: TSmallintField
      FieldName = 'SEQUENCIAL'
      Required = True
    end
    object cldasenfitem_goldCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Required = True
      Size = 30
    end
    object cldasenfitem_goldQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 19
      Size = 4
    end
    object cldasenfitem_goldVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldICMS_OP_PROPRIA: TFMTBCDField
      FieldName = 'ICMS_OP_PROPRIA'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldICMS_SUBS_TRI: TFMTBCDField
      FieldName = 'ICMS_SUBS_TRI'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldALI_ICMS: TIntegerField
      FieldName = 'ALI_ICMS'
    end
    object cldasenfitem_goldIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldALI_IPI: TIntegerField
      FieldName = 'ALI_IPI'
    end
    object cldasenfitem_goldPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldIRPJ: TFMTBCDField
      FieldName = 'IRPJ'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object cldasenfitem_goldCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 8
    end
    object cldasenfitem_goldPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Size = 12
    end
    object cldasenfitem_goldSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cldasenfitem_goldCONTR_SOCIAL: TFMTBCDField
      FieldName = 'CONTR_SOCIAL'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldALI_SUBS_TRI: TIntegerField
      FieldName = 'ALI_SUBS_TRI'
    end
    object cldasenfitem_goldBCSUBSTRI: TFMTBCDField
      FieldName = 'BCSUBSTRI'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldBASEICMSOP: TFMTBCDField
      FieldName = 'BASEICMSOP'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object cldasenfitem_goldTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenfitem_goldIMPORTADO: TIntegerField
      FieldName = 'IMPORTADO'
    end
    object cldasenfitem_goldRECOLHIDO_ATE: TFMTBCDField
      FieldName = 'RECOLHIDO_ATE'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldICMS_RECATE: TFMTBCDField
      FieldName = 'ICMS_RECATE'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldDESCR_PRODUTO: TBlobField
      FieldName = 'DESCR_PRODUTO'
      Size = 8
    end
    object cldasenfitem_goldCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cldasenfitem_goldDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 5
    end
    object cldasenfitem_goldCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 5
    end
    object cldasenfitem_goldCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 5
    end
    object cldasenfitem_goldALI_PIS: TFMTBCDField
      FieldName = 'ALI_PIS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldALI_COFINS: TFMTBCDField
      FieldName = 'ALI_COFINS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_goldCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 500
    end
  end
  object cldasenf_gold: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NF WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdind'
    RemoteServer = dmconexao.SocketConnection1
    Left = 232
    Top = 120
    object cldasenf_goldIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cldasenf_goldCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object cldasenf_goldTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasenf_goldTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenf_goldVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasenf_goldNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasenf_goldPESO: TStringField
      FieldName = 'PESO'
    end
    object cldasenf_goldVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object cldasenf_goldSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object cldasenf_goldBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object cldasenf_goldOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasenf_goldDATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object cldasenf_goldHORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object cldasenf_goldCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cldasenf_goldESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cldasenf_goldCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cldasenf_goldTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldasenf_goldMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object cldasenf_goldDEVOLVIDO: TSmallintField
      FieldName = 'DEVOLVIDO'
    end
    object cldasenf_goldCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object cldasenf_goldCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object cldasenf_goldCANCELADO_MOTIVO: TBlobField
      FieldName = 'CANCELADO_MOTIVO'
      Size = 8
    end
    object cldasenf_goldFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      FixedChar = True
      Size = 1
    end
    object cldasenf_goldCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object cldasenf_goldNOTA_CLIENTE: TSmallintField
      FieldName = 'NOTA_CLIENTE'
    end
    object cldasenf_goldDEV_ENV_EST: TSmallintField
      FieldName = 'DEV_ENV_EST'
    end
    object cldasenf_goldDT_ENTRADA_ESTOQUE: TDateField
      FieldName = 'DT_ENTRADA_ESTOQUE'
    end
    object cldasenf_goldFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cldasenf_goldPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldTOTAL_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenf_goldOBS_ADICIONAL: TBlobField
      FieldName = 'OBS_ADICIONAL'
      Size = 8
    end
    object cldasenf_goldGNRE_PAGA: TSmallintField
      FieldName = 'GNRE_PAGA'
    end
    object cldasenf_goldCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 60
    end
    object cldasenf_goldPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Precision = 19
      Size = 3
    end
    object cldasenf_goldPESO_LIQUITO: TFMTBCDField
      FieldName = 'PESO_LIQUITO'
      Precision = 19
      Size = 3
    end
    object cldasenf_goldCHAVE_NOTA_ORIGEM: TStringField
      FieldName = 'CHAVE_NOTA_ORIGEM'
      Size = 60
    end
    object cldasenf_goldQUEBRA: TSmallintField
      FieldName = 'QUEBRA'
    end
  end
  object CLDASEVI_NF_BREST: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM VI_NF9EC WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdina'
    RemoteServer = dmconexao.SocketConnection1
    Left = 56
    Top = 144
    object CLDASEVI_NF_BRESTCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
    end
    object CLDASEVI_NF_BRESTIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
    end
    object CLDASEVI_NF_BRESTCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object CLDASEVI_NF_BRESTTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object CLDASEVI_NF_BRESTTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object CLDASEVI_NF_BRESTTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object CLDASEVI_NF_BRESTVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object CLDASEVI_NF_BRESTPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object CLDASEVI_NF_BRESTNFE: TIntegerField
      FieldName = 'NFE'
    end
    object CLDASEVI_NF_BRESTTOTAL_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CLDASEVI_NF_BRESTPESO: TStringField
      FieldName = 'PESO'
    end
    object CLDASEVI_NF_BRESTVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object CLDASEVI_NF_BRESTSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object CLDASEVI_NF_BRESTFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object CLDASEVI_NF_BRESTVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object CLDASEVI_NF_BRESTMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object CLDASEVI_NF_BRESTCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object CLDASEVI_NF_BRESTCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object CLDASEVI_NF_BRESTTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTFUNDO_POBREZA: TFMTBCDField
      FieldName = 'FUNDO_POBREZA'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTGNRE_UNICA: TSmallintField
      FieldName = 'GNRE_UNICA'
    end
    object CLDASEVI_NF_BRESTICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object CLDASEVI_NF_BRESTFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object CLDASEVI_NF_BRESTEXP_UF_EMBARQUE: TStringField
      FieldName = 'EXP_UF_EMBARQUE'
      Size = 2
    end
    object CLDASEVI_NF_BRESTEXP_LOC_EMBARQUE: TStringField
      FieldName = 'EXP_LOC_EMBARQUE'
      Size = 60
    end
    object CLDASEVI_NF_BRESTEXP_DESP_EMBARQUES: TStringField
      FieldName = 'EXP_DESP_EMBARQUES'
      Size = 60
    end
    object CLDASEVI_NF_BRESTCLIENTE: TStringField
      FieldName = 'CLIENTE'
    end
    object CLDASEVI_NF_BRESTRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object CLDASEVI_NF_BRESTIE: TStringField
      FieldName = 'IE'
    end
    object CLDASEVI_NF_BRESTESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      FixedChar = True
      Size = 2
    end
    object CLDASEVI_NF_BRESTNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CLDASEVI_NF_BRESTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object CLDASEVI_NF_BRESTIBGE_DEVOLUCAO: TStringField
      FieldName = 'IBGE_DEVOLUCAO'
      Size = 15
    end
    object CLDASEVI_NF_BRESTEMISSAO_DEVOLUCAO: TSQLTimeStampField
      FieldName = 'EMISSAO_DEVOLUCAO'
    end
    object CLDASEVI_NF_BRESTCNPJ_DEVOLUCAO: TStringField
      FieldName = 'CNPJ_DEVOLUCAO'
    end
    object CLDASEVI_NF_BRESTMODELO_DEVOLUCAO: TStringField
      FieldName = 'MODELO_DEVOLUCAO'
      Size = 5
    end
    object CLDASEVI_NF_BRESTSERIE_DEVOLUCAO: TStringField
      FieldName = 'SERIE_DEVOLUCAO'
      Size = 15
    end
    object CLDASEVI_NF_BRESTNUMERO_DEVOLUCAO: TIntegerField
      FieldName = 'NUMERO_DEVOLUCAO'
    end
    object CLDASEVI_NF_BRESTCHAVE_DEVOLUCAO: TStringField
      FieldName = 'CHAVE_DEVOLUCAO'
      Size = 50
    end
    object CLDASEVI_NF_BRESTFINALIDADE_NOTA: TSmallintField
      FieldName = 'FINALIDADE_NOTA'
    end
  end
  object cldaseempresas: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM EMPRESAS'
    Params = <>
    ProviderName = 'daseprdin4'
    RemoteServer = dmconexao.SocketConnection1
    Left = 32
    Top = 192
    object cldaseempresasCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cldaseempresasNOMEMP: TStringField
      FieldName = 'NOMEMP'
      Size = 50
    end
    object cldaseempresasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cldaseempresasIE: TStringField
      FieldName = 'IE'
    end
    object cldaseempresasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cldaseempresasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cldaseempresasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cldaseempresasESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cldaseempresasCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cldaseempresasCODIGO_MUN: TStringField
      FieldName = 'CODIGO_MUN'
      Size = 5
    end
    object cldaseempresasNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Size = 50
    end
    object cldaseempresasLOGO_NFE: TBlobField
      FieldName = 'LOGO_NFE'
      Size = 8
    end
    object cldaseempresasRAZAO_NFE: TStringField
      FieldName = 'RAZAO_NFE'
      Size = 60
    end
  end
  object cldasenf_brest: TClientDataSet
    Aggregates = <>
    CommandText = 'select * FROM NF WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdind'
    RemoteServer = dmconexao.SocketConnection1
    Left = 232
    Top = 176
    object cldasenf_brestCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasenf_brestIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
      Required = True
    end
    object cldasenf_brestCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object cldasenf_brestTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasenf_brestTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenf_brestVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasenf_brestNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasenf_brestPESO: TStringField
      FieldName = 'PESO'
    end
    object cldasenf_brestVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object cldasenf_brestSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object cldasenf_brestBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object cldasenf_brestOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasenf_brestDATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object cldasenf_brestHORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object cldasenf_brestCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cldasenf_brestESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cldasenf_brestCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cldasenf_brestTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldasenf_brestMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object cldasenf_brestDEVOLVIDO: TSmallintField
      FieldName = 'DEVOLVIDO'
    end
    object cldasenf_brestCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object cldasenf_brestCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object cldasenf_brestCANCELADO_MOTIVO: TBlobField
      FieldName = 'CANCELADO_MOTIVO'
      Size = 8
    end
    object cldasenf_brestFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      FixedChar = True
      Size = 1
    end
    object cldasenf_brestCOMPLEMENTAR: TSmallintField
      FieldName = 'COMPLEMENTAR'
    end
    object cldasenf_brestNOTA_CLIENTE: TSmallintField
      FieldName = 'NOTA_CLIENTE'
    end
    object cldasenf_brestDEV_ENV_EST: TSmallintField
      FieldName = 'DEV_ENV_EST'
    end
    object cldasenf_brestDT_ENTRADA_ESTOQUE: TDateField
      FieldName = 'DT_ENTRADA_ESTOQUE'
    end
    object cldasenf_brestFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cldasenf_brestPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestTOTAL_DESCONTO: TFMTBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestOBS_ADICIONAL: TBlobField
      FieldName = 'OBS_ADICIONAL'
      Size = 8
    end
    object cldasenf_brestGNRE_PAGA: TSmallintField
      FieldName = 'GNRE_PAGA'
    end
    object cldasenf_brestCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 60
    end
    object cldasenf_brestMOVIMENTA_ESTOQUE: TSmallintField
      FieldName = 'MOVIMENTA_ESTOQUE'
    end
    object cldasenf_brestUTILIZADA_BOLETO: TSmallintField
      FieldName = 'UTILIZADA_BOLETO'
    end
    object cldasenf_brestEXP_ESTOQUE: TIntegerField
      FieldName = 'EXP_ESTOQUE'
    end
    object cldasenf_brestISS: TFMTBCDField
      FieldName = 'ISS'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestSERVICO: TFMTBCDField
      FieldName = 'SERVICO'
      Precision = 19
      Size = 2
    end
    object cldasenf_brestIBGE_DEVOLUCAO: TStringField
      FieldName = 'IBGE_DEVOLUCAO'
      Size = 15
    end
    object cldasenf_brestEMISSAO_DEVOLUCAO: TSQLTimeStampField
      FieldName = 'EMISSAO_DEVOLUCAO'
    end
    object cldasenf_brestCNPJ_DEVOLUCAO: TStringField
      FieldName = 'CNPJ_DEVOLUCAO'
    end
    object cldasenf_brestMODELO_DEVOLUCAO: TStringField
      FieldName = 'MODELO_DEVOLUCAO'
      Size = 5
    end
    object cldasenf_brestSERIE_DEVOLUCAO: TStringField
      FieldName = 'SERIE_DEVOLUCAO'
      Size = 15
    end
    object cldasenf_brestNUMERO_DEVOLUCAO: TIntegerField
      FieldName = 'NUMERO_DEVOLUCAO'
    end
    object cldasenf_brestCHAVE_DEVOLUCAO: TStringField
      FieldName = 'CHAVE_DEVOLUCAO'
      Size = 50
    end
    object cldasenf_brestCOLIGADA_BREST: TSmallintField
      FieldName = 'COLIGADA_BREST'
    end
    object cldasenf_brestRECALCULADO_CANCELAMENTO: TSmallintField
      FieldName = 'RECALCULADO_CANCELAMENTO'
    end
    object cldasenf_brestRECALCULADO_SAI_EST: TSmallintField
      FieldName = 'RECALCULADO_SAI_EST'
    end
  end
  object cldasenfitem_brest: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NF_ITENS'
    Params = <>
    ProviderName = 'daseprdinb'
    RemoteServer = dmconexao.SocketConnection1
    Left = 320
    Top = 184
    object cldasenfitem_brestCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasenfitem_brestIDENTIFICACAO: TSmallintField
      FieldName = 'IDENTIFICACAO'
      Required = True
    end
    object cldasenfitem_brestCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Required = True
      Size = 12
    end
    object cldasenfitem_brestQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cldasenfitem_brestVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestICMS_OP_PROPRIA: TFMTBCDField
      FieldName = 'ICMS_OP_PROPRIA'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestICMS_SUBS_TRI: TFMTBCDField
      FieldName = 'ICMS_SUBS_TRI'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_ICMS: TIntegerField
      FieldName = 'ALI_ICMS'
    end
    object cldasenfitem_brestIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_IPI: TIntegerField
      FieldName = 'ALI_IPI'
    end
    object cldasenfitem_brestPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestIRPJ: TFMTBCDField
      FieldName = 'IRPJ'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object cldasenfitem_brestCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 8
    end
    object cldasenfitem_brestPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Size = 12
    end
    object cldasenfitem_brestSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cldasenfitem_brestCONTR_SOCIAL: TFMTBCDField
      FieldName = 'CONTR_SOCIAL'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_SUBS_TRI: TIntegerField
      FieldName = 'ALI_SUBS_TRI'
    end
    object cldasenfitem_brestBCSUBSTRI: TFMTBCDField
      FieldName = 'BCSUBSTRI'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestBASEICMSOP: TFMTBCDField
      FieldName = 'BASEICMSOP'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object cldasenfitem_brestTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenfitem_brestIMPORTADO: TIntegerField
      FieldName = 'IMPORTADO'
    end
    object cldasenfitem_brestRECOLHIDO_ATE: TFMTBCDField
      FieldName = 'RECOLHIDO_ATE'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestICMS_RECATE: TFMTBCDField
      FieldName = 'ICMS_RECATE'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestDESCR_PRODUTO: TBlobField
      FieldName = 'DESCR_PRODUTO'
      Size = 8
    end
    object cldasenfitem_brestCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object cldasenfitem_brestDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 5
    end
    object cldasenfitem_brestCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 5
    end
    object cldasenfitem_brestCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 5
    end
    object cldasenfitem_brestALI_PIS: TFMTBCDField
      FieldName = 'ALI_PIS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_COFINS: TFMTBCDField
      FieldName = 'ALI_COFINS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestISS: TFMTBCDField
      FieldName = 'ISS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestCODIGO_ORIGINAL: TStringField
      FieldName = 'CODIGO_ORIGINAL'
      Size = 12
    end
    object cldasenfitem_brestSERVICO: TFMTBCDField
      FieldName = 'SERVICO'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_ICMS_SIMPLES: TFMTBCDField
      FieldName = 'ALI_ICMS_SIMPLES'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_PIS_SIMPLES: TFMTBCDField
      FieldName = 'ALI_PIS_SIMPLES'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_COFINS_SIMPLES: TFMTBCDField
      FieldName = 'ALI_COFINS_SIMPLES'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_IRPF_SIMPLES: TFMTBCDField
      FieldName = 'ALI_IRPF_SIMPLES'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_CSLL_SIMPLES: TFMTBCDField
      FieldName = 'ALI_CSLL_SIMPLES'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_CPP_SIMPLES: TFMTBCDField
      FieldName = 'ALI_CPP_SIMPLES'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestALI_TOTAL_SIMPLES: TFMTBCDField
      FieldName = 'ALI_TOTAL_SIMPLES'
      Precision = 19
      Size = 2
    end
    object cldasenfitem_brestCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 5
    end
  end
  object CLDASEONU: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM ONU'
    Params = <>
    ProviderName = 'daseprdinc'
    RemoteServer = dmconexao.SocketConnection1
    Left = 88
    Top = 264
    object CLDASEONUNUMERO_ONU: TIntegerField
      FieldName = 'NUMERO_ONU'
      Required = True
    end
    object CLDASEONUNUMERO_RISCO: TSmallintField
      FieldName = 'NUMERO_RISCO'
    end
    object CLDASEONUCLASSE: TStringField
      FieldName = 'CLASSE'
      Size = 10
    end
    object CLDASEONUDESCRICAO_CLASSE: TStringField
      FieldName = 'DESCRICAO_CLASSE'
      Size = 40
    end
    object CLDASEONUNOME_EMBARQUE: TStringField
      FieldName = 'NOME_EMBARQUE'
      Size = 40
    end
  end
  object cldaseemissor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NFE_ARQUIVO WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdin1'
    RemoteServer = dmconexao.SocketConnection1
    AfterScroll = cldaseemissorAfterScroll
    Left = 216
    Top = 264
    object cldaseemissorCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cldaseemissorNFE: TIntegerField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cldaseemissorDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cldaseemissorHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
    end
    object cldaseemissorPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 30
    end
    object cldaseemissorCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 50
    end
    object cldaseemissorTXT_ORIGEM: TBlobField
      FieldName = 'TXT_ORIGEM'
      Size = 8
    end
    object cldaseemissorXML_ORIGEM: TBlobField
      FieldName = 'XML_ORIGEM'
      Size = 8
    end
    object cldaseemissorXML_RETORNO: TBlobField
      FieldName = 'XML_RETORNO'
      Size = 8
    end
    object cldaseemissorDATA_ENVIO: TSQLTimeStampField
      FieldName = 'DATA_ENVIO'
    end
    object cldaseemissorCODIGO_ENVIO: TStringField
      FieldName = 'CODIGO_ENVIO'
      Size = 4
    end
    object cldaseemissorMOTIVO_ENVIO: TStringField
      FieldName = 'MOTIVO_ENVIO'
      Size = 100
    end
    object cldaseemissorACAO: TSmallintField
      FieldName = 'ACAO'
    end
    object cldaseemissorRESULTADO: TSmallintField
      FieldName = 'RESULTADO'
    end
    object cldaseemissorSTATUS_ATUAL: TStringField
      FieldName = 'STATUS_ATUAL'
      Size = 300
    end
    object cldaseemissorCOD_RESP_ENVIO: TSmallintField
      FieldName = 'COD_RESP_ENVIO'
    end
    object cldaseemissorSTAT_RESP_ENVIO: TStringField
      FieldName = 'STAT_RESP_ENVIO'
      Size = 300
    end
    object cldaseemissorLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cldaseemissorCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cldaseemissorCOD_RESP_CANCELAMENTO: TSmallintField
      FieldName = 'COD_RESP_CANCELAMENTO'
    end
    object cldaseemissorSTAT_RESP_CANCELAMENTO: TStringField
      FieldName = 'STAT_RESP_CANCELAMENTO'
      Size = 300
    end
    object cldaseemissorPROTOCOLO_CANCELAMENTO: TStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Size = 30
    end
    object cldaseemissorCOD_RESP_CARTA: TSmallintField
      FieldName = 'COD_RESP_CARTA'
    end
    object cldaseemissorSTAT_RESP_CARTA: TStringField
      FieldName = 'STAT_RESP_CARTA'
      Size = 300
    end
    object cldaseemissorPROTOCOLO_CARTA: TStringField
      FieldName = 'PROTOCOLO_CARTA'
      Size = 30
    end
    object cldaseemissorID_NFE: TStringField
      FieldName = 'ID_NFE'
      Size = 60
    end
    object cldaseemissorXML_NFE: TBlobField
      FieldName = 'XML_NFE'
      Size = 8
    end
    object cldaseemissorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object cldaseemissorRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object cldaseemissorNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object cldaseemissorESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object cldaseemissorPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Size = 500
    end
    object cldaseemissorVALOR_NOTA: TFMTBCDField
      FieldName = 'VALOR_NOTA'
      Precision = 19
      Size = 2
    end
    object cldaseemissorDATA_HORA_RECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORA_RECIBO'
    end
    object cldaseemissorPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 60
    end
    object cldaseemissorJUSTIFICATIVA_CANCELAMENTO: TBlobField
      FieldName = 'JUSTIFICATIVA_CANCELAMENTO'
      Size = 8
    end
    object cldaseemissorMOTIVO_CANCELAMENTO: TBlobField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 8
    end
    object cldaseemissorMUDANCA_CARTA: TBlobField
      FieldName = 'MUDANCA_CARTA'
      Size = 8
    end
    object cldaseemissorDATA_HORA_REC_CANC: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CANC'
    end
    object cldaseemissorDATA_HORA_REC_CARTA: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CARTA'
    end
    object cldaseemissorDATA_HORA_REC_UNIT: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_UNIT'
    end
    object cldaseemissorCOD_RESP_INUT: TSmallintField
      FieldName = 'COD_RESP_INUT'
    end
    object cldaseemissorSTAT_RESP_INUT: TStringField
      FieldName = 'STAT_RESP_INUT'
      Size = 300
    end
    object cldaseemissorMOTIVO_INUT: TBlobField
      FieldName = 'MOTIVO_INUT'
      Size = 8
    end
    object cldaseemissorNOTA_INUT_ATE: TIntegerField
      FieldName = 'NOTA_INUT_ATE'
    end
    object cldaseemissorPROTOCOLO_INUT: TStringField
      FieldName = 'PROTOCOLO_INUT'
      Size = 60
    end
    object cldaseemissorXML_CANCELAMENTO: TBlobField
      FieldName = 'XML_CANCELAMENTO'
      Size = 8
    end
    object cldaseemissorXML_INUT: TBlobField
      FieldName = 'XML_INUT'
      Size = 8
    end
    object cldaseemissorXML_CARTA: TBlobField
      FieldName = 'XML_CARTA'
      Size = 8
    end
    object cldaseemissorTOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldaseemissorICMS_ST: TFMTBCDField
      FieldName = 'ICMS_ST'
      Precision = 19
      Size = 2
    end
    object cldaseemissorFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 19
      Size = 2
    end
    object cldaseemissorSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Precision = 19
      Size = 2
    end
    object cldaseemissorIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldaseemissorOUTRASDESP: TFMTBCDField
      FieldName = 'OUTRASDESP'
      Precision = 19
      Size = 2
    end
    object cldaseemissorDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldaseemissorBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 19
      Size = 2
    end
    object cldaseemissorICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldaseemissorTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cldaseemissorIMP_IMP: TFMTBCDField
      FieldName = 'IMP_IMP'
      Precision = 19
      Size = 2
    end
    object cldaseemissorCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldaseemissorPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldaseemissorISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      Precision = 19
      Size = 2
    end
    object cldaseemissorCOFINS_ST: TFMTBCDField
      FieldName = 'COFINS_ST'
      Precision = 19
      Size = 2
    end
    object cldaseemissorPIS_ST: TFMTBCDField
      FieldName = 'PIS_ST'
      Precision = 19
      Size = 2
    end
    object cldaseemissorTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldaseemissorICMS_FCP: TFMTBCDField
      FieldName = 'ICMS_FCP'
      Precision = 19
      Size = 2
    end
    object cldaseemissorDATA_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZACAO'
    end
    object cldaseemissorIMPOSTO_RENDA: TFMTBCDField
      FieldName = 'IMPOSTO_RENDA'
      Precision = 19
      Size = 2
    end
    object cldaseemissorTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object cldaseemissorDENEGADA1: TBlobField
      FieldName = 'DENEGADA1'
      Size = 8
    end
    object cldaseemissorIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
    end
  end
  object dasoemissor: TDataSource
    AutoEdit = False
    DataSet = cldaseemissor
    Left = 328
    Top = 272
  end
  object CLDASECLIENTES: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CLIENTES WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdin6'
    RemoteServer = dmconexao.SocketConnection1
    Left = 416
    Top = 288
    object CLDASECLIENTESCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Required = True
    end
    object CLDASECLIENTESCLIENTE: TStringField
      FieldName = 'CLIENTE'
    end
    object CLDASECLIENTESRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object CLDASECLIENTESENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object CLDASECLIENTESNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object CLDASECLIENTESCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object CLDASECLIENTESBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CLDASECLIENTESCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object CLDASECLIENTESESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CLDASECLIENTESCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CLDASECLIENTESTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CLDASECLIENTESFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object CLDASECLIENTESCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object CLDASECLIENTESIE: TStringField
      FieldName = 'IE'
    end
    object CLDASECLIENTESEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object CLDASECLIENTESPAIS: TStringField
      FieldName = 'PAIS'
      Size = 4
    end
    object CLDASECLIENTESCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object CLDASECLIENTESCODIGO_MUN: TStringField
      FieldName = 'CODIGO_MUN'
      Size = 5
    end
    object CLDASECLIENTESIBGE: TStringField
      FieldName = 'IBGE'
      Size = 7
    end
    object CLDASECLIENTESEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 80
    end
    object CLDASECLIENTESNOME_COMPLETO_REC: TStringField
      FieldName = 'NOME_COMPLETO_REC'
      Size = 50
    end
    object CLDASECLIENTESREGIAO_ID: TIntegerField
      FieldName = 'REGIAO_ID'
    end
    object CLDASECLIENTESCPF: TStringField
      FieldName = 'CPF'
    end
    object CLDASECLIENTESRG: TStringField
      FieldName = 'RG'
    end
  end
  object cldasenf_imp: TClientDataSet
    Aggregates = <>
    CommandText = 'select * FROM NF_IMP WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdine'
    RemoteServer = dmconexao.SocketConnection1
    Left = 416
    Top = 240
    object cldasenf_impCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasenf_impIDENTIFICACAO_ID: TIntegerField
      FieldName = 'IDENTIFICACAO_ID'
      Required = True
    end
    object cldasenf_impCLIENTE_ID: TSmallintField
      FieldName = 'CLIENTE_ID'
    end
    object cldasenf_impTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasenf_impTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenf_impVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasenf_impPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Size = 500
    end
    object cldasenf_impNFE: TIntegerField
      FieldName = 'NFE'
    end
    object cldasenf_impPESO: TStringField
      FieldName = 'PESO'
    end
    object cldasenf_impVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object cldasenf_impSEPARACAO_ID: TIntegerField
      FieldName = 'SEPARACAO_ID'
    end
    object cldasenf_impBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenf_impICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasenf_impBASE_ST: TFMTBCDField
      FieldName = 'BASE_ST'
      Precision = 19
      Size = 2
    end
    object cldasenf_impST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object cldasenf_impVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 19
      Size = 2
    end
    object cldasenf_impVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasenf_impVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 19
      Size = 2
    end
    object cldasenf_impTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasenf_impFRETE_CONTA: TStringField
      FieldName = 'FRETE_CONTA'
      FixedChar = True
      Size = 1
    end
    object cldasenf_impOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasenf_impDATA_IMPRESSAO: TDateField
      FieldName = 'DATA_IMPRESSAO'
    end
    object cldasenf_impHORA_IMPRESSAO: TTimeField
      FieldName = 'HORA_IMPRESSAO'
    end
    object cldasenf_impCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cldasenf_impESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cldasenf_impCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cldasenf_impTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldasenf_impMOVIMENTADO_DE: TStringField
      FieldName = 'MOVIMENTADO_DE'
      FixedChar = True
      Size = 1
    end
    object cldasenf_impEXP_ESTOQUE: TSmallintField
      FieldName = 'EXP_ESTOQUE'
    end
    object cldasenf_impEXP_POR: TStringField
      FieldName = 'EXP_POR'
      Size = 30
    end
    object cldasenf_impEXP_EM: TSQLTimeStampField
      FieldName = 'EXP_EM'
    end
    object cldasenf_impDESP_ADUANEIRA: TFMTBCDField
      FieldName = 'DESP_ADUANEIRA'
      Precision = 19
      Size = 2
    end
    object cldasenf_impTAXA_SISCOMEX: TFMTBCDField
      FieldName = 'TAXA_SISCOMEX'
      Precision = 19
      Size = 2
    end
    object cldasenf_impDATA_DI: TDateField
      FieldName = 'DATA_DI'
    end
    object cldasenf_impNUM_DI: TStringField
      FieldName = 'NUM_DI'
      Size = 10
    end
    object cldasenf_impLOCAL_DESEMBARACO: TStringField
      FieldName = 'LOCAL_DESEMBARACO'
      Size = 60
    end
    object cldasenf_impUF_DESENBARACO: TStringField
      FieldName = 'UF_DESENBARACO'
      Size = 2
    end
    object cldasenf_impDATA_DESENBARACO: TDateField
      FieldName = 'DATA_DESENBARACO'
    end
    object cldasenf_impPESO_BRUTO: TStringField
      FieldName = 'PESO_BRUTO'
    end
    object cldasenf_impTIPO_VOLUME: TStringField
      FieldName = 'TIPO_VOLUME'
      Size = 30
    end
    object cldasenf_impIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldasenf_impII: TFMTBCDField
      FieldName = 'II'
      Precision = 19
      Size = 2
    end
    object cldasenf_impPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldasenf_impCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldasenf_impFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object cldasenf_impCANCELADO_POR: TStringField
      FieldName = 'CANCELADO_POR'
    end
    object cldasenf_impCANCELADO_EM: TSQLTimeStampField
      FieldName = 'CANCELADO_EM'
    end
    object cldasenf_impCANCELADO_MOTIVO: TBlobField
      FieldName = 'CANCELADO_MOTIVO'
      Size = 8
    end
    object cldasenf_impADUAN_COMP: TFMTBCDField
      FieldName = 'ADUAN_COMP'
      Precision = 19
      Size = 2
    end
    object cldasenf_impGERADO_COMP: TSmallintField
      FieldName = 'GERADO_COMP'
    end
    object cldasenf_impNFE_ORI: TIntegerField
      FieldName = 'NFE_ORI'
    end
    object cldasenf_impEMI_ORI: TDateField
      FieldName = 'EMI_ORI'
    end
    object cldasenf_impEMBARQUE: TStringField
      FieldName = 'EMBARQUE'
    end
    object cldasenf_impMARCA_TRANSPORTE: TStringField
      FieldName = 'MARCA_TRANSPORTE'
      Size = 50
    end
    object cldasenf_impCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 60
    end
    object cldasenf_impIMPORTA_FACIL: TSmallintField
      FieldName = 'IMPORTA_FACIL'
    end
    object cldasenf_impRATEIO_MANUAL: TSmallintField
      FieldName = 'RATEIO_MANUAL'
    end
    object cldasenf_impTPVIATRANSP: TStringField
      FieldName = 'TPVIATRANSP'
      Size = 2
    end
    object cldasenf_impVAFRMM: TFMTBCDField
      FieldName = 'VAFRMM'
      Precision = 19
      Size = 2
    end
    object cldasenf_impTPINTERMEDIO: TStringField
      FieldName = 'TPINTERMEDIO'
      Size = 1
    end
    object cldasenf_impCNPJ_ADQUIRENTE: TStringField
      FieldName = 'CNPJ_ADQUIRENTE'
    end
    object cldasenf_impUF_ADQUIRENTE: TStringField
      FieldName = 'UF_ADQUIRENTE'
      Size = 2
    end
  end
  object cldasegen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'daseprdin7'
    RemoteServer = dmconexao.SocketConnection1
    Left = 112
    Top = 336
  end
  object cldasenf_itens_imp: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NF_ITENS_IMP'
    Params = <>
    ProviderName = 'daseprf'
    RemoteServer = dmconexao.SocketConnection1
    Left = 328
    Top = 392
    object cldasenf_itens_impCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasenf_itens_impIDENTIFICACAO: TSmallintField
      FieldName = 'IDENTIFICACAO'
      Required = True
    end
    object cldasenf_itens_impCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Required = True
      Size = 12
    end
    object cldasenf_itens_impQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cldasenf_itens_impVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impICMS_OP_PROPRIA: TFMTBCDField
      FieldName = 'ICMS_OP_PROPRIA'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impICMS_SUBS_TRI: TFMTBCDField
      FieldName = 'ICMS_SUBS_TRI'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impALI_ICMS: TIntegerField
      FieldName = 'ALI_ICMS'
    end
    object cldasenf_itens_impIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impALI_IPI: TIntegerField
      FieldName = 'ALI_IPI'
    end
    object cldasenf_itens_impPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impIRPJ: TFMTBCDField
      FieldName = 'IRPJ'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object cldasenf_itens_impCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 8
    end
    object cldasenf_itens_impPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Size = 12
    end
    object cldasenf_itens_impSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cldasenf_itens_impCONTR_SOCIAL: TFMTBCDField
      FieldName = 'CONTR_SOCIAL'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impALI_SUBS_TRI: TIntegerField
      FieldName = 'ALI_SUBS_TRI'
    end
    object cldasenf_itens_impBCSUBSTRI: TFMTBCDField
      FieldName = 'BCSUBSTRI'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impBASEICMSOP: TFMTBCDField
      FieldName = 'BASEICMSOP'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object cldasenf_itens_impTPVENDA_ID: TSmallintField
      FieldName = 'TPVENDA_ID'
    end
    object cldasenf_itens_impIMPORTADO: TIntegerField
      FieldName = 'IMPORTADO'
    end
    object cldasenf_itens_impVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 19
      Size = 4
    end
    object cldasenf_itens_impCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impRECOLHIDO_ATE: TFMTBCDField
      FieldName = 'RECOLHIDO_ATE'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impSAIDA: TIntegerField
      FieldName = 'SAIDA'
    end
    object cldasenf_itens_impICMS_RECATE: TFMTBCDField
      FieldName = 'ICMS_RECATE'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impVALOR_CIF: TFMTBCDField
      FieldName = 'VALOR_CIF'
      Precision = 19
      Size = 5
    end
    object cldasenf_itens_impALI_II: TSmallintField
      FieldName = 'ALI_II'
    end
    object cldasenf_itens_impII: TFMTBCDField
      FieldName = 'II'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impBC_IPI: TFMTBCDField
      FieldName = 'BC_IPI'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impBC_PIS_COFINS: TFMTBCDField
      FieldName = 'BC_PIS_COFINS'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impDESP_ADUAN: TFMTBCDField
      FieldName = 'DESP_ADUAN'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impTAXA_SISCOMEX: TFMTBCDField
      FieldName = 'TAXA_SISCOMEX'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impTOTAL_CIF: TFMTBCDField
      FieldName = 'TOTAL_CIF'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impTOTAL_NF: TFMTBCDField
      FieldName = 'TOTAL_NF'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impII_UNIT: TFMTBCDField
      FieldName = 'II_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impBCIPI_UNIT: TFMTBCDField
      FieldName = 'BCIPI_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impIPI_UNIT: TFMTBCDField
      FieldName = 'IPI_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impBC_PIS_UNIT: TFMTBCDField
      FieldName = 'BC_PIS_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impPIS_UNIT: TFMTBCDField
      FieldName = 'PIS_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impCOFINS_UNIT: TFMTBCDField
      FieldName = 'COFINS_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impRAT_SISCO_UNIT: TFMTBCDField
      FieldName = 'RAT_SISCO_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impRAT_DESPAD_UNIT: TFMTBCDField
      FieldName = 'RAT_DESPAD_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impBC_ICMS_UNIT: TFMTBCDField
      FieldName = 'BC_ICMS_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impICM_UNIT: TFMTBCDField
      FieldName = 'ICM_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impCUSTO_FISCAL_UNIT: TFMTBCDField
      FieldName = 'CUSTO_FISCAL_UNIT'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impNUM_ADICAO: TSmallintField
      FieldName = 'NUM_ADICAO'
    end
    object cldasenf_itens_impSEQUENCIAL_NA_ADICAO: TSmallintField
      FieldName = 'SEQUENCIAL_NA_ADICAO'
    end
    object cldasenf_itens_impNF_SAIDA: TFMTBCDField
      FieldName = 'NF_SAIDA'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impSEQ_PROD: TSmallintField
      FieldName = 'SEQ_PROD'
      Required = True
    end
    object cldasenf_itens_impREDUCAO_ESPECIAL_BC: TFMTBCDField
      FieldName = 'REDUCAO_ESPECIAL_BC'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impICMS_DESONERADO: TFMTBCDField
      FieldName = 'ICMS_DESONERADO'
      Precision = 19
      Size = 2
    end
    object cldasenf_itens_impUNID_TRIBUT: TStringField
      FieldName = 'UNID_TRIBUT'
    end
    object cldasenf_itens_impQUANTIDADE_TRIB: TFMTBCDField
      FieldName = 'QUANTIDADE_TRIB'
      Precision = 19
      Size = 4
    end
    object cldasenf_itens_impVALOR_UNIT_TRIB: TFMTBCDField
      FieldName = 'VALOR_UNIT_TRIB'
      Precision = 19
      Size = 5
    end
  end
  object cldaseparametros: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CONFIG_EMISSOR'
    Params = <>
    ProviderName = 'daseprdin3'
    RemoteServer = dmconexao.SocketConnection1
    Left = 456
    Top = 408
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
  object CLDASEMAXLOTE: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT MAX(LOTE) AS LOTE FROM NFE_ARQUIVO'
    Params = <>
    ProviderName = 'daseprdin2'
    RemoteServer = dmconexao.SocketConnection1
    Left = 488
    Top = 360
    object CLDASEMAXLOTELOTE: TIntegerField
      FieldName = 'LOTE'
    end
  end
  object CLDASEEMAIL_EMP: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM EMPRESAS_EMAIL WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdin5'
    RemoteServer = dmconexao.SocketConnection1
    Left = 184
    Top = 408
    object CLDASEEMAIL_EMPCODEMP_ID: TSmallintField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object CLDASEEMAIL_EMPUTILIZACAO: TStringField
      FieldName = 'UTILIZACAO'
      Required = True
      Size = 30
    end
    object CLDASEEMAIL_EMPSMTP: TStringField
      FieldName = 'SMTP'
      Size = 50
    end
    object CLDASEEMAIL_EMPPOP3: TStringField
      FieldName = 'POP3'
      Size = 50
    end
    object CLDASEEMAIL_EMPPORTA: TSmallintField
      FieldName = 'PORTA'
    end
    object CLDASEEMAIL_EMPCONTA: TStringField
      FieldName = 'CONTA'
      Size = 50
    end
    object CLDASEEMAIL_EMPSENHA: TStringField
      FieldName = 'SENHA'
      Size = 50
    end
    object CLDASEEMAIL_EMPREQUER_AUTENTICACAO: TSmallintField
      FieldName = 'REQUER_AUTENTICACAO'
    end
    object CLDASEEMAIL_EMPREQUER_CRIPTOGRAFIA: TSmallintField
      FieldName = 'REQUER_CRIPTOGRAFIA'
    end
    object CLDASEEMAIL_EMPTEXTO_PADRAO: TBlobField
      FieldName = 'TEXTO_PADRAO'
      Size = 8
    end
  end
  object cldaseagora: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT CURRENT_TIME,CURRENT_DATE,CURRENT_TIMESTAMP FROM rdb$data' +
      'base'
    Params = <>
    ProviderName = 'daseprdin9'
    RemoteServer = dmconexao.SocketConnection1
    Left = 112
    Top = 400
    object cldaseagoraCURRENT_TIME: TTimeField
      FieldName = 'CURRENT_TIME'
      Required = True
    end
    object cldaseagoraCURRENT_DATE: TDateField
      FieldName = 'CURRENT_DATE'
      Required = True
    end
    object cldaseagoraCURRENT_TIMESTAMP: TSQLTimeStampField
      FieldName = 'CURRENT_TIMESTAMP'
      Required = True
    end
  end
  object cldase_correcao: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NFE_ARQUIVO_CORRECAO'
    Params = <>
    ProviderName = 'daseprg'
    RemoteServer = dmconexao.SocketConnection1
    Left = 40
    Top = 408
    object cldase_correcaoCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldase_correcaoNFE: TIntegerField
      FieldName = 'NFE'
      Required = True
    end
    object cldase_correcaoSEQUENCIAL: TIntegerField
      FieldName = 'SEQUENCIAL'
      Required = True
    end
    object cldase_correcaoCOD_RESP_CARTA: TSmallintField
      FieldName = 'COD_RESP_CARTA'
    end
    object cldase_correcaoSTAT_RESP_CARTA: TStringField
      FieldName = 'STAT_RESP_CARTA'
      Size = 300
    end
    object cldase_correcaoPROTOCOLO_CARTA: TStringField
      FieldName = 'PROTOCOLO_CARTA'
      Size = 60
    end
    object cldase_correcaoMUDANCA_CARTA: TBlobField
      FieldName = 'MUDANCA_CARTA'
      Size = 8
    end
    object cldase_correcaoDATA_HORA_REC_CARTA: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CARTA'
    end
    object cldase_correcaoXML_CARTA: TBlobField
      FieldName = 'XML_CARTA'
      Size = 8
    end
    object cldase_correcaoRESULTADO: TIntegerField
      FieldName = 'RESULTADO'
    end
  end
  object cldasemaxcor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT MAX(SEQUENCIAL) AS CODIGO FROM NFE_ARQUIVO_CORRECAO'
    Params = <>
    ProviderName = 'daseprh'
    RemoteServer = dmconexao.SocketConnection1
    Left = 32
    Top = 472
    object cldasemaxcorCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'XML'
        FileMask = '*.xml'
      end>
    Options = []
    Left = 560
    Top = 496
  end
  object cldaseinut: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM NFE_ARQUIVO WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdin8'
    RemoteServer = dmconexao.SocketConnection1
    Left = 376
    Top = 472
    object cldaseinutCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldaseinutCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cldaseinutNFE: TIntegerField
      FieldName = 'NFE'
      Required = True
    end
    object cldaseinutID_NFE: TStringField
      FieldName = 'ID_NFE'
      Size = 60
    end
    object cldaseinutXML_NFE: TBlobField
      FieldName = 'XML_NFE'
      Size = 8
    end
    object cldaseinutDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cldaseinutCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object cldaseinutRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object cldaseinutNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object cldaseinutESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object cldaseinutPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Size = 500
    end
    object cldaseinutVALOR_NOTA: TFMTBCDField
      FieldName = 'VALOR_NOTA'
      Precision = 19
      Size = 2
    end
    object cldaseinutCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 60
    end
    object cldaseinutPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 60
    end
    object cldaseinutDATA_HORA_RECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORA_RECIBO'
    end
    object cldaseinutPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 60
    end
    object cldaseinutJUSTIFICATIVA_CANCELAMENTO: TBlobField
      FieldName = 'JUSTIFICATIVA_CANCELAMENTO'
      Size = 8
    end
    object cldaseinutHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
    end
    object cldaseinutTXT_ORIGEM: TBlobField
      FieldName = 'TXT_ORIGEM'
      Size = 8
    end
    object cldaseinutXML_ORIGEM: TBlobField
      FieldName = 'XML_ORIGEM'
      Size = 8
    end
    object cldaseinutXML_RETORNO: TBlobField
      FieldName = 'XML_RETORNO'
      Size = 8
    end
    object cldaseinutDATA_ENVIO: TSQLTimeStampField
      FieldName = 'DATA_ENVIO'
    end
    object cldaseinutCODIGO_ENVIO: TStringField
      FieldName = 'CODIGO_ENVIO'
      Size = 4
    end
    object cldaseinutMOTIVO_ENVIO: TStringField
      FieldName = 'MOTIVO_ENVIO'
      Size = 100
    end
    object cldaseinutACAO: TSmallintField
      FieldName = 'ACAO'
    end
    object cldaseinutRESULTADO: TSmallintField
      FieldName = 'RESULTADO'
    end
    object cldaseinutSTATUS_ATUAL: TStringField
      FieldName = 'STATUS_ATUAL'
      Size = 300
    end
    object cldaseinutCOD_RESP_ENVIO: TSmallintField
      FieldName = 'COD_RESP_ENVIO'
    end
    object cldaseinutSTAT_RESP_ENVIO: TStringField
      FieldName = 'STAT_RESP_ENVIO'
      Size = 300
    end
    object cldaseinutLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cldaseinutCOD_RESP_CANCELAMENTO: TSmallintField
      FieldName = 'COD_RESP_CANCELAMENTO'
    end
    object cldaseinutSTAT_RESP_CANCELAMENTO: TStringField
      FieldName = 'STAT_RESP_CANCELAMENTO'
      Size = 300
    end
    object cldaseinutPROTOCOLO_CANCELAMENTO: TStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Size = 60
    end
    object cldaseinutCOD_RESP_CARTA: TSmallintField
      FieldName = 'COD_RESP_CARTA'
    end
    object cldaseinutSTAT_RESP_CARTA: TStringField
      FieldName = 'STAT_RESP_CARTA'
      Size = 300
    end
    object cldaseinutPROTOCOLO_CARTA: TStringField
      FieldName = 'PROTOCOLO_CARTA'
      Size = 60
    end
    object cldaseinutMOTIVO_CANCELAMENTO: TBlobField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 8
    end
    object cldaseinutMUDANCA_CARTA: TBlobField
      FieldName = 'MUDANCA_CARTA'
      Size = 8
    end
    object cldaseinutDATA_HORA_REC_CANC: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CANC'
    end
    object cldaseinutDATA_HORA_REC_CARTA: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CARTA'
    end
    object cldaseinutDATA_HORA_REC_UNIT: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_UNIT'
    end
    object cldaseinutCOD_RESP_INUT: TSmallintField
      FieldName = 'COD_RESP_INUT'
    end
    object cldaseinutSTAT_RESP_INUT: TStringField
      FieldName = 'STAT_RESP_INUT'
      Size = 300
    end
    object cldaseinutMOTIVO_INUT: TBlobField
      FieldName = 'MOTIVO_INUT'
      Size = 8
    end
    object cldaseinutNOTA_INUT_ATE: TIntegerField
      FieldName = 'NOTA_INUT_ATE'
    end
  end
  object dscorrecao: TDataSource
    AutoEdit = False
    DataSet = cldase_correcao
    Left = 596
    Top = 483
  end
end
