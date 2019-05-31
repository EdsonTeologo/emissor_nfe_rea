object dmconexao: Tdmconexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 492
  Width = 553
  object SocketConnection1: TSocketConnection
    ServerName = 'srv_reality.ReDaMoPrincipal'
    Host = 'realitycygars.ddns.net'
    Left = 32
    Top = 16
  end
  object cldaseagora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dasepragora'
    RemoteServer = SocketConnection1
    Left = 200
    Top = 24
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
  object IdMessage: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 200
    Top = 200
  end
  object IdSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 280
    Top = 200
  end
  object IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 208
    Top = 272
  end
  object sock_bak: TSocketConnection
    ServerName = 'srv_reality.ReDaMoPrincipal'
    Host = 'realitycygars.ddns.net'
    Left = 48
    Top = 216
  end
  object sock_rea: TSocketConnection
    Host = 'realitycygars.ddns.net'
    Left = 312
    Top = 248
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.PathSalvar = 'c:\nfe\salvar_acbr\'
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.SalvarApenasNFeProcessadas = True
    Configuracoes.Arquivos.PathNFe = 'C:\nfe\nfe_acbr'
    Configuracoes.Arquivos.PathInu = 'C:\nfe\inutilizado_acbr'
    Configuracoes.Arquivos.PathEvento = 'C:\nfe\evento_acbr'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFEFR1
    Left = 144
    Top = 32
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 232
    Top = 104
  end
  object ACBrNFeDANFEFR1: TACBrNFeDANFEFR
    MostraPreview = False
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    TipoDANFE = tiSemGeracao
    ExibeCampoFatura = False
    EspessuraBorda = 1
    ExpandirDadosAdicionaisAuto = True
    IncorporarBackgroundPdf = True
    IncorporarFontesPdf = True
    BorderIcon = [biSystemMenu, biMinimize, biMaximize]
    Left = 80
    Top = 112
  end
  object SocketConnection2: TSocketConnection
    Left = 376
    Top = 392
  end
end
