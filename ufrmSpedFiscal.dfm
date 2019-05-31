object frmSpedFiscal: TfrmSpedFiscal
  Left = 0
  Top = 0
  Width = 1127
  Height = 717
  TabOrder = 0
  OnEnter = FrameEnter
  object pgc_k: TPageControl
    Left = 0
    Top = 0
    Width = 1127
    Height = 717
    ActivePage = tash_bloco_k
    Align = alClient
    TabOrder = 0
    object tash_periodo: TTabSheet
      Caption = 'tash_periodo'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 642
        Width = 1119
        Height = 47
        Align = alBottom
        TabOrder = 0
        object Button8: TButton
          Left = 256
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Pr'#243'ximo'
          TabOrder = 0
          OnClick = Button8Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1119
        Height = 642
        Align = alClient
        DataSource = DASO_INVMES
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ANO'
            Title.Caption = 'Ano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MES'
            Title.Caption = 'M'#234's'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIB_SPED_EM'
            Title.Caption = 'Sped Liberado em'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIB_SPED_POR'
            Title.Caption = 'SPed Liberado Por'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GERADO_SPED_EM'
            Title.Caption = 'Sped Gerado em'
            Visible = True
          end>
      end
    end
    object tash_bloco_k: TTabSheet
      Caption = 'tash_bloco_k'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 642
        Width = 1119
        Height = 47
        Align = alBottom
        TabOrder = 0
        object Button3: TButton
          Left = 48
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Anterior'
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button9: TButton
          Left = 177
          Top = 6
          Width = 145
          Height = 25
          Caption = 'Processar'
          TabOrder = 1
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 583
          Top = 6
          Width = 153
          Height = 25
          Caption = 'Gerar Arquivo do Sped'
          TabOrder = 2
          OnClick = Button10Click
        end
        object Button6: TButton
          Left = 379
          Top = 6
          Width = 99
          Height = 25
          Caption = 'Exportar Excel'
          TabOrder = 3
          OnClick = Button6Click
        end
        object Button1: TButton
          Left = 816
          Top = 7
          Width = 153
          Height = 25
          Caption = 'Marcar Sped como Enviado'
          TabOrder = 4
          OnClick = Button1Click
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1119
        Height = 642
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DASOSDO
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1PERIODO: TcxGridDBColumn
            Caption = 'Per'#237'odo'
            DataBinding.FieldName = 'PERIODO'
          end
          object cxGrid1DBTableView1IMPORTADO: TcxGridDBColumn
            Caption = 'Importado'
            DataBinding.FieldName = 'IMPORTADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = -1
            Properties.ValueUnchecked = 0
          end
          object cxGrid1DBTableView1COD_PRODUTO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'COD_PRODUTO'
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
          end
          object cxGrid1DBTableView1CNPJ_ARMAZEM: TcxGridDBColumn
            Caption = 'Cod.Armazem'
            DataBinding.FieldName = 'CNPJ_ARMAZEM'
          end
          object cxGrid1DBTableView1NOME_ARMAZEM: TcxGridDBColumn
            Caption = 'Armazem'
            DataBinding.FieldName = 'NOME_ARMAZEM'
          end
          object cxGrid1DBTableView1SALDO: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'SALDO'
          end
          object cxGrid1DBTableView1CUSTO: TcxGridDBColumn
            Caption = 'Custo'
            DataBinding.FieldName = 'CUSTO'
          end
          object cxGrid1DBTableView1UNIDADE_VENDA: TcxGridDBColumn
            Caption = 'Unid.Venda'
            DataBinding.FieldName = 'UNIDADE_VENDA'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object tash_processamento: TTabSheet
      Caption = 'tash_processamento'
      ImageIndex = 3
      object dxGaugeControl1: TdxGaugeControl
        Left = 0
        Top = 0
        Width = 1119
        Height = 689
        Align = alClient
        BorderStyle = cxcbsNone
        Transparent = True
        object gauge_velocimetro: TdxGaugeCircularHalfScale
          OptionsLayout.HeightFactor = 0.717742204666137700
          StyleName = 'DeepFire'
        end
      end
    end
    object tash_proc2: TTabSheet
      Caption = 'tash_proc2'
      ImageIndex = 4
      object dxGaugeControl2: TdxGaugeControl
        Left = 0
        Top = 0
        Width = 1119
        Height = 689
        Align = alClient
        object dxGaugeControl2ContainerScale1: TdxGaugeContainerScale
          OptionsLayout.CenterPositionFactorX = 0.493506520986557000
          OptionsLayout.CenterPositionFactorY = 0.498035341501236000
          OptionsLayout.HeightFactor = 0.734514892101287800
          OptionsLayout.WidthFactor = 0.689539670944213900
        end
        object gauge_circular1: TdxGaugeCircularScale
          AnchorScaleIndex = 0
          OptionsLayout.CenterPositionFactorX = 0.502508521080017100
          OptionsLayout.CenterPositionFactorY = 0.482844531536102300
          OptionsLayout.HeightFactor = 0.868771076202392600
          OptionsLayout.WidthFactor = 0.984187841415405300
          OptionsView.ShowBackground = False
          OptionsView.ShowLabels = False
          OptionsView.ShowTicks = False
          OptionsView.AngleEnd = -90
          OptionsView.AngleStart = 270
          OptionsView.ShowNeedle = False
          StyleName = 'CleanWhite'
          Value = 5.000000000000000000
          ZOrder = 1
          object gaugelegenda1: TdxGaugeQuantitativeScaleCaption
            Text = 'Verificando Armazens'
            OptionsView.Font.Charset = DEFAULT_CHARSET
            OptionsView.Font.Color = clWindowText
            OptionsView.Font.Height = -12
            OptionsView.Font.Name = 'Tahoma'
            OptionsView.Font.Style = []
            OptionsView.UseOwnFont = True
          end
          object gaugerange1: TdxGaugeCircularScaleRange
            Color = -65536
            RadiusFactor = 1.000000000000000000
            ValueEnd = 100.000000000000000000
            WidthFactor = 0.150000005960464500
          end
          object gaugerange2: TdxGaugeCircularScaleRange
            Color = -16776961
            RadiusFactor = 1.000000000000000000
            LinkedWithScaleValue = rlsvValueEnd
            WidthFactor = 0.150000005960464500
          end
        end
      end
    end
  end
  object cldaseemp: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM EMPRESAS WHERE NOTA_ELETRONICA=-1'
    Params = <>
    ProviderName = 'daseprdin2'
    RemoteServer = dmconexao.SocketConnection1
    Left = 956
    Top = 8
    object cldaseempCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cldaseempNOMEMP: TStringField
      FieldName = 'NOMEMP'
      Size = 50
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
    object cldaseempCODIGO_MUN: TStringField
      FieldName = 'CODIGO_MUN'
      Size = 5
    end
    object cldaseempIMPORTA: TSmallintField
      FieldName = 'IMPORTA'
    end
    object cldaseempREVENDA: TSmallintField
      FieldName = 'REVENDA'
    end
    object cldaseempCHEIA: TSmallintField
      FieldName = 'CHEIA'
    end
    object cldaseempMEIA: TSmallintField
      FieldName = 'MEIA'
    end
    object cldaseempCONTROLE_MANUAL: TSmallintField
      FieldName = 'CONTROLE_MANUAL'
    end
    object cldaseempAG_COBRANCA: TIntegerField
      FieldName = 'AG_COBRANCA'
    end
    object cldaseempCONTA_COBRANCA: TIntegerField
      FieldName = 'CONTA_COBRANCA'
    end
    object cldaseempDAC_CONTA_COBRANCA: TSmallintField
      FieldName = 'DAC_CONTA_COBRANCA'
    end
    object cldaseempNOMEMP_COBRANCA: TStringField
      FieldName = 'NOMEMP_COBRANCA'
      Size = 30
    end
    object cldaseempTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Size = 500
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
    object cldaseempTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object cldaseempIBGE: TStringField
      FieldName = 'IBGE'
      Size = 7
    end
    object cldaseempSMTP: TStringField
      FieldName = 'SMTP'
      Size = 50
    end
    object cldaseempPOP3: TStringField
      FieldName = 'POP3'
      Size = 50
    end
    object cldaseempPORTA: TSmallintField
      FieldName = 'PORTA'
    end
    object cldaseempCONTA: TStringField
      FieldName = 'CONTA'
      Size = 50
    end
    object cldaseempSENHA: TStringField
      FieldName = 'SENHA'
      Size = 50
    end
    object cldaseempREQUER_AUTENTICACAO: TSmallintField
      FieldName = 'REQUER_AUTENTICACAO'
    end
    object cldaseempREQUER_CRIPTOGRAFIA: TSmallintField
      FieldName = 'REQUER_CRIPTOGRAFIA'
    end
    object cldaseempEMITE_NOTA: TSmallintField
      FieldName = 'EMITE_NOTA'
    end
    object cldaseempPRIORIZAR_NOTA: TIntegerField
      FieldName = 'PRIORIZAR_NOTA'
    end
    object cldaseempLOGO_NFE: TBlobField
      FieldName = 'LOGO_NFE'
      Size = 8
    end
    object cldaseempRAZAO_NFE: TStringField
      FieldName = 'RAZAO_NFE'
      Size = 60
    end
    object cldaseempFORMATO_NOTA: TStringField
      FieldName = 'FORMATO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cldaseempOPERACIONAL: TSmallintField
      FieldName = 'OPERACIONAL'
    end
    object cldaseempVENDA: TSmallintField
      FieldName = 'VENDA'
    end
    object cldaseempCONTAS_PAGAR: TSmallintField
      FieldName = 'CONTAS_PAGAR'
    end
    object cldaseempIMPORTADORA: TSmallintField
      FieldName = 'IMPORTADORA'
    end
    object cldaseempTRADING: TSmallintField
      FieldName = 'TRADING'
    end
    object cldaseempNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Size = 50
    end
    object cldaseempVALIDADE_CERTIFICADO: TSQLTimeStampField
      FieldName = 'VALIDADE_CERTIFICADO'
    end
    object cldaseempNOTA_ELETRONICA: TSmallintField
      FieldName = 'NOTA_ELETRONICA'
    end
    object cldaseempNOME_CONTABILIDADE: TStringField
      FieldName = 'NOME_CONTABILIDADE'
      Size = 50
    end
    object cldaseempNOME_CONTADOR: TStringField
      FieldName = 'NOME_CONTADOR'
      Size = 50
    end
    object cldaseempCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
    end
    object cldaseempCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
    end
    object cldaseempCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 100
    end
  end
  object DASOEMP: TDataSource
    AutoEdit = False
    DataSet = cldaseemp
    Left = 1033
    Top = 8
  end
  object DASOSDO: TDataSource
    DataSet = cldasesdo
    Left = 1025
    Top = 134
  end
  object DASOPERIODO: TDataSource
    AutoEdit = False
    Left = 1001
    Top = 190
  end
  object cldasesdo: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM BLOCO_K_SALDOS'
    Params = <>
    ProviderName = 'daseprdin3'
    RemoteServer = dmconexao.SocketConnection1
    Left = 740
    Top = 134
    object cldasesdoCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasesdoPERIODO: TStringField
      FieldName = 'PERIODO'
      Required = True
      Size = 7
    end
    object cldasesdoIMPORTADO: TSmallintField
      FieldName = 'IMPORTADO'
      Required = True
    end
    object cldasesdoCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Required = True
      Size = 12
    end
    object cldasesdoCNPJ_ARMAZEM: TStringField
      FieldName = 'CNPJ_ARMAZEM'
      Required = True
    end
    object cldasesdoNOME_ARMAZEM: TStringField
      FieldName = 'NOME_ARMAZEM'
      Size = 50
    end
    object cldasesdoSALDO_ANTERIOR: TIntegerField
      FieldName = 'SALDO_ANTERIOR'
    end
    object cldasesdoENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object cldasesdoSAIDA: TIntegerField
      FieldName = 'SAIDA'
    end
    object cldasesdoSALDO: TIntegerField
      FieldName = 'SALDO'
    end
    object cldasesdoCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 19
      Size = 2
    end
    object cldasesdoUNIDADE_VENDA: TStringField
      FieldName = 'UNIDADE_VENDA'
      Size = 10
    end
    object cldasesdoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object CLDASEPROD: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PRODUTOS'
    Params = <>
    ProviderName = 'daseprdin5'
    RemoteServer = dmconexao.SocketConnection1
    Left = 748
    Top = 254
    object CLDASEPRODCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object CLDASEPRODDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object CLDASEPRODUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object CLDASEPRODIMPORTADO: TSmallintField
      FieldName = 'IMPORTADO'
    end
    object CLDASEPRODCOMPOSTO: TSmallintField
      FieldName = 'COMPOSTO'
    end
    object CLDASEPRODVAZAO: TFloatField
      FieldName = 'VAZAO'
    end
    object CLDASEPRODVAL_ATU: TFloatField
      FieldName = 'VAL_ATU'
    end
    object CLDASEPRODVAL_INI_ALFA: TFloatField
      FieldName = 'VAL_INI_ALFA'
    end
    object CLDASEPRODVAL_ATU_ALFA: TFloatField
      FieldName = 'VAL_ATU_ALFA'
    end
    object CLDASEPRODLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 10
    end
    object CLDASEPRODSALDOAUXILIAR: TFloatField
      FieldName = 'SALDOAUXILIAR'
    end
    object CLDASEPRODI_MANUTENCAO: TFloatField
      FieldName = 'I_MANUTENCAO'
    end
    object CLDASEPRODE_MANUTENCAO: TFloatField
      FieldName = 'E_MANUTENCAO'
    end
    object CLDASEPRODS_MANUTENCAO: TFloatField
      FieldName = 'S_MANUTENCAO'
    end
    object CLDASEPRODT_MANUTENCAO: TFloatField
      FieldName = 'T_MANUTENCAO'
    end
    object CLDASEPRODI_CONSERTO: TFloatField
      FieldName = 'I_CONSERTO'
    end
    object CLDASEPRODE_CONSERTO: TFloatField
      FieldName = 'E_CONSERTO'
    end
    object CLDASEPRODS_CONSERTO: TFloatField
      FieldName = 'S_CONSERTO'
    end
    object CLDASEPRODT_CONSERTO: TFloatField
      FieldName = 'T_CONSERTO'
    end
    object CLDASEPRODI_ALFANDEGA: TFloatField
      FieldName = 'I_ALFANDEGA'
    end
    object CLDASEPRODE_ALFANDEGA: TFloatField
      FieldName = 'E_ALFANDEGA'
    end
    object CLDASEPRODS_ALFANDEGA: TFloatField
      FieldName = 'S_ALFANDEGA'
    end
    object CLDASEPRODT_ALFANDEGA: TFloatField
      FieldName = 'T_ALFANDEGA'
    end
    object CLDASEPRODI_EMPENHO: TFloatField
      FieldName = 'I_EMPENHO'
    end
    object CLDASEPRODE_EMPENHO: TFloatField
      FieldName = 'E_EMPENHO'
    end
    object CLDASEPRODS_EMPENHO: TFloatField
      FieldName = 'S_EMPENHO'
    end
    object CLDASEPRODT_EMPENHO: TFloatField
      FieldName = 'T_EMPENHO'
    end
    object CLDASEPRODI_ESTOQUE: TFloatField
      FieldName = 'I_ESTOQUE'
    end
    object CLDASEPRODE_ESTOQUE: TFloatField
      FieldName = 'E_ESTOQUE'
    end
    object CLDASEPRODS_ESTOQUE: TFloatField
      FieldName = 'S_ESTOQUE'
    end
    object CLDASEPRODT_ESTOQUE: TFloatField
      FieldName = 'T_ESTOQUE'
    end
    object CLDASEPRODT_DISPONIVEL: TFloatField
      FieldName = 'T_DISPONIVEL'
    end
    object CLDASEPRODDT_ATU: TDateField
      FieldName = 'DT_ATU'
    end
    object CLDASEPRODUSU_ATU: TStringField
      FieldName = 'USU_ATU'
      Size = 30
    end
    object CLDASEPRODREAJUSTE: TFloatField
      FieldName = 'REAJUSTE'
    end
    object CLDASEPRODFATOR_CORRECAO: TFloatField
      FieldName = 'FATOR_CORRECAO'
    end
    object CLDASEPRODDESCONTO_DROPSA: TFloatField
      FieldName = 'DESCONTO_DROPSA'
    end
    object CLDASEPRODCOMPRADO: TFloatField
      FieldName = 'COMPRADO'
    end
    object CLDASEPRODSALDO_I_COMPRADO: TFloatField
      FieldName = 'SALDO_I_COMPRADO'
    end
    object CLDASEPRODPAI: TSmallintField
      FieldName = 'PAI'
    end
    object CLDASEPRODFABRICADO: TFloatField
      FieldName = 'FABRICADO'
    end
    object CLDASEPRODCLASS_ID: TIntegerField
      FieldName = 'CLASS_ID'
    end
    object CLDASEPRODCOD001: TStringField
      FieldName = 'COD001'
      Size = 12
    end
    object CLDASEPRODCOD002: TStringField
      FieldName = 'COD002'
      Size = 12
    end
    object CLDASEPRODCOD003: TStringField
      FieldName = 'COD003'
      Size = 12
    end
    object CLDASEPRODCOD004: TStringField
      FieldName = 'COD004'
      Size = 12
    end
    object CLDASEPRODDES001: TStringField
      FieldName = 'DES001'
      Size = 60
    end
    object CLDASEPRODDES002: TStringField
      FieldName = 'DES002'
      Size = 60
    end
    object CLDASEPRODDES003: TStringField
      FieldName = 'DES003'
      Size = 60
    end
    object CLDASEPRODDES004: TStringField
      FieldName = 'DES004'
      Size = 60
    end
    object CLDASEPRODDESCR_EMBALAGEM: TStringField
      FieldName = 'DESCR_EMBALAGEM'
      Size = 60
    end
    object CLDASEPRODUNID_VENDA: TStringField
      FieldName = 'UNID_VENDA'
      Size = 4
    end
    object CLDASEPRODTIPO: TStringField
      FieldName = 'TIPO'
      Size = 4
    end
    object CLDASEPRODPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 250
    end
    object CLDASEPRODFABRICANTE_ID: TIntegerField
      FieldName = 'FABRICANTE_ID'
    end
    object CLDASEPRODMARCA_ID: TIntegerField
      FieldName = 'MARCA_ID'
    end
    object CLDASEPRODTIPO_DESCONTO_ID: TIntegerField
      FieldName = 'TIPO_DESCONTO_ID'
    end
    object CLDASEPRODMAXIMO: TIntegerField
      FieldName = 'MAXIMO'
    end
    object CLDASEPRODVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODMINIMO: TIntegerField
      FieldName = 'MINIMO'
    end
    object CLDASEPRODPCHEIO: TFMTBCDField
      FieldName = 'PCHEIO'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODPMEIO: TFMTBCDField
      FieldName = 'PMEIO'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODPRCHEIO: TFMTBCDField
      FieldName = 'PRCHEIO'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODCXMESTRA: TFMTBCDField
      FieldName = 'CXMESTRA'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODOUTTER: TFMTBCDField
      FieldName = 'OUTTER'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODBLISTER: TFMTBCDField
      FieldName = 'BLISTER'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODCXMESTRA_BARRA: TStringField
      FieldName = 'CXMESTRA_BARRA'
    end
    object CLDASEPRODOUTTER_BARRA: TStringField
      FieldName = 'OUTTER_BARRA'
    end
    object CLDASEPRODQTD_BARRA: TStringField
      FieldName = 'QTD_BARRA'
    end
    object CLDASEPRODKG_BARRA: TStringField
      FieldName = 'KG_BARRA'
    end
    object CLDASEPRODBLISTER_BARRA: TStringField
      FieldName = 'BLISTER_BARRA'
    end
    object CLDASEPRODCXMESTRA_LARGURA: TFMTBCDField
      FieldName = 'CXMESTRA_LARGURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODOUTTER_LARGURA: TFMTBCDField
      FieldName = 'OUTTER_LARGURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODQTD_LARGURA: TFMTBCDField
      FieldName = 'QTD_LARGURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODKG_LARGURA: TFMTBCDField
      FieldName = 'KG_LARGURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODBLISTER_LARGURA: TFMTBCDField
      FieldName = 'BLISTER_LARGURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODCXMESTRA_ALTURA: TFMTBCDField
      FieldName = 'CXMESTRA_ALTURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODOUTTER_ALTURA: TFMTBCDField
      FieldName = 'OUTTER_ALTURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODQTD_ALTURA: TFMTBCDField
      FieldName = 'QTD_ALTURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODKG_ALTURA: TFMTBCDField
      FieldName = 'KG_ALTURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODBLISTER_ALTURA: TFMTBCDField
      FieldName = 'BLISTER_ALTURA'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODCXMESTRA_COMPRIMENTO: TFMTBCDField
      FieldName = 'CXMESTRA_COMPRIMENTO'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODOUTTER_COMPRIMENTO: TFMTBCDField
      FieldName = 'OUTTER_COMPRIMENTO'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODQTD_COMPRIMENTO: TFMTBCDField
      FieldName = 'QTD_COMPRIMENTO'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODKG_COMPRIMENTO: TFMTBCDField
      FieldName = 'KG_COMPRIMENTO'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODBLISTER_COMPRIMENTO: TFMTBCDField
      FieldName = 'BLISTER_COMPRIMENTO'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODCXMESTRA_CUBAGEM: TFMTBCDField
      FieldName = 'CXMESTRA_CUBAGEM'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODOUTTER_CUBAGEM: TFMTBCDField
      FieldName = 'OUTTER_CUBAGEM'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODQTD_CUBAGEM: TFMTBCDField
      FieldName = 'QTD_CUBAGEM'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODKG_CUBAGEM: TFMTBCDField
      FieldName = 'KG_CUBAGEM'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODBLISTER_CUBAGEM: TFMTBCDField
      FieldName = 'BLISTER_CUBAGEM'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODKG: TFMTBCDField
      FieldName = 'KG'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODUN_BARRA: TStringField
      FieldName = 'UN_BARRA'
    end
    object CLDASEPRODBLOQUEADO_PARA_VENDA: TSmallintField
      FieldName = 'BLOQUEADO_PARA_VENDA'
    end
    object CLDASEPRODFORA_DE_LINHA: TSmallintField
      FieldName = 'FORA_DE_LINHA'
    end
    object CLDASEPRODCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODCRK: TFMTBCDField
      FieldName = 'CRK'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODCONTR_SOCIAL: TFMTBCDField
      FieldName = 'CONTR_SOCIAL'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODIRPJ: TFMTBCDField
      FieldName = 'IRPJ'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODST: TFMTBCDField
      FieldName = 'ST'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODSOMA_IMPOSTOS: TFMTBCDField
      FieldName = 'SOMA_IMPOSTOS'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODPROMOCAO: TSmallintField
      FieldName = 'PROMOCAO'
    end
    object CLDASEPRODPRECO_PROMOCIONAL: TFMTBCDField
      FieldName = 'PRECO_PROMOCIONAL'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODPROMOCAO_ATE: TDateField
      FieldName = 'PROMOCAO_ATE'
    end
    object CLDASEPRODOBS_PROMOCAO: TBlobField
      FieldName = 'OBS_PROMOCAO'
      Size = 8
    end
    object CLDASEPRODMILHEIRO: TFMTBCDField
      FieldName = 'MILHEIRO'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODONU: TIntegerField
      FieldName = 'ONU'
    end
    object CLDASEPRODSEQ_PAG: TIntegerField
      FieldName = 'SEQ_PAG'
    end
    object CLDASEPRODCXMESTRA_KG: TFMTBCDField
      FieldName = 'CXMESTRA_KG'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODOUTER_KG: TFMTBCDField
      FieldName = 'OUTER_KG'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODQTD_KG: TFMTBCDField
      FieldName = 'QTD_KG'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODBLISTER_KG: TFMTBCDField
      FieldName = 'BLISTER_KG'
      Precision = 19
      Size = 4
    end
    object CLDASEPRODPER_DES_PRO: TFMTBCDField
      FieldName = 'PER_DES_PRO'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODUSAR_PROMOCAO: TStringField
      FieldName = 'USAR_PROMOCAO'
    end
    object CLDASEPRODDIVISAO_ID: TSmallintField
      FieldName = 'DIVISAO_ID'
    end
    object CLDASEPRODPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 19
      Size = 3
    end
    object CLDASEPRODPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Precision = 19
      Size = 3
    end
    object CLDASEPRODBLOQUEADO_ESTADOS: TStringField
      FieldName = 'BLOQUEADO_ESTADOS'
      Size = 500
    end
    object CLDASEPRODCAIXAS_POR_PALETS: TIntegerField
      FieldName = 'CAIXAS_POR_PALETS'
    end
    object CLDASEPRODCOD_ENT_KRO: TStringField
      FieldName = 'COD_ENT_KRO'
      Size = 500
    end
    object CLDASEPRODBLOQUEADO_NOTA: TSmallintField
      FieldName = 'BLOQUEADO_NOTA'
    end
    object CLDASEPRODEMP_NOTA: TIntegerField
      FieldName = 'EMP_NOTA'
    end
    object CLDASEPRODBST: TSmallintField
      FieldName = 'BST'
    end
    object CLDASEPRODDESCRICAO_NFE: TStringField
      FieldName = 'DESCRICAO_NFE'
      Size = 120
    end
    object CLDASEPRODEMB_PROD_ANT: TSmallintField
      FieldName = 'EMB_PROD_ANT'
    end
    object CLDASEPRODMUDANCA_UNIDADE: TSmallintField
      FieldName = 'MUDANCA_UNIDADE'
    end
    object CLDASEPRODMUD_UNID_PARTIR: TDateField
      FieldName = 'MUD_UNID_PARTIR'
    end
    object CLDASEPRODMUD_UNID_OPERACAO: TStringField
      FieldName = 'MUD_UNID_OPERACAO'
      FixedChar = True
      Size = 1
    end
    object CLDASEPRODMUD_UNID_FATOR: TIntegerField
      FieldName = 'MUD_UNID_FATOR'
    end
    object CLDASEPRODCLASSE: TStringField
      FieldName = 'CLASSE'
      Size = 2
    end
    object CLDASEPRODCOD_GEN1: TStringField
      FieldName = 'COD_GEN1'
      Size = 1
    end
    object CLDASEPRODCOD_GEN2: TStringField
      FieldName = 'COD_GEN2'
      Size = 1
    end
    object CLDASEPRODCOD_GEN3: TStringField
      FieldName = 'COD_GEN3'
      Size = 1
    end
    object CLDASEPRODGENERICO1: TStringField
      FieldName = 'GENERICO1'
      Size = 30
    end
    object CLDASEPRODGENERICO2: TStringField
      FieldName = 'GENERICO2'
      Size = 30
    end
    object CLDASEPRODGENERICO3: TStringField
      FieldName = 'GENERICO3'
      Size = 30
    end
    object CLDASEPRODICMS_IMPORTACAO: TFMTBCDField
      FieldName = 'ICMS_IMPORTACAO'
      Precision = 19
      Size = 2
    end
    object CLDASEPRODDT_PRI_IMP: TDateField
      FieldName = 'DT_PRI_IMP'
    end
    object CLDASEPRODDT_PRI_NOTA: TDateField
      FieldName = 'DT_PRI_NOTA'
    end
    object CLDASEPRODCONF_SAIEST: TIntegerField
      FieldName = 'CONF_SAIEST'
    end
    object CLDASEPRODCONF_DEVOLUCAO: TIntegerField
      FieldName = 'CONF_DEVOLUCAO'
    end
    object CLDASEPRODCONF_CANCELAMENTO: TIntegerField
      FieldName = 'CONF_CANCELAMENTO'
    end
    object CLDASEPRODCONFERIDO_COLIGADA: TSmallintField
      FieldName = 'CONFERIDO_COLIGADA'
    end
    object CLDASEPRODTIPO_RESTRICAO_VENDA: TSmallintField
      FieldName = 'TIPO_RESTRICAO_VENDA'
    end
    object CLDASEPRODGETIN: TStringField
      FieldName = 'GETIN'
    end
    object CLDASEPRODBLOQ_AJF: TSmallintField
      FieldName = 'BLOQ_AJF'
    end
    object CLDASEPRODEMP_NOTA2: TIntegerField
      FieldName = 'EMP_NOTA2'
    end
    object CLDASEPRODEMP_NOTA1_UF: TStringField
      FieldName = 'EMP_NOTA1_UF'
      Size = 500
    end
    object CLDASEPRODBLOQ_SEM_SDO_FISCAL: TSmallintField
      FieldName = 'BLOQ_SEM_SDO_FISCAL'
    end
  end
  object cldasecli: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CLIENTES WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdin6'
    RemoteServer = dmconexao.SocketConnection1
    Left = 700
    Top = 310
    object cldasecliCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Required = True
    end
    object cldasecliCLIENTE: TStringField
      FieldName = 'CLIENTE'
    end
    object cldasecliRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object cldasecliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cldasecliNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object cldasecliCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object cldasecliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cldasecliCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cldasecliESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cldasecliCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cldasecliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cldasecliFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cldasecliCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cldasecliIE: TStringField
      FieldName = 'IE'
    end
    object cldasecliCOD_VEN: TIntegerField
      FieldName = 'COD_VEN'
    end
    object cldasecliRESTRICAO: TSmallintField
      FieldName = 'RESTRICAO'
    end
    object cldasecliDT_ATUALIZACAO: TDateField
      FieldName = 'DT'#31'_ATUALIZACAO'
    end
    object cldasecliUSU_ATU: TStringField
      FieldName = 'USU_ATU'
      Size = 30
    end
    object cldasecliCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object cldasecliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cldasecliWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Size = 80
    end
    object cldasecliTPO_CLI: TStringField
      FieldName = 'TPO_CLI'
      Size = 100
    end
    object cldasecliSIS_VDD: TStringField
      FieldName = 'SIS_VDD'
      Size = 100
    end
    object cldasecliSIS_TRP: TStringField
      FieldName = 'SIS_TRP'
      Size = 100
    end
    object cldasecliDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cldasecliDT_SERASA: TDateField
      FieldName = 'DT_SERASA'
    end
    object cldasecliST_SERASA: TStringField
      FieldName = 'ST_SERASA'
      Size = 30
    end
    object cldasecliQD_CHQ_S_FUNDO: TSmallintField
      FieldName = 'QD_CHQ_S_FUNDO'
    end
    object cldasecliQTD_PFIN: TSmallintField
      FieldName = 'QTD_PFIN'
    end
    object cldasecliDT_CONSTITUICAO: TDateField
      FieldName = 'DT_CONSTITUICAO'
    end
    object cldasecliPAIS: TStringField
      FieldName = 'PAIS'
      Size = 4
    end
    object cldasecliCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cldasecliNUM_PROTESTOS: TSmallintField
      FieldName = 'NUM_PROTESTOS'
    end
    object cldasecliSERASA_DE: TDateField
      FieldName = 'SERASA_DE'
    end
    object cldasecliSERASA_ATE: TDateField
      FieldName = 'SERASA_ATE'
    end
    object cldasecliCODIGO_MUN: TStringField
      FieldName = 'CODIGO_MUN'
      Size = 5
    end
    object cldasecliCOMENT_COMERCIAL: TBlobField
      FieldName = 'COMENT_COMERCIAL'
      Size = 8
    end
    object cldasecliOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object cldasecliEMPNFE: TIntegerField
      FieldName = 'EMPNFE'
    end
    object cldasecliCONTROLE_MANUAL: TIntegerField
      FieldName = 'CONTROLE_MANUAL'
    end
    object cldasecliCOD_REP: TIntegerField
      FieldName = 'COD_REP'
    end
    object cldasecliCOLIGADA_ID: TIntegerField
      FieldName = 'COLIGADA_ID'
    end
    object cldasecliLIMITE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_CREDITO'
      Precision = 19
      Size = 2
    end
    object cldasecliCAPITAL_SOCIAL: TFMTBCDField
      FieldName = 'CAPITAL_SOCIAL'
      Precision = 19
      Size = 2
    end
    object cldasecliTRANSP_ID: TIntegerField
      FieldName = 'TRANSP_ID'
    end
    object cldasecliEXTRANGEIRO: TSmallintField
      FieldName = 'EXTRANGEIRO'
    end
    object cldasecliIBGE: TStringField
      FieldName = 'IBGE'
      Size = 7
    end
    object cldasecliEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 80
    end
    object cldasecliCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 30
    end
    object cldasecliCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 30
    end
    object cldasecliCONTATO3: TStringField
      FieldName = 'CONTATO3'
      Size = 30
    end
    object cldasecliEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Size = 100
    end
    object cldasecliEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 100
    end
    object cldasecliEMAIL3: TStringField
      FieldName = 'EMAIL3'
      Size = 100
    end
    object cldasecliSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object cldasecliDEPARTAMENTO1: TStringField
      FieldName = 'DEPARTAMENTO1'
      Size = 30
    end
    object cldasecliDEPARTAMENTO2: TStringField
      FieldName = 'DEPARTAMENTO2'
      Size = 30
    end
    object cldasecliDEPARTAMENTO3: TStringField
      FieldName = 'DEPARTAMENTO3'
      Size = 30
    end
    object cldasecliMOEDA_ID: TIntegerField
      FieldName = 'MOEDA_ID'
    end
    object cldasecliCONDICAO_PGTO_ID: TIntegerField
      FieldName = 'CONDICAO_PGTO_ID'
    end
    object cldasecliTERMOS_PGTO_ID: TIntegerField
      FieldName = 'TERMOS_PGTO_ID'
    end
    object cldasecliHEALTH_WARNING: TBlobField
      FieldName = 'HEALTH_WARNING'
      Size = 8
    end
    object cldasecliINSTR_ENTRE_ID: TIntegerField
      FieldName = 'INSTR_ENTRE_ID'
    end
    object cldasecliCLASSIFICACAO_ID: TIntegerField
      FieldName = 'CLASSIFICACAO_ID'
    end
    object cldasecliBANCO1: TStringField
      FieldName = 'BANCO1'
      Size = 6
    end
    object cldasecliBANCO2: TStringField
      FieldName = 'BANCO2'
      Size = 6
    end
    object cldasecliAGENCIA1: TStringField
      FieldName = 'AGENCIA1'
      Size = 10
    end
    object cldasecliAGENCIA2: TStringField
      FieldName = 'AGENCIA2'
      Size = 10
    end
    object cldasecliCONTACORRENTE1: TStringField
      FieldName = 'CONTACORRENTE1'
      Size = 15
    end
    object cldasecliCONTACORRENTE2: TStringField
      FieldName = 'CONTACORRENTE2'
      Size = 15
    end
    object cldasecliFAVORECIDO1: TStringField
      FieldName = 'FAVORECIDO1'
      Size = 50
    end
    object cldasecliFAVORECIDO2: TStringField
      FieldName = 'FAVORECIDO2'
      Size = 50
    end
    object cldasecliDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasecliCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      FixedChar = True
      Size = 1
    end
    object cldasecliTIPOS_MANUAL: TStringField
      FieldName = 'TIPOS_MANUAL'
      Size = 500
    end
    object cldasecliNOME_COMPLETO_REC: TStringField
      FieldName = 'NOME_COMPLETO_REC'
      Size = 50
    end
    object cldasecliTIPO_CLI_COMISSAO: TStringField
      FieldName = 'TIPO_CLI_COMISSAO'
      Size = 4
    end
    object cldasecliPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object cldasecliFONE_FORNEC: TStringField
      FieldName = 'FONE_FORNEC'
      Size = 30
    end
    object cldasecliFAX_FORNEC: TStringField
      FieldName = 'FAX_FORNEC'
      Size = 30
    end
    object cldasecliCNPF_SEM: TStringField
      FieldName = 'CNPF_SEM'
    end
    object cldasecliIMPORTACAO_BANCO: TStringField
      FieldName = 'IMPORTACAO_BANCO'
      Size = 60
    end
    object cldasecliIMPORTACAO_ENDERECO_BANCO: TStringField
      FieldName = 'IMPORTACAO_ENDERECO_BANCO'
      Size = 150
    end
    object cldasecliIMPORTACAO_NECEFICIARIO: TStringField
      FieldName = 'IMPORTACAO_NECEFICIARIO'
      Size = 60
    end
    object cldasecliIMPORTACAO_CODIGO_BANCO: TStringField
      FieldName = 'IMPORTACAO_CODIGO_BANCO'
    end
    object cldasecliENDERECO_BENEFICIARIO: TStringField
      FieldName = 'ENDERECO_BENEFICIARIO'
      Size = 150
    end
    object cldasecliIMPORTANCAO_CODIGO_AGENCIA: TStringField
      FieldName = 'IMPORTANCAO_CODIGO_AGENCIA'
    end
    object cldasecliIMPORTACAO_CONTA: TStringField
      FieldName = 'IMPORTACAO_CONTA'
    end
    object cldasecliIBAN: TStringField
      FieldName = 'IBAN'
      Size = 50
    end
    object cldasecliIMPORTACAO_INTERMEDIARIO: TStringField
      FieldName = 'IMPORTACAO_INTERMEDIARIO'
      Size = 50
    end
    object cldasecliTIPO_CLI_COMISSAO_ESPECIAL: TSmallintField
      FieldName = 'TIPO_CLI_COMISSAO_ESPECIAL'
    end
    object cldasecliSWIFT_CODE: TStringField
      FieldName = 'SWIFT_CODE'
      Size = 50
    end
    object cldasecliSWIFT_CODE_INTER: TStringField
      FieldName = 'SWIFT_CODE_INTER'
      Size = 50
    end
    object cldasecliREGIAO_ID: TIntegerField
      FieldName = 'REGIAO_ID'
    end
    object cldasecliCLIENTE_KROYA: TSmallintField
      FieldName = 'CLIENTE_KROYA'
    end
    object cldasecliNECESSARIO_PIN: TSmallintField
      FieldName = 'NECESSARIO_PIN'
    end
    object cldasecliOBS_NOTA: TBlobField
      FieldName = 'OBS_NOTA'
      Size = 8
    end
    object cldasecliSERASA_PDF: TBlobField
      FieldName = 'SERASA_PDF'
      Size = 8
    end
    object cldasecliCPF: TStringField
      FieldName = 'CPF'
    end
    object cldasecliRG: TStringField
      FieldName = 'RG'
    end
    object cldasecliCOMISSAO_DIF_REP: TStringField
      FieldName = 'COMISSAO_DIF_REP'
      Size = 500
    end
    object cldasecliCOD_SUP: TSmallintField
      FieldName = 'COD_SUP'
    end
    object cldasecliCOD_SUPD: TIntegerField
      FieldName = 'COD_SUPD'
    end
    object cldasecliTABELA: TSmallintField
      FieldName = 'TABELA'
    end
    object cldasecliDATA_ULTIMA_COMPRA: TDateField
      FieldName = 'DATA_ULTIMA_COMPRA'
    end
    object cldasecliLIMITE_CALCULADO: TFMTBCDField
      FieldName = 'LIMITE_CALCULADO'
      Precision = 19
      Size = 2
    end
    object cldasecliCOMPRA_PERIODO: TFMTBCDField
      FieldName = 'COMPRA_PERIODO'
      Precision = 19
      Size = 2
    end
    object cldasecliTRANSP_INFLA_ID: TIntegerField
      FieldName = 'TRANSP_INFLA_ID'
    end
    object cldasecliOBS_RECEBIMENTO: TBlobField
      FieldName = 'OBS_RECEBIMENTO'
      Size = 8
    end
    object cldasecliABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 2
    end
    object cldasecliTRANSP_SC: TIntegerField
      FieldName = 'TRANSP_SC'
    end
    object cldasecliTRANSP_SC_INFLA: TIntegerField
      FieldName = 'TRANSP_SC_INFLA'
    end
    object cldasecliTOTAL_INAD: TFMTBCDField
      FieldName = 'TOTAL_INAD'
      Precision = 19
      Size = 2
    end
    object cldasecliCONFERIDO_COLIGADA: TSmallintField
      FieldName = 'CONFERIDO_COLIGADA'
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 924
    Top = 329
  end
  object cldaseclassif: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CLASSIFICACAO'
    Params = <>
    ProviderName = 'daseprdin7'
    RemoteServer = dmconexao.SocketConnection1
    Left = 756
    Top = 390
    object cldaseclassifCLASS_ID: TIntegerField
      FieldName = 'CLASS_ID'
      Required = True
    end
    object cldaseclassifCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 9
    end
    object cldaseclassifDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cldaseclassifCFOPESTADO: TStringField
      FieldName = 'CFOPESTADO'
      Size = 5
    end
    object cldaseclassifCFOPFORAEST: TStringField
      FieldName = 'CFOPFORAEST'
      Size = 5
    end
    object cldaseclassifCFOPEXTERIOR: TStringField
      FieldName = 'CFOPEXTERIOR'
      Size = 5
    end
    object cldaseclassifIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldaseclassifIMPORTACAO: TFMTBCDField
      FieldName = 'IMPORTACAO'
      Precision = 19
      Size = 2
    end
    object cldaseclassifCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 30
    end
    object cldaseclassifPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldaseclassifCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldaseclassifPIS_FACIL: TFMTBCDField
      FieldName = 'PIS_FACIL'
      Precision = 19
      Size = 2
    end
    object cldaseclassifIRPJ: TFMTBCDField
      FieldName = 'IRPJ'
      Precision = 19
      Size = 2
    end
    object cldaseclassifCONTR_SOCIAL: TFMTBCDField
      FieldName = 'CONTR_SOCIAL'
      Precision = 19
      Size = 2
    end
    object cldaseclassifPIS_IMPORTACAO: TFMTBCDField
      FieldName = 'PIS_IMPORTACAO'
      Precision = 19
      Size = 2
    end
    object cldaseclassifCOFINS_IMPORTACAO: TFMTBCDField
      FieldName = 'COFINS_IMPORTACAO'
      Precision = 19
      Size = 2
    end
    object cldaseclassifCOFINS_FACIL: TFMTBCDField
      FieldName = 'COFINS_FACIL'
      Precision = 19
      Size = 2
    end
    object cldaseclassifIMPORTACAO_FACIL: TFMTBCDField
      FieldName = 'IMPORTACAO_FACIL'
      Precision = 19
      Size = 2
    end
    object cldaseclassifIPI_IMPORTACAO: TFMTBCDField
      FieldName = 'IPI_IMPORTACAO'
      Precision = 19
      Size = 2
    end
    object cldaseclassifIPI_FACIL: TFMTBCDField
      FieldName = 'IPI_FACIL'
      Precision = 19
      Size = 2
    end
    object cldaseclassifCOD_PROD_GNRE: TSmallintField
      FieldName = 'COD_PROD_GNRE'
    end
    object cldaseclassifCEST: TStringField
      FieldName = 'CEST'
    end
    object cldaseclassifTEM_ST: TSmallintField
      FieldName = 'TEM_ST'
    end
    object cldaseclassifUNIDADE_EXPORTACAO: TStringField
      FieldName = 'UNIDADE_EXPORTACAO'
    end
    object cldaseclassifUSADA: TSmallintField
      FieldName = 'USADA'
    end
  end
  object cldaseunid: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM UNID_VENDA'
    Params = <>
    ProviderName = 'daseprdin8'
    RemoteServer = dmconexao.SocketConnection1
    Left = 748
    Top = 430
    object cldaseunidUNID_VENDA: TStringField
      FieldName = 'UNID_VENDA'
      Required = True
      Size = 4
    end
    object cldaseunidDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cldaseunidDESCRICAO_INGLES: TStringField
      FieldName = 'DESCRICAO_INGLES'
    end
  end
  object save_excel: TSaveDialog
    Filter = 'Excel|*.xls'
    Left = 492
    Top = 385
  end
  object cldaseentrada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'daseprdin9'
    RemoteServer = dmconexao.SocketConnection1
    Left = 692
    Top = 473
  end
  object SaveTextFileDialog1: TSaveTextFileDialog
    Filter = 'TXT|*.txt'
    Left = 620
    Top = 502
  end
  object CLDASEALIQ: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM CLASSIF_ESTADOS2'
    Params = <>
    ProviderName = 'daseprdina'
    RemoteServer = dmconexao.SocketConnection1
    Left = 748
    Top = 551
    object CLDASEALIQCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object CLDASEALIQCLASS_ID: TIntegerField
      FieldName = 'CLASS_ID'
      Required = True
    end
    object CLDASEALIQESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CLDASEALIQICMS_OP: TFMTBCDField
      FieldName = 'ICMS_OP'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQMVA_ST_ORI: TFMTBCDField
      FieldName = 'MVA_ST_ORI'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQALIQ_INT_EST_DES: TFMTBCDField
      FieldName = 'ALIQ_INT_EST_DES'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQMVA_ST_AJUSTADA: TFMTBCDField
      FieldName = 'MVA_ST_AJUSTADA'
      Precision = 19
      Size = 4
    end
    object CLDASEALIQCONSUMIDOR_FINAL: TFMTBCDField
      FieldName = 'CONSUMIDOR_FINAL'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQMVA_ST_ORI_S: TFMTBCDField
      FieldName = 'MVA_ST_ORI_S'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQALIQ_INT_EST_DES_S: TFMTBCDField
      FieldName = 'ALIQ_INT_EST_DES_S'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQMVA_ST_AJUSTADA_S: TFMTBCDField
      FieldName = 'MVA_ST_AJUSTADA_S'
      Precision = 19
      Size = 4
    end
    object CLDASEALIQCONSUMIDOR_FINAL_S: TFMTBCDField
      FieldName = 'CONSUMIDOR_FINAL_S'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQICMS_NAC: TFMTBCDField
      FieldName = 'ICMS_NAC'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQCOD_PROD_GNRE: TSmallintField
      FieldName = 'COD_PROD_GNRE'
    end
    object CLDASEALIQCOD_PROD_GNRE_FP: TSmallintField
      FieldName = 'COD_PROD_GNRE_FP'
    end
    object CLDASEALIQFUNDO_POBREZA: TFMTBCDField
      FieldName = 'FUNDO_POBREZA'
      Precision = 19
      Size = 2
    end
    object CLDASEALIQUSA_MVA_AJUSTADA: TSmallintField
      FieldName = 'USA_MVA_AJUSTADA'
    end
    object CLDASEALIQFP_FAZ_PARTE_MVA: TSmallintField
      FieldName = 'FP_FAZ_PARTE_MVA'
    end
    object CLDASEALIQGNRE_UNICA: TIntegerField
      FieldName = 'GNRE_UNICA'
    end
    object CLDASEALIQGNRE_COD_PROD: TStringField
      FieldName = 'GNRE_COD_PROD'
    end
    object CLDASEALIQGNRE_COD_PROD_FP: TStringField
      FieldName = 'GNRE_COD_PROD_FP'
    end
    object CLDASEALIQCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 30
    end
    object CLDASEALIQDECRETO: TStringField
      FieldName = 'DECRETO'
      Size = 30
    end
    object CLDASEALIQARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 30
    end
    object CLDASEALIQOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Size = 8
    end
    object CLDASEALIQICMS_IMPORT: TFMTBCDField
      FieldName = 'ICMS_IMPORT'
      Precision = 19
      Size = 2
    end
  end
  object cldaseinvmes: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM INV_MENSAL WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdinb'
    RemoteServer = dmconexao.SocketConnection1
    Left = 492
    Top = 545
    object cldaseinvmesCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldaseinvmesANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object cldaseinvmesMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object cldaseinvmesLIB_SPED_EM: TSQLTimeStampField
      FieldName = 'LIB_SPED_EM'
    end
    object cldaseinvmesLIB_SPED_POR: TStringField
      FieldName = 'LIB_SPED_POR'
      Size = 30
    end
    object cldaseinvmesGERADO_SPED_EM: TSQLTimeStampField
      FieldName = 'GERADO_SPED_EM'
    end
  end
  object cldaseinvitem: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM INV_MENSAL_ITENS WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdinc'
    RemoteServer = dmconexao.SocketConnection1
    Left = 420
    Top = 537
    object cldaseinvitemCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldaseinvitemANO: TIntegerField
      FieldName = 'ANO'
      Required = True
    end
    object cldaseinvitemMES: TIntegerField
      FieldName = 'MES'
      Required = True
    end
    object cldaseinvitemCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Required = True
      Size = 12
    end
    object cldaseinvitemINICIAL: TIntegerField
      FieldName = 'INICIAL'
    end
    object cldaseinvitemSAIDA: TIntegerField
      FieldName = 'SAIDA'
    end
    object cldaseinvitemREMESSA_ARM: TIntegerField
      FieldName = 'REMESSA_ARM'
    end
    object cldaseinvitemTOTAL_SAIDA: TIntegerField
      FieldName = 'TOTAL_SAIDA'
    end
    object cldaseinvitemIMP_COM: TIntegerField
      FieldName = 'IMP_COM'
    end
    object cldaseinvitemRETORNO_ARM: TIntegerField
      FieldName = 'RETORNO_ARM'
    end
    object cldaseinvitemENTRADA: TIntegerField
      FieldName = 'ENTRADA'
    end
    object cldaseinvitemFINAL: TIntegerField
      FieldName = 'FINAL'
    end
    object cldaseinvitemFINAL_ARM: TIntegerField
      FieldName = 'FINAL_ARM'
    end
    object cldaseinvitemDIF_ATUAL_ARM: TIntegerField
      FieldName = 'DIF_ATUAL_ARM'
    end
    object cldaseinvitemGOL_INICIAL: TIntegerField
      FieldName = 'GOL_INICIAL'
    end
    object cldaseinvitemGOL_ENTRADA: TIntegerField
      FieldName = 'GOL_ENTRADA'
    end
    object cldaseinvitemGOL_SAIDA: TIntegerField
      FieldName = 'GOL_SAIDA'
    end
    object cldaseinvitemGOL_FINAL: TIntegerField
      FieldName = 'GOL_FINAL'
    end
    object cldaseinvitemPEL_INICIAL: TIntegerField
      FieldName = 'PEL_INICIAL'
    end
    object cldaseinvitemPEL_ENTRADA: TIntegerField
      FieldName = 'PEL_ENTRADA'
    end
    object cldaseinvitemPEL_SAIDA: TIntegerField
      FieldName = 'PEL_SAIDA'
    end
    object cldaseinvitemPEL_FINAL: TIntegerField
      FieldName = 'PEL_FINAL'
    end
    object cldaseinvitemDF_INICIAL: TIntegerField
      FieldName = 'DF_INICIAL'
    end
    object cldaseinvitemDF_ENTRADA: TIntegerField
      FieldName = 'DF_ENTRADA'
    end
    object cldaseinvitemDF_SAIDA: TIntegerField
      FieldName = 'DF_SAIDA'
    end
    object cldaseinvitemDF_FINAL: TIntegerField
      FieldName = 'DF_FINAL'
    end
    object cldaseinvitemTOTAL_ENTRADA: TIntegerField
      FieldName = 'TOTAL_ENTRADA'
    end
    object cldaseinvitemOUT_INICIAL: TIntegerField
      FieldName = 'OUT_INICIAL'
    end
    object cldaseinvitemOUT_ENTRADA: TIntegerField
      FieldName = 'OUT_ENTRADA'
    end
    object cldaseinvitemOUT_SAIDA: TIntegerField
      FieldName = 'OUT_SAIDA'
    end
    object cldaseinvitemOUT_FINAL: TIntegerField
      FieldName = 'OUT_FINAL'
    end
    object cldaseinvitemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object cldasefazinv: TClientDataSet
    Aggregates = <>
    CommandText = 'select * FROM PRODUTOS_VALORES WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdine'
    RemoteServer = dmconexao.SocketConnection1
    Left = 308
    Top = 505
    object cldasefazinvCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasefazinvCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Required = True
      Size = 12
    end
    object cldasefazinvPMEIO: TFMTBCDField
      FieldName = 'PMEIO'
      Precision = 19
      Size = 2
    end
    object cldasefazinvPRCHEIO: TFMTBCDField
      FieldName = 'PRCHEIO'
      Precision = 19
      Size = 2
    end
    object cldasefazinvPCHEIO: TFMTBCDField
      FieldName = 'PCHEIO'
      Precision = 19
      Size = 2
    end
    object cldasefazinvCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 19
      Size = 2
    end
    object cldasefazinvCUSTO_CRK: TFMTBCDField
      FieldName = 'CUSTO_CRK'
      Precision = 19
      Size = 2
    end
    object cldasefazinvPAPAR: TFMTBCDField
      FieldName = 'PAPAR'
      Precision = 19
      Size = 2
    end
    object cldasefazinvENVIA_INVENTARIO: TSmallintField
      FieldName = 'ENVIA_INVENTARIO'
    end
  end
  object DASO_INVMES: TDataSource
    DataSet = cldaseinvmes
    Left = 540
    Top = 585
  end
end
