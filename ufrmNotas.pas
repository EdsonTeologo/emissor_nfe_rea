unit ufrmNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxContainer, dxBarBuiltInMenu, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxPC, cxDBEdit,
  cxMaskEdit, cxImageComboBox, cxTextEdit, cxMemo, cxLabel, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Datasnap.DBClient, IDMESSAGE,IDTCPCONNECTION,
  IDTCPCLIENT,IDEXPLICITTLSCLIENTSERVERBASE,IDMESSAGECLIENT,
  IDSMTPBASE,IDBASECOMPONENT,IDCOMPONENT,IDIOHANDLER,IDIOHANDLERSOCKET,
  IDIOHANDLERSTACK,IDSSL,IDSSLOPENSSL,pcnAuxiliar,pcnConversao,pcnnfertxt,idattachmentfile,IDSMTP,
  pcnConversaoNFe;

type
  TfrmNotas = class(TFrame)
    cldasevi_nf: TClientDataSet;
    cldasevi_nfCODEMP_ID: TSmallintField;
    cldasevi_nfIDENTIFICACAO_ID: TIntegerField;
    cldasevi_nfCLIENTE_ID: TSmallintField;
    cldasevi_nfTRANSP_ID: TIntegerField;
    cldasevi_nfTPVENDA_ID: TSmallintField;
    cldasevi_nfTIPO_NOTA: TStringField;
    cldasevi_nfVALOR_PRODUTOS: TFMTBCDField;
    cldasevi_nfCOMPLEMENTAR: TSmallintField;
    cldasevi_nfPEDIDOS: TStringField;
    cldasevi_nfNFE: TIntegerField;
    cldasevi_nfTOTAL_DESCONTO: TFMTBCDField;
    cldasevi_nfPERC_DESCONTO: TFMTBCDField;
    cldasevi_nfDATA_EMISSAO: TDateField;
    cldasevi_nfPESO: TStringField;
    cldasevi_nfVOLUMES: TStringField;
    cldasevi_nfSEPARACAO_ID: TIntegerField;
    cldasevi_nfFRETE_CONTA: TStringField;
    cldasevi_nfVALOR_FRETE: TFMTBCDField;
    cldasevi_nfVALOR_SEGURO: TFMTBCDField;
    cldasevi_nfOBSERVACAO: TBlobField;
    cldasevi_nfMOVIMENTADO_DE: TStringField;
    cldasevi_nfCANCELADO_EM: TSQLTimeStampField;
    cldasevi_nfCANCELADO_POR: TStringField;
    cldasevi_nfTOTAL_NOTA: TFMTBCDField;
    cldasevi_nfVALOR_IPI: TFMTBCDField;
    cldasevi_nfST: TFMTBCDField;
    cldasevi_nfFUNDO_POBREZA: TFMTBCDField;
    cldasevi_nfGNRE_UNICA: TSmallintField;
    cldasevi_nfICMS: TFMTBCDField;
    cldasevi_nfFORMA_PAGAMENTO: TStringField;
    cldasevi_nfEXP_UF_EMBARQUE: TStringField;
    cldasevi_nfEXP_LOC_EMBARQUE: TStringField;
    cldasevi_nfEXP_DESP_EMBARQUES: TStringField;
    cldasevi_nfCLIENTE: TStringField;
    cldasevi_nfRAZAO_SOCIAL: TStringField;
    cldasevi_nfIE: TStringField;
    cldasevi_nfESTADO_CLIENTE: TStringField;
    cldasevi_nfNOME: TStringField;
    cldasevi_nfDESCRICAO: TStringField;
    cldasevi_nfIBGE_DEVOLUCAO: TStringField;
    cldasevi_nfEMISSAO_DEVOLUCAO: TSQLTimeStampField;
    cldasevi_nfCNPJ_DEVOLUCAO: TStringField;
    cldasevi_nfMODELO_DEVOLUCAO: TStringField;
    cldasevi_nfSERIE_DEVOLUCAO: TStringField;
    cldasevi_nfNUMERO_DEVOLUCAO: TIntegerField;
    cldasevi_nfCHAVE_DEVOLUCAO: TStringField;
    cldasevi_nfFINALIDADE_NOTA: TSmallintField;
    cldasevi_nf_gold: TClientDataSet;
    cldasevi_nf_goldIDENTIFICACAO_ID: TIntegerField;
    cldasevi_nf_goldCLIENTE_ID: TSmallintField;
    cldasevi_nf_goldTRANSP_ID: TIntegerField;
    cldasevi_nf_goldTPVENDA_ID: TSmallintField;
    cldasevi_nf_goldTIPO_NOTA: TStringField;
    cldasevi_nf_goldVALOR_PRODUTOS: TFMTBCDField;
    cldasevi_nf_goldCOMPLEMENTAR: TSmallintField;
    cldasevi_nf_goldPEDIDOS: TStringField;
    cldasevi_nf_goldNFE: TIntegerField;
    cldasevi_nf_goldTOTAL_DESCONTO: TFMTBCDField;
    cldasevi_nf_goldPERC_DESCONTO: TFMTBCDField;
    cldasevi_nf_goldDATA_EMISSAO: TDateField;
    cldasevi_nf_goldPESO: TStringField;
    cldasevi_nf_goldVOLUMES: TStringField;
    cldasevi_nf_goldSEPARACAO_ID: TIntegerField;
    cldasevi_nf_goldFRETE_CONTA: TStringField;
    cldasevi_nf_goldVALOR_FRETE: TFMTBCDField;
    cldasevi_nf_goldVALOR_SEGURO: TFMTBCDField;
    cldasevi_nf_goldOBSERVACAO: TBlobField;
    cldasevi_nf_goldMOVIMENTADO_DE: TStringField;
    cldasevi_nf_goldCANCELADO_EM: TSQLTimeStampField;
    cldasevi_nf_goldCANCELADO_POR: TStringField;
    cldasevi_nf_goldTOTAL_NOTA: TFMTBCDField;
    cldasevi_nf_goldVALOR_IPI: TFMTBCDField;
    cldasevi_nf_goldST: TFMTBCDField;
    cldasevi_nf_goldICMS: TFMTBCDField;
    cldasevi_nf_goldFORMA_PAGAMENTO: TStringField;
    cldasevi_nf_goldCLIENTE: TStringField;
    cldasevi_nf_goldRAZAO_SOCIAL: TStringField;
    cldasevi_nf_goldIE: TStringField;
    cldasevi_nf_goldESTADO_CLIENTE: TStringField;
    cldasevi_nf_goldNOME: TStringField;
    cldasevi_nf_goldDESCRICAO: TStringField;
    cldasenf: TClientDataSet;
    cldasenfCODEMP_ID: TSmallintField;
    cldasenfIDENTIFICACAO_ID: TIntegerField;
    cldasenfCLIENTE_ID: TSmallintField;
    cldasenfTRANSP_ID: TIntegerField;
    cldasenfTPVENDA_ID: TSmallintField;
    cldasenfVALOR_PRODUTOS: TFMTBCDField;
    cldasenfPEDIDOS: TStringField;
    cldasenfNFE: TIntegerField;
    cldasenfPESO: TStringField;
    cldasenfVOLUMES: TStringField;
    cldasenfSEPARACAO_ID: TIntegerField;
    cldasenfBASE_ICMS: TFMTBCDField;
    cldasenfICMS: TFMTBCDField;
    cldasenfBASE_ST: TFMTBCDField;
    cldasenfST: TFMTBCDField;
    cldasenfVALOR_FRETE: TFMTBCDField;
    cldasenfVALOR_SEGURO: TFMTBCDField;
    cldasenfVALOR_IPI: TFMTBCDField;
    cldasenfTOTAL_NOTA: TFMTBCDField;
    cldasenfFRETE_CONTA: TStringField;
    cldasenfOBSERVACAO: TBlobField;
    cldasenfDATA_IMPRESSAO: TDateField;
    cldasenfHORA_IMPRESSAO: TTimeField;
    cldasenfCIDADE: TStringField;
    cldasenfESTADO: TStringField;
    cldasenfCNPJ: TStringField;
    cldasenfTIPO_NOTA: TStringField;
    cldasenfMOVIMENTADO_DE: TStringField;
    cldasenfDEVOLVIDO: TSmallintField;
    cldasenfCANCELADO_POR: TStringField;
    cldasenfCANCELADO_EM: TSQLTimeStampField;
    cldasenfCANCELADO_MOTIVO: TBlobField;
    cldasenfFORMA_PAGTO: TStringField;
    cldasenfCOMPLEMENTAR: TSmallintField;
    cldasenfNOTA_CLIENTE: TSmallintField;
    cldasenfDEV_ENV_EST: TSmallintField;
    cldasenfDT_ENTRADA_ESTOQUE: TDateField;
    cldasenfFORMA_PAGAMENTO: TStringField;
    cldasenfPERC_DESCONTO: TFMTBCDField;
    cldasenfTOTAL_DESCONTO: TFMTBCDField;
    cldasenfOBS_ADICIONAL: TBlobField;
    cldasenfGNRE_PAGA: TSmallintField;
    cldasenfCHAVE_ACESSO: TStringField;
    cldasenfMOVIMENTA_ESTOQUE: TSmallintField;
    cldasenfUTILIZADA_BOLETO: TSmallintField;
    cldasenfEXP_ESTOQUE: TIntegerField;
    cldasenfISS: TFMTBCDField;
    cldasenfSERVICO: TFMTBCDField;
    cldasenfIND_PRESENCA: TStringField;
    cldasenfIBGE_DEVOLUCAO: TStringField;
    cldasenfEMISSAO_DEVOLUCAO: TSQLTimeStampField;
    cldasenfCNPJ_DEVOLUCAO: TStringField;
    cldasenfMODELO_DEVOLUCAO: TStringField;
    cldasenfSERIE_DEVOLUCAO: TStringField;
    cldasenfNUMERO_DEVOLUCAO: TIntegerField;
    cldasenfCHAVE_DEVOLUCAO: TStringField;
    cldasenfPERC_FP: TFMTBCDField;
    cldasenfVLR_FP: TFMTBCDField;
    cldasenfGNRE_UNICA: TSmallintField;
    cldasenfGUIA_GNRE: TBlobField;
    cldasenfGUIA_GNRE_FP: TBlobField;
    cldasenfPG_GUIA_GNRE: TBlobField;
    cldasenfPG_GUIA_GNRE_FP: TBlobField;
    cldasenfLIB_DESP_OUT_EST: TSmallintField;
    cldasenfGNRE_LOTE: TStringField;
    cldasenfGNRE_RETORNO_INCONSISTENCIA: TBlobField;
    cldasenfGNRE_RECIBO: TStringField;
    cldasenfGNRE_RETORNO_TXT: TBlobField;
    cldasenfGNRE_BARRA: TStringField;
    cldasenfGNRE_RECIBO_FP: TStringField;
    cldasenfGNRE_RETORNO_TXT_FP: TBlobField;
    cldasenfGNRE_BARRA_FP: TStringField;
    cldasenfGNRE_RETORNO_INCONSISTENCIA_FP: TBlobField;
    cldasenfGNRE_STATUS: TStringField;
    cldasenfGNRE_STATUS_FP: TStringField;
    cldasenfEXP_UF_EMBARQUE: TStringField;
    cldasenfEXP_LOC_EMBARQUE: TStringField;
    cldasenfEXP_DESP_EMBARQUES: TStringField;
    cldasenfCOLIGADA_BREST: TSmallintField;
    cldasenfFINALIDADE_NOTA: TSmallintField;
    cldasenfPESO_BRUTO: TFMTBCDField;
    cldasenfPESO_LIQUITO: TFMTBCDField;
    cldasenfCHAVE_NOTA_ORIGEM: TStringField;
    CLDASENFITEM: TClientDataSet;
    CLDASENFITEMCODEMP_ID: TSmallintField;
    CLDASENFITEMIDENTIFICACAO: TSmallintField;
    CLDASENFITEMCOD_PRODUTO: TStringField;
    CLDASENFITEMQUANTIDADE: TIntegerField;
    CLDASENFITEMVALOR_UNITARIO: TFMTBCDField;
    CLDASENFITEMVALOR_TOTAL: TFMTBCDField;
    CLDASENFITEMICMS_OP_PROPRIA: TFMTBCDField;
    CLDASENFITEMICMS_SUBS_TRI: TFMTBCDField;
    CLDASENFITEMALI_ICMS: TIntegerField;
    CLDASENFITEMIPI: TFMTBCDField;
    CLDASENFITEMALI_IPI: TIntegerField;
    CLDASENFITEMPIS: TFMTBCDField;
    CLDASENFITEMCOFINS: TFMTBCDField;
    CLDASENFITEMIRPJ: TFMTBCDField;
    CLDASENFITEMCFOP: TStringField;
    CLDASENFITEMCLASSIFICACAO: TStringField;
    CLDASENFITEMPEDIDO: TStringField;
    CLDASENFITEMSEQ: TIntegerField;
    CLDASENFITEMCONTR_SOCIAL: TFMTBCDField;
    CLDASENFITEMALI_SUBS_TRI: TIntegerField;
    CLDASENFITEMBCSUBSTRI: TFMTBCDField;
    CLDASENFITEMBASEICMSOP: TFMTBCDField;
    CLDASENFITEMUNIDADE: TStringField;
    CLDASENFITEMTPVENDA_ID: TSmallintField;
    CLDASENFITEMIMPORTADO: TIntegerField;
    CLDASENFITEMRECOLHIDO_ATE: TFMTBCDField;
    CLDASENFITEMCUSTO: TFMTBCDField;
    CLDASENFITEMICMS_RECATE: TFMTBCDField;
    CLDASENFITEMDESCR_PRODUTO: TBlobField;
    CLDASENFITEMCST: TStringField;
    CLDASENFITEMDESCONTO: TFMTBCDField;
    CLDASENFITEMCST_PIS: TStringField;
    CLDASENFITEMCST_COFINS: TStringField;
    CLDASENFITEMCST_IPI: TStringField;
    CLDASENFITEMALI_PIS: TFMTBCDField;
    CLDASENFITEMALI_COFINS: TFMTBCDField;
    CLDASENFITEMISS: TFMTBCDField;
    CLDASENFITEMALIQ_ISS: TFMTBCDField;
    CLDASENFITEMCODIGO_ORIGINAL: TStringField;
    CLDASENFITEMSERVICO: TFMTBCDField;
    CLDASENFITEMPERC_FP: TFMTBCDField;
    CLDASENFITEMVLR_FP: TFMTBCDField;
    CLDASENFITEMGNRE_UNICA: TSmallintField;
    cldasenfitem_gold: TClientDataSet;
    cldasenfitem_goldIDENTIFICACAO: TIntegerField;
    cldasenfitem_goldSEQUENCIAL: TSmallintField;
    cldasenfitem_goldCOD_PRODUTO: TStringField;
    cldasenfitem_goldQUANTIDADE: TFMTBCDField;
    cldasenfitem_goldVALOR_UNITARIO: TFMTBCDField;
    cldasenfitem_goldVALOR_TOTAL: TFMTBCDField;
    cldasenfitem_goldICMS_OP_PROPRIA: TFMTBCDField;
    cldasenfitem_goldICMS_SUBS_TRI: TFMTBCDField;
    cldasenfitem_goldALI_ICMS: TIntegerField;
    cldasenfitem_goldIPI: TFMTBCDField;
    cldasenfitem_goldALI_IPI: TIntegerField;
    cldasenfitem_goldPIS: TFMTBCDField;
    cldasenfitem_goldCOFINS: TFMTBCDField;
    cldasenfitem_goldIRPJ: TFMTBCDField;
    cldasenfitem_goldCFOP: TStringField;
    cldasenfitem_goldCLASSIFICACAO: TStringField;
    cldasenfitem_goldPEDIDO: TStringField;
    cldasenfitem_goldSEQ: TIntegerField;
    cldasenfitem_goldCONTR_SOCIAL: TFMTBCDField;
    cldasenfitem_goldALI_SUBS_TRI: TIntegerField;
    cldasenfitem_goldBCSUBSTRI: TFMTBCDField;
    cldasenfitem_goldBASEICMSOP: TFMTBCDField;
    cldasenfitem_goldUNIDADE: TStringField;
    cldasenfitem_goldTPVENDA_ID: TSmallintField;
    cldasenfitem_goldIMPORTADO: TIntegerField;
    cldasenfitem_goldRECOLHIDO_ATE: TFMTBCDField;
    cldasenfitem_goldCUSTO: TFMTBCDField;
    cldasenfitem_goldICMS_RECATE: TFMTBCDField;
    cldasenfitem_goldDESCR_PRODUTO: TBlobField;
    cldasenfitem_goldCST: TStringField;
    cldasenfitem_goldDESCONTO: TFMTBCDField;
    cldasenfitem_goldCST_PIS: TStringField;
    cldasenfitem_goldCST_COFINS: TStringField;
    cldasenfitem_goldCST_IPI: TStringField;
    cldasenfitem_goldALI_PIS: TFMTBCDField;
    cldasenfitem_goldALI_COFINS: TFMTBCDField;
    cldasenfitem_goldCOMPLEMENTO: TStringField;
    cldasenf_gold: TClientDataSet;
    cldasenf_goldIDENTIFICACAO_ID: TIntegerField;
    cldasenf_goldCLIENTE_ID: TSmallintField;
    cldasenf_goldTRANSP_ID: TIntegerField;
    cldasenf_goldTPVENDA_ID: TSmallintField;
    cldasenf_goldVALOR_PRODUTOS: TFMTBCDField;
    cldasenf_goldPEDIDOS: TStringField;
    cldasenf_goldNFE: TIntegerField;
    cldasenf_goldPESO: TStringField;
    cldasenf_goldVOLUMES: TStringField;
    cldasenf_goldSEPARACAO_ID: TIntegerField;
    cldasenf_goldBASE_ICMS: TFMTBCDField;
    cldasenf_goldICMS: TFMTBCDField;
    cldasenf_goldBASE_ST: TFMTBCDField;
    cldasenf_goldST: TFMTBCDField;
    cldasenf_goldVALOR_FRETE: TFMTBCDField;
    cldasenf_goldVALOR_SEGURO: TFMTBCDField;
    cldasenf_goldVALOR_IPI: TFMTBCDField;
    cldasenf_goldTOTAL_NOTA: TFMTBCDField;
    cldasenf_goldFRETE_CONTA: TStringField;
    cldasenf_goldOBSERVACAO: TBlobField;
    cldasenf_goldDATA_IMPRESSAO: TDateField;
    cldasenf_goldHORA_IMPRESSAO: TTimeField;
    cldasenf_goldCIDADE: TStringField;
    cldasenf_goldESTADO: TStringField;
    cldasenf_goldCNPJ: TStringField;
    cldasenf_goldTIPO_NOTA: TStringField;
    cldasenf_goldMOVIMENTADO_DE: TStringField;
    cldasenf_goldDEVOLVIDO: TSmallintField;
    cldasenf_goldCANCELADO_POR: TStringField;
    cldasenf_goldCANCELADO_EM: TSQLTimeStampField;
    cldasenf_goldCANCELADO_MOTIVO: TBlobField;
    cldasenf_goldFORMA_PAGTO: TStringField;
    cldasenf_goldCOMPLEMENTAR: TSmallintField;
    cldasenf_goldNOTA_CLIENTE: TSmallintField;
    cldasenf_goldDEV_ENV_EST: TSmallintField;
    cldasenf_goldDT_ENTRADA_ESTOQUE: TDateField;
    cldasenf_goldFORMA_PAGAMENTO: TStringField;
    cldasenf_goldPERC_DESCONTO: TFMTBCDField;
    cldasenf_goldTOTAL_DESCONTO: TFMTBCDField;
    cldasenf_goldOBS_ADICIONAL: TBlobField;
    cldasenf_goldGNRE_PAGA: TSmallintField;
    cldasenf_goldCHAVE_ACESSO: TStringField;
    cldasenf_goldPESO_BRUTO: TFMTBCDField;
    cldasenf_goldPESO_LIQUITO: TFMTBCDField;
    cldasenf_goldCHAVE_NOTA_ORIGEM: TStringField;
    cldasenf_goldQUEBRA: TSmallintField;
    CLDASEVI_NF_BREST: TClientDataSet;
    CLDASEVI_NF_BRESTCODEMP_ID: TSmallintField;
    CLDASEVI_NF_BRESTIDENTIFICACAO_ID: TIntegerField;
    CLDASEVI_NF_BRESTCLIENTE_ID: TSmallintField;
    CLDASEVI_NF_BRESTTRANSP_ID: TIntegerField;
    CLDASEVI_NF_BRESTTPVENDA_ID: TSmallintField;
    CLDASEVI_NF_BRESTTIPO_NOTA: TStringField;
    CLDASEVI_NF_BRESTVALOR_PRODUTOS: TFMTBCDField;
    CLDASEVI_NF_BRESTCOMPLEMENTAR: TSmallintField;
    CLDASEVI_NF_BRESTPEDIDOS: TStringField;
    CLDASEVI_NF_BRESTNFE: TIntegerField;
    CLDASEVI_NF_BRESTTOTAL_DESCONTO: TFMTBCDField;
    CLDASEVI_NF_BRESTPERC_DESCONTO: TFMTBCDField;
    CLDASEVI_NF_BRESTDATA_EMISSAO: TDateField;
    CLDASEVI_NF_BRESTPESO: TStringField;
    CLDASEVI_NF_BRESTVOLUMES: TStringField;
    CLDASEVI_NF_BRESTSEPARACAO_ID: TIntegerField;
    CLDASEVI_NF_BRESTFRETE_CONTA: TStringField;
    CLDASEVI_NF_BRESTVALOR_FRETE: TFMTBCDField;
    CLDASEVI_NF_BRESTVALOR_SEGURO: TFMTBCDField;
    CLDASEVI_NF_BRESTOBSERVACAO: TBlobField;
    CLDASEVI_NF_BRESTMOVIMENTADO_DE: TStringField;
    CLDASEVI_NF_BRESTCANCELADO_EM: TSQLTimeStampField;
    CLDASEVI_NF_BRESTCANCELADO_POR: TStringField;
    CLDASEVI_NF_BRESTTOTAL_NOTA: TFMTBCDField;
    CLDASEVI_NF_BRESTVALOR_IPI: TFMTBCDField;
    CLDASEVI_NF_BRESTST: TFMTBCDField;
    CLDASEVI_NF_BRESTFUNDO_POBREZA: TFMTBCDField;
    CLDASEVI_NF_BRESTGNRE_UNICA: TSmallintField;
    CLDASEVI_NF_BRESTICMS: TFMTBCDField;
    CLDASEVI_NF_BRESTFORMA_PAGAMENTO: TStringField;
    CLDASEVI_NF_BRESTEXP_UF_EMBARQUE: TStringField;
    CLDASEVI_NF_BRESTEXP_LOC_EMBARQUE: TStringField;
    CLDASEVI_NF_BRESTEXP_DESP_EMBARQUES: TStringField;
    CLDASEVI_NF_BRESTCLIENTE: TStringField;
    CLDASEVI_NF_BRESTRAZAO_SOCIAL: TStringField;
    CLDASEVI_NF_BRESTIE: TStringField;
    CLDASEVI_NF_BRESTESTADO_CLIENTE: TStringField;
    CLDASEVI_NF_BRESTNOME: TStringField;
    CLDASEVI_NF_BRESTDESCRICAO: TStringField;
    CLDASEVI_NF_BRESTIBGE_DEVOLUCAO: TStringField;
    CLDASEVI_NF_BRESTEMISSAO_DEVOLUCAO: TSQLTimeStampField;
    CLDASEVI_NF_BRESTCNPJ_DEVOLUCAO: TStringField;
    CLDASEVI_NF_BRESTMODELO_DEVOLUCAO: TStringField;
    CLDASEVI_NF_BRESTSERIE_DEVOLUCAO: TStringField;
    CLDASEVI_NF_BRESTNUMERO_DEVOLUCAO: TIntegerField;
    CLDASEVI_NF_BRESTCHAVE_DEVOLUCAO: TStringField;
    CLDASEVI_NF_BRESTFINALIDADE_NOTA: TSmallintField;
    cldaseempresas: TClientDataSet;
    cldaseempresasCODEMP_ID: TIntegerField;
    cldaseempresasNOMEMP: TStringField;
    cldaseempresasCNPJ: TStringField;
    cldaseempresasIE: TStringField;
    cldaseempresasENDERECO: TStringField;
    cldaseempresasBAIRRO: TStringField;
    cldaseempresasCIDADE: TStringField;
    cldaseempresasESTADO: TStringField;
    cldaseempresasCEP: TStringField;
    cldaseempresasCODIGO_MUN: TStringField;
    cldaseempresasNUMERO_SERIE: TStringField;
    cldaseempresasLOGO_NFE: TBlobField;
    cldaseempresasRAZAO_NFE: TStringField;
    cldasenf_brest: TClientDataSet;
    cldasenf_brestCODEMP_ID: TSmallintField;
    cldasenf_brestIDENTIFICACAO_ID: TIntegerField;
    cldasenf_brestCLIENTE_ID: TSmallintField;
    cldasenf_brestTRANSP_ID: TIntegerField;
    cldasenf_brestTPVENDA_ID: TSmallintField;
    cldasenf_brestVALOR_PRODUTOS: TFMTBCDField;
    cldasenf_brestPEDIDOS: TStringField;
    cldasenf_brestNFE: TIntegerField;
    cldasenf_brestPESO: TStringField;
    cldasenf_brestVOLUMES: TStringField;
    cldasenf_brestSEPARACAO_ID: TIntegerField;
    cldasenf_brestBASE_ICMS: TFMTBCDField;
    cldasenf_brestICMS: TFMTBCDField;
    cldasenf_brestBASE_ST: TFMTBCDField;
    cldasenf_brestST: TFMTBCDField;
    cldasenf_brestVALOR_FRETE: TFMTBCDField;
    cldasenf_brestVALOR_SEGURO: TFMTBCDField;
    cldasenf_brestVALOR_IPI: TFMTBCDField;
    cldasenf_brestTOTAL_NOTA: TFMTBCDField;
    cldasenf_brestFRETE_CONTA: TStringField;
    cldasenf_brestOBSERVACAO: TBlobField;
    cldasenf_brestDATA_IMPRESSAO: TDateField;
    cldasenf_brestHORA_IMPRESSAO: TTimeField;
    cldasenf_brestCIDADE: TStringField;
    cldasenf_brestESTADO: TStringField;
    cldasenf_brestCNPJ: TStringField;
    cldasenf_brestTIPO_NOTA: TStringField;
    cldasenf_brestMOVIMENTADO_DE: TStringField;
    cldasenf_brestDEVOLVIDO: TSmallintField;
    cldasenf_brestCANCELADO_POR: TStringField;
    cldasenf_brestCANCELADO_EM: TSQLTimeStampField;
    cldasenf_brestCANCELADO_MOTIVO: TBlobField;
    cldasenf_brestFORMA_PAGTO: TStringField;
    cldasenf_brestCOMPLEMENTAR: TSmallintField;
    cldasenf_brestNOTA_CLIENTE: TSmallintField;
    cldasenf_brestDEV_ENV_EST: TSmallintField;
    cldasenf_brestDT_ENTRADA_ESTOQUE: TDateField;
    cldasenf_brestFORMA_PAGAMENTO: TStringField;
    cldasenf_brestPERC_DESCONTO: TFMTBCDField;
    cldasenf_brestTOTAL_DESCONTO: TFMTBCDField;
    cldasenf_brestOBS_ADICIONAL: TBlobField;
    cldasenf_brestGNRE_PAGA: TSmallintField;
    cldasenf_brestCHAVE_ACESSO: TStringField;
    cldasenf_brestMOVIMENTA_ESTOQUE: TSmallintField;
    cldasenf_brestUTILIZADA_BOLETO: TSmallintField;
    cldasenf_brestEXP_ESTOQUE: TIntegerField;
    cldasenf_brestISS: TFMTBCDField;
    cldasenf_brestSERVICO: TFMTBCDField;
    cldasenf_brestIBGE_DEVOLUCAO: TStringField;
    cldasenf_brestEMISSAO_DEVOLUCAO: TSQLTimeStampField;
    cldasenf_brestCNPJ_DEVOLUCAO: TStringField;
    cldasenf_brestMODELO_DEVOLUCAO: TStringField;
    cldasenf_brestSERIE_DEVOLUCAO: TStringField;
    cldasenf_brestNUMERO_DEVOLUCAO: TIntegerField;
    cldasenf_brestCHAVE_DEVOLUCAO: TStringField;
    cldasenf_brestCOLIGADA_BREST: TSmallintField;
    cldasenf_brestRECALCULADO_CANCELAMENTO: TSmallintField;
    cldasenf_brestRECALCULADO_SAI_EST: TSmallintField;
    cldasenfitem_brest: TClientDataSet;
    cldasenfitem_brestCODEMP_ID: TSmallintField;
    cldasenfitem_brestIDENTIFICACAO: TSmallintField;
    cldasenfitem_brestCOD_PRODUTO: TStringField;
    cldasenfitem_brestQUANTIDADE: TIntegerField;
    cldasenfitem_brestVALOR_UNITARIO: TFMTBCDField;
    cldasenfitem_brestVALOR_TOTAL: TFMTBCDField;
    cldasenfitem_brestICMS_OP_PROPRIA: TFMTBCDField;
    cldasenfitem_brestICMS_SUBS_TRI: TFMTBCDField;
    cldasenfitem_brestALI_ICMS: TIntegerField;
    cldasenfitem_brestIPI: TFMTBCDField;
    cldasenfitem_brestALI_IPI: TIntegerField;
    cldasenfitem_brestPIS: TFMTBCDField;
    cldasenfitem_brestCOFINS: TFMTBCDField;
    cldasenfitem_brestIRPJ: TFMTBCDField;
    cldasenfitem_brestCFOP: TStringField;
    cldasenfitem_brestCLASSIFICACAO: TStringField;
    cldasenfitem_brestPEDIDO: TStringField;
    cldasenfitem_brestSEQ: TIntegerField;
    cldasenfitem_brestCONTR_SOCIAL: TFMTBCDField;
    cldasenfitem_brestALI_SUBS_TRI: TIntegerField;
    cldasenfitem_brestBCSUBSTRI: TFMTBCDField;
    cldasenfitem_brestBASEICMSOP: TFMTBCDField;
    cldasenfitem_brestUNIDADE: TStringField;
    cldasenfitem_brestTPVENDA_ID: TSmallintField;
    cldasenfitem_brestIMPORTADO: TIntegerField;
    cldasenfitem_brestRECOLHIDO_ATE: TFMTBCDField;
    cldasenfitem_brestCUSTO: TFMTBCDField;
    cldasenfitem_brestICMS_RECATE: TFMTBCDField;
    cldasenfitem_brestDESCR_PRODUTO: TBlobField;
    cldasenfitem_brestCST: TStringField;
    cldasenfitem_brestDESCONTO: TFMTBCDField;
    cldasenfitem_brestCST_PIS: TStringField;
    cldasenfitem_brestCST_COFINS: TStringField;
    cldasenfitem_brestCST_IPI: TStringField;
    cldasenfitem_brestALI_PIS: TFMTBCDField;
    cldasenfitem_brestALI_COFINS: TFMTBCDField;
    cldasenfitem_brestISS: TFMTBCDField;
    cldasenfitem_brestALIQ_ISS: TFMTBCDField;
    cldasenfitem_brestCODIGO_ORIGINAL: TStringField;
    cldasenfitem_brestSERVICO: TFMTBCDField;
    cldasenfitem_brestALI_ICMS_SIMPLES: TFMTBCDField;
    cldasenfitem_brestALI_PIS_SIMPLES: TFMTBCDField;
    cldasenfitem_brestALI_COFINS_SIMPLES: TFMTBCDField;
    cldasenfitem_brestALI_IRPF_SIMPLES: TFMTBCDField;
    cldasenfitem_brestALI_CSLL_SIMPLES: TFMTBCDField;
    cldasenfitem_brestALI_CPP_SIMPLES: TFMTBCDField;
    cldasenfitem_brestALI_TOTAL_SIMPLES: TFMTBCDField;
    cldasenfitem_brestCSOSN: TStringField;
    CLDASEONU: TClientDataSet;
    CLDASEONUNUMERO_ONU: TIntegerField;
    CLDASEONUNUMERO_RISCO: TSmallintField;
    CLDASEONUCLASSE: TStringField;
    CLDASEONUDESCRICAO_CLASSE: TStringField;
    CLDASEONUNOME_EMBARQUE: TStringField;
    cldaseemissor: TClientDataSet;
    cldaseemissorCODEMP_ID: TIntegerField;
    cldaseemissorNFE: TIntegerField;
    cldaseemissorDATA_EMISSAO: TDateField;
    cldaseemissorHORA_EMISSAO: TTimeField;
    cldaseemissorPROTOCOLO: TStringField;
    cldaseemissorCHAVE_NFE: TStringField;
    cldaseemissorTXT_ORIGEM: TBlobField;
    cldaseemissorXML_ORIGEM: TBlobField;
    cldaseemissorXML_RETORNO: TBlobField;
    cldaseemissorDATA_ENVIO: TSQLTimeStampField;
    cldaseemissorCODIGO_ENVIO: TStringField;
    cldaseemissorMOTIVO_ENVIO: TStringField;
    cldaseemissorACAO: TSmallintField;
    cldaseemissorRESULTADO: TSmallintField;
    cldaseemissorSTATUS_ATUAL: TStringField;
    cldaseemissorCOD_RESP_ENVIO: TSmallintField;
    cldaseemissorSTAT_RESP_ENVIO: TStringField;
    cldaseemissorLOTE: TIntegerField;
    cldaseemissorCLIENTE_ID: TIntegerField;
    cldaseemissorCOD_RESP_CANCELAMENTO: TSmallintField;
    cldaseemissorSTAT_RESP_CANCELAMENTO: TStringField;
    cldaseemissorPROTOCOLO_CANCELAMENTO: TStringField;
    cldaseemissorCOD_RESP_CARTA: TSmallintField;
    cldaseemissorSTAT_RESP_CARTA: TStringField;
    cldaseemissorPROTOCOLO_CARTA: TStringField;
    cldaseemissorID_NFE: TStringField;
    cldaseemissorXML_NFE: TBlobField;
    cldaseemissorCNPJ: TStringField;
    cldaseemissorRAZAO_SOCIAL: TStringField;
    cldaseemissorNATUREZA: TStringField;
    cldaseemissorESTADO: TStringField;
    cldaseemissorPRODUTOS: TStringField;
    cldaseemissorVALOR_NOTA: TFMTBCDField;
    cldaseemissorDATA_HORA_RECIBO: TSQLTimeStampField;
    cldaseemissorPROTOCOLO_CANC: TStringField;
    cldaseemissorJUSTIFICATIVA_CANCELAMENTO: TBlobField;
    cldaseemissorMOTIVO_CANCELAMENTO: TBlobField;
    cldaseemissorMUDANCA_CARTA: TBlobField;
    cldaseemissorDATA_HORA_REC_CANC: TSQLTimeStampField;
    cldaseemissorDATA_HORA_REC_CARTA: TSQLTimeStampField;
    cldaseemissorDATA_HORA_REC_UNIT: TSQLTimeStampField;
    cldaseemissorCOD_RESP_INUT: TSmallintField;
    cldaseemissorSTAT_RESP_INUT: TStringField;
    cldaseemissorMOTIVO_INUT: TBlobField;
    cldaseemissorNOTA_INUT_ATE: TIntegerField;
    cldaseemissorPROTOCOLO_INUT: TStringField;
    cldaseemissorXML_CANCELAMENTO: TBlobField;
    cldaseemissorXML_INUT: TBlobField;
    cldaseemissorXML_CARTA: TBlobField;
    cldaseemissorTOTAL_PRODUTOS: TFMTBCDField;
    cldaseemissorICMS_ST: TFMTBCDField;
    cldaseemissorFRETE: TFMTBCDField;
    cldaseemissorSEGURO: TFMTBCDField;
    cldaseemissorIPI: TFMTBCDField;
    cldaseemissorOUTRASDESP: TFMTBCDField;
    cldaseemissorDESCONTO: TFMTBCDField;
    cldaseemissorBC_ICMS: TFMTBCDField;
    cldaseemissorICMS: TFMTBCDField;
    cldaseemissorTIPO_NOTA: TStringField;
    cldaseemissorIMP_IMP: TFMTBCDField;
    cldaseemissorCOFINS: TFMTBCDField;
    cldaseemissorPIS: TFMTBCDField;
    cldaseemissorISSQN: TFMTBCDField;
    cldaseemissorCOFINS_ST: TFMTBCDField;
    cldaseemissorPIS_ST: TFMTBCDField;
    cldaseemissorTOTAL_NOTA: TFMTBCDField;
    cldaseemissorICMS_FCP: TFMTBCDField;
    cldaseemissorDATA_AUTORIZACAO: TSQLTimeStampField;
    cldaseemissorIMPOSTO_RENDA: TFMTBCDField;
    cldaseemissorTIPO: TStringField;
    cldaseemissorDENEGADA1: TBlobField;
    dasoemissor: TDataSource;
    CLDASECLIENTES: TClientDataSet;
    CLDASECLIENTESCLIENTE_ID: TIntegerField;
    CLDASECLIENTESCLIENTE: TStringField;
    CLDASECLIENTESRAZAO_SOCIAL: TStringField;
    CLDASECLIENTESENDERECO: TStringField;
    CLDASECLIENTESNUMERO: TStringField;
    CLDASECLIENTESCOMPLEMENTO: TStringField;
    CLDASECLIENTESBAIRRO: TStringField;
    CLDASECLIENTESCIDADE: TStringField;
    CLDASECLIENTESESTADO: TStringField;
    CLDASECLIENTESCEP: TStringField;
    CLDASECLIENTESTELEFONE: TStringField;
    CLDASECLIENTESFAX: TStringField;
    CLDASECLIENTESCNPJ: TStringField;
    CLDASECLIENTESIE: TStringField;
    CLDASECLIENTESEMAIL: TStringField;
    CLDASECLIENTESPAIS: TStringField;
    CLDASECLIENTESCELULAR: TStringField;
    CLDASECLIENTESCODIGO_MUN: TStringField;
    CLDASECLIENTESIBGE: TStringField;
    CLDASECLIENTESEMAIL_NFE: TStringField;
    CLDASECLIENTESNOME_COMPLETO_REC: TStringField;
    CLDASECLIENTESREGIAO_ID: TIntegerField;
    CLDASECLIENTESCPF: TStringField;
    CLDASECLIENTESRG: TStringField;
    cldasenf_imp: TClientDataSet;
    cldasenf_impCODEMP_ID: TSmallintField;
    cldasenf_impIDENTIFICACAO_ID: TIntegerField;
    cldasenf_impCLIENTE_ID: TSmallintField;
    cldasenf_impTRANSP_ID: TIntegerField;
    cldasenf_impTPVENDA_ID: TSmallintField;
    cldasenf_impVALOR_PRODUTOS: TFMTBCDField;
    cldasenf_impPEDIDOS: TStringField;
    cldasenf_impNFE: TIntegerField;
    cldasenf_impPESO: TStringField;
    cldasenf_impVOLUMES: TStringField;
    cldasenf_impSEPARACAO_ID: TIntegerField;
    cldasenf_impBASE_ICMS: TFMTBCDField;
    cldasenf_impICMS: TFMTBCDField;
    cldasenf_impBASE_ST: TFMTBCDField;
    cldasenf_impST: TFMTBCDField;
    cldasenf_impVALOR_FRETE: TFMTBCDField;
    cldasenf_impVALOR_SEGURO: TFMTBCDField;
    cldasenf_impVALOR_IPI: TFMTBCDField;
    cldasenf_impTOTAL_NOTA: TFMTBCDField;
    cldasenf_impFRETE_CONTA: TStringField;
    cldasenf_impOBSERVACAO: TBlobField;
    cldasenf_impDATA_IMPRESSAO: TDateField;
    cldasenf_impHORA_IMPRESSAO: TTimeField;
    cldasenf_impCIDADE: TStringField;
    cldasenf_impESTADO: TStringField;
    cldasenf_impCNPJ: TStringField;
    cldasenf_impTIPO_NOTA: TStringField;
    cldasenf_impMOVIMENTADO_DE: TStringField;
    cldasenf_impEXP_ESTOQUE: TSmallintField;
    cldasenf_impEXP_POR: TStringField;
    cldasenf_impEXP_EM: TSQLTimeStampField;
    cldasenf_impDESP_ADUANEIRA: TFMTBCDField;
    cldasenf_impTAXA_SISCOMEX: TFMTBCDField;
    cldasenf_impDATA_DI: TDateField;
    cldasenf_impNUM_DI: TStringField;
    cldasenf_impLOCAL_DESEMBARACO: TStringField;
    cldasenf_impUF_DESENBARACO: TStringField;
    cldasenf_impDATA_DESENBARACO: TDateField;
    cldasenf_impPESO_BRUTO: TStringField;
    cldasenf_impTIPO_VOLUME: TStringField;
    cldasenf_impIPI: TFMTBCDField;
    cldasenf_impII: TFMTBCDField;
    cldasenf_impPIS: TFMTBCDField;
    cldasenf_impCOFINS: TFMTBCDField;
    cldasenf_impFORMA_PAGAMENTO: TStringField;
    cldasenf_impCANCELADO_POR: TStringField;
    cldasenf_impCANCELADO_EM: TSQLTimeStampField;
    cldasenf_impCANCELADO_MOTIVO: TBlobField;
    cldasenf_impADUAN_COMP: TFMTBCDField;
    cldasenf_impGERADO_COMP: TSmallintField;
    cldasenf_impNFE_ORI: TIntegerField;
    cldasenf_impEMI_ORI: TDateField;
    cldasenf_impEMBARQUE: TStringField;
    cldasenf_impMARCA_TRANSPORTE: TStringField;
    cldasenf_impCHAVE_ACESSO: TStringField;
    cldasenf_impIMPORTA_FACIL: TSmallintField;
    cldasenf_impRATEIO_MANUAL: TSmallintField;
    cldasenf_impTPVIATRANSP: TStringField;
    cldasenf_impVAFRMM: TFMTBCDField;
    cldasenf_impTPINTERMEDIO: TStringField;
    cldasenf_impCNPJ_ADQUIRENTE: TStringField;
    cldasenf_impUF_ADQUIRENTE: TStringField;
    cldasegen: TClientDataSet;
    cldasenf_itens_imp: TClientDataSet;
    cldasenf_itens_impCODEMP_ID: TSmallintField;
    cldasenf_itens_impIDENTIFICACAO: TSmallintField;
    cldasenf_itens_impCOD_PRODUTO: TStringField;
    cldasenf_itens_impQUANTIDADE: TIntegerField;
    cldasenf_itens_impVALOR_TOTAL: TFMTBCDField;
    cldasenf_itens_impICMS_OP_PROPRIA: TFMTBCDField;
    cldasenf_itens_impICMS_SUBS_TRI: TFMTBCDField;
    cldasenf_itens_impALI_ICMS: TIntegerField;
    cldasenf_itens_impIPI: TFMTBCDField;
    cldasenf_itens_impALI_IPI: TIntegerField;
    cldasenf_itens_impPIS: TFMTBCDField;
    cldasenf_itens_impCOFINS: TFMTBCDField;
    cldasenf_itens_impIRPJ: TFMTBCDField;
    cldasenf_itens_impCFOP: TStringField;
    cldasenf_itens_impCLASSIFICACAO: TStringField;
    cldasenf_itens_impPEDIDO: TStringField;
    cldasenf_itens_impSEQ: TIntegerField;
    cldasenf_itens_impCONTR_SOCIAL: TFMTBCDField;
    cldasenf_itens_impALI_SUBS_TRI: TIntegerField;
    cldasenf_itens_impBCSUBSTRI: TFMTBCDField;
    cldasenf_itens_impBASEICMSOP: TFMTBCDField;
    cldasenf_itens_impUNIDADE: TStringField;
    cldasenf_itens_impTPVENDA_ID: TSmallintField;
    cldasenf_itens_impIMPORTADO: TIntegerField;
    cldasenf_itens_impVALOR_UNITARIO: TFMTBCDField;
    cldasenf_itens_impCUSTO: TFMTBCDField;
    cldasenf_itens_impRECOLHIDO_ATE: TFMTBCDField;
    cldasenf_itens_impSAIDA: TIntegerField;
    cldasenf_itens_impICMS_RECATE: TFMTBCDField;
    cldasenf_itens_impVALOR_CIF: TFMTBCDField;
    cldasenf_itens_impALI_II: TSmallintField;
    cldasenf_itens_impII: TFMTBCDField;
    cldasenf_itens_impBC_IPI: TFMTBCDField;
    cldasenf_itens_impBC_PIS_COFINS: TFMTBCDField;
    cldasenf_itens_impDESP_ADUAN: TFMTBCDField;
    cldasenf_itens_impTAXA_SISCOMEX: TFMTBCDField;
    cldasenf_itens_impTOTAL_CIF: TFMTBCDField;
    cldasenf_itens_impTOTAL_NF: TFMTBCDField;
    cldasenf_itens_impII_UNIT: TFMTBCDField;
    cldasenf_itens_impBCIPI_UNIT: TFMTBCDField;
    cldasenf_itens_impIPI_UNIT: TFMTBCDField;
    cldasenf_itens_impBC_PIS_UNIT: TFMTBCDField;
    cldasenf_itens_impPIS_UNIT: TFMTBCDField;
    cldasenf_itens_impCOFINS_UNIT: TFMTBCDField;
    cldasenf_itens_impRAT_SISCO_UNIT: TFMTBCDField;
    cldasenf_itens_impRAT_DESPAD_UNIT: TFMTBCDField;
    cldasenf_itens_impBC_ICMS_UNIT: TFMTBCDField;
    cldasenf_itens_impICM_UNIT: TFMTBCDField;
    cldasenf_itens_impCUSTO_FISCAL_UNIT: TFMTBCDField;
    cldasenf_itens_impNUM_ADICAO: TSmallintField;
    cldasenf_itens_impSEQUENCIAL_NA_ADICAO: TSmallintField;
    cldasenf_itens_impNF_SAIDA: TFMTBCDField;
    cldasenf_itens_impSEQ_PROD: TSmallintField;
    cldasenf_itens_impREDUCAO_ESPECIAL_BC: TFMTBCDField;
    cldasenf_itens_impICMS_DESONERADO: TFMTBCDField;
    cldasenf_itens_impUNID_TRIBUT: TStringField;
    cldasenf_itens_impQUANTIDADE_TRIB: TFMTBCDField;
    cldasenf_itens_impVALOR_UNIT_TRIB: TFMTBCDField;
    cldaseparametros: TClientDataSet;
    cldaseparametrosCONFIG_ID: TSmallintField;
    cldaseparametrosDIRETORIO_NFE_PDF: TStringField;
    cldaseparametrosAPOS_ENVIO_PDF_NFE: TSmallintField;
    cldaseparametrosAPOS_ENVIO_IMPRIMIR_NFE: TSmallintField;
    cldaseparametrosDIRETORIO_XML_NFE: TStringField;
    cldaseparametrosAPOS_ENVIO_XML_NFE: TSmallintField;
    cldaseparametrosDIRETORIO_TEMPORARIO_EMAIL: TStringField;
    cldaseparametrosAPOS_ENVIAR_EMAIL: TSmallintField;
    cldaseparametrosATACHAR_PDF_EMAIL: TSmallintField;
    cldaseparametrosDIR_SISTEMA_EVENTO: TStringField;
    cldaseparametrosDIR_SISTEMA_INU: TStringField;
    cldaseparametrosDIR_SISTEMA_NFE: TStringField;
    cldaseparametrosDIR_SISTEMA_SALVAR: TStringField;
    cldaseparametrosDIR_SISTEMA_SCHEMAS: TStringField;
    cldaseparametrosDIR_SISTEMA_SCHEMAS_40: TStringField;
    CLDASEMAXLOTE: TClientDataSet;
    CLDASEMAXLOTELOTE: TIntegerField;
    CLDASEEMAIL_EMP: TClientDataSet;
    CLDASEEMAIL_EMPCODEMP_ID: TSmallintField;
    CLDASEEMAIL_EMPUTILIZACAO: TStringField;
    CLDASEEMAIL_EMPSMTP: TStringField;
    CLDASEEMAIL_EMPPOP3: TStringField;
    CLDASEEMAIL_EMPPORTA: TSmallintField;
    CLDASEEMAIL_EMPCONTA: TStringField;
    CLDASEEMAIL_EMPSENHA: TStringField;
    CLDASEEMAIL_EMPREQUER_AUTENTICACAO: TSmallintField;
    CLDASEEMAIL_EMPREQUER_CRIPTOGRAFIA: TSmallintField;
    CLDASEEMAIL_EMPTEXTO_PADRAO: TBlobField;
    cldaseagora: TClientDataSet;
    cldaseagoraCURRENT_TIME: TTimeField;
    cldaseagoraCURRENT_DATE: TDateField;
    cldaseagoraCURRENT_TIMESTAMP: TSQLTimeStampField;
    cldase_correcao: TClientDataSet;
    cldase_correcaoCODEMP_ID: TIntegerField;
    cldase_correcaoNFE: TIntegerField;
    cldase_correcaoSEQUENCIAL: TIntegerField;
    cldase_correcaoCOD_RESP_CARTA: TSmallintField;
    cldase_correcaoSTAT_RESP_CARTA: TStringField;
    cldase_correcaoPROTOCOLO_CARTA: TStringField;
    cldase_correcaoMUDANCA_CARTA: TBlobField;
    cldase_correcaoDATA_HORA_REC_CARTA: TSQLTimeStampField;
    cldase_correcaoXML_CARTA: TBlobField;
    cldase_correcaoRESULTADO: TIntegerField;
    cldasemaxcor: TClientDataSet;
    cldasemaxcorCODIGO: TIntegerField;
    FileOpenDialog1: TFileOpenDialog;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NFE: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1CHAVE_NFE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxButton1: TcxButton;
    cxTabSheet2: TcxTabSheet;
    cxButton2: TcxButton;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    de: TcxDateEdit;
    ate: TcxDateEdit;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton3: TcxButton;
    cxButton6: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton10: TcxButton;
    cldaseinut: TClientDataSet;
    cldaseinutCODEMP_ID: TIntegerField;
    cldaseinutCLIENTE_ID: TIntegerField;
    cldaseinutNFE: TIntegerField;
    cldaseinutID_NFE: TStringField;
    cldaseinutXML_NFE: TBlobField;
    cldaseinutDATA_EMISSAO: TDateField;
    cldaseinutCNPJ: TStringField;
    cldaseinutRAZAO_SOCIAL: TStringField;
    cldaseinutNATUREZA: TStringField;
    cldaseinutESTADO: TStringField;
    cldaseinutPRODUTOS: TStringField;
    cldaseinutVALOR_NOTA: TFMTBCDField;
    cldaseinutCHAVE_NFE: TStringField;
    cldaseinutPROTOCOLO: TStringField;
    cldaseinutDATA_HORA_RECIBO: TSQLTimeStampField;
    cldaseinutPROTOCOLO_CANC: TStringField;
    cldaseinutJUSTIFICATIVA_CANCELAMENTO: TBlobField;
    cldaseinutHORA_EMISSAO: TTimeField;
    cldaseinutTXT_ORIGEM: TBlobField;
    cldaseinutXML_ORIGEM: TBlobField;
    cldaseinutXML_RETORNO: TBlobField;
    cldaseinutDATA_ENVIO: TSQLTimeStampField;
    cldaseinutCODIGO_ENVIO: TStringField;
    cldaseinutMOTIVO_ENVIO: TStringField;
    cldaseinutACAO: TSmallintField;
    cldaseinutRESULTADO: TSmallintField;
    cldaseinutSTATUS_ATUAL: TStringField;
    cldaseinutCOD_RESP_ENVIO: TSmallintField;
    cldaseinutSTAT_RESP_ENVIO: TStringField;
    cldaseinutLOTE: TIntegerField;
    cldaseinutCOD_RESP_CANCELAMENTO: TSmallintField;
    cldaseinutSTAT_RESP_CANCELAMENTO: TStringField;
    cldaseinutPROTOCOLO_CANCELAMENTO: TStringField;
    cldaseinutCOD_RESP_CARTA: TSmallintField;
    cldaseinutSTAT_RESP_CARTA: TStringField;
    cldaseinutPROTOCOLO_CARTA: TStringField;
    cldaseinutMOTIVO_CANCELAMENTO: TBlobField;
    cldaseinutMUDANCA_CARTA: TBlobField;
    cldaseinutDATA_HORA_REC_CANC: TSQLTimeStampField;
    cldaseinutDATA_HORA_REC_CARTA: TSQLTimeStampField;
    cldaseinutDATA_HORA_REC_UNIT: TSQLTimeStampField;
    cldaseinutCOD_RESP_INUT: TSmallintField;
    cldaseinutSTAT_RESP_INUT: TStringField;
    cldaseinutMOTIVO_INUT: TBlobField;
    cldaseinutNOTA_INUT_ATE: TIntegerField;
    cxpgstatus: TcxPageControl;
    tashatual: TcxTabSheet;
    tashenvio: TcxTabSheet;
    tashcancelado: TcxTabSheet;
    tashcarta: TcxTabSheet;
    tashinut: TcxTabSheet;
    cxLabel8: TcxLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel9: TcxLabel;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBMemo6: TcxDBMemo;
    cxLabel15: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBMemo4: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxLabel12: TcxLabel;
    cxDBMemo7: TcxDBMemo;
    cxLabel20: TcxLabel;
    cxLabel18: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    cxLabel22: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBMemo8: TcxDBMemo;
    dscorrecao: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1PROTOCOLO_CARTA: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_HORA_REC_CARTA: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo5: TcxDBMemo;
    cxLabel6: TcxLabel;
    cldaseemissorIDENTIFICACAO_ID: TIntegerField;
    procedure FrameEnter(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cldaseemissorAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    FUNCTION CARGA_TXT:BOOLEAN;
    function monta_nota:boolean;
    function monta_nota_imp:boolean;
    function monta_nota_armazem:boolean;
    function monta_nota_direta:boolean;
    function importa_txt:boolean;
    function carga_certificado:boolean;
    function valida_nota:boolean;
    function assinar_nota:boolean;
    PROCEDURE enviar_nota;
    function enviar_email:boolean;
    procedure cancelar_nota;
    procedure consulta_nota;
    procedure carta_correcao;
    PROCEDURE carga_xml_nota;
    PROCEDURE INUTILIZAR_NOTA;
    procedure enviar_email_cancar;
    procedure envia_mensagem(mensagem:string);
    function tipo_nota:string;
    FUNCTION CALCULA_DI(NUM_DI:STRING):STRING;
    function arredondamento(valor:double;inclusive:boolean):double;

  public
    { Public declarations }
    mostra_mensagem:boolean;
    data:tdate;
    hora:ttime;
    data_hora:tdatetime;
    procedure atualiza_agora;

  end;

  type tocorrencia=record
       arquivo:string;
       resultado:string;
  end;

  type tduplicata=record
       valor:double;
       vencimento:tdate;
  end;



implementation

{$R *.dfm}

uses un_damo_principal, un_frm_mensagem_progresso, un_frm_motivo,
  un_frm_inutilizar;


type tot_cla=record
     classificacao:string;
     ipi:double;
     bcst:double;
     st:double;
     identificacao:integer;
end;

var
atot_cla:array of tot_cla;

procedure atualiza_array(c:string;vi:double;vst:double;bst:double;num_ident:integer);
var i:integer;
fez:boolean;
begin
  fez:=false;
  for i := 0 to length(atot_cla)-1 do begin
    if atot_cla[i].classificacao=c then begin
      fez:=true;
      atot_cla[i].ipi:=atot_cla[i].ipi+vi;
      atot_cla[i].st:=atot_cla[i].st+vst;
      atot_cla[i].bcst:=atot_cla[i].bcst+bst;
    end;

  end;
  if fez=false then begin
    setlength(atot_cla,length(atot_cla)+1);
    atot_cla[length(atot_cla)-1].classificacao:=c;
    atot_cla[length(atot_cla)-1].identificacao:=num_ident;
    atot_cla[length(atot_cla)-1].ipi:=vi;
    atot_cla[length(atot_cla)-1].st:=vst;
    atot_cla[length(atot_cla)-1].bcst:=bst;
  end;

end;



function TfrmNotas.arredondamento(valor: double; inclusive: boolean): double;
var adiciona,diferenca,novo_valor:double;
begin
  novo_valor:=int(valor*1000);
  novo_valor:=novo_valor/10;
  diferenca:=novo_valor-int(novo_valor);
  adiciona:=0;
  if inclusive=true then begin
    if diferenca>=0.5 then adiciona:=1;
  end
  else begin
    if diferenca>0.5 then adiciona:=1;
  end;
  novo_valor:=int(novo_valor)+adiciona;
  novo_valor:=novo_valor/100;
  result:=novo_valor;
end;

function TfrmNotas.assinar_nota: boolean;
var resultado:boolean;
begin
   envia_mensagem('Assinando Nota');
   try
//      CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
      dmconexao.ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := TRUE;
//      dmconexao.ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';
//      dmconexao.ACBrNFe1.NotasFiscais.Clear;
//      dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', True);
      dmconexao.ACBrNFe1.NotasFiscais.Assinar;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
      cldaseemissor.Edit;
//      CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      deletefile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
//      dmconexao.ACBrNFe1.NotasFiscais.Clear;
      envia_mensagem('Nota Assinada');
      resultado:=true
   except

         on E: Exception do begin
         resultado:=false;
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=E.Message;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
         resultado:=false;
      end;

   end;
   result:=resultado;
end;

procedure TfrmNotas.atualiza_agora;
begin
   cldaseagora.Close;
   cldaseagora.Open;
   data:=cldaseagoraCURRENT_DATE.AsDateTime;
   hora:=cldaseagoraCURRENT_TIME.AsDateTime;
   data_hora:=cldaseagoraCURRENT_TIMESTAMP.AsDateTime;
   cldaseagora.Close;

end;

function TfrmNotas.CALCULA_DI(NUM_DI: STRING): STRING;
VAR
  NOVA_DI:STRING;
  TAMANHO:INTEGER;
  SOMATORIA:INTEGER;
  I:INTEGER;
  FATOR:INTEGER;
  DV:INTEGER;
  RESTO:INTEGER;
begin
   NOVA_DI:='2'+NUM_DI;
   TAMANHO:=LENGTH(NOVA_DI);
   SOMATORIA:=0;
   FATOR:=2;
   for I:= TAMANHO DOWNTO 1 DO BEGIN
      SOMATORIA:=SOMATORIA+(FATOR*STRTOINT(NOVA_DI[I]));
      FATOR:=FATOR+1;
      if FATOR=10 then FATOR:=2;
   END;
   RESTO:=SOMATORIA MOD 11;
   if (RESTO=0) OR (RESTO=1) then DV:=0
   ELSE DV:=11-(RESTO);
   CALCULA_DI:=TRIM(NOVA_DI)+INTTOSTR(DV);
end;

procedure TfrmNotas.cancelar_nota;
var
  xmlcancelamento: AnsiString;
begin
   envia_mensagem('Transmitindo Cancelamento');
   atualiza_agora;
   try
      cldaseemissorXML_ORIGEM.SaveToFile('nfe.xml');
      dmconexao.ACBrNFe1.NotasFiscais.Clear;
      dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml');
      dmconexao.ACBrNFe1.EventoNFe.Evento.Clear;
      dmconexao.ACBrNFe1.EventoNFe.idLote:=cldaseemissorLOTE.AsInteger;
      with dmconexao.ACBrNFe1.EventoNFe.Evento.Add do begin
         InfEvento.dhEvento:=data_hora-encodetime(0,10,0,0);
         InfEvento.tpEvento:=tecancelamento;
         InfEvento.detEvento.xJust:=cldaseemissorMOTIVO_CANCELAMENTO.AsString;
      end;
      dmconexao.ACBrNFe1.EnviarEvento(cldaseemissorLOTE.AsInteger);
      cldaseemissor.Edit;
      cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger:=dmconexao.ACBrNFe1.WebServices.EnvEvento.cStat;
      cldaseemissorSTAT_RESP_CANCELAMENTO.Asstring:=dmconexao.ACBrNFe1.WebServices.EnvEvento.xMotivo;

      cldaseemissorCOD_RESP_CANCELAMENTO.Asinteger:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
      cldaseemissorSTAT_RESP_CANCELAMENTO.AsString:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;

      cldaseemissorPROTOCOLO_CANCELAMENTO.AsString:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nprot;
      cldaseemissorDATA_HORA_REC_CANC.AsDateTime:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;


      xmlcancelamento:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xml;
      cldaseemissorXML_CANCELAMENTO.AsString:=xmlcancelamento;

      cldaseemissorRESULTADO.AsInteger:=3;
//      if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=128 then cldaseemissorRESULTADO.AsInteger:=2;
      if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=101 then cldaseemissorRESULTADO.AsInteger:=1;
      if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=135 then cldaseemissorRESULTADO.AsInteger:=1;
      if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=151 then cldaseemissorRESULTADO.AsInteger:=1;
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      envia_mensagem('Cancelamento Transmitido');
      if cldaseemissorRESULTADO.AsInteger=1 then enviar_email_cancar;

   except
      on E: Exception do begin
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=E.Message;
         cldaseemissorRESULTADO.AsInteger:=3;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
      end;
   end;
end;

function TfrmNotas.carga_certificado: boolean;
var resultado:boolean;
caminho:string;
begin
   try
      dmconexao.ACBrNFe1.SSL.NumeroSerie:=dmconexao.num_serie;
      dmconexao.ACBrNFe1.SSL.Senha:=dmconexao.senha;


//      caminho:=ExtractFilePath(Application.ExeName);
//      dmconexao.ACBrNFe1.Configuracoes.Certificados.ArquivoPFX:=caminho+'\REC JAT.PFX';
//      dmconexao.ACBrNFe1.Configuracoes.Certificados.Senha:=dmconexao.senha;



      dmconexao.ACBrNFe1.SSL.CarregarCertificado;
      resultado:=true;
   EXCEPT
      on E: Exception do begin
         resultado:=false;
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=E.Message;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
         resultado:=false;
      end;
   end;
   result:=resultado;
end;

function TfrmNotas.CARGA_TXT: BOOLEAN;
var
  i, j, k, n  : integer;
  NFeRTXT: TNFeRTXT;
  erro:boolean;
begin
  dmconexao.ACBrNFe1.NotasFiscais.Clear;
   //tenta TXT

//   if CLDASEEMISSORXML_ORIGEM.IsNull then begin
      dmconexao.ACBrNFe1.NotasFiscais.Add;
//   end
//   else begin
//     CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
//     ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
//     ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';
//     ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', false);
//   end;

   NFeRTXT := TNFeRTXT.Create(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe);
   CLDASEEMISSORTXT_ORIGEM.SaveToFile('nota_txt.txt');
   NFeRTXT.CarregarArquivo('nota_txt.txt');
   if NFeRTXT.LerTxt then begin
      NFeRTXT.Free;
      erro:=false;
   end
   else begin
      NFeRTXT.Free;
      cldaseemissor.Edit;
      CLDASEEMISSORSTATUS_ATUAL.AsString:='Arquivo Txt Invalido';
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      erro:=true;
   end;

   result:=not erro;
end;

procedure TfrmNotas.carga_xml_nota;
var registros:integer;
    arquivo:string;
  NOTA: Integer;
  CNPJ_EMITENTE: string;
  chave: string;
  CODEMP_ID: Integer;
  CLIENTE_ID: Integer;
  CNPJ: string;
  CNPJ_SEM: string;
  CNPJ_COM: string;
  i: Integer;
  itens: Integer;
  PRODUTOS: string;
  qtd: Integer;
begin
  inherited;
   cldaseempresas.CLOSE;
   CLDASEEMPRESAS.COMMANDTEXT:='SELECT * FROM EMPRESAS';
   cldaseempresas.OPEN;
   CODEMP_ID:=0;
   cldaseemissorXML_ORIGEM.SaveToFile('NFE.XML');
   DMCONEXAO.ACBRNFE1.NotasFiscais.Clear;
   DMCONEXAO.ACBrNFe1.NotasFiscais.LoadFromFile('NFE.XML');
   NOTA:=DMCONEXAO.ACBRNFE1.NotasFiscais.Items[0].NFe.Ide.nNF;
   CNPJ_EMITENTE:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
   chave:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;

   CLDASEEMISSOR.EDIT;
   CLDASEEMISSORID_NFE.AsString:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
   CLDASEEMISSORNATUREZA.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;
   cldaseemissorDATA_AUTORIZACAO.AsDateTime:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFE.procNFe.dhRecbto;
   CLDASEEMISSORVALOR_NOTA.AsFloat:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
   CLDASEEMISSORCNPJ.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
   CLDASEEMISSORRAZAO_SOCIAL.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
   CLDASEEMISSORESTADO.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
   CNPJ:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
   PRODUTOS:='';
   itens:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.Det.Count;
   for i := 0 to itens - 1 do begin
       produtos:=produtos+DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd+'/';
   end;
   CLDASEEMISSOR.FieldByNAME('PRODUTOS').AsSTRING:=PRODUTOS;
   CLDASEEMISSORVALOR_NOTA.AsFloat:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
   CLDASEEMISSORID_NFE.AsString:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.infNFe.ID;
   CLDASEEMISSORDATA_HORA_RECIBO.AsDateTime:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;

   if dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF=tnsaida then cldaseemissorTIPO_NOTA.AsString:='S';
   if dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF=tnEntrada then cldaseemissorTIPO_NOTA.AsString:='E';


   cldaseemissorTOTAL_PRODUTOS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vProd;
   cldaseemissorTOTAL_NOTA.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vNF;
   cldaseemissorICMS_ST.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vST;
   cldaseemissorICMS_FCP.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vFCP;
   cldaseemissorFRETE.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vFrete;
   cldaseemissorSEGURO.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vSeg;
   cldaseemissorIPI.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vIPI;
   cldaseemissorOUTRASDESP.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vOutro;
   cldaseemissorDESCONTO.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vDesc;
   cldaseemissorBC_ICMS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vBC;
   cldaseemissorICMS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vICMS;
   cldaseemissorIMP_IMP.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vII;
   cldaseemissorCOFINS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vCOFINS;
   cldaseemissorPIS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vPIS;
   cldaseemissorISSQN.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ISSQNtot.vISS;
   CLDASEEMISSOR.post;
   CLDASEEMISSOR.applyupdates(0);
end;

procedure TfrmNotas.carta_correcao;
var
  xmlcancelamento: AnsiString;
begin
   envia_mensagem('Transmitindo Carta de Correção');

   atualiza_agora;
   try
      cldaseemissorXML_ORIGEM.SaveToFile('nfe.xml');
      dmconexao.ACBrNFe1.NotasFiscais.Clear;
      dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml');
      dmconexao.ACBrNFe1.EventoNFe.Evento.Clear;
      dmconexao.ACBrNFe1.EventoNFe.idLote:=cldaseemissorLOTE.AsInteger;
      with dmconexao.ACBrNFe1.EventoNFe.Evento.Add do begin
         InfEvento.dhEvento:=data_hora-EncodeTime(0,10,0,0);
         InfEvento.tpEvento:=teCCe;
         InfEvento.detEvento.xCorrecao:=cldaseemissorMUDANCA_CARTA.AsString;

         CLDASE_CORRECAO.Close;
         CLDASE_CORRECAO.CommandText:='SELECT * FROM NFE_ARQUIVO_CORRECAO WHERE CODEMP_ID='+INTTOSTR(cldaseemissorCODEMP_ID.AsInteger)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger)+' ORDER BY SEQUENCIAL';
         CLDASE_CORRECAO.Open;

         CLDASE_CORRECAO.Last;

         InfEvento.nSeqEvento:=cldase_correcaoSEQUENCIAL.AsInteger;

//         InfEvento.nSeqEvento:=1;
      end;
      dmconexao.ACBrNFe1.EnviarEvento(cldaseemissorLOTE.AsInteger);
      cldaseemissor.Edit;
      cldaseemissorCOD_RESP_CARTA.AsInteger:=dmconexao.ACBrNFe1.WebServices.EnvEvento.cStat;
      cldaseemissorSTAT_RESP_CARTA.Asstring:=dmconexao.ACBrNFe1.WebServices.EnvEvento.xMotivo;

      cldaseemissorCOD_RESP_CARTA.Asinteger:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
      cldaseemissorSTAT_RESP_CARTA.AsString:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;

      cldaseemissorPROTOCOLO_CARTA.AsString:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nprot;

      cldaseemissorDATA_HORA_REC_CARTA.AsDateTime:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;

      xmlcancelamento:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xml;
      cldaseemissorXML_CArta.LoadFromFile(dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.NomeArquivo);

      cldaseemissorRESULTADO.AsInteger:=3;
      if cldaseemissorCOD_RESP_CARTA.AsInteger=128 then cldaseemissorRESULTADO.AsInteger:=2;
      if cldaseemissorCOD_RESP_CARTA.AsInteger=135 then cldaseemissorRESULTADO.AsInteger:=1;
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);


      CLDASE_CORRECAO.Edit;
      CLDASE_CORRECAOCOD_RESP_CARTA.AsInteger:=dmconexao.ACBrNFe1.WebServices.EnvEvento.cStat;
      CLDASE_CORRECAOSTAT_RESP_CARTA.Asstring:=dmconexao.ACBrNFe1.WebServices.EnvEvento.xMotivo;

      CLDASE_CORRECAOCOD_RESP_CARTA.Asinteger:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
      CLDASE_CORRECAOSTAT_RESP_CARTA.AsString:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;

      CLDASE_CORRECAOPROTOCOLO_CARTA.AsString:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nprot;

      CLDASE_CORRECAODATA_HORA_REC_CARTA.AsDateTime:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;

      xmlcancelamento:=dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xml;
      CLDASE_CORRECAOXML_CArta.LoadFromFile(dmconexao.ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.NomeArquivo);

      CLDASE_CORRECAORESULTADO.AsInteger:=3;
      if CLDASE_CORRECAOCOD_RESP_CARTA.AsInteger=128 then CLDASE_CORRECAORESULTADO.AsInteger:=2;
      if CLDASE_CORRECAOCOD_RESP_CARTA.AsInteger=135 then CLDASE_CORRECAORESULTADO.AsInteger:=1;
      CLDASE_CORRECAO.Post;
      CLDASE_CORRECAO.ApplyUpdates(0);



      envia_mensagem('Carta de Correção Transmitida');

      if cldaseemissorRESULTADO.AsInteger=1 then enviar_email_cancar;
   except
      on E: Exception do begin
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=E.Message;
         cldaseemissorRESULTADO.AsInteger:=3;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
      end;
   end;

end;

procedure TfrmNotas.cldaseemissorAfterScroll(DataSet: TDataSet);
begin
   CLDASE_CORRECAO.Close;
   CLDASE_CORRECAO.CommandText:='SELECT * FROM NFE_ARQUIVO_CORRECAO WHERE CODEMP_ID='+INTTOSTR(cldaseemissorCODEMP_ID.AsInteger)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger)+' ORDER BY SEQUENCIAL';
   CLDASE_CORRECAO.Open;
end;

procedure TfrmNotas.consulta_nota;
begin
   envia_mensagem('Consultando Nota');

   try
        dmconexao.ACBrNFe1.notasfiscais.Clear;
        dmconexao.ACBrNFe1.WebServices.Consulta.NFeChave:=cldaseemissorCHAVE_NFE.AsString;
        dmconexao.ACBrNFe1.WebServices.Consulta.Executar;
      case cldaseemissorACAO.AsInteger of
         1:begin
            cldaseemissor.Edit;
            cldaseemissorCOD_RESP_ENVIO.AsInteger:=dmconexao.ACBrNFe1.WebServices.Consulta.cStat;
            cldaseemissorSTAT_RESP_ENVIO.AsString:=dmconexao.ACBrNFe1.WebServices.Consulta.XMotivo;
            if cldaseemissorCOD_RESP_ENVIO.AsInteger=100 then cldaseemissorRESULTADO.AsInteger:=1;
            if cldaseemissorCOD_RESP_ENVIO.AsInteger=150 then cldaseemissorRESULTADO.AsInteger:=1;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
         end;
         2:begin
            cldaseemissor.Edit;
            cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger:=dmconexao.ACBrNFe1.WebServices.Consulta.cStat;
            cldaseemissorSTAT_RESP_CANCELAMENTO.AsString:=dmconexao.ACBrNFe1.WebServices.Consulta.XMotivo;
            if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=101 then cldaseemissorRESULTADO.AsInteger:=1;
            if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=151 then cldaseemissorRESULTADO.AsInteger:=1;
            if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=135 then cldaseemissorRESULTADO.AsInteger:=1;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
         end;
         3:begin
            cldaseemissor.Edit;
            cldaseemissorCOD_RESP_INUT.AsInteger:=dmconexao.ACBrNFe1.WebServices.Consulta.cStat;
            cldaseemissorSTAT_RESP_INUT.AsString:=dmconexao.ACBrNFe1.WebServices.Consulta.XMotivo;
            if cldaseemissorCOD_RESP_INUT.AsInteger=102 then cldaseemissorRESULTADO.AsInteger:=1;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
         end;
         4:begin
            cldaseemissor.Edit;
            cldaseemissorCOD_RESP_CARTA.AsInteger:=dmconexao.ACBrNFe1.WebServices.Consulta.cStat;
            cldaseemissorSTAT_RESP_CARTA.AsString:=dmconexao.ACBrNFe1.WebServices.Consulta.XMotivo;
            if cldaseemissorCOD_RESP_CARTA.AsInteger=135 then cldaseemissorRESULTADO.AsInteger:=1;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
         end;

      end;
      envia_mensagem('Nota Consultada');

   except
      on E: Exception do begin
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=e.Message;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
      end;
   end;

end;

procedure TfrmNotas.cxButton10Click(Sender: TObject);
var
  retorno: string;
  chave:string;
  protocolo:string;
begin
   if (cldaseemissorCOD_RESP_ENVIO.AsInteger=539) and (cldaseemissorRESULTADO.AsInteger=3) then begin
      retorno:=cldaseemissorSTAT_RESP_ENVIO.AsString;
      retorno:=copy(retorno,pos('[',retorno)+1);
      retorno:=copy(retorno,pos(':',retorno)+1);
      chave:=copy(retorno,1,pos(']',retorno)-1);
      retorno:=copy(retorno,pos(':',retorno)+1);
      protocolo:=copy(retorno,1,pos(']',retorno)-1);
      cldaseemissor.Edit;
      cldaseemissorCHAVE_NFE.AsString:=chave;
      cldaseemissorID_NFE.AsString:='NFe'+chave;
      cldaseemissorPROTOCOLO.AsString:=protocolo;
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      if FileOpenDialog1.Execute then begin
         if pos(chave,fileopendialog1.filename)>0 then begin
            cldaseemissor.Edit;
            cldaseemissorXML_ORIGEm.LoadFromFile(FileOpenDialog1.FileName);
            cldaseemissorXML_NFE.LoadFromFile(FileOpenDialog1.FileName);
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
            carga_xml_nota;
            cldaseemissor.Edit;
            cldaseemissorRESULTADO.AsInteger:=1;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);

         end
         else begin
            showmessage('A nota escolhida não confere com o XML');
         end;
      end;
   end;

end;

procedure TfrmNotas.cxButton1Click(Sender: TObject);
var
  acao: Integer;
  resultado: Integer;
  NOTA_MONTADA: Boolean;
begin

   cldaseemissor.Close;
   cldaseemissor.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE RESULTADO<>1 AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   cldaseemissor.Open;
   if cldaseemissor.RecordCount=0 then begin
      showmessage('Não Foram Encontradas Notas para Transmissão ao Sefaz');
   end
   else begin
      mostra_mensagem:=true;

      showmessage('Confirme se o Certificado está inserido no leitor');


      cldaseempresas.Close;
      cldaseempresas.commandtext:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
      CLDASEEMPRESAS.Open;
      dmconexao.ACBrNFe1.Configuracoes.WebServices.UF:=cldaseempresasESTADO.AsString;
      if cldaseempresasLOGO_NFE.IsNull then BEGIN
         DMCONEXAO.ACBrNFeDANFEFR1.Logo:='';
      END
      ELSE BEGIN
         cldaseempresasLOGO_NFE.SaveToFile('LOGO.JPG');
         DMCONEXAO.ACBrNFeDANFEFR1.Logo:='LOGO.JPG';
      END;


      envia_mensagem('Carregando Certificado');
      if carga_certificado=true then begin
         envia_mensagem('Certificado Carregado');
         cldaseemissor.First;
         while not cldaseemissor.Eof do begin
            cldaseemissor.Edit;
            cldaseemissorSTATUS_ATUAL.Clear;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
            acao:=cldaseemissoracao.AsInteger;
            resultado:=cldaseemissorresultado.AsInteger;
            case acao of
               1:begin
                  case resultado of
                     0:begin
                        NOTA_MONTADA:=FALSE;
                        case dmconexao.grupo of
                           0:begin
                              if TIPO_NOTA='NORMAL' then nota_montada:=MONTA_NOTA;
                              if TIPO_NOTA='IMPORTACAO' then nota_montada:=monta_nota_imp;
                           end;
                           1:begin
                              nota_montada:=monta_nota_direta;
                           end;
                           2:begin
                              nota_montada:=monta_nota_armazem;
                           end;

                        end;
                        if nota_montada=true then begin
                           if assinar_nota=true then begin
                              if valida_nota=true then begin
                                 enviar_nota;
                              end;
                           end;
                        end;
                     end;
                     1:begin
                     end;
                     2:begin
                        consulta_nota;
                     end;
                  end;
               end;
               2:begin
                  case resultado of
                     0:begin
                        cancelar_nota;
                     end;
                     1:begin

                     end;
                     2:begin
                        consulta_nota;
                     end;
                  end;
               end;
               3:begin
                  case resultado of
                     0:begin
                        INUTILIZAR_NOTA;
                     end;
                     1:begin

                     end;
                     2:begin
                        consulta_nota;
                     end;
                  end;
               end;
               4:begin
                  case resultado of
                     0:begin
                        carta_correcao;
                     end;
                     1:begin

                     end;
                     2:begin
                        consulta_nota;
                     end;
                  end;
               end;
            end;
            CLDASEEMISSOR.Next;
         end;
      end;
   end;
   if not (frm_mensagem_progresso=nil) then FreeAndNil(frm_mensagem_progresso);

   cldaseemissor.Close;
   cldaseemissor.Open;
end;

procedure TfrmNotas.cxButton2Click(Sender: TObject);
begin
  if dmconexao.formato_nota='1' then begin
      dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danferetratofs_basic.fr3';
    end
    else begin
      dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danfepaisagem_basic.fr3';
  end;

  CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
  dmconexao.ACBrNFe1.NotasFiscais.Clear;
  dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', True);
  CLDASEPARAMETROS.Close;
  CLDASEPARAMETROS.Open;

  cldaseempresas.Close;
  cldaseempresas.commandtext:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASEEMPRESAS.Open;
   cldaseempresasLOGO_NFE.SaveToFile('LOGO.JPG');
   DMCONEXAO.ACBrNFeDANFEFR1.Logo:='LOGO.JPG';


  if (not(cldaseemissorPROTOCOLO_CANCELAMENTO.IsNull) and ((cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=135) or (cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=151))) then begin
     dmconexao.ACBrNFeDANFEFR1.Cancelada:=true;
  end
  else begin
     dmconexao.ACBrNFeDANFEFR1.Cancelada:=false;
  end;

  dmconexao.ACBrNFeDANFEFR1.PathPDF:=cldaseparametrosDIRETORIO_NFE_PDF.AsString;


  dmconexao.acbrnfe1.NotasFiscais.Items[0].ImprimirPDF;
  dmconexao.acbrnfe1.NotasFiscais.Items[0].Imprimir;

  DeleteFile('nfe.xml');

end;

procedure TfrmNotas.cxButton3Click(Sender: TObject);
var faz:boolean;
  i: integer;
begin
   FAZ:=TRUE;
   if messagebox(handle,'Confirma a Inutilização de Notas','Aviso',MB_YESNO+MB_ICONQUESTION)=ID_YES then begin
      if frm_inutilizar_nota=nil then frm_inutilizar_nota:=tfrm_inutilizar_nota.create(self);
      frm_inutilizar_nota.justificativa_inulitizar.Clear;
      frm_inutilizar_nota.ShowModal;
      if frm_inutilizar_nota.botao_acao='OK' then begin
         for i := frm_inutilizar_nota.da_nota.Value to frm_inutilizar_nota.ate_nota.Value do begin
            CLDASEINUT.Close;
            CLDASEINUT.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND NFE='+INTTOSTR(I);
            CLDASEINUT.Open;
            if CLDASEINUT.RecordCount>0 THEN BEGIN
               SHOWMESSAGE('A nota '+inttostr(i)+' está cadastrada no sistema, não pode ser inutilizada');
               faz:=false;
            END;
         end;
         if faz=true then begin
            cldaseinut.Close;
            cldaseinut.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE 0=1';
            CLDASEINUT.Open;
            atualiza_agora;
            CLDASEINUT.Append;
            cldaseinutCODEMP_ID.AsInteger:=DMCONEXAO.empresa_id;
            cldaseinutNFE.AsInteger:=frm_inutilizar_nota.da_nota.Value;
            cldaseinutNOTA_INUT_ATE.AsInteger:=frm_inutilizar_nota.ate_nota.Value;
            cldaseinutMOTIVO_INUT.AsString:=frm_inutilizar_nota.justificativa_inulitizar.Lines.Text;
            cldaseinutDATA_EMISSAO.Asdatetime:=data;
            cldaseinutHORA_EMISSAO.AsDateTime:=hora;
            CLDASEINUTACAO.AsInteger:=3;
            CLDASEINUTRESULTADO.AsInteger:=0;
            CLDASEINUT.Post;
            CLDASEINUT.ApplyUpdates(0);
         end;
      end;
   end;
end;

procedure TfrmNotas.cxButton4Click(Sender: TObject);
begin
   cldaseemissor.Edit;
   cldaseemissorRESULTADO.AsInteger:=0;
   cldaseemissor.Post;
   cldaseemissor.ApplyUpdates(0);
   cldaseemissor.Close;
   cldaseemissor.Open;

end;

procedure TfrmNotas.cxButton5Click(Sender: TObject);
begin
   cldaseemissor.Edit;
   cldaseemissorACAO.AsInteger:=1;
   cldaseemissorRESULTADO.AsInteger:=1;
   cldaseemissor.Post;
   cldaseemissor.ApplyUpdates(0);

end;

procedure TfrmNotas.cxButton6Click(Sender: TObject);
begin

  if messagebox(handle,'Imprimir Somente a Nota Selecionada','Aviso',MB_YESNO+MB_ICONQUESTION)=id_yes then begin

    if dmconexao.formato_nota='1' then begin
      dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danferetratofs_basic.fr3';
    end
    else begin
      dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danfepaisagem_basic.fr3';
    end;

    CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
    dmconexao.ACBrNFe1.NotasFiscais.Clear;
    dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', True);
    CLDASEPARAMETROS.Close;
    CLDASEPARAMETROS.Open;

    cldaseempresas.Close;
    cldaseempresas.commandtext:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
    CLDASEEMPRESAS.Open;
    cldaseempresasLOGO_NFE.SaveToFile('LOGO.JPG');
    DMCONEXAO.ACBrNFeDANFEFR1.Logo:='LOGO.JPG';

    if (not(cldaseemissorPROTOCOLO_CANCELAMENTO.IsNull) and ((cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=135) or (cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=151))) then begin
      dmconexao.ACBrNFeDANFEFR1.Cancelada:=true;
    end
    else begin
      dmconexao.ACBrNFeDANFEFR1.Cancelada:=false;
    end;

    dmconexao.ACBrNFeDANFEFR1.PathPDF:=cldaseparametrosDIRETORIO_NFE_PDF.AsString;

    dmconexao.acbrnfe1.NotasFiscais.Items[0].ImprimirPDF;
    DeleteFile('nfe.xml');

  end
  else begin
    if dmconexao.formato_nota='1' then begin
      dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danferetratofs_basic.fr3';
    end
    else begin
      dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danfepaisagem_basic.fr3';
    end;

    dmconexao.ACBrNFe1.NotasFiscais.Clear;
    CLDASEPARAMETROS.Close;
    CLDASEPARAMETROS.Open;

    cldaseempresas.Close;
    cldaseempresas.commandtext:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
    CLDASEEMPRESAS.Open;
    cldaseempresasLOGO_NFE.SaveToFile('LOGO.JPG');
    DMCONEXAO.ACBrNFeDANFEFR1.Logo:='LOGO.JPG';

    cldaseemissor.first;
    while not cldaseemissor.eof do begin
      CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
      dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', True);
      if (not(cldaseemissorPROTOCOLO_CANCELAMENTO.IsNull) and ((cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=135) or (cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=151))) then begin
        dmconexao.ACBrNFeDANFEFR1.Cancelada:=true;
      end
      else begin
        dmconexao.ACBrNFeDANFEFR1.Cancelada:=false;
      end;

      dmconexao.ACBrNFeDANFEFR1.PathPDF:=cldaseparametrosDIRETORIO_NFE_PDF.AsString;

      DeleteFile('nfe.xml');
      cldaseemissor.Next;
    end;
    dmconexao.acbrnfe1.NotasFiscais.ImprimirPDF;
  end;


end;

procedure TfrmNotas.cxButton7Click(Sender: TObject);
begin
   CLDASEEMISSOR.Close;
   cldaseemissor.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE RESULTADO=1 AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' and DATA_EMISSAO>='+QUOTEDSTR(FormatDateTime('YYYY-MM-DD',DE.Date))+' AND DATA_EMISSAO<='+QUOTEDSTR(FormatDateTime('YYYY-MM-DD',ATE.Date));
   CLDASEEMISSOR.Open;
   cldaseemissor.Last;
   cldaseemissor.First;

end;

procedure TfrmNotas.cxButton8Click(Sender: TObject);
begin
   if messagebox(handle,'Confirma o Cancelamento da Nota','Aviso',MB_YESNO+MB_ICONQUESTION)=ID_YES then begin
      if cldaseemissorPROTOCOLO_CANCELAMENTO.IsNull then begin
         if frm_motivo=nil then frm_motivo:=tfrm_motivo.create(self);
         frm_motivo.st_titulo.Caption:='Motivo do Cancelamento';
         frm_motivo.texto_motivo.Clear;
         frm_motivo.ShowModal;
         if frm_motivo.botao_pressionado='OK' then begin
            cldaseemissor.Edit;
            cldaseemissorMOTIVO_CANCELAMENTO.AsString:=frm_motivo.texto_motivo.Lines.Text;
            cldaseemissorACAO.AsInteger:=2;
            cldaseemissorRESULTADO.AsInteger:=0;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
         end;
      end
      else begin
         showmessage('Esta nota já tem protocolo de cancelamento');
      end;
   end;

end;

procedure TfrmNotas.cxButton9Click(Sender: TObject);
VAR CORRECAO:STRING;
    ESPACO:STRING;
begin
   if messagebox(handle,'Confirma a Carta de Correção','Aviso',MB_YESNO+MB_ICONQUESTION)=ID_YES then begin
      if cldaseemissorPROTOCOLO_CANCELAMENTO.IsNull then begin
         if frm_motivo=nil then frm_motivo:=tfrm_motivo.create(self);
         frm_motivo.st_titulo.Caption:='Correção desejada';
         frm_motivo.texto_motivo.Clear;
         frm_motivo.ShowModal;
         if frm_motivo.botao_pressionado='OK' then begin
            CLDASE_CORRECAO.Close;
            CLDASE_CORRECAO.CommandText:='SELECT * FROM NFE_ARQUIVO_CORRECAO WHERE CODEMP_ID='+INTTOSTR(cldaseemissorCODEMP_ID.AsInteger)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger)+' ORDER BY SEQUENCIAL';
            CLDASE_CORRECAO.Open;
            CLDASE_CORRECAO.Append;
            cldase_correcaoCODEMP_ID.AsInteger:=cldaseemissorCODEMP_ID.AsInteger;
            cldase_correcaoNFE.AsInteger:=cldaseemissorNFE.AsInteger;
            cldase_correcaoMUDANCA_CARTA.AsString:=frm_motivo.texto_motivo.Lines.Text;
            cldasemaxcor.Close;
            CLDASEMAXCOR.CommandText:='SELECT MAX(SEQUENCIAL) AS CODIGO FROM NFE_ARQUIVO_CORRECAO WHERE CODEMP_ID='+INTTOSTR(cldaseemissorCODEMP_ID.AsInteger)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger);
            CLDASEMAXCOR.Open;
            cldase_correcaoSEQUENCIAL.AsInteger:=cldasemaxcorCODIGO.AsInteger+1;
            CLDASE_CORRECAO.Post;
            CLDASE_CORRECAO.ApplyUpdates(0);
            CLDASEMAXCOR.Close;
            CORRECAO:='';
            ESPACO:='';
            CLDASE_CORRECAO.First;
            while NOT CLDASE_CORRECAO.EOF do BEGIN
               CORRECAO:=CORRECAO+ESPACO+cldase_correcaoMUDANCA_CARTA.AsString;
               ESPACO:=' ';
               CLDASE_CORRECAO.Next;
            END;
            cldaseemissor.Edit;
            cldaseemissorMUDANCA_CARTA.AsString:=CORRECAO;
            cldaseemissorACAO.AsInteger:=4;
            cldaseemissorRESULTADO.AsInteger:=0;
            cldaseemissor.Post;
            cldaseemissor.ApplyUpdates(0);
         end;
      end
      else begin
         showmessage('Nota já cancelada, não pode ser corrigida');
      end;
   end;
end;

procedure TfrmNotas.cxPageControl1Change(Sender: TObject);
VAR ANO,MES,DIA:WORD;
begin
   atualiza_agora;
   CLDASEEMISSOR.Close;
   if cxPageControl1.ActivePage=cxTabSheet1 then BEGIN
      cldaseemissor.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE RESULTADO<>1 AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   END;
   if cxPageControl1.ActivePage=cxTabSheet2 then BEGIN
      DecodeDate(data,ANO,MES,DIA);
      DE.Date:=EncodeDate(ANO,MES,1);
      MES:=MES+1;
      if MES=13 then BEGIN
         MES:=1;
         ANO:=ANO+1;

      END;
      ATE.Date:=EncodeDate(ANO,MES,1)-1;
      cldaseemissor.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE RESULTADO=1 AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' and DATA_EMISSAO>='+QUOTEDSTR(FormatDateTime('YYYY-MM-DD',DE.Date))+' AND DATA_EMISSAO<='+QUOTEDSTR(FormatDateTime('YYYY-MM-DD',ATE.Date));
   END;
   if cxPageControl1.ActivePage=cxTabSheet3 then BEGIN
      cldaseemissor.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE RESULTADO=3 AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   END;
   CLDASEEMISSOR.Open;
end;

function TfrmNotas.enviar_email: boolean;
var cc:tstrings;
    CORPO:TSTRINGS;
    EMAILS:ARRAY OF STRING;
    QTD_EMAILS:INTEGER;
    EMAIL_NFE:STRING;
    POSICAO:INTEGER;
    RESULTADO:BOOLEAN;
    I:INTEGER;
    atachar_pdf:boolean;
begin
   envia_mensagem('Transmitindo Email');
   TRY


   Cldaseempresas.Close;
   CLDASEEMPRESAS.CommandText:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASEEMPRESAS.OPEN;
   CLDASEEMAIL_EMP.Close;
   CLDASEEMAIL_EMP.CommandText:='SELECT * FROM EMPRESAS_EMAIL WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND UTILIZACAO='+QUOTEDSTR('FATURAMENTO-NFE');
   CLDASEEMAIL_EMP.Open;
   CLDASECLIENTES.Close;
   CLDASECLIENTES.CommandText:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+INTTOSTR(cldaseemissorCLIENTE_ID.AsInteger);
   CLDASECLIENTES.Open;
   EMAIL_NFE:=CLDASECLIENTESEMAIL_NFE.ASSTRING;
//   email_nfe:='edson@reality-ltd.com.br';
   QTD_EMAILS:=0;
   if LENGTH(TRIM(EMAIL_NFE))>0 then BEGIN
      POSICAO:=POS(';',EMAIL_NFE);
      while POSICAO>0 do BEGIN
         INC(QTD_EMAILS);
         SetLength(EMAILS,QTD_EMAILS);
         EMAILS[QTD_EMAILS-1]:=COPY(EMAIL_NFE,1,POSICAO-1);
         EMAIL_NFE:=COPY(EMAIL_NFE,POSICAO+1);
         POSICAO:=POS(';',EMAIL_NFE);
      END;
      if LENGTH(TRIM(EMAIL_NFE))>0 then BEGIN
         INC(QTD_EMAILS);
         SetLength(EMAILS,QTD_EMAILS);
         EMAILS[QTD_EMAILS-1]:=EMAIL_NFE;
      END;
   END;

   RESULTADO:=TRUE;

   if QTD_EMAILS>0 then BEGIN
//      dmconexao.ACBrNFeDANFEFR1.FastFile:='danfepaisagem_basic.fr3';
        if dmconexao.formato_nota='1' then begin
           dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danferetratofs_basic.fr3';
        end
        else begin
           dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danfepaisagem_basic.fr3';
        end;

      CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
      dmconexao.ACBrNFe1.NotasFiscais.Clear;
      dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', True);
      CLDASEPARAMETROS.Close;
      CLDASEPARAMETROS.Open;
      if cldaseparametrosATACHAR_PDF_EMAIL.AsInteger=-1 then atachar_pdf:=true
      else atachar_pdf:=false;
      dmconexao.ACBrNFeDANFEFR1.PathPDF:=cldaseparametrosDIRETORIO_TEMPORARIO_EMAIL.AsString;
      cc:=TStringList.Create;
      CORPO:=TStrings.Create;

      if QTD_EMAILS>1 then BEGIN
         for I := 1 to QTD_EMAILS-1 do BEGIN
            CC.Add(EMAILS[I]);
         END;
      END;

      try
         CORPO.Add('Nfe (Chave).......:'+inttostr(cldaseemissorNFE.AsInteger));
         CORPO.Add('Emissao...........:'+inttostr(cldaseemissorNFE.AsInteger));
         CORPO.Add('Numero Nfe........:'+inttostr(cldaseemissorNFE.AsInteger));
         CORPO.Add('Destinatario......:'+CLDASECLIENTESRAZAO_SOCIAL.ASSTRING);
         CORPO.Add('Emitente..........:'+cldaseempresasRAZAO_NFE.AsString);
         CORPO.Add('Protocolo.........:'+inttostr(cldaseemissorNFE.AsInteger));
         CORPO.Add('');
         CORPO.Add('');
         CORPO.Add('Email automatico. Favor não responder ao remetente');

         with dmconexao.ACBrMail1 do begin
            Host:=CLDASEEMAIL_EMPSMTP.AsString;
            Port:=CLDASEEMAIL_EMPPORTA.AsString;
            Username:=CLDASEEMAIL_EMPCONTA.AsString;
            Password:=CLDASEEMAIL_EMPSENHA.AsString;
            From:=CLDASEEMAIL_EMPCONTA.AsString;
            if CLDASEEMAIL_EMPREQUER_CRIPTOGRAFIA.AsInteger=-1 then BEGIN
               SetSSL:=TRUE;
               SetTLS:=TRUE;
            END
            ELSE BEGIN
               SetSSL:=false;
               SetTLS:=false;
            END;
            ReadingConfirmation:=false;
            UseThread:=false;
            FromName:=cldaseempresasRAZAO_NFE.AsString;
            try
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(EMAILS[0],
                                                                    'DISTRIBUICAO DE NF-E PARA O DESTINATARIO',
                                                                     corpo,
                                                                     atachar_pdf,
                                                                     cc,
                                                                     nil);
               envia_mensagem('Email Transmitido');
            Except
            on E: Exception do begin
               cldaseemissor.Edit;
               cldaseemissorSTATUS_ATUAL.AsString:=E.Message;
               cldaseemissor.Post;
               cldaseemissor.ApplyUpdates(0);
               end;
            end;
         end;
         DeleteFile(cldaseparametrosDIRETORIO_TEMPORARIO_EMAIL.AsString+'\'+cldaseemissorCHAVE_NFE.AsString+'-nfe.pdf');
      finally
         cc.Free;
         CORPO.Free;
      end;
      DeleteFile('nfe.xml');
   END;
   Except
      on E: Exception do begin
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=E.Message;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
         end;
   END;
   result:=resultado;

end;

procedure TfrmNotas.enviar_email_cancar;
var
  cnpj,cnpj_sem,cnpj_com:string;
  i: Integer;
  FAZ:BOOLEAN;
  NewAttach:TIdAttachmentfile;
  erro:boolean;
  arquivo:string;
  qtd:integer;
  ocorrencias:array of tocorrencia;
  NOTA: Integer;
  CNPJ_EMITENTE: string;
  PRODUTOS: string;
  itens: Integer;
  EMAILS_DEST:ARRAY OF STRING;
  EMAIL_DESTINATARIO: string;
  POSICAO: Integer;
  cliente_id: Integer;
  email_emitente: string;
  EMAILCONTA: string;
  EMAILSENHA: string;
  EMAILSMTP: string;
  EMAILPORTA: Integer;
  REQUER_AUTENTICACAO: Integer;
  REQUER_CRIPTOGRAFIA: Integer;
  TEM_EMAIL: Boolean;
begin
envia_mensagem('Transmitindo Email');

TRY
   cldaseempresas.CLOSE;
   cldaseempresas.CommandText:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASEEMPRESAS.Open;
   cldaseemissorXML_NFE.SaveToFile('nfe.xml');
   dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml');
   NOTA:=dmconexao.ACBRNFE1.NotasFiscais.Items[0].NFe.Ide.nNF;
   CNPJ_EMITENTE:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
   CNPJ:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
   cliente_id:=cldaseemissorCLIENTE_ID.AsInteger;
   cldaseclientes.Close;
   cldaseclientes.CommandText:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+INTTOSTR(CLIENTE_ID);
   CLDASECLIENTES.Open;


   CLDASEEMAIL_EMP.CLOSE;
   CLDASEEMAIL_EMP.COMMANDTEXT:='SELECT * FROM EMPRESAS_EMAIL WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND UTILIZACAO='+QUOTEDSTR('FATURAMENTO-NFE');
   CLDASEEMAIL_EMP.OPEN;
   email_emitente:=CLDASEEMAIL_EMPCONTA.AsString;
   EMAILCONTA:=CLDASEEMAIL_EMPCONTA.asstring;
   EMAILSENHA:=CLDASEEMAIL_EMPsenha.asstring;
   EMAILSMTP:=CLDASEEMAIL_EMPSMTP.AsString;
   EMAILPORTA:=CLDASEEMAIL_EMPPORTA.AsInteger;
   REQUER_AUTENTICACAO:=CLDASEEMAIL_EMPREQUER_AUTENTICACAO.AsInteger;
   REQUER_CRIPTOGRAFIA:=CLDASEEMAIL_EMPREQUER_CRIPTOGRAFIA.AsInteger;

   DMCONEXAO.idSmtp.Username:=EMAILCONTA;
   DMCONEXAO.idSmtp.Password:=EMAILSENHA;
   DMCONEXAO.idsmtp.Host:=EMAILSMTP;
   DMCONEXAO.idsmtp.Port:=EMAILPORTA;

         // configura o remetente da mensagem
   DMCONEXAO.idmessage.clear;
   DMCONEXAO.idmessage.Subject:='DISTRIBUICAO DE NF-E PARA O DESTINATARIO';

   DMCONEXAO.idmessage.From.Address:=email_emitente;
   DMCONEXAO.idmessage.from.name:=cldaseempresasRAZAO_NFE.AsString;
   if REQUER_AUTENTICACAO=-1 then
      DMCONEXAO.IdSMTP.AuthType:=SatDefault
   else
      DMCONEXAO.IdSMTP.AuthType:=SatNone;
         //Verifica Conexão SSL
   if REQUER_CRIPTOGRAFIA=-1 then begin
      DMCONEXAO.IdSSLIOHandlerSocketOpenSSL.Port:=DMCONEXAO.IdSMTP.Port;
      DMCONEXAO.IdSSLIOHandlerSocketOpenSSL.Host:=DMCONEXAO.IdSMTP.Host;
      DMCONEXAO.IdSSLIOHandlerSocketOpenSSL.PassThrough := True;
      DMCONEXAO.IdSSLIOHandlerSocketOpenSSL.ReadTimeout:=3000;
      DMCONEXAO.IdSSLIOHandlerSocketOpenSSL.ConnectTimeout:=30000;
      DMCONEXAO.IdSMTP.IOHandler:=DMCONEXAO.IdSSLIOHandlerSocketOpenSSL;
      DMCONEXAO.IdSMTP.UseTLS:=utUseImplicitTLS;
   end
   else begin
      DMCONEXAO.IdSMTP.IOHandler:=nil;
      DMCONEXAO.IdSMTP.UseTLS:=utNoTLSSupport;
   end;

   try
      try
         DMCONEXAO.idsmtp.Connect;
         if REQUER_AUTENTICACAO=-1 then DMCONEXAO.IdSMTP.Authenticate;
      except
         on e:exception do begin
            //            showmessage(e.Message);
            //            showmessage('Problemas para enviar e-mail');
            erro:=true;
         end;
      end;
   finally
      try
         //      idsmtp.Disconnect;
      finally
      end;
   end;

   I:=0;
   EMAIL_DESTINATARIO:=CLDASECLIENTESEMAIL_NFE.ASSTRING;
//   EMAIL_DESTINATARIO:='edson@reality-ltd.com.br;edson@adesplan.com.br';
   POSICAO:=POS(';',EMAIL_DESTINATARIO);
   while POSICAO<>0 do BEGIN
      INC(I);
      SetLength(EMAILS_DEST,I);
      EMAILS_DEST[I-1]:=COPY(EMAIL_DESTINATARIO,1,POSICAO-1);
      EMAIL_DESTINATARIO:=COPY(EMAIL_DESTINATARIO,POSICAO+1);
      POSICAO:=POS(';',EMAIL_DESTINATARIO);
   END;
   if LENGTH(TRIM(EMAIL_DESTINATARIO))>0 then BEGIN
      INC(I);
      SetLength(EMAILS_DEST,I);
      EMAILS_DEST[I-1]:=EMAIL_DESTINATARIO;
   END;

   TEM_EMAIL:=TRUE;
   if I=0 then TEM_EMAIL:=FALSE;

   if TEM_EMAIL then BEGIN


   //configura os destinatarios
   DMCONEXAO.idmessage.Recipients.Clear;

   for I := 0 to LENGTH(EMAILS_DEST) - 1 do BEGIN
      DMCONEXAO.idmessage.Recipients.Add;
      DMCONEXAO.idmessage.Recipients.Items[DMCONEXAO.idmessage.recipients.Count-1].address:=emails_dest[i];  //email_para;
      DMCONEXAO.idmessage.Recipients.Items[DMCONEXAO.idmessage.recipients.Count-1].name:=CLDASECLIENTESRAZAO_SOCIAL.AsString;
   END;

   //adiciona o html ao corpo da messagem
   DMCONEXAO.idmessage.Body.Clear;
   //      idmessage.Body.AddStrings(edt_mensagem.lines);
   if cldaseemissorACAO.AsInteger=2 then BEGIN
      DMCONEXAO.IDMESSAGE.Body.Add('Nfe.................: '+cldaseemissorCHAVE_NFE.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Emissao.............: '+FORMATDATETIME('DD/MM/YYYY', cldaseemissorDATA_EMISSAO.AsDateTime));
      DMCONEXAO.IDMESSAGE.Body.Add('Numero..............: '+INTTOSTR(cldaseemissorNFE.asinteger));
      DMCONEXAO.IDMESSAGE.Body.Add('Destinatario........: '+CLDASECLIENTESRAZAO_SOCIAL.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Emitente............: '+cldaseempresasRAZAO_NFE.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Cancelamento em.....: '+FORMATDATETIME('DD/MM/YYYY', cldaseemissorDATA_HORA_REC_CANC.AsDateTime));
      DMCONEXAO.IDMESSAGE.Body.Add('Protocolo...........: '+cldaseemissorPROTOCOLO_CANCELAMENTO.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Motivo Cancelamento.: '+cldaseemissorMOTIVO_CANCELAMENTO.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('');
      DMCONEXAO.IDMESSAGE.Body.Add('');
      DMCONEXAO.IDMESSAGE.Body.Add('Email automatico. Favor não responder ao remetente.');
      cldaseemissorXML_CANCELAMENTO.SaveToFile('documento.xml');
      newattach:=TidAttachmentfile.Create(dmconexao.idmessage.messageparts,'documento.xml');
   END;

   if cldaseemissorACAO.AsInteger=4 then BEGIN
      DMCONEXAO.IDMESSAGE.Body.Add('Nfe..................: '+cldaseemissorCHAVE_NFE.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Emissao..............: '+FORMATDATETIME('DD/MM/YYYY', cldaseemissorDATA_EMISSAO.AsDateTime));
      DMCONEXAO.IDMESSAGE.Body.Add('Numero...............: '+INTTOSTR(cldaseemissorNFE.asinteger));
      DMCONEXAO.IDMESSAGE.Body.Add('Destinatario.........: '+CLDASECLIENTESRAZAO_SOCIAL.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Emitente.............: '+cldaseempresasRAZAO_NFE.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Carta de Correcao em.: '+FORMATDATETIME('DD/MM/YYYY', cldaseemissorDATA_HORA_REC_CANC.AsDateTime));
      DMCONEXAO.IDMESSAGE.Body.Add('Protocolo............: '+cldaseemissorPROTOCOLO_CANCELAMENTO.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('Correcao.............: '+cldaseemissorMUDANCA_CARTA.AsString);
      DMCONEXAO.IDMESSAGE.Body.Add('');
      DMCONEXAO.IDMESSAGE.Body.Add('');
      DMCONEXAO.IDMESSAGE.Body.Add('Email automatico. Favor não responder ao remetente.');
      cldaseemissorXML_CARTA.SaveToFile('documento.xml');
      newattach:=TidAttachmentfile.Create(dmconexao.idmessage.messageparts,'documento.xml');
   END;

   // arquivo atachado

   if dmconexao.idsmtp.Connected then dmconexao.idsmtp.Send(dmconexao.idmessage);
   envia_mensagem('Email Transmitido');

   END;
   if dmconexao.IdSMTP.Connected then dmconexao.idsmtp.Disconnect;

FINALLY

END;
   deletefile('documento.xml');

end;

procedure TfrmNotas.enviar_nota;
var erro:boolean;
begin
   envia_mensagem('Transmitindo Nota');
//   dmconexao.ACBrNFeDANFEFR1.FastFile:='danfepaisagem_basic.fr3';
  if dmconexao.formato_nota='1' then begin
     dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danferetratofs_basic.fr3';
  end
  else begin
     dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danfepaisagem_basic.fr3';
  end;
   CLDASEPARAMETROS.Close;
   CLDASEPARAMETROS.Open;
   CLDASEEMPRESAS.Close;
   CLDASEEMPRESAS.CommandText:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASEEMPRESAS.Open;
   if cldaseempresasLOGO_NFE.IsNull then BEGIN
      DMCONEXAO.ACBrNFeDANFEFR1.Logo:='';
   END
   ELSE BEGIN
      cldaseempresasLOGO_NFE.SaveToFile('LOGO.JPG');
      DMCONEXAO.ACBrNFeDANFEFR1.Logo:='LOGO.JPG';
   END;

   dmconexao.ACBrNFeDANFEFR1.PathPDF:=cldaseparametrosDIRETORIO_NFE_PDF.AsString;
   CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
   dmconexao.ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
   dmconexao.ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';
   dmconexao.ACBrNFe1.NotasFiscais.Clear;
   dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', True);
   if not CLDASEEMISSORCHAVE_NFE.IsNull then begin
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe:=CLDASEEMISSORCHAVE_NFE.AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
      cldaseemissor.Edit;
      CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
      CLDASEEMISSORCHAVE_NFE.AsString:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      deletefile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
   end;
   erro:=false;
   try
      if cldaseemissorLOTE.IsNull then begin
         CLDASEMAXLOTE.Close;
         CLDASEMAXLOTE.Open;
         CLDASEEMISSOR.Edit;
         cldaseemissorLOTE.AsInteger:=CLDASEMAXLOTELOTE.AsInteger+1;
         CLDASEEMISSOR.Post;
         CLDASEEMISSOR.ApplyUpdates(0);
      end;
      dmconexao.ACBrNFe1.Enviar(cldaseemissorLOTE.AsInteger,false);
      cldaseemissor.Edit;
      cldaseemissorDATA_ENVIO.AsDateTime:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;
      CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
      CLDASEEMISSORXML_NFE.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
      CLDASEEMISSORCHAVE_NFE.AsString:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      envia_mensagem('Nota Transmitida');
      carga_xml_nota;
   except
         erro:=true;
   end;

   cldaseemissor.Edit;
   CLDASEEMISSORPROTOCOLO.asstring:=dmconexao.ACBrNFe1.WebServices.Retorno.Protocolo;
   CLDASEEMISSORCHAVE_NFE.AsString:=dmconexao.acbrnfe1.NotasFiscais.items[0].NFe.procNFe.chNFe;
   CLDASEEMISSORSTAT_RESP_ENVIO.AsString:=dmconexao.ACBrNFe1.WebServices.Retorno.xMotivo;
   CLDASEEMISSORCOD_RESP_ENVIO.AsInteger:=dmconexao.ACBrNFe1.WebServices.Retorno.cStat;
   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger=100 then begin
      cldaseemissorRESULTADO.AsInteger:=1;
      if (length(trim(cldaseemissorID_NFE.AsString))=0) or (cldaseemissorID_NFE.IsNull) then begin
         cldaseemissorCOD_RESP_ENVIO.AsInteger:=000;
         cldaseemissorRESULTADO.AsInteger:=0;
      end;
   end;
   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger=103 then cldaseemissorRESULTADO.AsInteger:=2;
   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger=104 then cldaseemissorRESULTADO.AsInteger:=2;
   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger=105 then cldaseemissorRESULTADO.AsInteger:=2;
   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger=150 then cldaseemissorRESULTADO.AsInteger:=1;

   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger=302 then cldaseemissorDENEGADA1.AsString:=cldaseemissorSTAT_RESP_ENVIO.AsString;

   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger>200 then cldaseemissorRESULTADO.AsInteger:=3;

   if CLDASEEMISSORCOD_RESP_ENVIO.AsInteger=539 then BEGIN
      //AQUI

   END;

   if (length(trim(cldaseemissorPROTOCOLO.AsString))=0) or (cldaseemissorPROTOCOLO.IsNull) then begin
      if cldaseemissorRESULTADO.AsInteger=1 then begin
         cldaseemissorCOD_RESP_ENVIO.AsInteger:=000;
         cldaseemissorRESULTADO.AsInteger:=0;
      end;
   end;


   cldaseemissor.Post;
   cldaseemissor.ApplyUpdates(0);
   if (cldaseemissorCOD_RESP_ENVIO.AsInteger=100) or (cldaseemissorCOD_RESP_ENVIO.AsInteger=150) then begin
//      dmconexao.ACBrNFeDANFEFR1.FastFile:='danfepaisagem_basic.fr3';
  if dmconexao.formato_nota='1' then begin
     dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danferetratofs_basic.fr3';
  end
  else begin
     dmconexao.ACBrNFeDANFEFR1.FastFile:=ExtractFilePath(application.ExeName)+'\'+'danfepaisagem_basic.fr3';
  end;

      CLDASEEMISSORXML_ORIGEM.SaveToFile('nfe.xml');
      dmconexao.ACBrNFe1.NotasFiscais.Clear;
      dmconexao.ACBrNFe1.NotasFiscais.LoadFromFile('nfe.xml', True);
//      cldaseemissor.Edit;
//      cldaseemissorDATA_ENVIO.AsDateTime:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;
//      cldaseemissor.post;
//      cldaseemissor.ApplyUpdates(0);
      CLDASEPARAMETROS.Close;
      CLDASEPARAMETROS.Open;
      dmconexao.ACBrNFeDANFEFR1.PathPDF:=cldaseparametrosDIRETORIO_NFE_PDF.AsString;
      if cldaseparametrosAPOS_ENVIO_PDF_NFE.AsInteger=-1 then begin
         dmconexao.acbrnfe1.NotasFiscais.Items[0].ImprimirPDF;
      end;
      if cldaseparametrosAPOS_ENVIO_IMPRIMIR_NFE.AsInteger=-1 then begin
         dmconexao.acbrnfe1.NotasFiscais.Items[0].Imprimir;
      end;
      if cldaseparametrosAPOS_ENVIO_XML_NFE.AsInteger=-1 then begin
         CLDASEEMISSORXML_ORIGEM.SaveToFile(cldaseparametrosDIRETORIO_XML_NFE.AsString+'\'+cldaseemissorCHAVE_NFE.AsString+'-nfe.xml');
      end;
      DeleteFile('nfe.xml');
      if cldaseparametrosAPOS_ENVIAR_EMAIL.AsInteger=-1 then begin
         enviar_email;
      end;
   end;

end;

procedure TfrmNotas.envia_mensagem(mensagem: string);
begin
   if mostra_mensagem=true then begin
      if frm_mensagem_progresso=nil then begin
         frm_mensagem_progresso:=tfrm_mensagem_progresso.create(self);
         frm_mensagem_progresso.Show;
      end;
      frm_mensagem_progresso.st_mem.Caption:=mensagem;
      frm_mensagem_progresso.Show;
      application.ProcessMessages;
      frm_mensagem_progresso.Refresh;
   end;

end;

procedure TfrmNotas.FrameEnter(Sender: TObject);
begin
   cxPageControl1.ActivePage:=cxTabSheet1;
   cldaseemissor.Close;
   cldaseemissor.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE RESULTADO<>1 AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASEEMISSOR.Open;
   if CLDASEEMISSOR.RecordCount=0 then SHOWMESSAGE('Não existem Notas Pendentes para essa empresa');
   cldaseparametros.Close;
   cldaseparametros.Open;
   with dmconexao.ACBrNFe1.Configuracoes do begin
      Arquivos.PathNFe:=cldaseparametrosDIR_SISTEMA_NFE.AsString;
      Arquivos.PathInu:=cldaseparametrosDIR_SISTEMA_INU.AsString;
      Arquivos.PathEvento:=cldaseparametrosDIR_SISTEMA_EVENTO.AsString;
      Arquivos.PathSalvar:=cldaseparametrosDIR_SISTEMA_SALVAR.AsString;
      Arquivos.PathSchemas:=cldaseparametrosDIR_SISTEMA_SCHEMAS_40.AsString;
   end;

   cldaseparametros.Close;

end;

function TfrmNotas.importa_txt: boolean;
var
  NFeRTXT: TNFeRTXT;
  resultado:boolean;
begin
   envia_mensagem('Carregando TXT');

   if carga_txt then begin
      if not CLDASEEMISSORCHAVE_NFE.isnull then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe:=CLDASEEMISSORCHAVE_NFE.AsString;
      end;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
      cldaseemissor.Edit;
      CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      deletefile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
      dmconexao.ACBrNFe1.NotasFiscais.Clear;
      resultado:=true;
      envia_mensagem('TXT Carregado');
   end
   else begin
      cldaseemissor.Edit;
      CLDASEEMISSORRESULTADO.AsInteger:=3;
      CLDASEEMISSORSTATUS_ATUAL.AsString:='Erro Leitura Arquivo TXT';
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      resultado:=false;
   end;

   Result:=resultado;
end;

procedure TfrmNotas.INUTILIZAR_NOTA;
VAR ANO,MES,DIA:WORD;
  xmlcancelamento: string;
begin
   envia_mensagem('Transmitindo Inutilização de Nota');

   atualiza_agora;
   DECODEDATE(data,ANO,MES,DIA);
   try
      CLDASEEMPRESAS.Close;
      CLDASEEMPRESAS.CommandText:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
      CLDASEEMPRESAS.Open;

      DMCONEXAO.ACBrNFe1.Inutilizar(cldaseempresasCNPJ.AsString,cldaseemissorMOTIVO_INUT.AsString,ANO,0,cldaseemissorNFE.AsInteger,CLDASEEMISSORNOTA_INUT_ATE.AsInteger);

      cldaseemissor.Edit;
      cldaseemissorCOD_RESP_INUT.AsInteger:=dmconexao.ACBrNFe1.WebServices.Inutilizacao.cStat;
      cldaseemissorSTAT_RESP_INUT.Asstring:=dmconexao.ACBrNFe1.WebServices.Inutilizacao.xMotivo;
      cldaseemissorPROTOCOLO_INUT.AsString:=dmconexao.ACBrNFe1.WebServices.Inutilizacao.Protocolo;
      cldaseemissorDATA_HORA_REC_UNIT.AsDateTime:=dmconexao.ACBrNFe1.WebServices.Inutilizacao.dhRecbto;

      xmlcancelamento:=dmconexao.ACBrNFe1.WebServices.Inutilizacao.XML_ProcInutNFe;
      cldaseemissorXML_INUT.AsString:=xmlcancelamento;

      cldaseemissorRESULTADO.AsInteger:=3;
      if cldaseemissorCOD_RESP_INUT.AsInteger=128 then cldaseemissorRESULTADO.AsInteger:=2;
//      if cldaseemissorCOD_RESP_CANCELAMENTO.AsInteger=101 then cldaseemissorRESULTADO.AsInteger:=1;
      if cldaseemissorCOD_RESP_INUT.AsInteger=135 then cldaseemissorRESULTADO.AsInteger:=1;
      if cldaseemissorCOD_RESP_INUT.AsInteger=102 then cldaseemissorRESULTADO.AsInteger:=1;

      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);
      envia_mensagem('Inutilização de Nota Transmitida');

   except
      on E: Exception do begin
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=E.Message;
         cldaseemissorRESULTADO.AsInteger:=3;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
      end;
   end;

end;

function TfrmNotas.monta_nota: boolean;
TYPE TONUS = RECORD
  NUMERO_ONU:INTEGER;
  NUMERO_RISCO:INTEGER;
  CLASSE:STRING;
  DESCRICAO_CLASSE:STRING;
  NOME_EMBARQUE:STRING;
END;
var
   arqprn:textfile;
   sequencial:integer;
   DOCUMENTO,NOME_SACADO,LOGRADOURO,BAIRRO,CIDADE,digito:string;
   ultima_nota:integer;
   versao,VERSAO_SISTEMA:STRING;
   NUM_ITEM:INTEGER;
   estado_emitente,estado_destinatario,ibge_EMItente,ibge_destinatario:string;
   PARCELAS,PEDIDOS,CFOP,UN_PROD:STRING;
   POSICAO,I,classif_id:integer;
   TT_BC_ICMS,TT_ICMS,TT_BC_ST,TT_ICMS_ST,TT_PRODUTOS,TT_FRETE,TT_SEGURO,TT_DESCONTO,TT_II,TT_IPI,TT_PIS,TT_COFINS,TT_OUTRAS,TT_NFE:DOUBLE;
   QTD_NOTAS:INTEGER;
   diretorio,PESO: string;
   FAZ: Boolean;
   NOTA_FISCAL,NOME_EMPRESA,PEDACO,DESC_CLASSIFICACAO:STRING;
   TOT_IPI,TOT_ST:DOUBLE;
   NUM_IDENTIFICACAO:INTEGER;
   TOT_BCST: DOUBLE;
   volumes,RESULTADO,FORMATO_NOTA,pais,obs_nota,obs_nota2:string;
   origem: char;
   item_sem_valor,valor_zero:boolean;
   ONUS:ARRAY OF TONUS;
   TEM: Boolean;
   descr_onu,espaco,nnotas,barra,PAIS_DESTINATARIO,TIPO_OPERACAO,finNFe: string;
   tem_bloqueado,item_bloqueado,cfop_sem_conferencia,fechado: Boolean;
   tem_emb_antiga:boolean;
   prods_emb_antiga,nome_arquivo,email_cliente: string;
   trading: Boolean;
   tt_fundo: double;
   nota_uso:integer;
   FISICA: Boolean;
   origem_prod:TpcnOrigemMercadoria;
   item_recno: Integer;
   aduplicata:array[1..4] of tduplicata;
   valor_parcela: double;
   vencimento: tdate;
begin
  inherited;

   cldasegen.Close;
   cldasegen.commandtext:='SELECT * FROM PARAMETROS';
   CLDASEGEN.OPEN;
   VERSAO:=CLDASEGEN.FIELDBYNAME('LAYOUT_NFE').Asstring;
   VERSAO_SISTEMA:=CLDASEGEN.FIELDBYNAME('VERSAO_SISTEMA').Asstring;
   CLDASEGEN.CLOSE;
   CLDASEVI_NF.Close;

   if cldaseemissorIDENTIFICACAO_ID.IsNull then
      CLDASEVI_NF.CommandText:='SELECT * FROM VI_NF9EC WHERE CODEMP_ID='+INTTOSTR(cldaseemissorCODEMP_ID.AsInteger)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger)
   else
      CLDASEVI_NF.CommandText:='SELECT * FROM VI_NF9EC WHERE CODEMP_ID='+INTTOSTR(cldaseemissorCODEMP_ID.AsInteger)+' AND IDENTIFICACAO_ID='+INTTOSTR(cldaseemissorIDENTIFICACAO_ID.AsInteger);

   CLDASEVI_NF.Open;
   cldasevi_nf.first;

   CLDASEgen.CLOSE;
   CLDASEgen.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+QUOTEDSTR(INTTOSTR(dmconexao.empresa_id));
   CLDASEgen.OPEN;
   if cldasegen.fieldbyname('TRADING').asinteger=-1 then trading:=true
   else trading:=false;
   estado_emitente:=cldasegen.FieldByName('ESTADO').AsString;
   ibge_EMITEnte:=cldasegen.FieldByName('IBGE').AsString;
   ultima_nota:=cldasegen.fieldbyname('ULTIMA_NOTA').AsInteger;
   NOME_EMPRESA:=cldasegen.fieldbyname('NOMEMP').AsSTRING;
   FORMATO_NOTA:=CLDASEGEN.FIELDBYNAME('FORMATO_NOTA').AsString;
   cldasegen.close;
   cldasevi_nf.FIRST;
   dmconexao.atualiza_agora;

   CLDASENF.Close;
   CLDASENF.CommandText:='SELECT * FROM NF WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO_ID='+INTTOSTR(cldasevi_nfIDENTIFICACAO_ID.AsInteger);
   CLDASENF.OPEN;

   CLDASENFITEM.Close;
   CLDASENFITEM.CommandText:='SELECT * FROM NF_ITENS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO='+INTTOSTR(cldasevi_nfIDENTIFICACAO_ID.AsInteger);
   CLDASENFITEM.OPEN;

   CLDASENFITEM.FIRST;
   setlength(onus,0);
   while NOT CLDASENFITEM.Eof do BEGIN
      CLDASEGEN.CLOSE;
      CLDASEGEN.COMMANDTEXT:='SELECT CODIGO,ONU FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(CLDASENFITEMCOD_PRODUTO.AsString);
      CLDASEGEN.OPEN;
      if CLDASEGEN.FieldByName('ONU').AsInteger>0 then BEGIN
         CLDASEONU.CLOSE;
         CLDASEONU.CommandText:='SELECT * FROM ONU WHERE NUMERO_ONU='+INTTOSTR(CLDASEGEN.FIELDBYNAME('ONU').ASINTEGER);
         CLDASEONU.OPEN;
         TEM:=FALSE;
         for I := 0 to LENGTH(ONUS) - 1 do BEGIN
            if ONUS[I].NUMERO_ONU=CLDASEONUNUMERO_ONU.AsInteger then TEM:=TRUE;
         END;
         if TEM=FALSE then BEGIN
            SETLENGTH(ONUS,LENGTH(ONUS)+1);
            ONUS[LENGTH(ONUS)-1].NUMERO_ONU:=cldaseonuNUMERO_ONU.AsInteger;
            ONUS[LENGTH(ONUS)-1].NUMERO_RISCO:=cldaseonuNUMERO_ONU.AsInteger;
            ONUS[LENGTH(ONUS)-1].CLASSE:=cldaseonuCLASSE.AsString;
            ONUS[LENGTH(ONUS)-1].DESCRICAO_CLASSE:=cldaseonuDESCRICAO_CLASSE.AsSTRING;
            ONUS[LENGTH(ONUS)-1].NOME_EMBARQUE:=cldaseonuNOME_EMBARQUE.AsSTRING;
         END;
      END;
      CLDASENFITEM.Next;
   END;
//   if cldasevi_nfCOMPLEMENTAR.asinteger=0 then begin
      {$REGION 'normal'}

      dmconexao.ACBrNFe1.NotasFiscais.Clear;
      dmconexao.ACBrNFe1.NotasFiscais.Add;


      CLDASEGEN.CLOSE;
      CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nfCLIENTE_ID.AsInteger);
      CLDASEGEN.OPEN;
      estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
      PAIS_DESTINATARIO:=cldasegen.FieldByName('PAIS').AsString;
      FISICA:=FALSE;
      if LENGTH(TRIM(CLDASEGEN.FieldByName('CPF').AsString))>0 then FISICA:=TRUE;

      cldasegen.close;
      cldasegen.CommandText:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(estado_emitente);
      CLDASEGEN.OPEN;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF:=strtoint(cldasegen.FieldByName('codigo').AsString);

      cldasegen.close;
      cldasegen.commandtext:='SELECT * FROM TIPO_VENDA WHERE TPVENDA_ID='+INTTOSTR(cldasevi_nfTPVENDA_ID.ASINTEGER);
      CLDASEGEN.Open;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp:=CLDASEGEN.FIELDBYNAME('DESCRICAO_FISCAL').AsString;
//      if cldasevi_nfFORMA_PAGAMENTO.IsNull then BEGIN
//         if TRIM(PARCELAS)='0' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipVista
//         ELSE  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo
//      END
//      ELSE BEGIN
//         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipOutras;
//      END;


      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo:=55;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF:=cldasevi_nfNFE.AsInteger;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi:=cldasevi_nfDATA_EMISSAO.AsDateTime;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt:=cldasevi_nfDATA_EMISSAO.AsDateTime;
      if cldasevi_nfTIPO_NOTA.AsString='E' then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnEntrada;
      end
      else begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnSaida;
      end;

      if UPPERCASE(PAIS_DESTINATARIO)='BRA' then BEGIN
         if UPPERCASE(estado_emitente)=UPPERCASE(estado_destinatario) then begin
            TIPO_OPERACAO:='1';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doInterna;
         end
         ELSE begin
            TIPO_OPERACAO:='2';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doInterestadual;
         end
      END
      else begin
         TIPO_OPERACAO:='3';
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doExterior;
      end;


      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG:=strtoint(ibge_EMItente);

      if formato_nota='1' then
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpImp:=tiRetrato
      else
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpimp:=tiPaisagem;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis:=teNormal;

      if UPPERCASE(dmconexao.ambiente)='PRODUCAO' then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taProducao;
      END
      else begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taHomologacao;
      end;

      finNFe:=TRIM(INTTOSTR(cldasevi_nfFINALIDADE_NOTA.AsInteger));

      case cldasevi_nfFINALIDADE_NOTA.AsInteger of
         1:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnNormal;
         2:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnComplementar;
         3:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnAjuste;
         4:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnDevolucao;
      end;


      if FISICA=TRUE then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfConsumidorFinal
      END
      ELSE BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfNao
      END;


      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPres:=pcNao;//ou pcoutros

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.procEmi:=peAplicativoContribuinte;

//      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.verProc:=


      if FINNFE<>'1' then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Add;
         if length(trim(cldasevi_nfCHAVE_DEVOLUCAO.AsString))>0 then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNFe:=cldasevi_nfCHAVE_DEVOLUCAO.AsString;
         END
         else begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].RefNF.cUF:=strtoint(cldasevi_nfIBGE_DEVOLUCAO.AsString);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].RefNF.AAMM:=formatdatetime('yymm',cldasevi_nfEMISSAO_DEVOLUCAO.asdatetime);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.CNPJ:=dmconexao.limpa_cnpj(cldasevi_nfCNPJ_DEVOLUCAO.AsString);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.modelo:=strtoint(cldasevi_nfMODELO_DEVOLUCAO.AsString);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.serie:=strtoint(cldasevi_nfSERIE_DEVOLUCAO.AsString);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.nNF:=cldasevi_nfNUMERO_DEVOLUCAO.Asinteger;
         end;
      END;


//
//
// - IDENTIFICACAO DO EMITENTE DA NOTA FISCAL
//
//

      cldasegen.CLOSE;
      CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
      CLDASEGEN.OPEN;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_NFE').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant:=CLDASEGEN.FIELDBYNAME('NOMEMP').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE:=CLDASEGEN.FIELDBYNAME('IE').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT:=crtRegimeNormal;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF:=CLDASEGEN.FIELDBYNAME('CNPJ').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun:=strtoint(ibge_EMItente);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais:=1058;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais:='BRASIL';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);

//
//
// - IDENTIFICACAO DO DESTINATARIO DA NOTA FISCAL
//
//

      CLDASEGEN.CLOSE;
      CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nfCLIENTE_ID.AsInteger);
      CLDASEGEN.OPEN;
      estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
      email_cliente:=cldasegen.fieldbyname('email').AsString;
      posicao:=pos(';',email_cliente);
      if POSICAO>0 then EMAIL_CLIENTE:=COPY(EMAIL_CLIENTE,1,POSICAO-1);


      if cldasegen.FieldByName('PAIS').AsString='BRA' then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
         if (length(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))>0) and (UpperCase(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))<>'ISENTO') then BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inContribuinte
         END
         else BEGIN
            if FISICA=TRUE then BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
            END
            ELSE BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inIsento;
            END;
         END;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);

         if length(trim(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString)))>0 then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);
         end
         else begin
            if length(trim(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CPF').AsString)))>0 then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CPF').AsString);
            end
         end;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=strtoint(CLDASEGEN.FIELDBYNAME('IBGE').AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=1058;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:='BRASIL';
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);
      END
      else begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:='EXTERIOR';
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=9999999;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:='EXTERIOR';
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:='EX';
         pais:=cldasegen.FieldByName('PAIS').AsString;
         CLDASEGEN.CLOSE;
         CLDASEGEN.CommandText:='SELECT * FROM PAISES WHERE SIGLA='+QUOTEDSTR(PAIS);
         CLDASEGEN.OPEN;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').ASSTRING);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:=CLDASEGEN.FIELDBYNAME('PAIS').ASSTRING;
         CLDASEGEN.CLOSE;
         CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nfCLIENTE_ID.AsInteger);
         CLDASEGEN.OPEN;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=CLDASEGEN.FIELDBYNAME('TELEFONE').AsString;
      end;

//
//
// - FORMA DE PAGAMENTO
//
//


      if (finNFe='1') and ((cldasevi_nfTPVENDA_ID.AsInteger=1) or (cldasevi_nftpvenda_id.AsInteger=23)) then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=cldasenfTOTAL_NOTA.ASFLOAT;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpCheque;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat:=trim(inttostr(cldasevi_nfNFE.AsInteger));
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vOrig:=cldasevi_nfTOTAL_NOTA.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vDesc:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vLiq:=cldasevi_nfTOTAL_NOTA.AsFloat;

         valor_parcela:=cldasevi_nfTOTAL_NOTA.AsFloat/4;
         valor_parcela:=trunc(valor_parcela*100)/100;

         for I := 1 to 4 do begin
            case i of
            1:vencimento:=date();
            2:vencimento:=vencimento+30;
            3:vencimento:=vencimento+15;
            4:vencimento:=vencimento+15;
            end;
            aduplicata[i].valor:=valor_parcela;
            aduplicata[i].vencimento:=vencimento;
            if i=4 then aduplicata[i].valor:=cldasevi_nfTOTAL_NOTA.AsFloat-(valor_parcela*3);
         end;

         for I := 1 to 4 do begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i-1].nDup:=formatfloat('000',i);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i-1].dVenc:=aduplicata[i].vencimento;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i-1].vDup:=aduplicata[i].valor;
         end;

      end
      else begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipNenhum;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpSemPagamento;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;

      end;

//
//
// - PRODUTOS DA NOTA FISCAL
//
//

      CLDASENFITEM.Close;
      CLDASENFITEM.CommandText:='SELECT * FROM NF_ITENS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO='+INTTOSTR(cldasevi_nfIDENTIFICACAO_ID.AsInteger);
      CLDASENFITEM.OPEN;
      CLDASENFITEM.FIRST;
      num_item:=0;
      TT_BC_ICMS:=0;
      TT_ICMS:=0;
      TT_BC_ST:=0;
      TT_ICMS_ST:=0;
      TT_PRODUTOS:=0;
      TT_FRETE:=0;
      TT_SEGURO:=0;
      TT_DESCONTO:=0;
      TT_II:=0;
      TT_IPI:=0;
      TT_PIS:=0;
      TT_COFINS:=0;
      TT_OUTRAS:=0;
      TT_NFE:=0;
      tt_fundo:=0;
      tem_emb_antiga:=false;
      prods_emb_antiga:='O(S) PRODUTO(S)';
      espaco:='';
      while NOT CLDASENFITEM.EOF do BEGIN
         INC(NUM_ITEM);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add;
         item_recno:=dmconexao.acbrnfe1.NotasFiscais.Items[0].NFe.det.Count;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.nItem:=num_item;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cProd:=CLDASENFITEMCOD_PRODUTO.AsString;
         cldasegen.Close;
         cldasegen.commandtext:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(CLDASENFITEMCOD_PRODUTO.AsString);
         CLDASEGEN.OPEN;
         if NOT (cldasegen.FieldByName('GETIN').IsNull) THEN BEGIN
            IF(LENGTH(TRIM(CLDASEGEN.FieldByName('GETIN').AsString))>0) then BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cEAN:=CLDASEGEN.FIELDBYNAME('GETIN').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.det.items[item_recno-1].Prod.cEANTrib:=CLDASEGEN.FIELDBYNAME('GETIN').AsString;
            END;
         END;

         if cldasegen.fieldbyname('EMB_PROD_ANT').AsInteger=-1 then BEGIN
            tem_emb_antiga:=TRUE;
            prods_emb_antiga:=prods_emb_antiga+ESPACO+CLDASEGEN.FieldByName('CODIGO').AsString;
            ESPACO:=', ';
         END;
         classif_id:=CLDASEGEN.FIELDBYNAME('CLASS_ID').AsInteger;
         UN_PROD:=CLDASEGEN.FIELDBYNAME('UNID_VENDA').AsString;
         if LENGTH(TRIM(UN_PROD))=0 then UN_PROD:='UN';
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.xProd:=cldaseGEN.FIELDBYNAME('DESCRICAO_NFE').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.NCM:=CLDASENFITEMCLASSIFICACAO.AsString;
         CFOP:=CLDASENFITEMCFOP.AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.CFOP:=CFOP;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uCom:=UN_PROD;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qCom:=CLDASENFITEMQUANTIDADE.AsInteger;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnCom:=CLDASENFITEMVALOR_UNITARIO.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vProd:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;

         CLDASEGEN.Close;
         CLDASEGEN.CommandText:='SELECT * FROM NF_ITENS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO='+INTTOSTR(cldasevi_nfIDENTIFICACAO_ID.AsInteger)+' AND COD_PRODUTO='+QUOTEDSTR(CLDASENFITEMCOD_PRODUTO.AsString);
         CLDASEGEN.Open;
         if LENGTH(CLDASEGEN.FIELDBYNAME('UNID_TRIBUT').AsString)>0 THEN BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=CLDASEGEN.FieldByName('UNID_TRIBUT').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=CLDASEGEN.FieldByName('QUANTIDADE_TRIB').AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=CLDASEGEN.FieldByName('VALOR_UNIT_TRIB').AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.IndTot:=itSomaTotalNFe;
         END
         ELSE BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=UN_PROD;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=CLDASENFITEMQUANTIDADE.AsInteger;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.IndTot:=itSomaTotalNFe;
         END;
         cldasegen.close;
         cldasegen.commandtext:='SELECT * FROM CLASSIFICACAO WHERE CLASS_ID='+INTTOSTR(CLASSIF_ID);
         cldasegen.Open;
         if CLDASEGEN.RecordCount>0 then BEGIN
            if LENGTH(TRIM(CLDASEGEN.FieldByName('CEST').AsString))>0 then BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.CEST:=TRIM(CLDASEGEN.FieldByName('CEST').AsString);
            END;
         END;

         //bloco novo por causa da CST
         origem:=' ';

         if cldasevi_nfMOVIMENTADO_DE.AsString='A' then begin
            if CLDASENFITEMIMPORTADO.AsInteger=-1 then begin
               if trading then begin
                  origem:='2';
               end
               else begin
                  origem:='1';
               end;
            end
            else begin
               origem:='0';
            end;
         end;
         if cldasevi_nfMOVIMENTADO_DE.AsString='N' then begin
            if CLDASENFITEMIMPORTADO.AsInteger=-1 then begin
               if trading then begin
                  origem:='2';
               end
               else begin
                  origem:='1';
               end;
            end
            else begin
               origem:='0';
            end;
         end;
         if cldasevi_nfMOVIMENTADO_DE.AsString='R' then begin
            if CLDASENFITEMIMPORTADO.AsInteger=-1 then begin
               origem:='2';
            end
            else begin
               origem:='0';
            end;
         end;

         case origem of
            '0':origem_prod:=oeNacional;
            '1':origem_prod:=oeEstrangeiraImportacaoDireta;
            '2':origem_prod:=oeEstrangeiraAdquiridaBrasil;
            '3':origem_prod:=oeNacionalConteudoImportacaoSuperior40;
            '4':origem_prod:=oeNacionalProcessosBasicos;
            '5':origem_prod:=oeNacionalConteudoImportacaoInferiorIgual40;
            '8':origem_prod:=oeNacionalConteudoImportacaoSuperior70;
         end;

         if CLDASENFITEMCST.AsString='00' then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst00;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=CLDASENFITEMALI_ICMS.AsInteger;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=CLDASENFITEMICMS_OP_PROPRIA.AsFLOAT;
         end;
         if CLDASENFITEMCST.AsString='10' then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst10;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=CLDASENFITEMALI_ICMS.AsInteger;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=CLDASENFITEMICMS_OP_PROPRIA.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBCST:=dbisMargemValorAgregado;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCST:=CLDASENFITEMBCSUBSTRI.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMSST:=CLDASENFITEMALI_SUBS_TRI.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSST:=CLDASENFITEMICMS_SUBS_TRI.AsFLOAT;

            if CLDASENFITEMVLR_FP.asfloat>0 then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCFCPST:=CLDASENFITEMBCSUBSTRI.AsFLOAT;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pFCPST:=CLDASENFITEMPERC_FP.AsFloat;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vFCPST:=CLDASENFITEMVLR_FP.asfloat;
            end;


         end;
         if CLDASENFITEMCST.AsString='30' then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst30;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBCST:=dbisMargemValorAgregado;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCST:=CLDASENFITEMBCSUBSTRI.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMSST:=CLDASENFITEMALI_SUBS_TRI.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSST:=CLDASENFITEMICMS_SUBS_TRI.AsFLOAT;
         end;
         if (CLDASENFITEMCST.AsString='40') or (CLDASENFITEMCST.AsString='41') or (CLDASENFITEMCST.AsString='50') then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
            if cldasenfitemcst.AsString='40' then
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst40;
            if cldasenfitemcst.AsString='41' then
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst41;
            if cldasenfitemcst.AsString='50' then
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst50;
         end;
         if (CLDASENFITEMCST.AsString='60') then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst60;

            if CLDASENFITEMCOD_PRODUTO.AsString='CI-MP-001K' then BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCSTRet:=27.02*CLDASENFITEMQUANTIDADE.AsInteger;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pST:=32;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSSubstituto:=1.66*CLDASENFITEMQUANTIDADE.AsInteger;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSSTRet:=6.99*CLDASENFITEMQUANTIDADE.AsInteger;
            END;
            if CLDASENFITEMCOD_PRODUTO.AsString='CI-HO-001K' then BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCSTRet:=0.39*CLDASENFITEMQUANTIDADE.AsInteger;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pST:=32;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSSubstituto:=0.06*CLDASENFITEMQUANTIDADE.AsInteger;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSSTRet:=0.61*CLDASENFITEMQUANTIDADE.AsInteger;
            END;


//            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCSTRet:=CLDASENFITEMRECOLHIDO_ATE.AsFLOAT*CLDASENFITEMQUANTIDADE.asinteger;
//            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSSTRet:=CLDASENFITEMICMS_RECATE.AsFLOAT*CLDASENFITEMQUANTIDADE.asinteger;
         end;
         if CLDASENFITEMCST.AsString='90' then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst90;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=CLDASENFITEMALI_ICMS.AsInteger;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=CLDASENFITEMICMS_OP_PROPRIA.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBCST:=dbisMargemValorAgregado;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCST:=CLDASENFITEMBCSUBSTRI.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMSST:=CLDASENFITEMALI_SUBS_TRI.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSST:=CLDASENFITEMICMS_SUBS_TRI.AsFLOAT;
            if CLDASENFITEMVLR_FP.asfloat>0 then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBCFCPST:=CLDASENFITEMBCSUBSTRI.AsFLOAT;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pFCPST:=CLDASENFITEMPERC_FP.AsFloat;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vFCPST:=CLDASENFITEMVLR_FP.asfloat;
            end;


         end;
         tot_ipi:=0;
         if CLDASENFITEMIPI.ASFLOAT>0 then begin
            tot_ipi:=cldasenfitemipi.AsFloat;
            TT_IPI:=TT_IPI+CLDASENFITEMIPI.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='999';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=IPI50;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vIPI:=CLDASENFITEMIPI.AsFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.pIPI:=CLDASENFITEMALI_IPI.AsInteger;
         end;
// novo bloco de CST para Pis e Cofins

         if (CLDASENFITEMCST_PIS.AsString='01') OR (CLDASENFITEMCST_PIS.AsString='02') then BEGIN
            if CLDASENFITEMCST_PIS.AsString='01' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS01;
            if CLDASENFITEMCST_PIS.AsString='02' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS02;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.pPIS:=CLDASENFITEMALI_PIS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vPIS:=CLDASENFITEMPIS.AsFloat;
         END;
         if (CLDASENFITEMCST_PIS.AsString='03') then BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS03;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.pPIS:=CLDASENFITEMALI_PIS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vPIS:=CLDASENFITEMPIS.AsFloat;
         END;
         if (CLDASENFITEMCST_PIS.AsString='04') OR (CLDASENFITEMCST_PIS.AsString='06') OR (CLDASENFITEMCST_PIS.AsString='07') OR (CLDASENFITEMCST_PIS.AsString='08') OR (CLDASENFITEMCST_PIS.AsString='09') then BEGIN
            if (CLDASENFITEMCST_PIS.AsString='04') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS04;
            IF (CLDASENFITEMCST_PIS.AsString='06') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS06;
            IF (CLDASENFITEMCST_PIS.AsString='07') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS07;
            IF (CLDASENFITEMCST_PIS.AsString='08') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS08;
            IF (CLDASENFITEMCST_PIS.AsString='09') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS09;
         END;

//CONFIS

         if (CLDASENFITEMCST_COFINS.AsString='01') OR (CLDASENFITEMCST_COFINS.AsString='02') then BEGIN
            if CLDASENFITEMCST_COFINS.AsString='01' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof01;
            if CLDASENFITEMCST_COFINS.AsString='02' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof02;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.pCOFINS:=CLDASENFITEMALI_COFINS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vCOFINS:=CLDASENFITEMCOFINS.AsFloat;
         END;
         if (CLDASENFITEMCST_COFINS.AsString='03') then BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof03;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.pCOFINS:=CLDASENFITEMALI_COFINS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vCOFINS:=CLDASENFITEMCOFINS.AsFloat;
         END;
         if (CLDASENFITEMCST_COFINS.AsString='04') OR (CLDASENFITEMCST_COFINS.AsString='06') OR (CLDASENFITEMCST_COFINS.AsString='07') OR (CLDASENFITEMCST_COFINS.AsString='08') OR (CLDASENFITEMCST_COFINS.AsString='09') then BEGIN
            if (CLDASENFITEMCST_COFINS.AsString='04') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof04;
            IF (CLDASENFITEMCST_COFINS.AsString='06') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof06;
            IF (CLDASENFITEMCST_COFINS.AsString='07') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof07;
            IF (CLDASENFITEMCST_COFINS.AsString='08') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof08;
            IF (CLDASENFITEMCST_COFINS.AsString='09') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof09;
         END;

         TT_PIS:=TT_PIS+CLDASENFITEMPIS.AsFloat;
         TT_COFINS:=TT_COFINS+CLDASENFITEMCOFINS.AsFloat;

         CLDASENFITEM.NEXT;
      END;


      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC:=cldasenfBASE_ICMS.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS:=cldasenfICMS.AsFloat;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST:=cldasenfBASE_ST.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST:=cldasenfST.asfloat;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFCPST:=cldasenfVLR_FP.asfloat;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd:=cldasenfVALOR_PRODUTOS.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete:=cldasenfVALOR_FRETE.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg:=cldasenfVALOR_FRETE.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc:=cldasenfTOTAL_DESCONTO.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI:=cldasenfVALOR_IPI.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS:=tt_pis;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS:=TT_COFINS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro:=0;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF:=cldasenfTOTAL_NOTA.AsFloat;

      if cldasevi_nfTRANSP_ID.AsInteger>0 then BEGIN
         cldasegen.close;
         cldasegen.CommandText:='SELECT * FROM TRANSPORTADORA WHERE TRANSP_ID='+INTTOSTR(cldasevi_nfTRANSP_ID.AsInteger);
         CLDASEGEN.OPEN;

         if cldasenfFRETE_CONTA.AsString='0' then
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaEmitente;
         if cldasenfFRETE_CONTA.AsString='1' then
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaDestinatario;

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:=CLDASEGEN.FIELDBYNAME('NOME').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
         CLDASEGEN.CLOSE;
      END
      ELSE BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:='PROPRIO';
      END;
      if cldasevi_nfvolumes.IsNull then volumes:='0'
      else volumes:=cldasevi_nfVOLUMES.AsString;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Add;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol:=strtoint(volumes);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp:='CAIXA(S)';
      if cldasevi_nfpeso.IsNull then peso:='0.000'
      else BEGIN
         PESO:=cldasevi_nfPESO.AsString;
         posicao:=pos('.',peso);
         while posicao<>0 do begin
            peso:=copy(peso,1,posicao-1)+copy(peso,posicao+1);
            posicao:=pos('.',peso);
         end;
         for I := 1 to LENGTH(PESO) do BEGIN
            if PESO[I]=',' then PESO[I]:='.';
         END;
         if pos('.',peso)=0 then begin
            peso:=peso+'.000';
         end
         else begin
            PEDACO:=COPY(PESO,POS('.',PESO)+1);
            if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
            if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
         end;
      END;

      for I := 0 to LENGTH(PESO)-1 do BEGIN
         if PESO[I]='.' then PESO[I]:=',';
      END;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL:=strtofloat(peso);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB:=strtofloat(peso);

      if length(trim(cldasenfOBSERVACAO.AsString))>0 then begin
        if cldasenfTIPO_NOTA.AsString='S' then BEGIN
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco:=cldasenfOBSERVACAO.AsString;
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.UFSaidaPais:=cldasevi_nfEXP_UF_EMBARQUE.AsString;
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.xLocExporta:=cldasevi_nfEXP_LOC_EMBARQUE.AsString;
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.xLocDespacho:=cldasevi_nfEXP_DESP_EMBARQUES.AsString;
        END
        ELSE BEGIN
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco:=cldasenfOBSERVACAO.AsString;
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.UFembarq:=cldasevi_nfEXP_UF_EMBARQUE.AsString;
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.xLocEmbarq:=cldasevi_nfEXP_LOC_EMBARQUE.AsString;
           dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.exporta.xLocDespacho:=cldasevi_nfEXP_DESP_EMBARQUES.AsString;
        END;
      end;

      if not CLDASEEMISSORCHAVE_NFE.isnull then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe:=CLDASEEMISSORCHAVE_NFE.AsString;
      end;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
      cldaseemissor.Edit;
      CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
      cldaseemissor.Post;
      cldaseemissor.ApplyUpdates(0);

//      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.

      monta_nota:=true;


{$ENDREGION}
//   end
//   else begin
      {$REGION 'complementar'}
//      write(arqprn,'A|');
//write(arqprn,versao+'|'); //VERSAO
//write(arqprn,'NFe|'); //IDENTIFICAÇÃO NFE
//writeln(arqprn,'|'); //PK
//
//write(arqprn,'B|');
//cldasegen.close;
//cldasegen.close;
//cldasegen.CommandText:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(estado_emitente);
//CLDASEGEN.OPEN;
//write(arqprn,CLDASEGEN.FIELDBYNAME('CODIGO').AsString+'|');//UF EMITENTE
//WRITE(arqprn,'|'); //NAO INFORMAR
//cldasegen.close;
//cldasegen.commandtext:='SELECT * FROM TIPO_VENDA WHERE TPVENDA_ID='+INTTOSTR(cldasevi_nfTPVENDA_ID.ASINTEGER);
//CLDASEGEN.Open;
//write(arqprn,CLDASEGEN.FIELDBYNAME('DESCRICAO').AsString+'|'); //NATUREZA
//CLDASEGEN.CLOSE;
//
//CLDASEGEN.CLOSE;
//CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nfCLIENTE_ID.AsInteger);
//CLDASEGEN.OPEN;
//estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
//PAIS_DESTINATARIO:=cldasegen.FieldByName('PAIS').AsString;
//CLDASEGEN.CLOSE;
//if TRIM(PARCELAS)='0' then write(arqprn,'0|') //PARCELAS
//ELSE  write(arqprn,'1|');  //PARCELAS
//write(arqprn,'55|');//MODELO DOCTO FISCAL
//write(arqprn,'0|'); //SERIE
//
//if cldasevi_nfNFE.IsNull then BEGIN
//INC(ultima_nota);
//write(arqprn,INTTOSTR(ULTIMA_NOTA)+'|'); //NOTA FISCAL
//nota_uso:=ultima_nota;
//END
//ELSE BEGIN
//write(arqprn,INTTOSTR(cldasevi_nfNFE.AsInteger)+'|'); //NOTA FISCAL
//nota_uso:=cldasevi_nfNFE.AsInteger;
//END;
//dmconexao.atualiza_agora;
//WRITE(ARQPRN,formata_data_utc_nfe(dmconexao.data_hora)+'|'); //DATA EMISSÃO
//WRITE(ARQPRN,formata_data_utc_nfe(dmconexao.data_hora)+'|'); //DATA SAIDA
//
//WRITE(ARQPRN,'1|');//SAIDA OU ENTRADA
//
//TIPO_OPERACAO:='3';
//if UPPERCASE(PAIS_DESTINATARIO)='BRA' then BEGIN
//if UPPERCASE(estado_emitente)=UPPERCASE(estado_destinatario) then TIPO_OPERACAO:='1'
//ELSE TIPO_OPERACAO:='2';
//END;
//write(arqprn,tipo_operacao+'|'); //tipo de operação indest
//WRITE(ARQPRN,ibge_EMItente+'|'); //IBGE EMITENTE
//WRITE(ARQPRN,FORMATO_NOTA+'|'); //1 - RETRATO / 2 - PAISAGEM
//
//WRITE(ARQPRN,'1|'); //NORMAL
//WRITE(ARQPRN,'|'); //DV OPCIONAL
//
//if UPPERCASE(COPY(VERSAO_SISTEMA,1,5))='TESTE' then
//WRITE(ARQPRN,'2|') //HOMOLOGACAO MUDAR PARA 1 QDO PRODUÇÃO
//ELSE
//WRITE(ARQPRN,'1|'); //HOMOLOGACAO MUDAR PARA 1 QDO PRODUÇÃO
//
//WRITE(ARQPRN,'2|');//FINALIDADE NFE
//WRITE(ARQPRN,'0|');//consumidor final
//WRITE(ARQPRN,'9|');//ind press
//
//WRITE(ARQPRN,'0|'); //IDENTIFICAR PROCESSO (NOSSO APLICATIVO)
//WRITE(ARQPRN,VERSAO_SISTEMA+'|'); //VERSAO DO SISTEMA
//WRITE(ARQPRN,'|'); //dhconst
//WRITELN(ARQPRN,'|'); //xjust
//
//cldasegen.CLOSE;
//CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.codempusu);
//CLDASEGEN.OPEN;
//
//
//write(arqprn,'C|');
//write(arqprn,CLDASEGEN.FIELDBYNAME('RAZAO_NFE').AsString+'|');//EMPRESA
//WRITE(arqprn,CLDASEGEN.FIELDBYNAME('NOMEMP').AsString+'|');//APELIDO
//WRITE(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString)+'|');//INSCRICAO ESTADUAL
//WRITE(arqprn,'|'); //Ie ST
//WRITE(arqprn,'|'); //im
//WRITE(arqprn,'|'); //CNAE
//WRITELN(arqprn,'3|'); //regime de imposto
//
//write(arqprn,'C02|');
//WRITELN(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString)+'|'); //CNPJ EMITENTE
//
//write(arqprn,'C05|');
//write(arqprn,CLDASEGEN.FIELDBYNAME('ENDERECO').AsString+'|');//ENDEREÇO EMITENTE
//write(arqprn,CLDASEGEN.FIELDBYNAME('NUMERO').AsString+'|'); //NUMERO EMITENTE
//write(arqprn,CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString+'|');//COMPLEMENTO
//write(arqprn,CLDASEGEN.FIELDBYNAME('BAIRRO').AsString+'|');//BAIRRO
//WRITE(ARQPRN,ibge_EMItente+'|');//IBGE
//write(arqprn,CLDASEGEN.FIELDBYNAME('CIDADE').AsString+'|');//CIDADE
//write(arqprn,CLDASEGEN.FIELDBYNAME('ESTADO').AsString+'|');//ESTADO
//write(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString)+'|');//CEP
//write(arqprn,'1058|');// CODIGO PAIS
//write(arqprn,'BRASIL|'); //PAIS
//writeLN(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString)+'|');//TELEFONE
//
//
//CLDASEGEN.CLOSE;
//CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nfCLIENTE_ID.AsInteger);
//CLDASEGEN.OPEN;
//estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
//
//write(arqprn,'E|');
//write(arqprn,CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString+'|');//RAZAO SOCIAL DESTINATARIO
//if (length(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))>0) and (UpperCase(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))<>'ISENTO') then
//write(arqprn,'1|')
//else
//write(arqprn,'2|');
//write(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString)+'|');//INSCR ESTADUAL
//write(arqprn,'|');//SUFRAMA
//write(arqprn,'|');//IM
//writeln(arqprn,cldasegen.FieldByName('email').AsString+'|');//email destinatario
//
//write(arqprn,'E02|');
//writeLN(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString)+'|');//cnpj;
//
//write(arqprn,'E05|');
//write(arqprn,CLDASEGEN.FIELDBYNAME('ENDERECO').AsString+'|');//LOGRADOURO
//write(arqprn,CLDASEGEN.FIELDBYNAME('NUMERO').AsString+'|');//NUMERO
//write(arqprn,CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString+'|');//COMPLEMENTO
//write(arqprn,CLDASEGEN.FIELDBYNAME('BAIRRO').AsString+'|');//BAIRRO
//WRITE(ARQPRN,CLDASEGEN.FIELDBYNAME('IBGE').AsString+'|');//IBGE
//write(arqprn,CLDASEGEN.FIELDBYNAME('CIDADE').AsString+'|');//CIDADE
//write(arqprn,CLDASEGEN.FIELDBYNAME('ESTADO').AsString+'|');//ESTADO
//write(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString)+'|');//CEP
//write(arqprn,'1058|');//CODIGO PAIS
//write(arqprn,'BRASIL|');//PAIS
//writeLN(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString)+'|');//TELEFONE
//
//CLDASENFITEM.Close;
//CLDASENFITEM.CommandText:='SELECT * FROM NF_ITENS WHERE CODEMP_ID='+INTTOSTR(dmconexao.codempusu)+' AND IDENTIFICACAO='+INTTOSTR(cldasevi_nfIDENTIFICACAO_ID.AsInteger);
//CLDASENFITEM.OPEN;
//
//CLDASENFITEM.FIRST;
//num_item:=0;
//
//TT_BC_ICMS:=0;
//TT_ICMS:=0;
//TT_BC_ST:=0;
//TT_ICMS_ST:=0;
//TT_PRODUTOS:=0;
//TT_FRETE:=0;
//TT_SEGURO:=0;
//TT_DESCONTO:=0;
//TT_II:=0;
//TT_IPI:=0;
//TT_PIS:=0;
//TT_COFINS:=0;
//TT_OUTRAS:=0;
//TT_NFE:=0;
//tt_fundo:=0;
//
//while NOT CLDASENFITEM.EOF do BEGIN
//INC(NUM_ITEM);
//write(arqprn,'H|');
//write(arqprn,inttostr(num_item)+'|');//NUMERO DO ITEM
//writeLN(arqprn,'|');//OPCIONAL
//
//write(arqprn,'I|');
//write(arqprn,CLDASENFITEMCOD_PRODUTO.AsString+'|');//CODIGO PRODUTO
//write(arqprn,'|');//EAN
//
//write(arqprn,CLDASENFITEMDESCR_PRODUTO.AsString+'|');//DESCRICAO
//
//write(arqprn,CLDASENFITEMCLASSIFICACAO.AsString+'|');//CLASSIFICACAO
//write(arqprn,'|');//EX_TIPI
//
//CFOP:=CLDASENFITEMCFOP.AsString;
//
//write(arqprn,CFOP+'|');//CFOP
//write(arqprn,CLDASENFITEMUNIDADE.asstring+'|');//UNIDADE
//write(arqprn,valor_americano2(CLDASENFITEMQUANTIDADE.AsInteger,4)+'|');//QUANTIDADE
//write(arqprn,valor_americano2(CLDASENFITEMVALOR_UNITARIO.AsFloat,4)+'|');//VALOR UNITARIO
//write(arqprn,valor_americano2(CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat,2)+'|');//TOTAL BRUTO
//write(arqprn,'|');//EAN
//write(arqprn,CLDASENFITEMUNIDADE.asstring+'|');//UNIDADE
//write(arqprn,valor_americano2(CLDASENFITEMQUANTIDADE.AsInteger,4)+'|');//QTD TRIBUTAVEL
//write(arqprn,valor_americano2(CLDASENFITEMVALOR_UNITARIO.AsFloat,4)+'|');// UNITARIO TRIBUTAVEL
//write(arqprn,'|');//VALOR FRETE
//write(arqprn,'|');//TOTAL DO SEGURO
//write(arqprn,'|');//DESCONTO
//write(arqprn,'|');//outro
//write(arqprn,'1|');//indicador de totalização sendo 1 compoe e 0 não compoe
//write(arqprn,'|');//xped
//write(arqprn,'|');//nitemped
//writeln(arqprn,'|');//FCI
//
//writeLN(arqprn,'M|');
//
//writeLN(arqprn,'N|');
//TOT_ST:=CLDASENFITEMICMS_SUBS_TRI.AsFloat;
//TOT_BCST:=CLDASENFITEMBCSUBSTRI.AsFloat;
//
//if CLDASENFITEMICMS_SUBS_TRI.AsFloat=0 then BEGIN
//write(arqprn,'N02|');
//if CLDASENFITEMIMPORTADO.AsInteger=-1 then begin
//write(arqprn,'1'+'|');//ESTRANGEIRA
//end
//else begin
//write(arqprn,'0'+'|');//NACIONAL
//end;
//write(arqprn,'00'+'|');//ICMS 00-TRIBURADA INTEGRALMENTE
//write(arqprn,'2'+'|');//PRELO TABELADO
//write(arqprn,valor_americano2(CLDASENFITEMBASEICMSOP.AsFloat,2)+'|');//BASE ICMS
//write(arqprn,valor_americano2(CLDASENFITEMALI_ICMS.AsInteger,2)+'|');//ALIQUOTA IMPOSTO
//writeLN(arqprn,valor_americano2(CLDASENFITEMICMS_OP_PROPRIA.AsFLOAT,2)+'|');//VALOR DO ICMS
//END
//ELSE BEGIN
//write(arqprn,'N03|');
//if CLDASENFITEMIMPORTADO.AsInteger=-1 then begin
//write(arqprn,'1'+'|');//ESTRANGEIRA
//end
//else begin
//write(arqprn,'0'+'|');//NACIONAL
//end;
//write(arqprn,'10'+'|');//10 - TRIB ICMS SUBST.
//write(arqprn,'2'+'|');//PREÇO TABELADO
//write(arqprn,valor_americano2(CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat,2)+'|');//BC ICMS
//write(arqprn,valor_americano2(CLDASENFITEMALI_ICMS.AsInteger,2)+'|');//ALIQUOTA IMPOSTOS
//write(arqprn,valor_americano2(CLDASENFITEMICMS_OP_PROPRIA.AsFLOAT,2)+'|');//ICMS
//write(arqprn,'4'+'|');//MARGEM VALOR AGREGADO
//write(arqprn,'|');//PERCENTUAL DA MARGEM
//write(arqprn,'|');//PERCENTUAL DA REDUCAO
//write(arqprn,valor_americano2(CLDASENFITEMBCSUBSTRI.AsFLOAT,2)+'|');//BC ICMS ST
//write(arqprn,valor_americano2(CLDASENFITEMALI_SUBS_TRI.AsFLOAT,2)+'|');//ALI ICMS ST
//writeLN(arqprn,valor_americano2(CLDASENFITEMICMS_SUBS_TRI.AsFLOAT,2)+'|');//ICMS ST
//END;
//
//tot_ipi:=0;
//if CLDASENFITEMIPI.ASFLOAT>0 then begin
//tot_ipi:=cldasenfitemipi.AsFloat;
//TT_IPI:=TT_IPI+CLDASENFITEMIPI.AsFloat;
//write(arqprn,'O|');
//write(arqprn,'|');//CLENQ
//write(arqprn,'|');//CNPJPROD
//write(arqprn,'|');//CSELO
//write(arqprn,'|');//QSELO
//writeLN(arqprn,'301|');//CENQ
//
//write(arqprn,'O07|');
//write(arqprn,'50|');////CODIGO 50 SAIDA TRIBUTADA
//writeLN(arqprn,valor_americano2(CLDASENFITEMIPI.AsFLOAT,2)+'|');//VALOR DO IPI
//
//write(arqprn,'O10|');
//write(arqprn,valor_americano2(CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat,2)+'|');//BC IPI
//writeLN(arqprn,valor_americano2(CLDASENFITEMALI_IPI.AsInteger,2)+'|');//ALI IPI
//end;
//writeLN(arqprn,'Q|');
//write(arqprn,'Q04|');//PIS
//writeLN(arqprn,'08'+'|');//--08-OPERACAO SEM INCIDENCIA DA CONTRIBUICAO
//writeLN(arqprn,'S|');
//write(arqprn,'S04|');//COFINS
//writeLN(arqprn,'08'+'|');//--08-OPERACAO SEM INCIDENCIA DA CONTRIBUICAO
//
//TT_BC_ICMS:=TT_BC_ICMS+CLDASENFITEMBASEICMSOP.AsFloat; //(CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat);
//TT_ICMS:=TT_ICMS+CLDASENFITEMICMS_OP_PROPRIA.AsFloat;
//TT_BC_ST:=TT_BC_ST+CLDASENFITEMBCSUBSTRI.AsFloat;
//TT_ICMS_ST:=TT_ICMS_ST+CLDASENFITEMICMS_SUBS_TRI.AsFloat;
//tt_fundo:=tt_fundo+CLDASENFITEMVLR_FP.AsFloat;
//TT_PRODUTOS:=TT_PRODUTOS+(CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat);
//CLDASENFITEM.NEXT;
//END;
//TT_NFE:=TT_NFE+TT_PRODUTOS+TT_IPI+TT_ICMS_ST+tt_fundo;
//writeLN(arqprn,'W|');
//write(arqprn,'W02|');//TOTALIZAÇÃO
//write(arqprn,valor_americano2(TT_BC_ICMS,2)+'|');//BC ICMS
//write(arqprn,valor_americano2(TT_ICMS,2)+'|');//TOTAL DO ICMS
//write(arqprn,valor_americano2(TT_BC_ST,2)+'|');//BASE ST
//write(arqprn,valor_americano2(TT_ICMS_ST+tt_fundo,2)+'|');//TOTAL ICMS ST
//write(arqprn,valor_americano2(TT_PRODUTOS,2)+'|');//TOTAL DOS PRODUTOS
//write(arqprn,valor_americano2(TT_FRETE,2)+'|');//TOTAL DO FRETE
//write(arqprn,valor_americano2(TT_SEGURO,2)+'|');////TOTAL DO SEGURO
//write(arqprn,valor_americano2(TT_DESCONTO,2)+'|');// TOTAL DO DESCONTO
//write(arqprn,valor_americano2(TT_II,2)+'|');// TOTAL DO ii
//write(arqprn,valor_americano2(TT_IPI,2)+'|');//TOTAL DO IPI
//write(arqprn,valor_americano2(TT_PIS,2)+'|');// TOTAL DO PIS
//write(arqprn,valor_americano2(TT_COFINS,2)+'|');// TOTAL DO COFINS
//write(arqprn,valor_americano2(TT_OUTRAS,2)+'|');//TOTAL OUTRAS DESPESAS
//writeLN(arqprn,valor_americano2(TT_NFE,2)+'|');//TOTAL DA nfe
//
//write(arqprn,'X|');
//writeLN(arqprn,cldasevi_nfFRETE_CONTA.ASSTRING+'|');//FRETE POR CONTA DO EMITENTE 0 / 1 DESTINATARIO
//if cldasevi_nfTRANSP_ID.AsInteger>0 then BEGIN
//cldasegen.close;
//cldasegen.CommandText:='SELECT * FROM TRANSPORTADORA WHERE TRANSP_ID='+INTTOSTR(cldasevi_nfTRANSP_ID.AsInteger);
//CLDASEGEN.OPEN;
//write(arqprn,'X03|');
//write(arqprn,CLDASEGEN.FIELDBYNAME('NOME').AsString+'|');//RAZAO SOCIAL TRANSPORTADORA
//write(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString)+'|');//INSCR ESTADUAL
//write(arqprn,CLDASEGEN.FIELDBYNAME('ENDERECO').AsString+'|');//LOGRADOURO
//write(arqprn,CLDASEGEN.FIELDBYNAME('ESTADO').AsString+'|');//ESTADO
//writeLN(arqprn,CLDASEGEN.FIELDBYNAME('CIDADE').AsString+'|');//CIDADE
//write(arqprn,'X04|');
//writeLN(arqprn,limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString)+'|');//cnpj;
//CLDASEGEN.CLOSE;
//END
//ELSE BEGIN
//write(arqprn,'X03|');
//write(arqprn,'PROPRIO'+'|');//RAZAO SOCIAL TRANSPORTADORA
//write(arqprn,'|');//INSCR ESTADUAL
//write(arqprn,'|');//LOGRADOURO
//write(arqprn,'|');//ESTADO
//writeLN(arqprn,'|');//CIDADE
//write(arqprn,'X04|');
//writeLN(arqprn,'|');//cnpj;
//END;
//if cldasevi_nfvolumes.IsNull then volumes:='0'
//else volumes:=cldasevi_nfVOLUMES.AsString;
//write(arqprn,'X26|');
//write(arqprn,cldasevi_nfVOLUMES.AsString+'|');//VOLUMES
////                  write(arqprn,'CAIXA(S)|');//ESPECIE
////                  if cldasevi_nfCODEMP_ID.AsInteger=16 then begin
////                     write(arqprn,'UNIDADE(S)|');//ESPECIE
////                  end
////                  else begin
//write(arqprn,'CAIXA(S)|');//ESPECIE
////                  end;
//write(arqprn,'|');//MARCA
//write(arqprn,'|');//NUMERACAO
//if cldasevi_nfpeso.IsNull then peso:='0.000'
//else PESO:=cldasevi_nfPESO.AsString;
//for I := 1 to LENGTH(PESO) do BEGIN
//if PESO[I]=',' then PESO[I]:='.';
//END;
//if pos('.',peso)=0 then begin
//peso:=peso+'.000';
//end
//else begin
//PEDACO:=COPY(PESO,POS('.',PESO)+1);
//if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
//if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
//end;
//
//write(arqprn,PESO+'|');//PESO LIQUIDO
//writeLN(arqprn,PESO+'|');//BRUTO
//
//if cldasevi_nfNFE.IsNull then BEGIN
//cldasegen.close;
//cldasegen.commandtext:='SELECT * FROM NF WHERE CODEMP_ID='+INTTOSTR(cldasevi_nfCODEMP_ID.AsInteger)+' AND IDENTIFICACAO_ID='+INTTOSTR(cldasevi_nfIDENTIFICACAO_ID.AsInteger);
//CLDASEGEN.OPEN;
//CLDASEGEN.EDIT;
//CLDASEGEN.FieldByName('NFE').AsInteger:=ultima_nota;
//cldasegen.fieldbyname('data_impressao').asdatetime:=dmconexao.data;
//cldasegen.FieldByName('hora_impressao').AsDateTime:=dmconexao.hora;
//CLDASEGEN.POST;
//CLDASEGEN.APPLYUPDATES(0);
//CLDASEGEN.CLOSE;
//END;
//dmconexao.envia_nota_rearec(cldaseori,cldasedes,cldasevi_nfCODEMP_ID.asinteger,cldasevi_nfIDENTIFICACAO_ID.AsInteger);
{$ENDREGION}
//   end;

end;

function TfrmNotas.monta_nota_armazem: boolean;
TYPE TONUS = RECORD
  NUMERO_ONU:INTEGER;
  NUMERO_RISCO:INTEGER;
  CLASSE:STRING;
  DESCRICAO_CLASSE:STRING;
  NOME_EMBARQUE:STRING;
END;
var
  arqprn:textfile;
  sequencial:integer;
  DOCUMENTO:STRING;
  NOME_SACADO:STRING;
  LOGRADOURO:STRING;
  BAIRRO,CIDADE:STRING;
  digito:string;
  ultima_nota:integer;
  versao:string;
  VERSAO_SISTEMA:STRING;
  NUM_ITEM:INTEGER;
  estado_emitente:string;
  estado_destinatario:string;
  ibge_EMItente:string;
  ibge_destinatario:string;
  PARCELAS:STRING;
  PEDIDOS:STRING;
  POSICAO:INTEGER;
  I:INTEGER;
  classif_id:integer;
  CFOP:STRING;
  UN_PROD:STRING;
  TT_BC_ICMS,TT_ICMS,TT_BC_ST,TT_ICMS_ST,TT_PRODUTOS,TT_FRETE,TT_SEGURO,TT_DESCONTO,TT_II,TT_IPI,TT_PIS,TT_COFINS,TT_OUTRAS,TT_NFE:DOUBLE;
  QTD_NOTAS:INTEGER;
  diretorio:string;
  peso_liquido:string;
  peso_bruto:string;
  FAZ: Boolean;
  NOTA_FISCAL: string;
  NOME_EMPRESA:STRING;
  PEDACO: STRING;
  DESC_CLASSIFICACAO:STRING;
  TOT_IPI:DOUBLE;
  TOT_ST:DOUBLE;
  obs_nota,obs_nota2:string;
  NUM_IDENTIFICACAO:INTEGER;
  TOT_BCST: DOUBLE;
  volumes: string;
  RESULTADO: STRING;
  FORMATO_NOTA:STRING;
  pais: string;
  origem: char;
  item_sem_valor:boolean;
  valor_zero:boolean;
  TEM: Boolean;
  descr_onu: string;
  espaco: string;
  tem_bloqueado:boolean;
  item_bloqueado:boolean;
  cfop_sem_conferencia:boolean;
  fechado: Boolean;
  nnotas: string;
  barra: string;
  PAIS_DESTINATARIO: string;
  TIPO_OPERACAO: STRING;
  finNFe: string;
  tem_emb_antiga:boolean;
  prods_emb_antiga:string;
  tt_fundo: double;
  nome_arquivo:string;
  nota_uso:integer;
  email_cliente: string;
  FISICA: Boolean;
  origem_prod:TpcnOrigemMercadoria;
  item_recno: Integer;

begin
  inherited;

  cldasegen.Close;
  cldasegen.commandtext:='SELECT * FROM PARAMETROS';
  CLDASEGEN.OPEN;
  VERSAO:=CLDASEGEN.FIELDBYNAME('LAYOUT_NFE').Asstring;
  VERSAO_SISTEMA:=CLDASEGEN.FIELDBYNAME('VERSAO_SISTEMA').Asstring;
  CLDASEGEN.CLOSE;
  CLDASEVI_NF_gold.Close;
  CLDASEVI_NF_gold.CommandText:='SELECT * FROM VI_NF9EC WHERE NFE='+INTTOSTR(cldaseemissorNFE.AsInteger);
  CLDASEVI_NF_gold.Open;
  cldasevi_nf_gold.first;

  CLDASEgen.CLOSE;
  CLDASEgen.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+QUOTEDSTR(INTTOSTR(dmconexao.empresa_id));
  CLDASEgen.OPEN;
  estado_emitente:=cldasegen.FieldByName('ESTADO').AsString;
  ibge_EMITEnte:=cldasegen.FieldByName('IBGE').AsString;
  ultima_nota:=cldasegen.fieldbyname('ULTIMA_NOTA').AsInteger;
  NOME_EMPRESA:=cldasegen.fieldbyname('NOMEMP').AsSTRING;
  FORMATO_NOTA:=CLDASEGEN.FIELDBYNAME('FORMATO_NOTA').AsString;
  cldasegen.close;
  dmconexao.atualiza_agora;

  CLDASENF_gold.Close;
  CLDASENF_gold.CommandText:='SELECT * FROM NF WHERE IDENTIFICACAO_ID='+INTTOSTR(cldasevi_nf_goldIDENTIFICACAO_ID.AsInteger);
  CLDASENF_gold.OPEN;

  CLDASENFITEM_gold.Close;
  CLDASENFITEM_gold.CommandText:='SELECT * FROM NF_ITENS WHERE IDENTIFICACAO='+INTTOSTR(cldasevi_nf_goldIDENTIFICACAO_ID.AsInteger);
  CLDASENFITEM_gold.OPEN;

  CLDASENFITEM_gold.FIRST;

  dmconexao.ACBrNFe1.NotasFiscais.Clear;
  dmconexao.ACBrNFe1.NotasFiscais.Add;

  CLDASEGEN.CLOSE;
  CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nf_goldCLIENTE_ID.AsInteger);
  CLDASEGEN.OPEN;
  estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
  PAIS_DESTINATARIO:=cldasegen.FieldByName('PAIS').AsString;
  FISICA:=FALSE;
  cldasegen.close;
  cldasegen.CommandText:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(estado_emitente);
  CLDASEGEN.OPEN;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF:=strtoint(cldasegen.FieldByName('codigo').AsString);

  cldasegen.close;
  cldasegen.commandtext:='SELECT * FROM TIPO_VENDA WHERE TPVENDA_ID='+INTTOSTR(cldasevi_nf_goldTPVENDA_ID.ASINTEGER);
  CLDASEGEN.Open;
  if cldasenf_goldQUEBRA.AsInteger=-1 then
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp:='OUTRAS SAIDAS'
  else
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp:=CLDASEGEN.FIELDBYNAME('DESCRICAO_FISCAL').AsString;
  if cldasevi_nf_goldFORMA_PAGAMENTO.IsNull then BEGIN
    if TRIM(PARCELAS)='0' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipVista
    ELSE  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo
  END
  ELSE BEGIN
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipOutras;
  END;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo:=55;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie:=0;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF:=cldasevi_nf_goldNFE.AsInteger;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi:=cldasevi_nf_goldDATA_EMISSAO.AsDateTime;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt:=cldasevi_nf_goldDATA_EMISSAO.AsDateTime;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnSaida;

  if UPPERCASE(PAIS_DESTINATARIO)='BRA' then BEGIN
    if UPPERCASE(estado_emitente)=UPPERCASE(estado_destinatario) then begin
      TIPO_OPERACAO:='1';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doInterna;
    end
    ELSE begin
      TIPO_OPERACAO:='2';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doInterestadual;
    end
  END
  else begin
    TIPO_OPERACAO:='3';
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doExterior;
  end;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG:=strtoint(ibge_EMItente);

  if formato_nota='1' then
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpImp:=tiRetrato
  else
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpimp:=tiPaisagem;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis:=teNormal;

  if UPPERCASE(dmconexao.ambiente)='PRODUCAO' then BEGIN
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taProducao;
  END
  else begin
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taHomologacao;
  end;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnNormal;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfNao;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPres:=pcNao;//ou pcoutros

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.procEmi:=peAplicativoContribuinte;

//  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.verProc:=

//
//
// - IDENTIFICACAO DO EMITENTE DA NOTA FISCAL
//
//

  cldasegen.CLOSE;
  CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
  CLDASEGEN.OPEN;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_NFE').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant:=CLDASEGEN.FIELDBYNAME('NOMEMP').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE:=CLDASEGEN.FIELDBYNAME('IE').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT:=crtSimplesNacional;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF:=CLDASEGEN.FIELDBYNAME('CNPJ').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun:=strtoint(ibge_EMItente);
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais:=1058;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais:='BRASIL';
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);

//
//
// - IDENTIFICACAO DO DESTINATARIO DA NOTA FISCAL
//
//

  CLDASEGEN.CLOSE;
  CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nf_goldCLIENTE_ID.AsInteger);
  CLDASEGEN.OPEN;
  estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
  email_cliente:=cldasegen.fieldbyname('email').AsString;
  posicao:=pos(';',email_cliente);
  if POSICAO>0 then EMAIL_CLIENTE:=COPY(EMAIL_CLIENTE,1,POSICAO-1);
  if cldasegen.FieldByName('PAIS').AsString='BRA' then BEGIN
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
    if (length(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))>0) and (UpperCase(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))<>'ISENTO') then BEGIN
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inContribuinte
    END
    else BEGIN
      if FISICA=TRUE then BEGIN
        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
      END
      ELSE BEGIN
        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inIsento;
      END;
    END;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=strtoint(CLDASEGEN.FIELDBYNAME('IBGE').AsString);
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=1058;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:='BRASIL';
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);
  END
  else begin
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:='EXTERIOR';
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=9999999;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:='EXTERIOR';
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:='EX';
    pais:=cldasegen.FieldByName('PAIS').AsString;
    CLDASEGEN.CLOSE;
    CLDASEGEN.CommandText:='SELECT * FROM PAISES WHERE SIGLA='+QUOTEDSTR(PAIS);
    CLDASEGEN.OPEN;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').ASSTRING);
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:=CLDASEGEN.FIELDBYNAME('PAIS').ASSTRING;
    CLDASEGEN.CLOSE;
    CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_nf_goldCLIENTE_ID.AsInteger);
    CLDASEGEN.OPEN;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=CLDASEGEN.FIELDBYNAME('TELEFONE').AsString;
  end;

//
//
// - FORMA DE PAGAMENTO
//
//

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
//  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=cldasenf_goldTOTAL_NOTA.ASFLOAT;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpSemPagamento;
//  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;


//
//
// - PRODUTOS DA NOTA FISCAL
//
//

//  CLDASENFITEM_gold.Close;
//  CLDASENFITEM_gold.CommandText:='SELECT * FROM NF_ITENS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO='+INTTOSTR(cldasevi_nf_goldIDENTIFICACAO_ID.AsInteger);
//  CLDASENFITEM_gold.OPEN;
  CLDASENFITEM_gold.FIRST;
  num_item:=0;
  TT_BC_ICMS:=0;
  TT_ICMS:=0;
  TT_BC_ST:=0;
  TT_ICMS_ST:=0;
  TT_PRODUTOS:=0;
  TT_FRETE:=0;
  TT_SEGURO:=0;
  TT_DESCONTO:=0;
  TT_II:=0;
  TT_IPI:=0;
  TT_PIS:=0;
  TT_COFINS:=0;
  TT_OUTRAS:=0;
  TT_NFE:=0;
  tt_fundo:=0;
  tem_emb_antiga:=false;
  prods_emb_antiga:='O(S) PRODUTO(S)';
  espaco:='';
  while NOT CLDASENFITEM_gold.EOF do BEGIN
    INC(NUM_ITEM);
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add;
    item_recno:=dmconexao.acbrnfe1.NotasFiscais.Items[0].NFe.det.Count;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.nItem:=num_item;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cProd:=CLDASENFITEM_goldCOD_PRODUTO.AsString;
    cldasegen.Close;
    cldasegen.commandtext:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(CLDASENFITEM_goldCOD_PRODUTO.AsString)+' and CLIENTE_ID='+INTTOSTR(cldasenf_goldCLIENTE_ID.AsInteger);
    CLDASEGEN.OPEN;
    if CLDASEGEN.FieldByName('ORIGEM').AsString='0'then ORIGEM:='0';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='1'then ORIGEM:='1';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='2'then ORIGEM:='2';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='3'then ORIGEM:='3';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='4'then ORIGEM:='4';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='5'then ORIGEM:='5';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='6'then ORIGEM:='6';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='7'then ORIGEM:='7';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='8'then ORIGEM:='8';
    if CLDASEGEN.FieldByName('ORIGEM').AsString='9'then ORIGEM:='9';


    if NOT (cldasegen.FieldByName('GETIN').IsNull) THEN BEGIN
      IF(LENGTH(TRIM(CLDASEGEN.FieldByName('GETIN').AsString))>0) then BEGIN
        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cEAN:=CLDASEGEN.FIELDBYNAME('GETIN').AsString;
      END;
    END;

    UN_PROD:=CLDASEGEN.FIELDBYNAME('UNIDADE').AsString;
    if LENGTH(TRIM(UN_PROD))=0 then UN_PROD:='UN';
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.xProd:=cldaseGEN.FIELDBYNAME('DESCRICAO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.NCM:=cldasegen.FieldByName('NCM').AsString;


    if cldasenf_goldQUEBRA.AsInteger=-1 then BEGIN
      if TRIM(ESTADO_EMITENTE)=TRIM(ESTADO_DESTINATARIO) then CFOP:='5949'
      ELSE CFOP:='6949'
    END
    ELSE BEGIN
       if cldasenf_goldTPVENDA_ID.AsInteger=1 then BEGIN
        if TRIM(ESTADO_EMITENTE)=TRIM(ESTADO_DESTINATARIO) then CFOP:='5906'
        ELSE CFOP:='6906'
       END
       ELSE BEGIN
        if TRIM(ESTADO_EMITENTE)=TRIM(ESTADO_DESTINATARIO) then CFOP:='5905'
        ELSE CFOP:='6905'
       END;
    END;

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.CFOP:=CFOP;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uCom:=UN_PROD;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qCom:=CLDASENFITEM_goldQUANTIDADE.AsInteger;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnCom:=CLDASENFITEM_goldVALOR_UNITARIO.AsFloat;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vProd:=CLDASENFITEM_goldQUANTIDADE.AsInteger*CLDASENFITEM_goldVALOR_UNITARIO.AsFloat;

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=UN_PROD;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=CLDASENFITEM_goldQUANTIDADE.AsInteger;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=CLDASENFITEM_goldVALOR_UNITARIO.AsFloat;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.IndTot:=itSomaTotalNFe;


//bloco novo por causa da CST


    case origem of
      '0':origem_prod:=oeNacional;
      '1':origem_prod:=oeEstrangeiraImportacaoDireta;
      '2':origem_prod:=oeEstrangeiraAdquiridaBrasil;
      '3':origem_prod:=oeNacionalConteudoImportacaoSuperior40;
      '4':origem_prod:=oeNacionalProcessosBasicos;
      '5':origem_prod:=oeNacionalConteudoImportacaoInferiorIgual40;
      '8':origem_prod:=oeNacionalConteudoImportacaoSuperior70;
    end;

//
// N10d
//


    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CSOSN:=csosn400;
    tot_ipi:=0;
    tot_ipi:=cldasenfitem_goldipi.AsFloat;
    TT_IPI:=TT_IPI+CLDASENFITEM_goldIPI.AsFloat;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='999';
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi53;

// novo bloco de CST para Pis e Cofins

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=pis08;

//CONFIS

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof08;

    TT_PIS:=TT_PIS+CLDASENFITEM_goldPIS.AsFloat;
    TT_COFINS:=TT_COFINS+CLDASENFITEM_goldCOFINS.AsFloat;

    CLDASENFITEM_GOLD.NEXT;
  END;


  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC:=cldasenf_goldBASE_ICMS.AsFloat;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS:=cldasenf_goldICMS.AsFloat;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST:=cldasenf_goldBASE_ST.AsFloat;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST:=cldasenf_goldST.asfloat;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFCPST:=0;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd:=cldasenf_goldVALOR_PRODUTOS.AsFloat;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete:=cldasenf_goldVALOR_FRETE.AsFloat;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg:=cldasenf_goldVALOR_SEGURO.AsFloat;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc:=cldasenf_goldTOTAL_DESCONTO.AsFloat;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII:=0;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI:=cldasenf_goldVALOR_IPI.AsFloat;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS:=tt_pis;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS:=TT_COFINS;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro:=0;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF:=cldasenf_goldTOTAL_NOTA.AsFloat;

  if cldasevi_nf_goldTRANSP_ID.AsInteger>0 then BEGIN
    cldasegen.close;
    cldasegen.CommandText:='SELECT * FROM TRANSPORTADORA WHERE TRANSP_ID='+INTTOSTR(cldasevi_nf_goldTRANSP_ID.AsInteger);
    CLDASEGEN.OPEN;

    if cldasenfFRETE_CONTA.AsString='0' then
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaEmitente;
    if cldasenfFRETE_CONTA.AsString='1' then
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaDestinatario;

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);

    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:=CLDASEGEN.FIELDBYNAME('NOME').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
    CLDASEGEN.CLOSE;
  END
  ELSE BEGIN
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:='PROPRIO';
  END;
  if cldasevi_nf_goldvolumes.IsNull then volumes:='0'
  else volumes:=cldasevi_nf_goldVOLUMES.AsString;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Add;

  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol:=strtoint(volumes);
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp:='CAIXA(S)';
  if cldasenf_goldPESO_LIQUITO.IsNull then peso_liquido:='0.000'
  else BEGIN
    PESO_liquido:=cldasenf_goldPESO_LIQUITO.AsString;
    posicao:=pos('.',peso_liquido);
    while posicao<>0 do begin
      peso_liquido:=copy(peso_liquido,1,posicao-1)+copy(peso_liquido,posicao+1);
      posicao:=pos('.',peso_liquido);
    end;
    for I := 1 to LENGTH(PESO_liquido) do BEGIN
      if PESO_liquido[I]=',' then PESO_liquido[I]:='.';
    END;
    if pos('.',peso_liquido)=0 then begin
      peso_liquido:=peso_liquido+'.000';
    end
    else begin
      PEDACO:=COPY(PESO_liquido,POS('.',PESO_liquido)+1);
      if LENGTH(PEDACO)=1 then PESO_liquido:=PESO_liquido+'00';
      if LENGTH(PEDACO)=2 then PESO_liquido:=PESO_liquido+'0';
    end;
  END;

  for I := 0 to LENGTH(PESO_liquido)-1 do BEGIN
    if PESO_liquido[I]='.' then PESO_liquido[I]:=',';
  END;

  if cldasenf_goldPESO_LIQUITO.IsNull then peso_bruto:='0.000'
  else BEGIN
    PESO_bruto:=cldasenf_goldPESO_LIQUITO.AsString;
    posicao:=pos('.',peso_bruto);
    while posicao<>0 do begin
      peso_bruto:=copy(peso_bruto,1,posicao-1)+copy(peso_bruto,posicao+1);
      posicao:=pos('.',peso_bruto);
    end;
    for I := 1 to LENGTH(PESO_bruto) do BEGIN
      if PESO_bruto[I]=',' then PESO_bruto[I]:='.';
    END;
    if pos('.',peso_bruto)=0 then begin
      peso_bruto:=peso_bruto+'.000';
    end
    else begin
      PEDACO:=COPY(PESO_bruto,POS('.',PESO_bruto)+1);
      if LENGTH(PEDACO)=1 then PESO_bruto:=PESO_bruto+'00';
      if LENGTH(PEDACO)=2 then PESO_bruto:=PESO_bruto+'0';
    end;
  END;

  for I := 0 to LENGTH(PESO_bruto)-1 do BEGIN
    if PESO_bruto[I]='.' then PESO_bruto[I]:=',';
  END;


  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL:=strtofloat(peso_liquido);
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB:=strtofloat(peso_bruto);

  if length(trim(cldasenf_goldOBSERVACAO.AsString))>0 then begin
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco:=cldasenf_goldOBSERVACAO.AsString;
  end;

  if not CLDASEEMISSORCHAVE_NFE.isnull then begin
    dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe:=CLDASEEMISSORCHAVE_NFE.AsString;
  end;
  dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
  cldaseemissor.Edit;
  CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  cldaseemissor.Post;
  cldaseemissor.ApplyUpdates(0);
  monta_nota_armazem:=true;
end;

function TfrmNotas.monta_nota_direta: boolean;
TYPE TONUS = RECORD
  NUMERO_ONU:INTEGER;
  NUMERO_RISCO:INTEGER;
  CLASSE:STRING;
  DESCRICAO_CLASSE:STRING;
  NOME_EMBARQUE:STRING;
END;
var
  arqprn:textfile;
  sequencial:integer;
  DOCUMENTO:STRING;
  NOME_SACADO:STRING;
  LOGRADOURO:STRING;
  BAIRRO,CIDADE:STRING;
  digito:string;
  ultima_nota:integer;
  versao:string;
  VERSAO_SISTEMA:STRING;
  NUM_ITEM:INTEGER;
  estado_emitente:string;
  estado_destinatario:string;
  ibge_EMItente:string;
  ibge_destinatario:string;
  PARCELAS:STRING;
  PEDIDOS:STRING;
  POSICAO:INTEGER;
  I:INTEGER;
  classif_id:integer;
  CFOP:STRING;
  UN_PROD:STRING;
  TT_BC_ICMS,TT_ICMS,TT_BC_ST,TT_ICMS_ST,TT_PRODUTOS,TT_FRETE,TT_SEGURO,TT_DESCONTO,TT_II,TT_IPI,TT_PIS,TT_COFINS,TT_OUTRAS,TT_NFE:DOUBLE;
  QTD_NOTAS:INTEGER;
  diretorio:string;
  peso_liquido:string;
  peso_bruto:string;
  FAZ: Boolean;
  NOTA_FISCAL: string;
  NOME_EMPRESA:STRING;
  PEDACO: STRING;
  DESC_CLASSIFICACAO:STRING;
  TOT_IPI:DOUBLE;
  TOT_ST:DOUBLE;
  obs_nota,obs_nota2:string;
  NUM_IDENTIFICACAO:INTEGER;
  TOT_BCST: DOUBLE;
  volumes: string;
  RESULTADO: STRING;
  FORMATO_NOTA:STRING;
  pais: string;
  origem: char;
  item_sem_valor:boolean;
  valor_zero:boolean;
  TEM: Boolean;
  descr_onu: string;
  espaco: string;
  tem_bloqueado:boolean;
  item_bloqueado:boolean;
  cfop_sem_conferencia:boolean;
  fechado: Boolean;
  nnotas: string;
  barra: string;
  PAIS_DESTINATARIO: string;
  TIPO_OPERACAO: STRING;
  finNFe: string;
  tem_emb_antiga:boolean;
  prods_emb_antiga:string;
  tt_fundo: double;
  nome_arquivo:string;
  nota_uso:integer;
  email_cliente: string;
  FISICA: Boolean;
  origem_prod:TpcnOrigemMercadoria;
  item_recno: Integer;
  NATUREZA_OPERACAO: string;
  vlr_aliquota: double;
  icms_simples: double;
  icms_acumulado: double;
  class_id: Integer;

begin
   inherited;

   cldasegen.Close;
   cldasegen.commandtext:='SELECT * FROM PARAMETROS';
   CLDASEGEN.OPEN;
   VERSAO:=CLDASEGEN.FIELDBYNAME('LAYOUT_NFE').Asstring;
   VERSAO_SISTEMA:=CLDASEGEN.FIELDBYNAME('VERSAO_SISTEMA').Asstring;
   CLDASEGEN.CLOSE;
   CLDASEVI_NF_BREST.Close;
   CLDASEVI_NF_BREST.CommandText:='SELECT * FROM VI_NF9EC WHERE NFE='+INTTOSTR(cldaseemissorNFE.AsInteger);
   CLDASEVI_NF_BREST.Open;
   cldasevi_NF_BREST.first;

   CLDASEgen.CLOSE;
   CLDASEgen.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+QUOTEDSTR(INTTOSTR(dmconexao.empresa_id));
   CLDASEgen.OPEN;
   estado_emitente:=cldasegen.FieldByName('ESTADO').AsString;
   ibge_EMITEnte:=cldasegen.FieldByName('IBGE').AsString;
   ultima_nota:=cldasegen.fieldbyname('ULTIMA_NOTA').AsInteger;
   NOME_EMPRESA:=cldasegen.fieldbyname('NOMEMP').AsSTRING;
   FORMATO_NOTA:=CLDASEGEN.FIELDBYNAME('FORMATO_NOTA').AsString;
   cldasegen.close;
   dmconexao.atualiza_agora;

   CLDASENF_BREST.Close;
   CLDASENF_BREST.CommandText:='SELECT * FROM NF WHERE CODEMP_ID='+INTTOSTR(DMCONEXAO.empresa_id)+' AND IDENTIFICACAO_ID='+INTTOSTR(cldasevi_NF_BRESTIDENTIFICACAO_ID.AsInteger);
   CLDASENF_BREST.OPEN;

   CLDASENFITEM_BREST.Close;
   CLDASENFITEM_BREST.CommandText:='SELECT * FROM NF_ITENS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO='+INTTOSTR(cldasevi_NF_BRESTIDENTIFICACAO_ID.AsInteger);
   CLDASENFITEM_BREST.OPEN;

   CLDASENFITEM_BREST.FIRST;

   dmconexao.ACBrNFe1.NotasFiscais.Clear;
   dmconexao.ACBrNFe1.NotasFiscais.Add;

   CLDASEGEN.CLOSE;
   CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_NF_BRESTCLIENTE_ID.AsInteger);
   CLDASEGEN.OPEN;
   estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
   PAIS_DESTINATARIO:=cldasegen.FieldByName('PAIS').AsString;
   FISICA:=FALSE;
   if LENGTH(TRIM(CLDASEGEN.FieldByName('CPF').AsString))>0 then FISICA:=TRUE;

   cldasegen.close;
   cldasegen.CommandText:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(estado_emitente);
   CLDASEGEN.OPEN;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF:=strtoint(cldasegen.FieldByName('codigo').AsString);

   cldasegen.close;
   cldasegen.commandtext:='SELECT * FROM TIPO_VENDA WHERE TPVENDA_ID='+INTTOSTR(cldasevi_NF_BRESTTPVENDA_ID.ASINTEGER);
   CLDASEGEN.Open;
   NATUREZA_OPERACAO:=CLDASEGEN.FIELDBYNAME('DESCRICAO_FISCAL').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp:=CLDASEGEN.FIELDBYNAME('DESCRICAO_FISCAL').AsString;
//   if cldasevi_NF_BRESTFORMA_PAGAMENTO.IsNull then BEGIN
//      if TRIM(PARCELAS)='0' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipVista
//      ELSE  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo
//   END
//   ELSE BEGIN
//      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipOutras;
//   END;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo:=55;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie:=0;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF:=cldasevi_NF_BRESTNFE.AsInteger;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi:=cldasevi_NF_BRESTDATA_EMISSAO.AsDateTime;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt:=cldasevi_NF_BRESTDATA_EMISSAO.AsDateTime;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnSaida;

   if UPPERCASE(PAIS_DESTINATARIO)='BRA' then BEGIN
      if UPPERCASE(estado_emitente)=UPPERCASE(estado_destinatario) then begin
         TIPO_OPERACAO:='1';
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doInterna;
      end
      ELSE begin
         TIPO_OPERACAO:='2';
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doInterestadual;
      end
   END
   else begin
      TIPO_OPERACAO:='3';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doExterior;
   end;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG:=strtoint(ibge_EMItente);

   if formato_nota='1' then  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpImp:=tiRetrato
   else   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpimp:=tiPaisagem;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis:=teNormal;

   if UPPERCASE(dmconexao.ambiente)='PRODUCAO' then BEGIN
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taProducao;
   END
   else begin
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taHomologacao;
   end;

   FINNFE:='1';

   if (POS('DEVOL',NATUREZA_OPERACAO)>0) OR (POS('RETORNO',NATUREZA_OPERACAO)>0) then begin
      FINNFE:='2';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnDevolucao;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Add;
      if length(trim(CLDASEVI_NF_BRESTCHAVE_DEVOLUCAO.AsString))>0 then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNFe:=cldasevi_nf_brestCHAVE_DEVOLUCAO.AsString;
      END
      else begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].RefNF.cUF:=strtoint(cldasevi_nf_brestIBGE_DEVOLUCAO.AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].RefNF.AAMM:=formatdatetime('yymm',cldasevi_nf_brestEMISSAO_DEVOLUCAO.asdatetime);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.CNPJ:=dmconexao.limpa_cnpj(cldasevi_nf_brestCNPJ_DEVOLUCAO.AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.modelo:=strtoint(cldasevi_nf_brestMODELO_DEVOLUCAO.AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.serie:=strtoint(cldasevi_nf_brestSERIE_DEVOLUCAO.AsString);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNF.nNF:=cldasevi_nf_brestNUMERO_DEVOLUCAO.Asinteger;
      end;
   end
   ELSE begin
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnNormal;
   end;

   if FISICA then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfConsumidorFinal
   ELSE dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfNao;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPres:=pcNao;//ou pcoutros

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.procEmi:=peAplicativoContribuinte;

//
//
// - IDENTIFICACAO DO EMITENTE DA NOTA FISCAL
//
//

   cldasegen.CLOSE;
   CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASEGEN.OPEN;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_NFE').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant:=CLDASEGEN.FIELDBYNAME('NOMEMP').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE:=CLDASEGEN.FIELDBYNAME('IE').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT:=crtSimplesNacional;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF:=CLDASEGEN.FIELDBYNAME('CNPJ').AsString;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun:=strtoint(ibge_EMItente);
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais:=1058;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais:='BRASIL';
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);

//
//
// - IDENTIFICACAO DO DESTINATARIO DA NOTA FISCAL
//
//

   CLDASEGEN.CLOSE;
   CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_NF_BRESTCLIENTE_ID.AsInteger);
   CLDASEGEN.OPEN;
   estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
   email_cliente:=cldasegen.fieldbyname('email').AsString;
   posicao:=pos(';',email_cliente);
   if POSICAO>0 then EMAIL_CLIENTE:=COPY(EMAIL_CLIENTE,1,POSICAO-1);
   if cldasegen.FieldByName('PAIS').AsString='BRA' then BEGIN
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
      if (length(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))>0) and (UpperCase(trim(CLDASEGEN.FIELDBYNAME('IE').AsString))<>'ISENTO') then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inContribuinte
      END
      else BEGIN
         if FISICA=TRUE then BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
         END
         ELSE BEGIN
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inIsento;
         END;
      END;
      if fisica=false then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
      end;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);

      if fisica then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('cpf').AsString);
      end
      else begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);
      end;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=strtoint(CLDASEGEN.FIELDBYNAME('IBGE').AsString);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=1058;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:='BRASIL';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);
   END
   else begin
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:='EXTERIOR';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=9999999;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:='EXTERIOR';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:='EX';
      pais:=cldasegen.FieldByName('PAIS').AsString;
      CLDASEGEN.CLOSE;
      CLDASEGEN.CommandText:='SELECT * FROM PAISES WHERE SIGLA='+QUOTEDSTR(PAIS);
      CLDASEGEN.OPEN;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').ASSTRING);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:=CLDASEGEN.FIELDBYNAME('PAIS').ASSTRING;
      CLDASEGEN.CLOSE;
      CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasevi_NF_BRESTCLIENTE_ID.AsInteger);
      CLDASEGEN.OPEN;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=CLDASEGEN.FIELDBYNAME('TELEFONE').AsString;
   end;

//
//
// - FORMA DE PAGAMENTO
//
//


      if (finNFe='1') and ((cldasenf_brestTPVENDA_ID.AsInteger=1) or (cldasenf_brestTPVENDA_ID.AsInteger=23) or (cldasenf_brestTPVENDA_ID.AsInteger=40)) then begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=cldasenf_brestTOTAL_NOTA.ASFLOAT;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpCheque;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat:=trim(inttostr(cldasevi_nf_brestNFE.AsInteger));
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vOrig:=cldasevi_nf_brestTOTAL_NOTA.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vDesc:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat.vLiq:=cldasevi_nf_brestTOTAL_NOTA.AsFloat;

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Add;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[0].nDup:=formatfloat('000',1);
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[0].dVenc:=date()+30;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[0].vDup:=cldasevi_nf_brestTOTAL_NOTA.AsFloat;
      end
      else begin
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipNenhum;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpSemPagamento;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;

      end;




//
//
// - PRODUTOS DA NOTA FISCAL
//
//

   CLDASENFITEM_BREST.FIRST;
   num_item:=0;
   TT_BC_ICMS:=0;
   TT_ICMS:=0;
   TT_BC_ST:=0;
   TT_ICMS_ST:=0;
   TT_PRODUTOS:=0;
   TT_FRETE:=0;
   TT_SEGURO:=0;
   TT_DESCONTO:=0;
   TT_II:=0;
   TT_IPI:=0;
   TT_PIS:=0;
   TT_COFINS:=0;
   TT_OUTRAS:=0;
   TT_NFE:=0;
   tt_fundo:=0;
   icms_acumulado:=0;
   tem_emb_antiga:=false;
   prods_emb_antiga:='O(S) PRODUTO(S)';
   espaco:='';
   icms_acumulado:=0;
   while NOT CLDASENFITEM_BREST.EOF do BEGIN
      INC(NUM_ITEM);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add;
      item_recno:=dmconexao.acbrnfe1.NotasFiscais.Items[0].NFe.det.Count;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.nItem:=num_item;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cProd:=CLDASENFITEM_BRESTCOD_PRODUTO.AsString;
      cldasegen.Close;
      cldasegen.commandtext:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(CLDASENFITEM_BRESTCOD_PRODUTO.AsString);
      CLDASEGEN.OPEN;
//
//    if NOT (cldasegen.FieldByName('GETIN').IsNull) THEN BEGIN
//      IF(LENGTH(TRIM(CLDASEGEN.FieldByName('GETIN').AsString))>0) then BEGIN
//        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cEAN:=CLDASEGEN.FIELDBYNAME('GETIN').AsString;
//      END;
//    END;
//
      class_id:=cldasegen.FieldByName('class_id').AsInteger;
      if CLDASEVI_NF_BRESTMOVIMENTADO_DE.AsString='A' then begin
         if cldasenfitem_brestIMPORTADO.AsInteger=-1 then begin
            origem:='1'
         end
         else begin
            origem:='0';
         end;
      end;

      if CLDASEVI_NF_BRESTMOVIMENTADO_DE.AsString='N' then begin
         if cldasenfitem_brestIMPORTADO.AsInteger=-1 then begin
            origem:='1'
         end
         else begin
            origem:='0';
         end;
      end;

      if CLDASEVI_NF_BRESTMOVIMENTADO_DE.AsString='R' then begin
         if cldasenfitem_brestIMPORTADO.AsInteger=-1 then begin
            origem:='2'
         end
         else begin
            origem:='0';
         end;
      end;


      UN_PROD:=CLDASEGEN.FIELDBYNAME('UNIDADE').AsString;
      if LENGTH(TRIM(UN_PROD))=0 then UN_PROD:='UN';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.xProd:=cldaseGEN.FIELDBYNAME('DESCRICAO').AsString;

      cldasegen.Close;
      cldasegen.CommandText:='SELECT * FROM CLASSIFICACAO WHERE CLASS_ID='+INTTOSTR(CLASS_ID);
      CLDASEGEN.Open;


      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.NCM:=cldasegen.FieldByName('CLASSIFICACAO').AsString;

      CFOP:=cldasenfitem_brestCFOP.AsString;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.CFOP:=CFOP;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uCom:=UN_PROD;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qCom:=CLDASENFITEM_BRESTQUANTIDADE.AsInteger;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnCom:=CLDASENFITEM_BRESTVALOR_UNITARIO.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vProd:=CLDASENFITEM_BRESTQUANTIDADE.AsInteger*CLDASENFITEM_BRESTVALOR_UNITARIO.AsFloat;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=UN_PROD;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=CLDASENFITEM_BRESTQUANTIDADE.AsInteger;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=CLDASENFITEM_BRESTVALOR_UNITARIO.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.IndTot:=itSomaTotalNFe;


//bloco novo por causa da CST


      case origem of
         '0':origem_prod:=oeNacional;
         '1':origem_prod:=oeEstrangeiraImportacaoDireta;
         '2':origem_prod:=oeEstrangeiraAdquiridaBrasil;
         '3':origem_prod:=oeNacionalConteudoImportacaoSuperior40;
         '4':origem_prod:=oeNacionalProcessosBasicos;
         '5':origem_prod:=oeNacionalConteudoImportacaoInferiorIgual40;
         '8':origem_prod:=oeNacionalConteudoImportacaoSuperior70;
      end;

      if CLDASEVI_NF_BRESTTPVENDA_ID.AsInteger=28 then begin

//
// N10d
//
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CSOSN:=csosn400;

      end
      else begin
         if fisica=true then begin
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CSOSN:=csosn102;
         end
         else begin
            if finNFe='1' then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CSOSN:=csosn101;
               vlr_aliquota:=cldasenfitem_brestALI_ICMS_SIMPLES.AsFloat;
               icms_simples:=(CLDASENFITEM_brestQUANTIDADE.AsInteger*cldasenfitem_brestVALOR_UNITARIO.AsFloat)*cldasenfitem_brestALI_ICMS_SIMPLES.AsFloat/100;
               icms_simples:=arredondamento(icms_simples,true);
               icms_acumulado:=icms_acumulado+icms_simples;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pCredSN:=cldasenfitem_brestALI_ICMS_SIMPLES.AsFloat;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vCredICMSSN:=icms_simples;
               TT_BC_ICMS:=TT_BC_ICMS+cldasenfitem_brestBASEICMSOP.AsFloat;
               tt_icms:=tt_icms+cldasenfitem_brestICMS_OP_PROPRIA.AsFloat;
               tt_bc_st:=TT_BC_ST+cldasenfitem_brestBCSUBSTRI.AsFloat;
               tt_icms_st:=tt_icms_st+cldasenfitem_brestICMS_SUBS_TRI.AsFloat;
            end
            ELSE BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=origem_prod;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CSOSN:=csosn101;
               vlr_aliquota:=cldasenfitem_brestALI_ICMS_SIMPLES.AsFloat;
               icms_simples:=(CLDASENFITEM_brestQUANTIDADE.AsInteger*cldasenfitem_brestVALOR_UNITARIO.AsFloat)*cldasenfitem_brestALI_ICMS_SIMPLES.AsFloat/100;
               icms_simples:=arredondamento(icms_simples,true);
               icms_acumulado:=icms_acumulado+icms_simples;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pCredSN:=0;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vCredICMSSN:=0;
               TT_BC_ICMS:=TT_BC_ICMS+cldasenfitem_brestBASEICMSOP.AsFloat;
               tt_icms:=tt_icms+cldasenfitem_brestICMS_OP_PROPRIA.AsFloat;
               tt_bc_st:=TT_BC_ST+cldasenfitem_brestBCSUBSTRI.AsFloat;
               tt_icms_st:=tt_icms_st+cldasenfitem_brestICMS_SUBS_TRI.AsFloat;

            END;
         end;
      end;


      tot_ipi:=0;
      tot_ipi:=cldaseNFITEM_BRESTipi.AsFloat;
      TT_IPI:=TT_IPI+CLDASENFITEM_BRESTIPI.AsFloat;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='301';
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi52;

// novo bloco de CST para Pis e Cofins


      if (cldasenfitem_brestCST_PIS.AsString='01') OR (cldasenfitem_brestCST_PIS.AsString='02') then BEGIN
         if cldasenfitem_brestCST_PIS.AsString='01' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS01;
         if cldasenfitem_brestCST_PIS.AsString='02' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS02;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vBC:=cldasenfitem_brestQUANTIDADE.AsInteger*cldasenfitem_brestVALOR_UNITARIO.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.pPIS:=cldasenfitem_brestALI_PIS.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vPIS:=cldasenfitem_brestPIS.AsFloat;
      END;
      if (cldasenfitem_brestCST_PIS.AsString='03') then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS03;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vBC:=cldasenfitem_brestQUANTIDADE.AsInteger*cldasenfitem_brestVALOR_UNITARIO.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.pPIS:=cldasenfitem_brestALI_PIS.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vPIS:=cldasenfitem_brestPIS.AsFloat;
      END;
      if (cldasenfitem_brestCST_PIS.AsString='04') OR (cldasenfitem_brestCST_PIS.AsString='06') OR (cldasenfitem_brestCST_PIS.AsString='07') OR (cldasenfitem_brestCST_PIS.AsString='08') OR (cldasenfitem_brestCST_PIS.AsString='09') then BEGIN
         if (cldasenfitem_brestCST_PIS.AsString='04') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS04;
         IF (cldasenfitem_brestCST_PIS.AsString='06') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS06;
         IF (cldasenfitem_brestCST_PIS.AsString='07') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS07;
         IF (cldasenfitem_brestCST_PIS.AsString='08') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS08;
         IF (cldasenfitem_brestCST_PIS.AsString='09') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=PIS09;
      END;

      if (cldasenfitem_brestCST_PIS.AsString='99') then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=pis99;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vBC:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.pPIS:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vPIS:=0;
      END;


//CONFIS

      if (CLDASENFITEMCST_COFINS.AsString='01') OR (CLDASENFITEMCST_COFINS.AsString='02') then BEGIN
         if CLDASENFITEMCST_COFINS.AsString='01' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof01;
         if CLDASENFITEMCST_COFINS.AsString='02' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof02;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.pCOFINS:=CLDASENFITEMALI_COFINS.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vCOFINS:=CLDASENFITEMCOFINS.AsFloat;
      END;
      if (CLDASENFITEMCST_COFINS.AsString='03') then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof03;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vBC:=CLDASENFITEMQUANTIDADE.AsInteger*CLDASENFITEMVALOR_UNITARIO.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.pCOFINS:=CLDASENFITEMALI_COFINS.AsFloat;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vCOFINS:=CLDASENFITEMCOFINS.AsFloat;
      END;
      if (CLDASENFITEMCST_COFINS.AsString='04') OR (CLDASENFITEMCST_COFINS.AsString='06') OR (CLDASENFITEMCST_COFINS.AsString='07') OR (CLDASENFITEMCST_COFINS.AsString='08') OR (CLDASENFITEMCST_COFINS.AsString='09') then BEGIN
         if (CLDASENFITEMCST_COFINS.AsString='04') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof04;
         IF (CLDASENFITEMCST_COFINS.AsString='06') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof06;
         IF (CLDASENFITEMCST_COFINS.AsString='07') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof07;
         IF (CLDASENFITEMCST_COFINS.AsString='08') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof08;
         IF (CLDASENFITEMCST_COFINS.AsString='09') THEN dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof09;
      END;

      if (cldasenfitem_brestCOFINS.AsString='99') then BEGIN
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof99;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.cofins.vBC:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.cofins.pCOFINS:=0;
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.cofins.vCOFINS:=0;
      END;


      atualiza_array(desc_classificacao,tot_ipi,tot_st,tot_bcst,classif_id);
      tt_produtos:=tt_produtos+(cldasenfitem_brestQUANTIDADE.AsInteger*cldasenfitem_brestVALOR_UNITARIO.AsFloat);

      CLDASENFITEM_BREST.NEXT;
   END;

   if finNFe='1' then begin
      tt_nfe:=tt_nfe+TT_PRODUTOS+tt_ipi+tt_icms_st-tt_desconto;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC:=TT_BC_ICMS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS:=tt_icms;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST:=TT_BC_ST;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST:=TT_ICMS_ST;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFCPST:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd:=TT_PRODUTOS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete:=tt_frete;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg:=TT_SEGURO;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc:=tt_desconto;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII:=tt_ii;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI:=TT_IPI;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS:=tt_pis;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS:=TT_COFINS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro:=TT_OUTRAS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF:=TT_NFE;
   end
   else begin
      tt_nfe:=tt_nfe+TT_PRODUTOS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFCPST:=0;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd:=TT_PRODUTOS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete:=tt_frete;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg:=TT_SEGURO;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc:=tt_desconto;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII:=tt_ii;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI:=TT_IPI;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS:=tt_pis;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS:=TT_COFINS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro:=TT_OUTRAS;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF:=TT_NFE;
   end;

   if cldasevi_NF_BRESTTRANSP_ID.AsInteger>0 then BEGIN
      cldasegen.close;
      cldasegen.CommandText:='SELECT * FROM TRANSPORTADORA WHERE TRANSP_ID='+INTTOSTR(cldasevi_NF_BRESTTRANSP_ID.AsInteger);
      CLDASEGEN.OPEN;

      if cldasenfFRETE_CONTA.AsString='0' then
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaEmitente;
      if cldasenfFRETE_CONTA.AsString='1' then
         dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaDestinatario;

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);

      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:=CLDASEGEN.FIELDBYNAME('NOME').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
      CLDASEGEN.CLOSE;
   END
   ELSE BEGIN
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:='PROPRIO';
   END;


   if cldasevi_NF_BRESTvolumes.IsNull then volumes:='0'
   else volumes:=cldasevi_NF_BRESTVOLUMES.AsString;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Add;

   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol:=strtoint(volumes);
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp:='CAIXA(S)';

   if cldasevi_nf_brestpeso.IsNull then peso_bruto:='0.000'
   else begin
      peso_bruto:=CLDASEVI_NF_BRESTPESO.AsString;
      posicao:=pos('.',peso_bruto);
      while posicao<>0 do begin
         peso_bruto:=copy(peso_bruto,1,posicao-1)+copy(peso_bruto,posicao+1);
         posicao:=pos('.',peso_bruto);
      end;
      for I := 1 to LENGTH(PESO_bruto) do BEGIN
         if PESO_bruto[I]=',' then PESO_bruto[I]:='.';
      END;
      if pos('.',peso_bruto)=0 then begin
         peso_bruto:=peso_bruto+'.000';
      end
      else begin
         PEDACO:=COPY(PESO_bruto,POS('.',PESO_bruto)+1);
         if LENGTH(PEDACO)=1 then PESO_bruto:=PESO_bruto+'00';
         if LENGTH(PEDACO)=2 then PESO_bruto:=PESO_bruto+'0';
      end;
   end;


      for I := 1 to LENGTH(PESO_bruto) do BEGIN
         if PESO_bruto[I]='.' then PESO_bruto[I]:=',';
      END;


   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL:=strtofloat(peso_bruto);
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB:=strtofloat(peso_bruto);

   if length(trim(cldasenf_brestOBSERVACAO.AsString))>0 then begin
     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco:=cldasenf_brestOBSERVACAO.AsString;
   end;


   if not CLDASEEMISSORCHAVE_NFE.isnull then begin
      dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe:=CLDASEEMISSORCHAVE_NFE.AsString;
   end;
   dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
   cldaseemissor.Edit;
   CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
   cldaseemissor.Post;
   cldaseemissor.ApplyUpdates(0);


   monta_nota_direta:=true;

end;

function TfrmNotas.monta_nota_imp: boolean;
var
   arqprn:textfile;
   sequencial:integer;
   DOCUMENTO:STRING;
   NOME_SACADO,LOGRADOURO,BAIRRO,CIDADE:STRING;
   digito:string;
   ultima_nota:integer;
   versao:string;
   VERSAO_SISTEMA:STRING;
   NUM_ITEM:INTEGER;
   estado_emitente,estado_destinatario:string;
   ibge_EMItente,ibge_destinatario:string;
   PARCELAS:STRING;
   PEDIDOS:STRING;
   POSICAO:INTEGER;
   I:INTEGER;
   classif_id:integer;
   CFOP:STRING;
   UN_PROD:STRING;
   TT_BC_ICMS,TT_ICMS,TT_BC_ST,TT_ICMS_ST,TT_PRODUTOS,TT_FRETE,TT_SEGURO,TT_DESCONTO,TT_II,TT_IPI,TT_PIS,TT_COFINS,TT_OUTRAS,TT_NFE:DOUBLE;
   QTD_NOTAS:INTEGER;
   diretorio:string;
   PESO: string;
   FAZ: Boolean;
   NOTA_FISCAL: string;
   NOME_EMPRESA:STRING;
   PEDACO: STRING;
   DESC_CLASSIFICACAO:STRING;
   TOT_IPI:DOUBLE;
   TOT_ST:DOUBLE;
   obs_nota,obs_nota2:string;
   NUM_IDENTIFICACAO:INTEGER;
   TOT_BCST: DOUBLE;
   volumes: string;
   RESULTADO: STRING;
   pais: string;
   cod_fabricante: Integer;
   FORMATO_NOTA:STRING;
   transfere:boolean;
   OBS_IMP:STRING;
   di: string;
   nota_batida: Boolean;
   aduaneiro: double;
   siscomex: double;
   cfop_sem_conferencia: Boolean;
   tt_exonerado: double;
   obs_fisco: string;
   nome_arquivo: string;
   nota_uso:integer;
   email_cliente: string;
   item_recno: Integer;
   VIATRANSP: Integer;
   descricao_complementar: string;
  usa_unid_trib_saida: Boolean;
  usa_unid_trib_entrada: Boolean;
begin
  inherited;

   cldasegen.Close;
   cldasegen.commandtext:='SELECT * FROM PARAMETROS';
   CLDASEGEN.OPEN;
   if cldasegen.FieldByName('usa_unid_trib_entrada').AsInteger=-1 then usa_unid_trib_entrada:=true
   else usa_unid_trib_entrada:=false;
   if cldasegen.FieldByName('usa_unit_trib_saida').AsInteger=-1 then usa_unid_trib_saida:=true
   else usa_unid_trib_saida:=false;

   VERSAO:=CLDASEGEN.FIELDBYNAME('LAYOUT_NFE').Asstring;
   VERSAO_SISTEMA:=CLDASEGEN.FIELDBYNAME('VERSAO_SISTEMA').Asstring;

   CLDASEGEN.CLOSE;
   CLDASEgen.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+QUOTEDSTR(INTTOSTR(dmconexao.empresa_id));
   CLDASEgen.OPEN;
   estado_emitente:=cldasegen.FieldByName('ESTADO').AsString;
   ibge_EMITEnte:=cldasegen.FieldByName('IBGE').AsString;
   ultima_nota:=cldasegen.fieldbyname('ULTIMA_NOTA').AsInteger;
   NOME_EMPRESA:=cldasegen.fieldbyname('NOMEMP').AsSTRING;
   FORMATO_NOTA:=CLDASEGEN.FIELDBYNAME('FORMATO_NOTA').AsString;
   cldasegen.close;
   CLDASENF_IMP.CLOSE;

   if cldaseemissorIDENTIFICACAO_ID.IsNull then
      CLDASENF_IMP.CommandText:='SELECT * FROM NF_IMP WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger)
   ELSE
      CLDASENF_IMP.CommandText:='SELECT * FROM NF_IMP WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO_ID='+INTTOSTR(cldaseemissorIDENTIFICACAO_ID.AsInteger);

   CLDASENF_IMP.OPEN;

   CLDASENF_ITENS_IMP.Close;
   CLDASENF_ITENS_IMP.CommandText:='SELECT * FROM NF_ITENS_IMP WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO='+INTTOSTR(cldasenf_impIDENTIFICACAO_ID.AsInteger);
   CLDASENF_ITENS_IMP.OPEN;
   cldasenf_iteNS_IMP.first;
   aduaneiro:=0;
   siscomex:=0;

   if cldasenf_impTPVENDA_ID.AsInteger<>28 then begin
      if cldasenf_impTPVENDA_ID.AsInteger<>68 then begin

      {$REGION 'nota normal'}

         {$REGION 'Identificacao'}
            dmconexao.ACBrNFe1.NotasFiscais.Clear;
            dmconexao.ACBrNFe1.NotasFiscais.Add;
            cldasegen.close;
            cldasegen.CommandText:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(estado_emitente);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').AsString);
            cldasegen.close;
            cldasegen.commandtext:='SELECT * FROM TIPO_VENDA WHERE TPVENDA_ID='+INTTOSTR(CLDASEnf_impTPVENDA_ID.ASINTEGER);
            CLDASEGEN.Open;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp:=CLDASEGEN.FIELDBYNAME('DESCRICAO_FISCAL').AsString;
            if cldasenf_impFORMA_PAGAMENTO.IsNull then BEGIN
               if TRIM(PARCELAS)='0' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipVista
               ELSE  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo
            END
            ELSE BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipOutras;
            END;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo:=55;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie:=0;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF:=cldasenf_impNFE.AsInteger;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi:=cldasenf_impDATA_IMPRESSAO.AsDateTime;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt:=cldasenf_impDATA_IMPRESSAO.AsDateTime;
            if cldasenf_impTIPO_NOTA.AsString='E' then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnEntrada;
            end
            else begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnSaida;
            end;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doExterior;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG:=strtoint(ibge_EMItente);
            if formato_nota='1' then
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpImp:=tiRetrato
            else
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpimp:=tiPaisagem;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis:=teNormal;
            if UPPERCASE(dmconexao.ambiente)='PRODUCAO' then BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taProducao;
            END
            else begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taHomologacao;
            end;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnNormal;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfNao;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPres:=pcNao;//ou pcoutros
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.procEmi:=peAplicativoContribuinte;

         {$ENDREGION}

         {$REGION 'Emitenste'}
            cldasegen.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
            CLDASEGEN.OPEN;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_NFE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant:=CLDASEGEN.FIELDBYNAME('NOMEMP').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE:=CLDASEGEN.FIELDBYNAME('IE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT:=crtRegimeNormal;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF:=CLDASEGEN.FIELDBYNAME('CNPJ').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun:=strtoint(ibge_EMItente);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais:=1058;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais:='BRASIL';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);

         {$ENDREGION}

         {$REGION 'Destinatario'}
            CLDASEGEN.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasenf_impCLIENTE_ID.AsInteger);
            CLDASEGEN.OPEN;
            estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
            email_cliente:=cldasegen.fieldbyname('email').AsString;
            posicao:=pos(';',email_cliente);
            if POSICAO>0 then EMAIL_CLIENTE:=COPY(EMAIL_CLIENTE,1,POSICAO-1);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:='EXTERIOR';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=9999999;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:='EXTERIOR';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:='EX';
            pais:=cldasegen.FieldByName('PAIS').AsString;
            CLDASEGEN.CLOSE;
            CLDASEGEN.CommandText:='SELECT * FROM PAISES WHERE SIGLA='+QUOTEDSTR(PAIS);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').ASSTRING);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:=CLDASEGEN.FIELDBYNAME('PAIS').ASSTRING;
            CLDASEGEN.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasenf_impCLIENTE_ID.AsInteger);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=CLDASEGEN.FIELDBYNAME('TELEFONE').AsString;

         {$ENDREGION}

         {$REGION 'Forma Pagamento'}
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=cldasenf_IMPTOTAL_NOTA.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpOutro;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;

         {$ENDREGION}

         {$REGION 'Produtos'}

            cldasenf_itens_imp.FIRST;
            num_item:=0;
            TT_BC_ICMS:=0;
            TT_ICMS:=0;
            TT_BC_ST:=0;
            TT_ICMS_ST:=0;
            TT_PRODUTOS:=0;
            TT_FRETE:=0;
            TT_SEGURO:=0;
            TT_DESCONTO:=0;
            TT_II:=0;
            TT_IPI:=0;
            TT_PIS:=0;
            TT_COFINS:=0;
            TT_OUTRAS:=0;
            TT_NFE:=0;
            tt_exonerado:=0;
            while NOT cldasenf_itens_imp.EOF do BEGIN

               {$REGION 'Produto'}
                  INC(NUM_ITEM);
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add;
                  item_recno:=dmconexao.acbrnfe1.NotasFiscais.Items[0].NFe.det.Count;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.nItem:=num_item;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cProd:=CLDASENF_ITENS_IMPCOD_PRODUTO.AsString;

                  cldasegen.close;
                  cldasegen.commandtext:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(cldasenf_itens_impCOD_PRODUTO.AsString);
                  CLDASEGEN.OPEN;
                  if NOT (cldasegen.FieldByName('GETIN').IsNull) THEN BEGIN
                     IF(LENGTH(TRIM(CLDASEGEN.FieldByName('GETIN').AsString))>0) then BEGIN
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cEAN:=CLDASEGEN.FIELDBYNAME('GETIN').AsString;
                     END;
                  END;

                  classif_id:=CLDASEGEN.FIELDBYNAME('CLASS_ID').AsInteger;
                  UN_PROD:=CLDASEGEN.FIELDBYNAME('UNID_VENDA').AsString;

                  cod_fabricante:=cldasegen.fieldbyname('FABRICANTE_ID').AsInteger;

                  if LENGTH(TRIM(UN_PROD))=0 then UN_PROD:='UN';

                  if length(trim(cldasegen.FieldByName('DESCRICAO_NFE').AsString))>0 then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.xProd:=cldaseGEN.FIELDBYNAME('DESCRICAO_NFE').AsString;
                  end
                  else begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.xProd:=cldaseGEN.FIELDBYNAME('DESCRICAO').AsString;
                  end;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.NCM:=cldasenf_itens_impCLASSIFICACAO.AsString;
                  CFOP:=cldasenf_itens_impCFOP.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.CFOP:=CFOP;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uCom:=UN_PROD;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qCom:=cldasenf_itens_impQUANTIDADE.AsInteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnCom:=cldasenf_itens_impVALOR_UNITARIO.asfloat;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vProd:=cldasenf_itens_impvalor_unitario.asfloat*cldasenf_itens_impQUANTIDADE.AsInteger;

                  if usa_unid_trib_entrada then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=cldasenf_itens_impUNID_TRIBUT.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=cldasenf_itens_impQUANTIDADE_TRIB.AsFloat;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=cldasenf_itens_impVALOR_UNIT_TRIB.AsFloat;
                  end
                  else begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=UN_PROD;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=cldasenf_itens_impQUANTIDADE.AsInteger;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=cldasenf_itens_impVALOR_UNITARIO.AsFloat;
                  end;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.IndTot:=itSomaTotalNFe;

{$ENDREGION}

               {$REGION 'DI'}
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Add;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].nDi:=CALCULA_DI(cldaseNF_IMPNUM_DI.AsString);
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].dDi:=cldaseNF_IMPDATA_DI.AsDateTime;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].xLocDesemb:=cldaseNF_IMPLOCAL_DESEMBARACO.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFDesemb:=cldaseNF_IMPUF_DESENBARACO.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].dDesemb:=cldaseNF_IMPDATA_DESENBARACO.AsDateTime;

                  VIATRANSP:=STRTOINT(cldasenf_impTPVIATRANSP.AsString);
                  case VIATRANSP of
                     1:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvMaritima;
                     2:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvFluvial;
                     3:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvLacustre;
                     4:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvAerea;
                     5:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvPostal;
                     6:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvFerroviaria;
                     7:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvRodoviaria;
                     8:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvConduto;
                     9:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvMeiosProprios;
                     10:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvEntradaSaidaFicta;
                     11:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvCourier;
                     12:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvHandcarry;
                  end;

                  if VIATRANSP=1 then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].vAFRMM:=cldaseNF_IMPVAFRMM.AsFLOAT;
                  end;

                  if cldasenf_impTPINTERMEDIO.AsString='1' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiContaPropria;
                  end;

                  if cldasenf_impTPINTERMEDIO.AsString='2' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiContaOrdem;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].CNPJ:=cldasenf_impCNPJ_ADQUIRENTE.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFTerceiro:=cldasenf_impUF_ADQUIRENTE.AsString;
                  end;
                  if cldasenf_impTPINTERMEDIO.AsString='3' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiEncomenda;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].CNPJ:=cldasenf_impCNPJ_ADQUIRENTE.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFTerceiro:=cldasenf_impUF_ADQUIRENTE.AsString;
                  end;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].cExportador:=trim(inttostr(cldaseNF_IMPCLIENTE_ID.AsInteger));
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Add;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].nAdicao:=cldasenf_itens_impNUM_ADICAO.asinteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].nSeqAdi:=cldasenf_itens_impSEQUENCIAL_NA_ADICAO.asinteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].cFabricante:=TRIM(INTTOSTR(cod_fabricante));

               {$ENDREGION}

               {$REGION 'Imposto'}

                  {$REGION 'ICMS'}
                     TOT_ST:=cldasenf_itens_impICMS_SUBS_TRI.AsFloat;
                     TOT_BCST:=cldasenf_itens_impBCSUBSTRI.AsFloat;
                     if cldasenf_itens_impREDUCAO_ESPECIAL_BC.AsFloat>0 then begin
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst90;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=cldasenf_itens_impBASEICMSOP.asfloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pRedBC:=cldasenf_itens_impREDUCAO_ESPECIAL_BC.asfloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=cldasenf_itens_impALI_ICMS.AsInteger;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=cldasenf_itens_impICMS_OP_PROPRIA.AsFLOAT;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSDeson:=cldasenf_itens_impICMS_DESONERADO.AsFLOAT;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.motDesICMS:=mdiOutros;
                     end
                     else begin
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst00;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=cldasenf_itens_impBASEICMSOP.asfloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=cldasenf_itens_impALI_ICMS.AsInteger;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=cldasenf_itens_impICMS_OP_PROPRIA.AsFLOAT;
//                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst40;
                     end;

                  {$ENDREGION}

                  {$REGION 'IPI'}
                     tot_ipi:=0;
                     if cldasenf_itens_impIPI.ASFLOAT>0 then begin
                        tot_ipi:=cldasenf_itens_impipi.AsFloat;
                        TT_IPI:=TT_IPI+cldasenf_itens_impIPI.AsFloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='999';
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi00;//ENTRADA COM RECUPERAÇÃO DE CREDITO
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vIPI:=cldasenf_itens_impIPI.AsFLOAT;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vBC:=cldasenf_itens_impBC_IPI.AsFloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.pIPI:=cldasenf_itens_impALI_IPI.AsInteger;
                     end
                     else begin
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='999';
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi03;//ENTRADA NÃO TRIBUTADA

//                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi49;//ENTRADA COM RECUPERAÇÃO DE CREDITO
//                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vIPI:=cldasenf_itens_impIPI.AsFLOAT;
//                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vBC:=cldasenf_itens_impBC_IPI.AsFloat;
//                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.pIPI:=cldasenf_itens_impALI_IPI.AsInteger;

                     end;

{$ENDREGION}

                  {$REGION 'II'}
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vBc:=cldasenf_itens_impTOTAL_CIF.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vDespAdu:=cldasenf_itens_impDESP_ADUAN.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vII:=cldasenf_itens_impII.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vIOF:=0.01;

                  {$ENDREGION}

                  {$REGION 'Pis'}
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=pis01;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vBC:=cldasenf_itens_impBC_PIS_COFINS.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.pPIS:=2.10;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vPIS:=cldasenf_itens_impPIS.AsFLOAT;
//                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=pis74;

                  {$ENDREGION}

                  {$REGION 'Cofins'}
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof01;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vBC:=cldasenf_itens_impBC_PIS_COFINS.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.pCOFINS:=9.65;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vCOFINS:=cldasenf_itens_impCOFINS.AsFLOAT;
                     //dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof74;

                  {$ENDREGION}
               {$ENDREGION}

               {$REGION 'Totalizando Acumuladores'}
                  TT_BC_ICMS:=TT_BC_ICMS+cldasenf_itens_impBASEICMSOP.AsFloat; //(cldasenf_itens_impQUANTIDADE.AsInteger*cldasenf_itens_impVALOR_UNITARIO.AsFloat);
                  TT_ICMS:=TT_ICMS+cldasenf_itens_impICMS_OP_PROPRIA.AsFloat;
                  TT_BC_ST:=TT_BC_ST+cldasenf_itens_impBCSUBSTRI.AsFloat;
                  TT_ICMS_ST:=TT_ICMS_ST+cldasenf_itens_impICMS_SUBS_TRI.AsFloat;
                  tt_exonerado:=tt_exonerado+cldasenf_itens_impICMS_DESONERADO.AsFloat;
                  tt_produtos:=tt_produtos+(cldasenf_itens_impTOTAL_CIF.AsFloat+cldasenf_itens_impPIS.AsFloat+cldasenf_itens_impCOFINS.AsFloat+cldasenf_itens_impII.AsFloat);

               {$ENDREGION}
               cldasenf_itens_imp.NEXT;
            END;

         {$ENDREGION}

         {$REGION 'Totais da Nota'}
            TT_NFE:=TT_NFE+TT_PRODUTOS+TT_IPI+TT_ICMS_ST;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC:=cldaseNF_IMPBASE_ICMS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS:=cldaseNF_IMPICMS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMSDeson:=tt_exonerado;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST:=cldaseNF_IMPBASE_ST.asfloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST:=cldaseNF_IMPST.asfloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd:=cldaseNF_IMPVALOR_PRODUTOS.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete:=cldaseNF_IMPVALOR_FRETE.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg:=cldaseNF_IMPVALOR_SEGURO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc:=TT_DESCONTO;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII:=cldaseNF_IMPII.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI:=cldaseNF_IMPIPI.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS:=cldaseNF_IMPPIS.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS:=cldaseNF_IMPCOFINS.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro:=TT_OUTRAS;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF:=cldasenf_impTOTAL_NOTA.AsFloat;
         {$ENDREGION}

         {$REGION 'Transportadora'}
            if cldasenf_impTRANSP_ID.AsInteger>0 then BEGIN
               cldasegen.close;
               cldasegen.CommandText:='SELECT * FROM TRANSPORTADORA WHERE TRANSP_ID='+INTTOSTR(cldasenf_impTRANSP_ID.AsInteger);
               CLDASEGEN.OPEN;
               if cldasenfFRETE_CONTA.AsString='0' then
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaEmitente;
               if cldasenfFRETE_CONTA.AsString='1' then
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaDestinatario;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:=CLDASEGEN.FIELDBYNAME('NOME').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
               CLDASEGEN.CLOSE;
            END
            ELSE BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:='PROPRIO';
            END;

            if cldasenf_impVOLUMES.IsNull then volumes:='0'
            else volumes:=cldasenf_impVOLUMES.AsString;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol:=strtoint(volumes);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp:=cldasenf_impTIPO_VOLUME.AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca:=cldasenf_impMARCA_TRANSPORTE.AsString;

            if cldasenf_impPESO_BRUTO.IsNull then peso:='0.000'
            else BEGIN
               PESO:=cldasenf_impPESO_BRUTO.AsString;
               posicao:=pos('.',peso);
               while posicao<>0 do begin
                  peso:=copy(peso,1,posicao-1)+copy(peso,posicao+1);
                  posicao:=pos('.',peso);
               end;
               for I := 1 to LENGTH(PESO) do BEGIN
                  if PESO[I]=',' then PESO[I]:='.';
               END;
               if pos('.',peso)=0 then begin
                  peso:=peso+'.000';
               end
               else begin
                  PEDACO:=COPY(PESO,POS('.',PESO)+1);
                  if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
                  if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
               end;
            END;

            for I := 0 to LENGTH(PESO)-1 do BEGIN
               if PESO[I]='.' then PESO[I]:=',';
            END;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB:=strtofloat(peso);

            if cldasenf_imppeso.IsNull then peso:='0.000'
            else BEGIN
               PESO:=cldasenf_impPESO.AsString;
               posicao:=pos('.',peso);
               while posicao<>0 do begin
                  peso:=copy(peso,1,posicao-1)+copy(peso,posicao+1);
                  posicao:=pos('.',peso);
               end;
               for I := 1 to LENGTH(PESO) do BEGIN
                  if PESO[I]=',' then PESO[I]:='.';
               END;
               if pos('.',peso)=0 then begin
                  peso:=peso+'.000';
               end
               else begin
                  PEDACO:=COPY(PESO,POS('.',PESO)+1);
                  if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
                  if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
               end;
            END;

            for I := 0 to LENGTH(PESO)-1 do BEGIN
               if PESO[I]='.' then PESO[I]:=',';
            END;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL:=strtofloat(peso);

         {$ENDREGION}

         {$REGION 'Informacoes Adicionais'}
            if length(trim(cldasenf_IMPOBSERVACAO.AsString))>0 then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infCpl:=cldasenf_impOBSERVACAO.AsString;
            end;

            obs_fisco:='';

            if tt_exonerado>0 then begin
               obs_fisco:='VALOR TOTAL DE ICMS = R$ '+FORMATFLOAT('###,###,###,###,##0.00',TT_ICMS+tt_exonerado)+' - SUSPENSAO DE 10% DO ICMS DEVIDO DESEMBARACO ADUANEIRO, ';
               OBS_FISCO:=OBS_FISCO+'CONFORME REGIME ESPECIAL - PROCESSO ELETRONICO 2394/2015 NOS TERMOS DA PORTARIA CAT No. 108/2013 - VALOR RECOLHIDO CONF. ';
               OBS_FISCO:=OBS_FISCO+'RE 2394/2015 - R$ '+FORMATFLOAT('###,###,###,###,##0.00',TT_ICMS);
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco:=obs_fisco;
            end;

         {$ENDREGION}

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
         cldaseemissor.Edit;
         CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);

         monta_nota_imp:=true;

      {$ENDREGION}

      end
      else begin

      {$REGION 'nota retorno mercadoria'}

         {$REGION 'Identificacao'}
            dmconexao.ACBrNFe1.NotasFiscais.Clear;
            dmconexao.ACBrNFe1.NotasFiscais.Add;
            cldasegen.close;
            cldasegen.CommandText:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(estado_emitente);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').AsString);
            cldasegen.close;
            cldasegen.commandtext:='SELECT * FROM TIPO_VENDA WHERE TPVENDA_ID='+INTTOSTR(CLDASEnf_impTPVENDA_ID.ASINTEGER);
            CLDASEGEN.Open;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp:=CLDASEGEN.FIELDBYNAME('DESCRICAO_FISCAL').AsString;
            if cldasenf_impFORMA_PAGAMENTO.IsNull then BEGIN
               if TRIM(PARCELAS)='0' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipVista
               ELSE  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo
            END
            ELSE BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipOutras;
            END;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo:=55;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie:=0;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF:=cldasenf_impNFE.AsInteger;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi:=cldasenf_impDATA_IMPRESSAO.AsDateTime;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt:=cldasenf_impDATA_IMPRESSAO.AsDateTime;
            if cldasenf_impTIPO_NOTA.AsString='E' then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnEntrada;
            end
            else begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnSaida;
            end;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doExterior;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG:=strtoint(ibge_EMItente);
            if formato_nota='1' then
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpImp:=tiRetrato
            else
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpimp:=tiPaisagem;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis:=teNormal;
            if UPPERCASE(dmconexao.ambiente)='PRODUCAO' then BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taProducao;
            END
            else begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taHomologacao;
            end;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnNormal;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfNao;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPres:=pcNao;//ou pcoutros
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.procEmi:=peAplicativoContribuinte;

         {$ENDREGION}

         {$REGION 'Emitenste'}
            cldasegen.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
            CLDASEGEN.OPEN;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_NFE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant:=CLDASEGEN.FIELDBYNAME('NOMEMP').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE:=CLDASEGEN.FIELDBYNAME('IE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT:=crtRegimeNormal;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF:=CLDASEGEN.FIELDBYNAME('CNPJ').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun:=strtoint(ibge_EMItente);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais:=1058;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais:='BRASIL';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);

         {$ENDREGION}

         {$REGION 'Destinatario'}
            CLDASEGEN.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasenf_impCLIENTE_ID.AsInteger);
            CLDASEGEN.OPEN;
            estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
            email_cliente:=cldasegen.fieldbyname('email').AsString;
            posicao:=pos(';',email_cliente);
            if POSICAO>0 then EMAIL_CLIENTE:=COPY(EMAIL_CLIENTE,1,POSICAO-1);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:='EXTERIOR';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=9999999;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:='EXTERIOR';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:='EX';
            pais:=cldasegen.FieldByName('PAIS').AsString;
            CLDASEGEN.CLOSE;
            CLDASEGEN.CommandText:='SELECT * FROM PAISES WHERE SIGLA='+QUOTEDSTR(PAIS);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').ASSTRING);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:=CLDASEGEN.FIELDBYNAME('PAIS').ASSTRING;
            CLDASEGEN.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasenf_impCLIENTE_ID.AsInteger);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=CLDASEGEN.FIELDBYNAME('TELEFONE').AsString;

         {$ENDREGION}

         {$REGION 'Forma Pagamento'}
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=cldasenf_IMPTOTAL_NOTA.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpOutro;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;

         {$ENDREGION}

         {$REGION 'Produtos'}

            cldasenf_itens_imp.FIRST;
            num_item:=0;
            TT_BC_ICMS:=0;
            TT_ICMS:=0;
            TT_BC_ST:=0;
            TT_ICMS_ST:=0;
            TT_PRODUTOS:=0;
            TT_FRETE:=0;
            TT_SEGURO:=0;
            TT_DESCONTO:=0;
            TT_II:=0;
            TT_IPI:=0;
            TT_PIS:=0;
            TT_COFINS:=0;
            TT_OUTRAS:=0;
            TT_NFE:=0;
            tt_exonerado:=0;
            while NOT cldasenf_itens_imp.EOF do BEGIN

               {$REGION 'Produto'}
                  INC(NUM_ITEM);
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add;
                  item_recno:=dmconexao.acbrnfe1.NotasFiscais.Items[0].NFe.det.Count;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.nItem:=num_item;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cProd:=CLDASENF_ITENS_IMPCOD_PRODUTO.AsString;

                  cldasegen.close;
                  cldasegen.commandtext:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(cldasenf_itens_impCOD_PRODUTO.AsString);
                  CLDASEGEN.OPEN;
                  if NOT (cldasegen.FieldByName('GETIN').IsNull) THEN BEGIN
                     IF(LENGTH(TRIM(CLDASEGEN.FieldByName('GETIN').AsString))>0) then BEGIN
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cEAN:=CLDASEGEN.FIELDBYNAME('GETIN').AsString;
                     END;
                  END;

                  classif_id:=CLDASEGEN.FIELDBYNAME('CLASS_ID').AsInteger;
                  UN_PROD:=CLDASEGEN.FIELDBYNAME('UNID_VENDA').AsString;

                  cod_fabricante:=cldasegen.fieldbyname('FABRICANTE_ID').AsInteger;

                  if LENGTH(TRIM(UN_PROD))=0 then UN_PROD:='UN';

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.xProd:=cldaseGEN.FIELDBYNAME('DESCRICAO').AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.NCM:=cldasenf_itens_impCLASSIFICACAO.AsString;
                  CFOP:=cldasenf_itens_impCFOP.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.CFOP:=CFOP;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uCom:=UN_PROD;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qCom:=cldasenf_itens_impQUANTIDADE.AsInteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnCom:=cldasenf_itens_impVALOR_UNITARIO.asfloat;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vProd:=cldasenf_itens_impvalor_unitario.asfloat*cldasenf_itens_impQUANTIDADE.AsInteger;

                  if usa_unid_trib_entrada=true then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=cldasenf_itens_impUNID_TRIBUT.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=cldasenf_itens_impQUANTIDADE_TRIB.AsFloat;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=cldasenf_itens_impVALOR_UNIT_TRIB.AsFloat;
                  end
                  else begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=UN_PROD;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=cldasenf_itens_impQUANTIDADE.AsInteger;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=cldasenf_itens_impVALOR_UNITARIO.AsFloat;

                  end;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.IndTot:=itSomaTotalNFe;

{$ENDREGION}

               {$REGION 'DI'}
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Add;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].nDi:=CALCULA_DI(cldaseNF_IMPNUM_DI.AsString);
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].dDi:=cldaseNF_IMPDATA_DI.AsDateTime;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].xLocDesemb:=cldaseNF_IMPLOCAL_DESEMBARACO.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFDesemb:=cldaseNF_IMPUF_DESENBARACO.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].dDesemb:=cldaseNF_IMPDATA_DESENBARACO.AsDateTime;

                  VIATRANSP:=STRTOINT(cldasenf_impTPVIATRANSP.AsString);
                  case VIATRANSP of
                     1:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvMaritima;
                     2:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvFluvial;
                     3:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvLacustre;
                     4:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvAerea;
                     5:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvPostal;
                     6:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvFerroviaria;
                     7:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvRodoviaria;
                     8:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvConduto;
                     9:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvMeiosProprios;
                     10:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvEntradaSaidaFicta;
                     11:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvCourier;
                     12:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvHandcarry;
                  end;

                  if VIATRANSP=1 then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].vAFRMM:=cldaseNF_IMPVAFRMM.AsFLOAT;
                  end;

                  if cldasenf_impTPINTERMEDIO.AsString='1' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiContaPropria;
                  end;

                  if cldasenf_impTPINTERMEDIO.AsString='2' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiContaOrdem;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].CNPJ:=cldasenf_impCNPJ_ADQUIRENTE.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFTerceiro:=cldasenf_impUF_ADQUIRENTE.AsString;
                  end;
                  if cldasenf_impTPINTERMEDIO.AsString='3' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiEncomenda;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].CNPJ:=cldasenf_impCNPJ_ADQUIRENTE.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFTerceiro:=cldasenf_impUF_ADQUIRENTE.AsString;
                  end;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].cExportador:=trim(inttostr(cldaseNF_IMPCLIENTE_ID.AsInteger));
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Add;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].nAdicao:=cldasenf_itens_impNUM_ADICAO.asinteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].nSeqAdi:=cldasenf_itens_impSEQUENCIAL_NA_ADICAO.asinteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].cFabricante:=TRIM(INTTOSTR(cod_fabricante));

               {$ENDREGION}

               {$REGION 'Imposto'}

                  {$REGION 'ICMS'}
                     TOT_ST:=cldasenf_itens_impICMS_SUBS_TRI.AsFloat;
                     TOT_BCST:=cldasenf_itens_impBCSUBSTRI.AsFloat;
                     if cldasenf_itens_impREDUCAO_ESPECIAL_BC.AsFloat>0 then begin
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst90;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=cldasenf_itens_impBASEICMSOP.asfloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pRedBC:=cldasenf_itens_impREDUCAO_ESPECIAL_BC.asfloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=cldasenf_itens_impALI_ICMS.AsInteger;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=cldasenf_itens_impICMS_OP_PROPRIA.AsFLOAT;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMSDeson:=cldasenf_itens_impICMS_DESONERADO.AsFLOAT;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.motDesICMS:=mdiOutros;
                     end
                     else begin
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst00;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=cldasenf_itens_impBASEICMSOP.asfloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=cldasenf_itens_impALI_ICMS.AsInteger;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=cldasenf_itens_impICMS_OP_PROPRIA.AsFLOAT;
                     end;

                  {$ENDREGION}

                  {$REGION 'IPI'}
                     tot_ipi:=0;
                     if cldasenf_itens_impIPI.ASFLOAT>0 then begin
                        tot_ipi:=cldasenf_itens_impipi.AsFloat;
                        TT_IPI:=TT_IPI+cldasenf_itens_impIPI.AsFloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='999';
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi00;//ENTRADA COM RECUPERAÇÃO DE CREDITO
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vIPI:=cldasenf_itens_impIPI.AsFLOAT;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.vBC:=cldasenf_itens_impBC_IPI.AsFloat;
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.pIPI:=cldasenf_itens_impALI_IPI.AsInteger;
                     end
                     else begin
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='999';
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi03;//ENTRADA NÃO TRIBUTADA
                     end;

{$ENDREGION}

                  {$REGION 'II'}
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vBc:=cldasenf_itens_impTOTAL_CIF.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vDespAdu:=cldasenf_itens_impDESP_ADUAN.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vII:=cldasenf_itens_impII.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vIOF:=0.01;

                  {$ENDREGION}

                  {$REGION 'Pis'}
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=pis01;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vBC:=cldasenf_itens_impBC_PIS_COFINS.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.pPIS:=2.10;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.vPIS:=cldasenf_itens_impPIS.AsFLOAT;

                  {$ENDREGION}

                  {$REGION 'Cofins'}
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof01;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vBC:=cldasenf_itens_impBC_PIS_COFINS.AsFLOAT;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.pCOFINS:=9.65;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.vCOFINS:=cldasenf_itens_impCOFINS.AsFLOAT;

                  {$ENDREGION}
               {$ENDREGION}

               {$REGION 'Totalizando Acumuladores'}
                  TT_BC_ICMS:=TT_BC_ICMS+cldasenf_itens_impBASEICMSOP.AsFloat; //(cldasenf_itens_impQUANTIDADE.AsInteger*cldasenf_itens_impVALOR_UNITARIO.AsFloat);
                  TT_ICMS:=TT_ICMS+cldasenf_itens_impICMS_OP_PROPRIA.AsFloat;
                  TT_BC_ST:=TT_BC_ST+cldasenf_itens_impBCSUBSTRI.AsFloat;
                  TT_ICMS_ST:=TT_ICMS_ST+cldasenf_itens_impICMS_SUBS_TRI.AsFloat;
                  tt_exonerado:=tt_exonerado+cldasenf_itens_impICMS_DESONERADO.AsFloat;
                  tt_produtos:=tt_produtos+(cldasenf_itens_impTOTAL_CIF.AsFloat+cldasenf_itens_impPIS.AsFloat+cldasenf_itens_impCOFINS.AsFloat+cldasenf_itens_impII.AsFloat);

               {$ENDREGION}
               cldasenf_itens_imp.NEXT;
            END;

         {$ENDREGION}

         {$REGION 'Totais da Nota'}
            TT_NFE:=TT_NFE+TT_PRODUTOS+TT_IPI+TT_ICMS_ST;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC:=cldaseNF_IMPBASE_ICMS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS:=cldaseNF_IMPICMS.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMSDeson:=tt_exonerado;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST:=cldaseNF_IMPBASE_ST.asfloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST:=cldaseNF_IMPST.asfloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd:=cldaseNF_IMPVALOR_PRODUTOS.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete:=cldaseNF_IMPVALOR_FRETE.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg:=cldaseNF_IMPVALOR_SEGURO.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc:=TT_DESCONTO;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII:=cldaseNF_IMPII.AsFloat;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI:=cldaseNF_IMPIPI.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS:=cldaseNF_IMPPIS.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS:=cldaseNF_IMPCOFINS.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro:=TT_OUTRAS;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF:=cldasenf_impTOTAL_NOTA.AsFloat;
         {$ENDREGION}

         {$REGION 'Transportadora'}
            if cldasenf_impTRANSP_ID.AsInteger>0 then BEGIN
               cldasegen.close;
               cldasegen.CommandText:='SELECT * FROM TRANSPORTADORA WHERE TRANSP_ID='+INTTOSTR(cldasenf_impTRANSP_ID.AsInteger);
               CLDASEGEN.OPEN;
               if cldasenfFRETE_CONTA.AsString='0' then
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaEmitente;
               if cldasenfFRETE_CONTA.AsString='1' then
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaDestinatario;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:=CLDASEGEN.FIELDBYNAME('NOME').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
               CLDASEGEN.CLOSE;
            END
            ELSE BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:='PROPRIO';
            END;

            if cldasevi_nfvolumes.IsNull then volumes:='0'
            else volumes:=cldasenf_impVOLUMES.AsString;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol:=strtoint(volumes);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp:=cldasenf_impTIPO_VOLUME.AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca:=cldasenf_impMARCA_TRANSPORTE.AsString;

            if cldasenf_impPESO_BRUTO.IsNull then peso:='0.000'
            else BEGIN
               PESO:=cldasenf_impPESO.AsString;
               posicao:=pos('.',peso);
               while posicao<>0 do begin
                  peso:=copy(peso,1,posicao-1)+copy(peso,posicao+1);
                  posicao:=pos('.',peso);
               end;
               for I := 1 to LENGTH(PESO) do BEGIN
                  if PESO[I]=',' then PESO[I]:='.';
               END;
               if pos('.',peso)=0 then begin
                  peso:=peso+'.000';
               end
               else begin
                  PEDACO:=COPY(PESO,POS('.',PESO)+1);
                  if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
                  if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
               end;
            END;

            for I := 0 to LENGTH(PESO)-1 do BEGIN
               if PESO[I]='.' then PESO[I]:=',';
            END;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB:=strtofloat(peso);

            if cldasenf_imppeso.IsNull then peso:='0.000'
            else BEGIN
               PESO:=cldasenf_impPESO.AsString;
               posicao:=pos('.',peso);
               while posicao<>0 do begin
                  peso:=copy(peso,1,posicao-1)+copy(peso,posicao+1);
                  posicao:=pos('.',peso);
               end;
               for I := 1 to LENGTH(PESO) do BEGIN
                  if PESO[I]=',' then PESO[I]:='.';
               END;
               if pos('.',peso)=0 then begin
                  peso:=peso+'.000';
               end
               else begin
                  PEDACO:=COPY(PESO,POS('.',PESO)+1);
                  if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
                  if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
               end;
            END;

            for I := 0 to LENGTH(PESO)-1 do BEGIN
               if PESO[I]='.' then PESO[I]:=',';
            END;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL:=strtofloat(peso);

         {$ENDREGION}

         {$REGION 'Informacoes Adicionais'}
            if length(trim(cldasenfOBSERVACAO.AsString))>0 then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infCpl:=cldasenf_impOBSERVACAO.AsString;
            end;

            obs_fisco:='';

            if tt_exonerado>0 then begin
               obs_fisco:='VALOR TOTAL DE ICMS = R$ '+FORMATFLOAT('###,###,###,###,##0.00',TT_ICMS+tt_exonerado)+' - SUSPENSAO DE 10% DO ICMS DEVIDO DESEMBARACO ADUANEIRO, ';
               OBS_FISCO:=OBS_FISCO+'CONFORME REGIME ESPECIAL - PROCESSO ELETRONICO 2394/2015 NOS TERMOS DA PORTARIA CAT No. 108/2013 - VALOR RECOLHIDO CONF. ';
               OBS_FISCO:=OBS_FISCO+'RE 2394/2015 - R$ '+FORMATFLOAT('###,###,###,###,##0.00',TT_ICMS);
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco:=obs_fisco;
            end;

         {$ENDREGION}

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
         cldaseemissor.Edit;
         CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);

         monta_nota_imp:=true;

      {$ENDREGION}

      end;
   end
   else begin

      {$REGION 'complementar'}

         {$REGION 'Identificacao'}
            dmconexao.ACBrNFe1.NotasFiscais.Clear;
            dmconexao.ACBrNFe1.NotasFiscais.Add;
            cldasegen.close;
            cldasegen.CommandText:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(estado_emitente);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').AsString);
            cldasegen.close;
            cldasegen.commandtext:='SELECT * FROM TIPO_VENDA WHERE TPVENDA_ID='+INTTOSTR(CLDASEnf_impTPVENDA_ID.ASINTEGER);
            CLDASEGEN.Open;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp:=CLDASEGEN.FIELDBYNAME('DESCRICAO_FISCAL').AsString;
            if cldasenf_impFORMA_PAGAMENTO.IsNull then BEGIN
               if TRIM(PARCELAS)='0' then dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipVista
               ELSE  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipPrazo
            END
            ELSE BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag:=ipOutras;
            END;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo:=55;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie:=0;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF:=cldasenf_impNFE.AsInteger;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi:=cldasenf_impDATA_IMPRESSAO.AsDateTime;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt:=cldasenf_impDATA_IMPRESSAO.AsDateTime;
            if cldasenf_impTIPO_NOTA.AsString='E' then begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnEntrada;
            end
            else begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF:=tnSaida;
            end;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.idDest:=doExterior;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG:=strtoint(ibge_EMItente);
            if formato_nota='1' then
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpImp:=tiRetrato
            else
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpimp:=tiPaisagem;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis:=teNormal;
            if UPPERCASE(dmconexao.ambiente)='PRODUCAO' then BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taProducao;
            END
            else begin
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb:=taHomologacao;
            end;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe:=fnComplementar;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indFinal:=cfNao;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPres:=pcNao;//ou pcoutros
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.procEmi:=peAplicativoContribuinte;

         {$ENDREGION}

         {$REGION 'Emitente'}
            cldasegen.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_NFE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant:=CLDASEGEN.FIELDBYNAME('NOMEMP').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE:=CLDASEGEN.FIELDBYNAME('IE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CRT:=crtRegimeNormal;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF:=CLDASEGEN.FIELDBYNAME('CNPJ').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro:=CLDASEGEN.FIELDBYNAME('BAIRRO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun:=strtoint(ibge_EMItente);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP:=strtoint(dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CEP').AsString));
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais:=1058;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais:='BRASIL';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);

         {$ENDREGION}

         {$REGION 'Destinatario'}
            CLDASEGEN.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasenf_impCLIENTE_ID.AsInteger);
            CLDASEGEN.OPEN;
            estado_destinatario:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
            email_cliente:=cldasegen.fieldbyname('email').AsString;
            posicao:=pos(';',email_cliente);
            if POSICAO>0 then EMAIL_CLIENTE:=COPY(EMAIL_CLIENTE,1,POSICAO-1);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome:=CLDASEGEN.FIELDBYNAME('RAZAO_SOCIAL').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.indIEDest:=inNaoContribuinte;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email:=LowerCase(EMAIL_CLIENTE);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro:=CLDASEGEN.FIELDBYNAME('NUMERO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl:=CLDASEGEN.FIELDBYNAME('COMPLEMENTO').AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro:='EXTERIOR';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun:=9999999;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun:='EXTERIOR';
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF:='EX';
            pais:=cldasegen.FieldByName('PAIS').AsString;
            CLDASEGEN.CLOSE;
            CLDASEGEN.CommandText:='SELECT * FROM PAISES WHERE SIGLA='+QUOTEDSTR(PAIS);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais:=strtoint(CLDASEGEN.FIELDBYNAME('CODIGO').ASSTRING);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais:=CLDASEGEN.FIELDBYNAME('PAIS').ASSTRING;
            CLDASEGEN.CLOSE;
            CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+inttostr(cldasenf_impCLIENTE_ID.AsInteger);
            CLDASEGEN.OPEN;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone:=CLDASEGEN.FIELDBYNAME('TELEFONE').AsString;

         {$ENDREGION}

         {$REGION 'Forma Pagamento e Referencia'}
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag:=cldasenf_IMPTOTAL_NOTA.ASFLOAT;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag:=fpOutro;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].tpIntegra:=tiPagNaoIntegrado;


            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.NFref.Items[0].refNFe:=cldasenf_impCHAVE_ACESSO.AsString;

         {$ENDREGION}

         {$REGION 'Produtos'}
            cldasenf_itens_imp.FIRST;
            num_item:=0;
            TT_BC_ICMS:=0;
            TT_ICMS:=0;
            TT_BC_ST:=0;
            TT_ICMS_ST:=0;
            TT_PRODUTOS:=0;
            TT_FRETE:=0;
            TT_SEGURO:=0;
            TT_DESCONTO:=0;
            TT_II:=0;
            TT_IPI:=0;
            TT_PIS:=0;
            TT_COFINS:=0;
            TT_OUTRAS:=0;
            TT_NFE:=0;
            tt_exonerado:=0;
            while NOT cldasenf_itens_imp.EOF do BEGIN
               {$REGION 'Produto'}
                  INC(NUM_ITEM);
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Add;
                  item_recno:=dmconexao.acbrnfe1.NotasFiscais.Items[0].NFe.det.Count;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.nItem:=num_item;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cProd:=CLDASENF_ITENS_IMPCOD_PRODUTO.AsString;

                  cldasegen.close;
                  cldasegen.commandtext:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(cldasenf_itens_impCOD_PRODUTO.AsString);
                  CLDASEGEN.OPEN;
                  if NOT (cldasegen.FieldByName('GETIN').IsNull) THEN BEGIN
                     IF(LENGTH(TRIM(CLDASEGEN.FieldByName('GETIN').AsString))>0) then BEGIN
                        dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.cEAN:=CLDASEGEN.FIELDBYNAME('GETIN').AsString;
                     END;
                  END;
                  classif_id:=CLDASEGEN.FIELDBYNAME('CLASS_ID').AsInteger;
                  UN_PROD:=CLDASEGEN.FIELDBYNAME('UNID_VENDA').AsString;

                  cod_fabricante:=cldasegen.fieldbyname('FABRICANTE_ID').AsInteger;

                  if LENGTH(TRIM(UN_PROD))=0 then UN_PROD:='UN';


                  descricao_complementar:='DESPESAS COMPLEMENTARES REF NFE '+INTTOSTR(cldasenf_impNFE_ORI.AsInteger)+
                                                                           ' ADICAO: '+INTTOSTR(cldasenf_itens_impNUM_ADICAO.AsInteger)+
                                                                           ' SEQUENCIA: '+INTTOSTR(cldasenf_itens_impSEQUENCIAL_NA_ADICAO.AsInteger);
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.xProd:=DESCRICAO_COMPLEMENTAR;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.NCM:=cldasenf_itens_impCLASSIFICACAO.AsString;
                  CFOP:='3949';
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.CFOP:=CFOP;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uCom:=UN_PROD;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qCom:=cldasenf_itens_impQUANTIDADE.AsInteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnCom:=cldasenf_itens_impVALOR_UNITARIO.asfloat;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vProd:=cldasenf_itens_impVALOR_TOTAL.asfloat;
                  if usa_unid_trib_entrada=true then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=cldasenf_itens_impUNID_TRIBUT.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=cldasenf_itens_impQUANTIDADE_TRIB.Asfloat;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=cldasenf_itens_impVALOR_UNIT_TRIB.AsFloat;
                  end
                  else begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.uTrib:=UN_PROD;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.qTrib:=cldasenf_itens_impQUANTIDADE.AsInteger;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.vUnTrib:=cldasenf_itens_impVALOR_UNITARIO.AsFloat;
                  end;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.IndTot:=itSomaTotalNFe;

               {$ENDREGION}

               {$REGION 'DI'}
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Add;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].nDi:=CALCULA_DI(cldaseNF_IMPNUM_DI.AsString);
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].dDi:=cldaseNF_IMPDATA_DI.AsDateTime;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].xLocDesemb:=cldaseNF_IMPLOCAL_DESEMBARACO.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFDesemb:=cldaseNF_IMPUF_DESENBARACO.AsString;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].dDesemb:=cldaseNF_IMPDATA_DESENBARACO.AsDateTime;

                  VIATRANSP:=STRTOINT(cldasenf_impTPVIATRANSP.AsString);
                  case VIATRANSP of
                     1:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvMaritima;
                     2:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvFluvial;
                     3:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvLacustre;
                     4:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvAerea;
                     5:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvPostal;
                     6:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvFerroviaria;
                     7:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvRodoviaria;
                     8:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvConduto;
                     9:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvMeiosProprios;
                     10:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvEntradaSaidaFicta;
                     11:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvCourier;
                     12:dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpViaTransp:=tvHandcarry;
                  end;

                  if VIATRANSP=1 then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].vAFRMM:=cldaseNF_IMPVAFRMM.AsFLOAT;
                  end;

                  if cldasenf_impTPINTERMEDIO.AsString='1' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiContaPropria;
                  end;

                  if cldasenf_impTPINTERMEDIO.AsString='2' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiContaOrdem;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].CNPJ:=cldasenf_impCNPJ_ADQUIRENTE.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFTerceiro:=cldasenf_impUF_ADQUIRENTE.AsString;
                  end;
                  if cldasenf_impTPINTERMEDIO.AsString='3' then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].tpIntermedio:=tiEncomenda;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].CNPJ:=cldasenf_impCNPJ_ADQUIRENTE.AsString;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].UFTerceiro:=cldasenf_impUF_ADQUIRENTE.AsString;
                  end;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].cExportador:=trim(inttostr(cldaseNF_IMPCLIENTE_ID.AsInteger));
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Add;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].nAdicao:=cldasenf_itens_impNUM_ADICAO.asinteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].nSeqAdi:=cldasenf_itens_impSEQUENCIAL_NA_ADICAO.asinteger;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Prod.DI.Items[0].adi.Items[0].cFabricante:=TRIM(INTTOSTR(cod_fabricante));

               {$ENDREGION}

               {$REGION 'Impostos'}
                  TOT_ST:=cldasenf_itens_impICMS_SUBS_TRI.AsFloat;
                  TOT_BCST:=cldasenf_itens_impBCSUBSTRI.AsFloat;

                  if cldasenf_itens_impBASEICMSOP.AsFloat>0 then begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst00;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.modBC:=dbiPrecoTabelado;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vBC:=cldasenf_itens_impBASEICMSOP.asfloat;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.pICMS:=cldasenf_itens_impALI_ICMS.AsInteger;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.vICMS:=cldasenf_itens_impICMS_OP_PROPRIA.AsFLOAT;
                  end
                  else begin
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.ICMS.CST:=cst41;
                     tot_ipi:=0;
                     dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.cEnq:='301';
                  end;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.IPI.CST:=ipi02;

                  tot_ipi:=0;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vBc:=0;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vDespAdu:=0;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vII:=0;
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.II.vIOF:=0.01;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.PIS.CST:=pis08;

                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[item_recno-1].Imposto.COFINS.CST:=cof08;


               {$ENDREGION}

               {$REGION 'Totalizacao Acumuladores'}
                  TT_BC_ICMS:=TT_BC_ICMS+cldasenf_itens_impBASEICMSOP.AsFloat; //(cldasenf_itens_impQUANTIDADE.AsInteger*cldasenf_itens_impVALOR_UNITARIO.AsFloat);
                  TT_ICMS:=TT_ICMS+cldasenf_itens_impICMS_OP_PROPRIA.AsFloat;
                  TT_BC_ST:=TT_BC_ST+cldasenf_itens_impBCSUBSTRI.AsFloat;
                  TT_ICMS_ST:=TT_ICMS_ST+cldasenf_itens_impICMS_SUBS_TRI.AsFloat;

                  tt_produtos:=tt_produtos+cldasenf_itens_impVALOR_TOTAL.AsFloat;

               {$ENDREGION}
            cldasenf_itens_imp.NEXT;
         END;

      {$ENDREGION}

         {$REGION 'Totais'}
            TT_NFE:=TT_NFE+TT_PRODUTOS+TT_IPI+TT_ICMS_ST;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC:=TT_BC_ICMS;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS:=tt_icms;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMSDeson:=tt_exonerado;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST:=tt_bc_st;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST:=tt_icms_st;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd:=tt_produtos;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete:=tt_frete;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg:=tt_seguro;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc:=TT_DESCONTO;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII:=tt_ii;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI:=tt_ipi;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS:=tt_pis;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS:=tt_cofins;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro:=TT_OUTRAS;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF:=tt_nfe;
         {$ENDREGION}

         {$REGION 'Transporte'}
            if cldasenf_impTRANSP_ID.AsInteger>0 then BEGIN
               cldasegen.close;
               cldasegen.CommandText:='SELECT * FROM TRANSPORTADORA WHERE TRANSP_ID='+INTTOSTR(cldasenf_impTRANSP_ID.AsInteger);
               CLDASEGEN.OPEN;

               if cldasenfFRETE_CONTA.AsString='0' then
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaEmitente;
               if cldasenfFRETE_CONTA.AsString='1' then
                  dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete:=mfContaDestinatario;

               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);

               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:=CLDASEGEN.FIELDBYNAME('NOME').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE:=dmconexao.limpa_cnpj(CLDASEGEN.FIELDBYNAME('IE').AsString);
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder:=CLDASEGEN.FIELDBYNAME('ENDERECO').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
               CLDASEGEN.CLOSE;
            END
            ELSE BEGIN
               dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome:='PROPRIO';
            END;

            if cldasevi_nfvolumes.IsNull then volumes:='0'
            else volumes:=cldasenf_impVOLUMES.AsString;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Add;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol:=strtoint(volumes);
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp:=cldasenf_impTIPO_VOLUME.AsString;
            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca:=cldasenf_impMARCA_TRANSPORTE.AsString;

            if cldasenf_impPESO_BRUTO.IsNull then peso:='0.000'
            else BEGIN
               PESO:=cldasenf_impPESO.AsString;
               posicao:=pos('.',peso);
               while posicao<>0 do begin
                  peso:=copy(peso,1,posicao-1)+copy(peso,posicao+1);
                  posicao:=pos('.',peso);
               end;
               for I := 1 to LENGTH(PESO) do BEGIN
                  if PESO[I]=',' then PESO[I]:='.';
               END;
               if pos('.',peso)=0 then begin
                  peso:=peso+'.000';
               end
               else begin
                  PEDACO:=COPY(PESO,POS('.',PESO)+1);
                  if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
                  if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
               end;
            END;

            for I := 0 to LENGTH(PESO)-1 do BEGIN
               if PESO[I]='.' then PESO[I]:=',';
            END;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB:=strtofloat(peso);

            if cldasenf_imppeso.IsNull then peso:='0.000'
            else BEGIN
               PESO:=cldasenf_impPESO.AsString;
               posicao:=pos('.',peso);
               while posicao<>0 do begin
                  peso:=copy(peso,1,posicao-1)+copy(peso,posicao+1);
                  posicao:=pos('.',peso);
               end;
               for I := 1 to LENGTH(PESO) do BEGIN
                  if PESO[I]=',' then PESO[I]:='.';
               END;
               if pos('.',peso)=0 then begin
                  peso:=peso+'.000';
               end
               else begin
                  PEDACO:=COPY(PESO,POS('.',PESO)+1);
                  if LENGTH(PEDACO)=1 then PESO:=PESO+'00';
                  if LENGTH(PEDACO)=2 then PESO:=PESO+'0';
               end;
            END;

            for I := 0 to LENGTH(PESO)-1 do BEGIN
               if PESO[I]='.' then PESO[I]:=',';
            END;

            dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL:=strtofloat(peso);

         {$ENDREGION}

         {$REGION 'Informacoes Complementares'}
            if length(trim(cldasenf_impOBSERVACAO.AsString))>0 then begin
              dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.InfAdic.infCpl:=cldasenf_impOBSERVACAO.AsString;
            end;
            obs_fisco:='';
         {$ENDREGION}

         dmconexao.ACBrNFe1.NotasFiscais.Items[0].GravarXML();
         cldaseemissor.Edit;
         CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);

         monta_nota_imp:=true;

      {$ENDREGION}

   END;

end;

function TfrmNotas.tipo_nota: string;
begin
   CLDASENF.Close;
   CLDASENF.CommandText:='SELECT * FROM NF WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger);
   CLDASENF.OPEN;
   if CLDASENF.RecordCount>0 then TIPO_NOTA:='NORMAL';
   CLDASENF_IMP.Close;
   CLDASENF_IMP.CommandText:='SELECT * FROM NF_IMP WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND NFE='+INTTOSTR(cldaseemissorNFE.AsInteger);
   CLDASENF_IMP.OPEN;
   if CLDASENF_IMP.RecordCount>0 then TIPO_NOTA:='IMPORTACAO';

   CLDASENF.Close;
   CLDASENF_IMP.Close;

end;

function TfrmNotas.valida_nota: boolean;
var resultado:boolean;
begin
   envia_mensagem('Validando Nota');
   dmconexao.ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := true;
   try
      dmconexao.ACBrNFe1.NotasFiscais.Validar;
      if dmconexao.ACBrNFe1.NotasFiscais.Items[0].Alertas <> '' then BEGIN
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].Alertas;
         CLDASEEMISSORXML_ORIGEM.LoadFromFile(dmconexao.ACBrNFe1.NotasFiscais.Items[0].NomeArq);
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
         resultado:=true;
         envia_mensagem('Nota Validada');
      END;
      except
      on E: Exception do begin
         cldaseemissor.Edit;
         cldaseemissorSTATUS_ATUAL.AsString:=E.Message+' / '+dmconexao.ACBrNFe1.NotasFiscais.Items[0].ErroValidacao+' / '+dmconexao.ACBrNFe1.NotasFiscais.Items[0].Alertas;;
         cldaseemissorRESULTADO.AsInteger:=3;
         cldaseemissor.Post;
         cldaseemissor.ApplyUpdates(0);
         resultado:=false;
      end;
   end;

   result:=resultado;
end;

end.
