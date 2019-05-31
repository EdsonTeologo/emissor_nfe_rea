object frmRelGerencial: TfrmRelGerencial
  Left = 0
  Top = 0
  Width = 1116
  Height = 676
  TabOrder = 0
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1116
    Height = 65
    Align = alTop
    ExplicitWidth = 779
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 8
    Caption = 'Per'#237'odo de'
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 24
    Top = 31
    Caption = 'Per'#237'odo at'#233
    Transparent = True
  end
  object cx_ate: TcxDateEdit
    Left = 96
    Top = 35
    TabOrder = 2
    Width = 121
  end
  object cx_de: TcxDateEdit
    Left = 96
    Top = 8
    TabOrder = 3
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 248
    Top = 8
    Width = 75
    Height = 48
    Caption = 'Processar'
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 352
    Top = 8
    Width = 75
    Height = 48
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = cxButton2Click
  end
  object CLDASEEMIT: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID=1 and DATA_EMISSAO>='#39'2' +
      '016-10-01'#39' AND DATA_EMISSAO<='#39'2016-10-31'#39' AND XML_CANCELAMENTO I' +
      'S NULL ORDER BY NFE'
    Params = <>
    ProviderName = 'daseprdin1'
    RemoteServer = dmconexao.SocketConnection1
    Left = 448
    Top = 16
    object CLDASEEMITCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CLDASEEMITCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object CLDASEEMITNFE: TIntegerField
      FieldName = 'NFE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CLDASEEMITID_NFE: TStringField
      FieldName = 'ID_NFE'
      Size = 60
    end
    object CLDASEEMITXML_NFE: TBlobField
      FieldName = 'XML_NFE'
      Size = 8
    end
    object CLDASEEMITDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CLDASEEMITCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object CLDASEEMITRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object CLDASEEMITNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object CLDASEEMITESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object CLDASEEMITPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Size = 500
    end
    object CLDASEEMITVALOR_NOTA: TFMTBCDField
      FieldName = 'VALOR_NOTA'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 60
    end
    object CLDASEEMITPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 60
    end
    object CLDASEEMITDATA_HORA_RECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORA_RECIBO'
    end
    object CLDASEEMITPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 60
    end
    object CLDASEEMITJUSTIFICATIVA_CANCELAMENTO: TBlobField
      FieldName = 'JUSTIFICATIVA_CANCELAMENTO'
      Size = 8
    end
    object CLDASEEMITHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
    end
    object CLDASEEMITTXT_ORIGEM: TBlobField
      FieldName = 'TXT_ORIGEM'
      Size = 8
    end
    object CLDASEEMITXML_ORIGEM: TBlobField
      FieldName = 'XML_ORIGEM'
      Size = 8
    end
    object CLDASEEMITXML_RETORNO: TBlobField
      FieldName = 'XML_RETORNO'
      Size = 8
    end
    object CLDASEEMITDATA_ENVIO: TSQLTimeStampField
      FieldName = 'DATA_ENVIO'
    end
    object CLDASEEMITCODIGO_ENVIO: TStringField
      FieldName = 'CODIGO_ENVIO'
      Size = 4
    end
    object CLDASEEMITMOTIVO_ENVIO: TStringField
      FieldName = 'MOTIVO_ENVIO'
      Size = 100
    end
    object CLDASEEMITACAO: TSmallintField
      FieldName = 'ACAO'
    end
    object CLDASEEMITRESULTADO: TSmallintField
      FieldName = 'RESULTADO'
    end
    object CLDASEEMITSTATUS_ATUAL: TStringField
      FieldName = 'STATUS_ATUAL'
      Size = 300
    end
    object CLDASEEMITCOD_RESP_ENVIO: TSmallintField
      FieldName = 'COD_RESP_ENVIO'
    end
    object CLDASEEMITSTAT_RESP_ENVIO: TStringField
      FieldName = 'STAT_RESP_ENVIO'
      Size = 300
    end
    object CLDASEEMITLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object CLDASEEMITCOD_RESP_CANCELAMENTO: TSmallintField
      FieldName = 'COD_RESP_CANCELAMENTO'
    end
    object CLDASEEMITSTAT_RESP_CANCELAMENTO: TStringField
      FieldName = 'STAT_RESP_CANCELAMENTO'
      Size = 300
    end
    object CLDASEEMITPROTOCOLO_CANCELAMENTO: TStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Size = 60
    end
    object CLDASEEMITCOD_RESP_CARTA: TSmallintField
      FieldName = 'COD_RESP_CARTA'
    end
    object CLDASEEMITSTAT_RESP_CARTA: TStringField
      FieldName = 'STAT_RESP_CARTA'
      Size = 300
    end
    object CLDASEEMITPROTOCOLO_CARTA: TStringField
      FieldName = 'PROTOCOLO_CARTA'
      Size = 60
    end
    object CLDASEEMITMOTIVO_CANCELAMENTO: TBlobField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 8
    end
    object CLDASEEMITMUDANCA_CARTA: TBlobField
      FieldName = 'MUDANCA_CARTA'
      Size = 8
    end
    object CLDASEEMITDATA_HORA_REC_CANC: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CANC'
    end
    object CLDASEEMITDATA_HORA_REC_CARTA: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CARTA'
    end
    object CLDASEEMITDATA_HORA_REC_UNIT: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_UNIT'
    end
    object CLDASEEMITCOD_RESP_INUT: TSmallintField
      FieldName = 'COD_RESP_INUT'
    end
    object CLDASEEMITSTAT_RESP_INUT: TStringField
      FieldName = 'STAT_RESP_INUT'
      Size = 300
    end
    object CLDASEEMITMOTIVO_INUT: TBlobField
      FieldName = 'MOTIVO_INUT'
      Size = 8
    end
    object CLDASEEMITNOTA_INUT_ATE: TIntegerField
      FieldName = 'NOTA_INUT_ATE'
    end
    object CLDASEEMITPROTOCOLO_INUT: TStringField
      FieldName = 'PROTOCOLO_INUT'
      Size = 60
    end
    object CLDASEEMITXML_CANCELAMENTO: TBlobField
      FieldName = 'XML_CANCELAMENTO'
      Size = 8
    end
    object CLDASEEMITXML_INUT: TBlobField
      FieldName = 'XML_INUT'
      Size = 8
    end
    object CLDASEEMITXML_CARTA: TBlobField
      FieldName = 'XML_CARTA'
      Size = 8
    end
    object CLDASEEMITTOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITICMS_ST: TFMTBCDField
      FieldName = 'ICMS_ST'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITOUTRASDESP: TFMTBCDField
      FieldName = 'OUTRASDESP'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object CLDASEEMITIMP_IMP: TFMTBCDField
      FieldName = 'IMP_IMP'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITCOFINS_ST: TFMTBCDField
      FieldName = 'COFINS_ST'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITPIS_ST: TFMTBCDField
      FieldName = 'PIS_ST'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITICMS_FCP: TFMTBCDField
      FieldName = 'ICMS_FCP'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITDATA_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZACAO'
    end
    object CLDASEEMITIMPOSTO_RENDA: TFMTBCDField
      FieldName = 'IMPOSTO_RENDA'
      Precision = 19
      Size = 2
    end
    object CLDASEEMITTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object CLDASEEMITDENEGADA1: TBlobField
      FieldName = 'DENEGADA1'
      Size = 8
    end
  end
  object DASOEMIT: TDataSource
    AutoEdit = False
    DataSet = CLDASEEMIT
    Left = 520
    Top = 16
  end
  object dasocanc: TDataSource
    AutoEdit = False
    DataSet = cldasecanc
    Left = 520
    Top = 72
  end
  object cldasecanc: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID=1 and DATA_EMISSAO>='#39'2' +
      '016-10-01'#39' AND DATA_EMISSAO<='#39'2016-10-31'#39' AND XML_CANCELAMENTO I' +
      'S NULL ORDER BY NFE'
    Params = <>
    ProviderName = 'daseprdin2'
    RemoteServer = dmconexao.SocketConnection1
    Left = 448
    Top = 72
    object cldasecancCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasecancCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cldasecancNFE: TIntegerField
      FieldName = 'NFE'
      Required = True
    end
    object cldasecancID_NFE: TStringField
      FieldName = 'ID_NFE'
      Size = 60
    end
    object cldasecancXML_NFE: TBlobField
      FieldName = 'XML_NFE'
      Size = 8
    end
    object cldasecancDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cldasecancCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object cldasecancRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object cldasecancNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object cldasecancESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object cldasecancPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Size = 500
    end
    object cldasecancVALOR_NOTA: TFMTBCDField
      FieldName = 'VALOR_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasecancCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 60
    end
    object cldasecancPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 60
    end
    object cldasecancDATA_HORA_RECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORA_RECIBO'
    end
    object cldasecancPROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 60
    end
    object cldasecancJUSTIFICATIVA_CANCELAMENTO: TBlobField
      FieldName = 'JUSTIFICATIVA_CANCELAMENTO'
      Size = 8
    end
    object cldasecancHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
    end
    object cldasecancTXT_ORIGEM: TBlobField
      FieldName = 'TXT_ORIGEM'
      Size = 8
    end
    object cldasecancXML_ORIGEM: TBlobField
      FieldName = 'XML_ORIGEM'
      Size = 8
    end
    object cldasecancXML_RETORNO: TBlobField
      FieldName = 'XML_RETORNO'
      Size = 8
    end
    object cldasecancDATA_ENVIO: TSQLTimeStampField
      FieldName = 'DATA_ENVIO'
    end
    object cldasecancCODIGO_ENVIO: TStringField
      FieldName = 'CODIGO_ENVIO'
      Size = 4
    end
    object cldasecancMOTIVO_ENVIO: TStringField
      FieldName = 'MOTIVO_ENVIO'
      Size = 100
    end
    object cldasecancACAO: TSmallintField
      FieldName = 'ACAO'
    end
    object cldasecancRESULTADO: TSmallintField
      FieldName = 'RESULTADO'
    end
    object cldasecancSTATUS_ATUAL: TStringField
      FieldName = 'STATUS_ATUAL'
      Size = 300
    end
    object cldasecancCOD_RESP_ENVIO: TSmallintField
      FieldName = 'COD_RESP_ENVIO'
    end
    object cldasecancSTAT_RESP_ENVIO: TStringField
      FieldName = 'STAT_RESP_ENVIO'
      Size = 300
    end
    object cldasecancLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cldasecancCOD_RESP_CANCELAMENTO: TSmallintField
      FieldName = 'COD_RESP_CANCELAMENTO'
    end
    object cldasecancSTAT_RESP_CANCELAMENTO: TStringField
      FieldName = 'STAT_RESP_CANCELAMENTO'
      Size = 300
    end
    object cldasecancPROTOCOLO_CANCELAMENTO: TStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Size = 60
    end
    object cldasecancCOD_RESP_CARTA: TSmallintField
      FieldName = 'COD_RESP_CARTA'
    end
    object cldasecancSTAT_RESP_CARTA: TStringField
      FieldName = 'STAT_RESP_CARTA'
      Size = 300
    end
    object cldasecancPROTOCOLO_CARTA: TStringField
      FieldName = 'PROTOCOLO_CARTA'
      Size = 60
    end
    object cldasecancMOTIVO_CANCELAMENTO: TBlobField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 8
    end
    object cldasecancMUDANCA_CARTA: TBlobField
      FieldName = 'MUDANCA_CARTA'
      Size = 8
    end
    object cldasecancDATA_HORA_REC_CANC: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CANC'
    end
    object cldasecancDATA_HORA_REC_CARTA: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CARTA'
    end
    object cldasecancDATA_HORA_REC_UNIT: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_UNIT'
    end
    object cldasecancCOD_RESP_INUT: TSmallintField
      FieldName = 'COD_RESP_INUT'
    end
    object cldasecancSTAT_RESP_INUT: TStringField
      FieldName = 'STAT_RESP_INUT'
      Size = 300
    end
    object cldasecancMOTIVO_INUT: TBlobField
      FieldName = 'MOTIVO_INUT'
      Size = 8
    end
    object cldasecancNOTA_INUT_ATE: TIntegerField
      FieldName = 'NOTA_INUT_ATE'
    end
    object cldasecancPROTOCOLO_INUT: TStringField
      FieldName = 'PROTOCOLO_INUT'
      Size = 60
    end
    object cldasecancXML_CANCELAMENTO: TBlobField
      FieldName = 'XML_CANCELAMENTO'
      Size = 8
    end
    object cldasecancXML_INUT: TBlobField
      FieldName = 'XML_INUT'
      Size = 8
    end
    object cldasecancXML_CARTA: TBlobField
      FieldName = 'XML_CARTA'
      Size = 8
    end
    object cldasecancTOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasecancICMS_ST: TFMTBCDField
      FieldName = 'ICMS_ST'
      Precision = 19
      Size = 2
    end
    object cldasecancFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 19
      Size = 2
    end
    object cldasecancSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasecancIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldasecancOUTRASDESP: TFMTBCDField
      FieldName = 'OUTRASDESP'
      Precision = 19
      Size = 2
    end
    object cldasecancDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasecancBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 19
      Size = 2
    end
    object cldasecancICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasecancTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cldasecancIMP_IMP: TFMTBCDField
      FieldName = 'IMP_IMP'
      Precision = 19
      Size = 2
    end
    object cldasecancCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldasecancPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldasecancISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      Precision = 19
      Size = 2
    end
    object cldasecancCOFINS_ST: TFMTBCDField
      FieldName = 'COFINS_ST'
      Precision = 19
      Size = 2
    end
    object cldasecancPIS_ST: TFMTBCDField
      FieldName = 'PIS_ST'
      Precision = 19
      Size = 2
    end
    object cldasecancTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasecancICMS_FCP: TFMTBCDField
      FieldName = 'ICMS_FCP'
      Precision = 19
      Size = 2
    end
    object cldasecancDATA_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZACAO'
    end
    object cldasecancIMPOSTO_RENDA: TFMTBCDField
      FieldName = 'IMPOSTO_RENDA'
      Precision = 19
      Size = 2
    end
    object cldasecancTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
  end
  object cldaseinut: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID=1 and DATA_EMISSAO>='#39'2' +
      '016-10-01'#39' AND DATA_EMISSAO<='#39'2016-10-31'#39' AND XML_CANCELAMENTO I' +
      'S NULL ORDER BY NFE'
    Params = <>
    ProviderName = 'daseprdin3'
    RemoteServer = dmconexao.SocketConnection1
    Left = 448
    Top = 128
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
    object cldaseinutPROTOCOLO_INUT: TStringField
      FieldName = 'PROTOCOLO_INUT'
      Size = 60
    end
    object cldaseinutXML_CANCELAMENTO: TBlobField
      FieldName = 'XML_CANCELAMENTO'
      Size = 8
    end
    object cldaseinutXML_INUT: TBlobField
      FieldName = 'XML_INUT'
      Size = 8
    end
    object cldaseinutXML_CARTA: TBlobField
      FieldName = 'XML_CARTA'
      Size = 8
    end
    object cldaseinutTOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldaseinutICMS_ST: TFMTBCDField
      FieldName = 'ICMS_ST'
      Precision = 19
      Size = 2
    end
    object cldaseinutFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 19
      Size = 2
    end
    object cldaseinutSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Precision = 19
      Size = 2
    end
    object cldaseinutIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldaseinutOUTRASDESP: TFMTBCDField
      FieldName = 'OUTRASDESP'
      Precision = 19
      Size = 2
    end
    object cldaseinutDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldaseinutBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 19
      Size = 2
    end
    object cldaseinutICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldaseinutTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cldaseinutIMP_IMP: TFMTBCDField
      FieldName = 'IMP_IMP'
      Precision = 19
      Size = 2
    end
    object cldaseinutCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldaseinutPIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldaseinutISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      Precision = 19
      Size = 2
    end
    object cldaseinutCOFINS_ST: TFMTBCDField
      FieldName = 'COFINS_ST'
      Precision = 19
      Size = 2
    end
    object cldaseinutPIS_ST: TFMTBCDField
      FieldName = 'PIS_ST'
      Precision = 19
      Size = 2
    end
    object cldaseinutTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldaseinutICMS_FCP: TFMTBCDField
      FieldName = 'ICMS_FCP'
      Precision = 19
      Size = 2
    end
    object cldaseinutDATA_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZACAO'
    end
    object cldaseinutIMPOSTO_RENDA: TFMTBCDField
      FieldName = 'IMPOSTO_RENDA'
      Precision = 19
      Size = 2
    end
    object cldaseinutTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
  end
  object dasoinut: TDataSource
    AutoEdit = False
    DataSet = cldaseinut
    Left = 520
    Top = 128
  end
  object dasodene: TDataSource
    AutoEdit = False
    DataSet = cldasedene
    Left = 520
    Top = 184
  end
  object cldasedene: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID=1 and DATA_EMISSAO>='#39'2' +
      '016-10-01'#39' AND DATA_EMISSAO<='#39'2016-10-31'#39' AND XML_CANCELAMENTO I' +
      'S NULL ORDER BY NFE'
    Params = <>
    ProviderName = 'daseprdin4'
    RemoteServer = dmconexao.SocketConnection1
    Left = 448
    Top = 184
    object cldasedeneCODEMP_ID: TIntegerField
      FieldName = 'CODEMP_ID'
      Required = True
    end
    object cldasedeneCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cldasedeneNFE: TIntegerField
      FieldName = 'NFE'
      Required = True
    end
    object cldasedeneID_NFE: TStringField
      FieldName = 'ID_NFE'
      Size = 60
    end
    object cldasedeneXML_NFE: TBlobField
      FieldName = 'XML_NFE'
      Size = 8
    end
    object cldasedeneDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object cldasedeneCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object cldasedeneRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object cldasedeneNATUREZA: TStringField
      FieldName = 'NATUREZA'
      Size = 50
    end
    object cldasedeneESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 10
    end
    object cldasedenePRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Size = 500
    end
    object cldasedeneVALOR_NOTA: TFMTBCDField
      FieldName = 'VALOR_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasedeneCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 60
    end
    object cldasedenePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 60
    end
    object cldasedeneDATA_HORA_RECIBO: TSQLTimeStampField
      FieldName = 'DATA_HORA_RECIBO'
    end
    object cldasedenePROTOCOLO_CANC: TStringField
      FieldName = 'PROTOCOLO_CANC'
      Size = 60
    end
    object cldasedeneJUSTIFICATIVA_CANCELAMENTO: TBlobField
      FieldName = 'JUSTIFICATIVA_CANCELAMENTO'
      Size = 8
    end
    object cldasedeneHORA_EMISSAO: TTimeField
      FieldName = 'HORA_EMISSAO'
    end
    object cldasedeneTXT_ORIGEM: TBlobField
      FieldName = 'TXT_ORIGEM'
      Size = 8
    end
    object cldasedeneXML_ORIGEM: TBlobField
      FieldName = 'XML_ORIGEM'
      Size = 8
    end
    object cldasedeneXML_RETORNO: TBlobField
      FieldName = 'XML_RETORNO'
      Size = 8
    end
    object cldasedeneDATA_ENVIO: TSQLTimeStampField
      FieldName = 'DATA_ENVIO'
    end
    object cldasedeneCODIGO_ENVIO: TStringField
      FieldName = 'CODIGO_ENVIO'
      Size = 4
    end
    object cldasedeneMOTIVO_ENVIO: TStringField
      FieldName = 'MOTIVO_ENVIO'
      Size = 100
    end
    object cldasedeneACAO: TSmallintField
      FieldName = 'ACAO'
    end
    object cldasedeneRESULTADO: TSmallintField
      FieldName = 'RESULTADO'
    end
    object cldasedeneSTATUS_ATUAL: TStringField
      FieldName = 'STATUS_ATUAL'
      Size = 300
    end
    object cldasedeneCOD_RESP_ENVIO: TSmallintField
      FieldName = 'COD_RESP_ENVIO'
    end
    object cldasedeneSTAT_RESP_ENVIO: TStringField
      FieldName = 'STAT_RESP_ENVIO'
      Size = 300
    end
    object cldasedeneLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object cldasedeneCOD_RESP_CANCELAMENTO: TSmallintField
      FieldName = 'COD_RESP_CANCELAMENTO'
    end
    object cldasedeneSTAT_RESP_CANCELAMENTO: TStringField
      FieldName = 'STAT_RESP_CANCELAMENTO'
      Size = 300
    end
    object cldasedenePROTOCOLO_CANCELAMENTO: TStringField
      FieldName = 'PROTOCOLO_CANCELAMENTO'
      Size = 60
    end
    object cldasedeneCOD_RESP_CARTA: TSmallintField
      FieldName = 'COD_RESP_CARTA'
    end
    object cldasedeneSTAT_RESP_CARTA: TStringField
      FieldName = 'STAT_RESP_CARTA'
      Size = 300
    end
    object cldasedenePROTOCOLO_CARTA: TStringField
      FieldName = 'PROTOCOLO_CARTA'
      Size = 60
    end
    object cldasedeneMOTIVO_CANCELAMENTO: TBlobField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 8
    end
    object cldasedeneMUDANCA_CARTA: TBlobField
      FieldName = 'MUDANCA_CARTA'
      Size = 8
    end
    object cldasedeneDATA_HORA_REC_CANC: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CANC'
    end
    object cldasedeneDATA_HORA_REC_CARTA: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_CARTA'
    end
    object cldasedeneDATA_HORA_REC_UNIT: TSQLTimeStampField
      FieldName = 'DATA_HORA_REC_UNIT'
    end
    object cldasedeneCOD_RESP_INUT: TSmallintField
      FieldName = 'COD_RESP_INUT'
    end
    object cldasedeneSTAT_RESP_INUT: TStringField
      FieldName = 'STAT_RESP_INUT'
      Size = 300
    end
    object cldasedeneMOTIVO_INUT: TBlobField
      FieldName = 'MOTIVO_INUT'
      Size = 8
    end
    object cldasedeneNOTA_INUT_ATE: TIntegerField
      FieldName = 'NOTA_INUT_ATE'
    end
    object cldasedenePROTOCOLO_INUT: TStringField
      FieldName = 'PROTOCOLO_INUT'
      Size = 60
    end
    object cldasedeneXML_CANCELAMENTO: TBlobField
      FieldName = 'XML_CANCELAMENTO'
      Size = 8
    end
    object cldasedeneXML_INUT: TBlobField
      FieldName = 'XML_INUT'
      Size = 8
    end
    object cldasedeneXML_CARTA: TBlobField
      FieldName = 'XML_CARTA'
      Size = 8
    end
    object cldasedeneTOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'TOTAL_PRODUTOS'
      Precision = 19
      Size = 2
    end
    object cldasedeneICMS_ST: TFMTBCDField
      FieldName = 'ICMS_ST'
      Precision = 19
      Size = 2
    end
    object cldasedeneFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 19
      Size = 2
    end
    object cldasedeneSEGURO: TFMTBCDField
      FieldName = 'SEGURO'
      Precision = 19
      Size = 2
    end
    object cldasedeneIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 19
      Size = 2
    end
    object cldasedeneOUTRASDESP: TFMTBCDField
      FieldName = 'OUTRASDESP'
      Precision = 19
      Size = 2
    end
    object cldasedeneDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 19
      Size = 2
    end
    object cldasedeneBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 19
      Size = 2
    end
    object cldasedeneICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 19
      Size = 2
    end
    object cldasedeneTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Size = 1
    end
    object cldasedeneIMP_IMP: TFMTBCDField
      FieldName = 'IMP_IMP'
      Precision = 19
      Size = 2
    end
    object cldasedeneCOFINS: TFMTBCDField
      FieldName = 'COFINS'
      Precision = 19
      Size = 2
    end
    object cldasedenePIS: TFMTBCDField
      FieldName = 'PIS'
      Precision = 19
      Size = 2
    end
    object cldasedeneISSQN: TFMTBCDField
      FieldName = 'ISSQN'
      Precision = 19
      Size = 2
    end
    object cldasedeneCOFINS_ST: TFMTBCDField
      FieldName = 'COFINS_ST'
      Precision = 19
      Size = 2
    end
    object cldasedenePIS_ST: TFMTBCDField
      FieldName = 'PIS_ST'
      Precision = 19
      Size = 2
    end
    object cldasedeneTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 19
      Size = 2
    end
    object cldasedeneICMS_FCP: TFMTBCDField
      FieldName = 'ICMS_FCP'
      Precision = 19
      Size = 2
    end
    object cldasedeneDATA_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZACAO'
    end
    object cldasedeneIMPOSTO_RENDA: TFMTBCDField
      FieldName = 'IMPOSTO_RENDA'
      Precision = 19
      Size = 2
    end
    object cldasedeneTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object cldasedeneDENEGADA1: TBlobField
      FieldName = 'DENEGADA1'
      Size = 8
    end
  end
  object cldasecfop: TClientDataSet
    PersistDataPacket.Data = {
      E80000009619E0BD01000000180000000C000000000003000000E80009746970
      6F5F6E6F746101004900000001000557494454480200020001000463666F7001
      004900000001000557494454480200020014000870726F6475746F7308000400
      0000000008746F74616C6E666508000400000000000762635F69636D73080004
      00000000000469636D7308000400000000000769636D735F7374080004000000
      00000869636D735F666370080004000000000003697069080004000000000007
      696D705F696D70080004000000000003706973080004000000000006636F6669
      6E7308000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'tipo_nota'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cfop'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'produtos'
        DataType = ftFloat
      end
      item
        Name = 'totalnfe'
        DataType = ftFloat
      end
      item
        Name = 'bc_icms'
        DataType = ftFloat
      end
      item
        Name = 'icms'
        DataType = ftFloat
      end
      item
        Name = 'icms_st'
        DataType = ftFloat
      end
      item
        Name = 'icms_fcp'
        DataType = ftFloat
      end
      item
        Name = 'ipi'
        DataType = ftFloat
      end
      item
        Name = 'imp_imp'
        DataType = ftFloat
      end
      item
        Name = 'pis'
        DataType = ftFloat
      end
      item
        Name = 'cofins'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'tipo_nota;cfop'
    Params = <>
    StoreDefs = True
    Left = 448
    Top = 244
    object cldasecfoptipo_nota: TStringField
      FieldName = 'tipo_nota'
      Size = 1
    end
    object cldasecfopcfop: TStringField
      FieldName = 'cfop'
    end
    object cldasecfopprodutos: TFloatField
      FieldName = 'produtos'
    end
    object cldasecfoptotalnfe: TFloatField
      FieldName = 'totalnfe'
    end
    object cldasecfopbc_icms: TFloatField
      FieldName = 'bc_icms'
    end
    object cldasecfopicms: TFloatField
      FieldName = 'icms'
    end
    object cldasecfopicms_st: TFloatField
      FieldName = 'icms_st'
    end
    object cldasecfopicms_fcp: TFloatField
      FieldName = 'icms_fcp'
    end
    object cldasecfopipi: TFloatField
      FieldName = 'ipi'
    end
    object cldasecfopimp_imp: TFloatField
      FieldName = 'imp_imp'
    end
    object cldasecfoppis: TFloatField
      FieldName = 'pis'
    end
    object cldasecfopcofins: TFloatField
      FieldName = 'cofins'
    end
  end
  object dasocfop: TDataSource
    AutoEdit = False
    DataSet = cldasecfop
    Left = 528
    Top = 244
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 288
  end
  object DataSource3: TDataSource
    Left = 688
    Top = 280
  end
  object cldaseemp: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM EMPRESAS WHERE 0=1'
    Params = <>
    ProviderName = 'daseprdin5'
    RemoteServer = dmconexao.SocketConnection1
    Left = 496
    Top = 352
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
  object daso_emp: TDataSource
    AutoEdit = False
    DataSet = cldaseemp
    Left = 336
    Top = 392
  end
  object frx_relger: TfrxReport
    Version = '6.2.1'
    DataSet = frxdb_emp
    DataSetName = 'frxdb_emp'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43532.376494872700000000
    ReportOptions.LastChange = 43532.376494872700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 184
    Datasets = <
      item
        DataSet = frxdb_canc
        DataSetName = 'frxdb_canc'
      end
      item
        DataSet = frxdb_cfop
        DataSetName = 'frxdb_cfop'
      end
      item
        DataSet = frxdb_dene
        DataSetName = 'frxdb_dene'
      end
      item
        DataSet = frxdb_emit
        DataSetName = 'frxdb_emit'
      end
      item
        DataSet = frxdb_emp
        DataSetName = 'frxdb_emp'
      end
      item
        DataSet = frxdb_inut
        DataSetName = 'frxdb_inut'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        DataSet = frxdb_emit
        DataSetName = 'frxdb_emit'
        RowCount = 0
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_emit."NFE"]')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 66.811070000000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_emit."DATA_EMISSAO"]')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 128.283550000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."TOTAL_PRODUTOS"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 196.889920000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."TOTAL_NOTA"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 264.716760000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."BC_ICMS"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 333.323130000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."ICMS"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 402.488560000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."ICMS_ST"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 470.535870000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."ICMS_FCP"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 539.142240000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."IPI"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 608.189550000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."IMP_IMP"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 676.315400000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."PIS"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 746.480830000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_emit."COFINS"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 815.158010000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_emit."TIPO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 882.969080000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_emit."TIPO_NOTA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 906.205320000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_emit."DATA_AUTORIZACAO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 18.897650000000000000
        ParentFont = False
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 128.125984251969000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."TOTAL_PRODUTOS">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 196.913385826772000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."TOTAL_NOTA">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 264.566929133858000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."BC_ICMS">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 333.354330708661000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."ICMS">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 402.519685039370000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."ICMS_ST">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 470.551181102362000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."ICMS_FCP">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 538.960629921260000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."IPI">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 608.125984251969000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."IMP_IMP">,MasterData1,2)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 676.157480314961000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."PIS">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 746.456692913386000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_emit."COFINS">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 113.385900000000000000
        Width = 1046.929810000000000000
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 2.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero')
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 66.897637800000000000
          Top = 2.645669290000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt.Emis')
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 128.125984250000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 196.913385830000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total NFE')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 264.566929130000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'BC ICMS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 333.354330710000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 402.519685040000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS ST')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 470.551181100000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS FCP')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 538.960629920000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 608.125984250000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'II')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 676.157480310000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pis')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 746.456692910000000000
          Top = 2.645669290000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cofins')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 2.645669290000000000
          Width = 45.354318500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 882.897637800000000000
          Top = 2.645669290000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E/S')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 909.330708660000000000
          Top = 2.645669290000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Autoriza'#231#227'o')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO GERAL')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 37.015770000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 76.929190000000000000
          Top = 37.236240000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_emp."RAZAO_NFE"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 8.677180000000000000
          Top = 3.779527560000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 72.504020000000000000
          Top = 3.779527560000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 950.787570000000000000
          Top = 3.779527560000000000
          Width = 26.456673390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.614410000000000000
          Top = 3.779527560000000000
          Width = 34.015733390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 981.803650000000000000
          Top = 3.779527560000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'de')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 901.197280000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'gina')
          ParentFont = False
        end
      end
    end
    object pg_canc: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = frxdb_canc
        DataSetName = 'frxdb_canc'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000,000,000'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_canc."NFE"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 70.031540000000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_canc."DATA_EMISSAO"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 144.842610000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_canc."PROTOCOLO_CANCELAMENTO"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 245.771800000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_canc."DATA_HORA_REC_CANC"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 375.055350000000000000
          Width = 540.472790000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_canc."MOTIVO_CANCELAMENTO"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 109.606370000000000000
        Width = 1046.929810000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 377.882190000000000000
          Top = 2.000000000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Motivo do Cancelamento')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 248.039580000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt.Canc.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 146.315090000000000000
          Top = 2.000000000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Protocolo Canc.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 72.811070000000000000
          Top = 2.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt.Emiss'#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 2.000000000000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 4.456710000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CANCELADAS')
          ParentFont = False
        end
      end
    end
    object pg_inut: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object ReportTitle3: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 6.559060000000000000
          Top = 4.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Inutilizadas')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        DataSet = frxdb_inut
        DataSetName = 'frxdb_inut'
        RowCount = 0
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000,000,000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_inut."NFE"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 69.283550000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000,000,000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_inut."NOTA_INUT_ATE"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 139.330860000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_inut."PROTOCOLO_INUT"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 238.937230000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_inut."DATA_HORA_REC_UNIT"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 340.102660000000000000
          Width = 563.149970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_inut."MOTIVO_INUT"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 1046.929810000000000000
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 3.913420000000000000
          Top = 3.440940000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Da NFE')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 73.078774330000000000
          Top = 3.440940000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'At'#233' NFE')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 143.377986930000000000
          Top = 3.440940000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Protocolo Inut.')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 242.779561730000000000
          Top = 3.440940000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dt. Inut.')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 344.070900310000000000
          Top = 3.440940000000000000
          Width = 570.709030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Motivo da Inutiliza'#231#227'o')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
    object pg_dene: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object ReportTitle4: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 6.338590000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Denegadas')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 22.677180000000000000
        Top = 120.944960000000000000
        Width = 1046.929810000000000000
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 3.779527559055120000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 85.488250000000000000
          Top = 3.779527559055120000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Motivo')
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        DataSet = frxdb_dene
        DataSetName = 'frxdb_dene'
        RowCount = 0
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 68.031496062992100000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000,000,000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_dene."NFE"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 83.488250000000000000
          Width = 937.323440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_dene."DENEGADA1"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
    object pg_cfop: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object ReportTitle5: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 9.897650000000000000
          Top = 4.338590000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sumariza'#231#227'o Por Classifica'#231#227'o')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 1046.929810000000000000
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929133858267720000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 154.582677170000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Produtos')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 223.370078740000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total NFE')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 292.157480310000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'BC CIMS')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 360.188976380000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 427.842519690000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS ST')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 495.874015750000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'ICMS FCP')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 563.527559060000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 632.314960630000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'II')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 699.968503940000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pis')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 769.133858270000000000
          Top = 3.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cofins')
          ParentFont = False
        end
      end
      object Footer4: TfrxFooter
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 22.677180000000000000
        Top = 287.244280000000000000
        Width = 1046.929810000000000000
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 154.582677170000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."produtos">,MasterData5)]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 223.370078740000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."totalnfe">,MasterData5)]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 292.157480310000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."bc_icms">,MasterData5)]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 360.188976380000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."icms">,MasterData5)]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 427.842519690000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."icms_st">,MasterData5)]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 495.874015750000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."icms_fcp">,MasterData5)]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 563.527559060000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."ipi">,MasterData5)]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 632.314960630000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."imp_imp">,MasterData5)]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 699.968503940000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."pis">,MasterData5)]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 769.133858270000000000
          Top = 2.000000000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."cofins">,MasterData5)]')
          ParentFont = False
        end
      end
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 204.094620000000000000
        Width = 1046.929810000000000000
        DataSet = frxdb_cfop
        DataSetName = 'frxdb_cfop'
        RowCount = 0
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_cfop."cfop"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 154.535560000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."produtos"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 223.362400000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."totalnfe"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 292.141930000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."bc_icms"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 360.173470000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."icms"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 427.984540000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."icms_st"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 495.795610000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."icms_fcp"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 563.606680000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."ipi"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 632.197280000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."imp_imp"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 699.803650000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."pis"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 769.307670000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdb_cfop."cofins"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        Condition = 'frxdb_cfop."tipo_nota"'
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 83.354360000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdb_cfop."tipo_nota"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = -0.220470000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo de Nota')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 154.582677170000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."produtos">,MasterData5)]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 223.370078740000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."totalnfe">,MasterData5)]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 292.157480310000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."bc_icms">,MasterData5)]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 360.188976380000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."icms">,MasterData5)]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 427.842519690000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."icms_st">,MasterData5)]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 495.874015750000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."icms_fcp">,MasterData5)]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 563.527559060000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."ipi">,MasterData5)]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 632.314960630000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."imp_imp">,MasterData5)]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 699.968503940000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."pis">,MasterData5)]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 769.133858270000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdb_cfop."cofins">,MasterData5)]')
          ParentFont = False
        end
      end
    end
  end
  object frxdb_dene: TfrxDBDataset
    UserName = 'frxdb_dene'
    CloseDataSource = False
    DataSource = dasodene
    BCDToCurrency = False
    Left = 56
    Top = 272
  end
  object frxdb_canc: TfrxDBDataset
    UserName = 'frxdb_canc'
    CloseDataSource = False
    DataSource = dasocanc
    BCDToCurrency = False
    Left = 128
    Top = 312
  end
  object frxdb_emp: TfrxDBDataset
    UserName = 'frxdb_emp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODEMP_ID=CODEMP_ID'
      'NOMEMP=NOMEMP'
      'CNPJ=CNPJ'
      'IE=IE'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'ESTADO=ESTADO'
      'CEP=CEP'
      'CODIGO_MUN=CODIGO_MUN'
      'IMPORTA=IMPORTA'
      'REVENDA=REVENDA'
      'CHEIA=CHEIA'
      'MEIA=MEIA'
      'CONTROLE_MANUAL=CONTROLE_MANUAL'
      'AG_COBRANCA=AG_COBRANCA'
      'CONTA_COBRANCA=CONTA_COBRANCA'
      'DAC_CONTA_COBRANCA=DAC_CONTA_COBRANCA'
      'NOMEMP_COBRANCA=NOMEMP_COBRANCA'
      'TIPO_PRODUTO=TIPO_PRODUTO'
      'ULTIMA_NOTA=ULTIMA_NOTA'
      'NUMERO=NUMERO'
      'COMPLEMENTO=COMPLEMENTO'
      'TELEFONE=TELEFONE'
      'IBGE=IBGE'
      'SMTP=SMTP'
      'POP3=POP3'
      'PORTA=PORTA'
      'CONTA=CONTA'
      'SENHA=SENHA'
      'REQUER_AUTENTICACAO=REQUER_AUTENTICACAO'
      'REQUER_CRIPTOGRAFIA=REQUER_CRIPTOGRAFIA'
      'EMITE_NOTA=EMITE_NOTA'
      'PRIORIZAR_NOTA=PRIORIZAR_NOTA'
      'LOGO_NFE=LOGO_NFE'
      'RAZAO_NFE=RAZAO_NFE'
      'FORMATO_NOTA=FORMATO_NOTA'
      'OPERACIONAL=OPERACIONAL'
      'VENDA=VENDA'
      'CONTAS_PAGAR=CONTAS_PAGAR'
      'IMPORTADORA=IMPORTADORA'
      'TRADING=TRADING'
      'NUMERO_SERIE=NUMERO_SERIE'
      'VALIDADE_CERTIFICADO=VALIDADE_CERTIFICADO'
      'NOTA_ELETRONICA=NOTA_ELETRONICA'
      'NOME_CONTABILIDADE=NOME_CONTABILIDADE'
      'NOME_CONTADOR=NOME_CONTADOR'
      'CONTADOR_CPF=CONTADOR_CPF'
      'CONTADOR_CRC=CONTADOR_CRC'
      'CONTADOR_EMAIL=CONTADOR_EMAIL')
    DataSource = daso_emp
    BCDToCurrency = False
    Left = 152
    Top = 384
  end
  object frxdb_emit: TfrxDBDataset
    UserName = 'frxdb_emit'
    CloseDataSource = False
    DataSource = DASOEMIT
    BCDToCurrency = False
    Left = 216
    Top = 360
  end
  object frxdb_inut: TfrxDBDataset
    UserName = 'frxdb_inut'
    CloseDataSource = False
    DataSource = dasoinut
    BCDToCurrency = False
    Left = 240
    Top = 280
  end
  object frxdb_cfop: TfrxDBDataset
    UserName = 'frxdb_cfop'
    CloseDataSource = False
    DataSource = dasocfop
    BCDToCurrency = False
    Left = 312
    Top = 264
  end
end
