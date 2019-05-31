unit ufrmSpedFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxCheckBox,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, dxGaugeCustomScale, cxClasses,
  dxGaugeControl, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtDlgs, cxShellBrowserDialog,
  Datasnap.DBClient, ACBrBase, ACBrSpedFiscal,ACBrEFDBlocos, cxGridExportLink,cxExport;

type
  TfrmSpedFiscal = class(TFrame)
    cldaseemp: TClientDataSet;
    cldaseempCODEMP_ID: TIntegerField;
    cldaseempNOMEMP: TStringField;
    cldaseempCNPJ: TStringField;
    cldaseempIE: TStringField;
    cldaseempENDERECO: TStringField;
    cldaseempBAIRRO: TStringField;
    cldaseempCIDADE: TStringField;
    cldaseempESTADO: TStringField;
    cldaseempCEP: TStringField;
    cldaseempCODIGO_MUN: TStringField;
    cldaseempIMPORTA: TSmallintField;
    cldaseempREVENDA: TSmallintField;
    cldaseempCHEIA: TSmallintField;
    cldaseempMEIA: TSmallintField;
    cldaseempCONTROLE_MANUAL: TSmallintField;
    cldaseempAG_COBRANCA: TIntegerField;
    cldaseempCONTA_COBRANCA: TIntegerField;
    cldaseempDAC_CONTA_COBRANCA: TSmallintField;
    cldaseempNOMEMP_COBRANCA: TStringField;
    cldaseempTIPO_PRODUTO: TStringField;
    cldaseempULTIMA_NOTA: TIntegerField;
    cldaseempNUMERO: TStringField;
    cldaseempCOMPLEMENTO: TStringField;
    cldaseempTELEFONE: TStringField;
    cldaseempIBGE: TStringField;
    cldaseempSMTP: TStringField;
    cldaseempPOP3: TStringField;
    cldaseempPORTA: TSmallintField;
    cldaseempCONTA: TStringField;
    cldaseempSENHA: TStringField;
    cldaseempREQUER_AUTENTICACAO: TSmallintField;
    cldaseempREQUER_CRIPTOGRAFIA: TSmallintField;
    cldaseempEMITE_NOTA: TSmallintField;
    cldaseempPRIORIZAR_NOTA: TIntegerField;
    cldaseempLOGO_NFE: TBlobField;
    cldaseempRAZAO_NFE: TStringField;
    cldaseempFORMATO_NOTA: TStringField;
    cldaseempOPERACIONAL: TSmallintField;
    cldaseempVENDA: TSmallintField;
    cldaseempCONTAS_PAGAR: TSmallintField;
    cldaseempIMPORTADORA: TSmallintField;
    cldaseempTRADING: TSmallintField;
    cldaseempNUMERO_SERIE: TStringField;
    cldaseempVALIDADE_CERTIFICADO: TSQLTimeStampField;
    cldaseempNOTA_ELETRONICA: TSmallintField;
    cldaseempNOME_CONTABILIDADE: TStringField;
    cldaseempNOME_CONTADOR: TStringField;
    cldaseempCONTADOR_CPF: TStringField;
    cldaseempCONTADOR_CRC: TStringField;
    cldaseempCONTADOR_EMAIL: TStringField;
    DASOEMP: TDataSource;
    DASOSDO: TDataSource;
    DASOPERIODO: TDataSource;
    cldasesdo: TClientDataSet;
    cldasesdoCODEMP_ID: TIntegerField;
    cldasesdoPERIODO: TStringField;
    cldasesdoIMPORTADO: TSmallintField;
    cldasesdoCOD_PRODUTO: TStringField;
    cldasesdoCNPJ_ARMAZEM: TStringField;
    cldasesdoNOME_ARMAZEM: TStringField;
    cldasesdoSALDO_ANTERIOR: TIntegerField;
    cldasesdoENTRADA: TIntegerField;
    cldasesdoSAIDA: TIntegerField;
    cldasesdoSALDO: TIntegerField;
    cldasesdoCUSTO: TFMTBCDField;
    cldasesdoUNIDADE_VENDA: TStringField;
    cldasesdoDESCRICAO: TStringField;
    CLDASEPROD: TClientDataSet;
    CLDASEPRODCODIGO: TStringField;
    CLDASEPRODDESCRICAO: TStringField;
    CLDASEPRODUNIDADE: TStringField;
    CLDASEPRODIMPORTADO: TSmallintField;
    CLDASEPRODCOMPOSTO: TSmallintField;
    CLDASEPRODVAZAO: TFloatField;
    CLDASEPRODVAL_ATU: TFloatField;
    CLDASEPRODVAL_INI_ALFA: TFloatField;
    CLDASEPRODVAL_ATU_ALFA: TFloatField;
    CLDASEPRODLOCALIZACAO: TStringField;
    CLDASEPRODSALDOAUXILIAR: TFloatField;
    CLDASEPRODI_MANUTENCAO: TFloatField;
    CLDASEPRODE_MANUTENCAO: TFloatField;
    CLDASEPRODS_MANUTENCAO: TFloatField;
    CLDASEPRODT_MANUTENCAO: TFloatField;
    CLDASEPRODI_CONSERTO: TFloatField;
    CLDASEPRODE_CONSERTO: TFloatField;
    CLDASEPRODS_CONSERTO: TFloatField;
    CLDASEPRODT_CONSERTO: TFloatField;
    CLDASEPRODI_ALFANDEGA: TFloatField;
    CLDASEPRODE_ALFANDEGA: TFloatField;
    CLDASEPRODS_ALFANDEGA: TFloatField;
    CLDASEPRODT_ALFANDEGA: TFloatField;
    CLDASEPRODI_EMPENHO: TFloatField;
    CLDASEPRODE_EMPENHO: TFloatField;
    CLDASEPRODS_EMPENHO: TFloatField;
    CLDASEPRODT_EMPENHO: TFloatField;
    CLDASEPRODI_ESTOQUE: TFloatField;
    CLDASEPRODE_ESTOQUE: TFloatField;
    CLDASEPRODS_ESTOQUE: TFloatField;
    CLDASEPRODT_ESTOQUE: TFloatField;
    CLDASEPRODT_DISPONIVEL: TFloatField;
    CLDASEPRODDT_ATU: TDateField;
    CLDASEPRODUSU_ATU: TStringField;
    CLDASEPRODREAJUSTE: TFloatField;
    CLDASEPRODFATOR_CORRECAO: TFloatField;
    CLDASEPRODDESCONTO_DROPSA: TFloatField;
    CLDASEPRODCOMPRADO: TFloatField;
    CLDASEPRODSALDO_I_COMPRADO: TFloatField;
    CLDASEPRODPAI: TSmallintField;
    CLDASEPRODFABRICADO: TFloatField;
    CLDASEPRODCLASS_ID: TIntegerField;
    CLDASEPRODCOD001: TStringField;
    CLDASEPRODCOD002: TStringField;
    CLDASEPRODCOD003: TStringField;
    CLDASEPRODCOD004: TStringField;
    CLDASEPRODDES001: TStringField;
    CLDASEPRODDES002: TStringField;
    CLDASEPRODDES003: TStringField;
    CLDASEPRODDES004: TStringField;
    CLDASEPRODDESCR_EMBALAGEM: TStringField;
    CLDASEPRODUNID_VENDA: TStringField;
    CLDASEPRODTIPO: TStringField;
    CLDASEPRODPERFIL: TStringField;
    CLDASEPRODFABRICANTE_ID: TIntegerField;
    CLDASEPRODMARCA_ID: TIntegerField;
    CLDASEPRODTIPO_DESCONTO_ID: TIntegerField;
    CLDASEPRODMAXIMO: TIntegerField;
    CLDASEPRODVALOR: TFMTBCDField;
    CLDASEPRODMINIMO: TIntegerField;
    CLDASEPRODPCHEIO: TFMTBCDField;
    CLDASEPRODPMEIO: TFMTBCDField;
    CLDASEPRODPRCHEIO: TFMTBCDField;
    CLDASEPRODCXMESTRA: TFMTBCDField;
    CLDASEPRODOUTTER: TFMTBCDField;
    CLDASEPRODBLISTER: TFMTBCDField;
    CLDASEPRODQTD: TFMTBCDField;
    CLDASEPRODCXMESTRA_BARRA: TStringField;
    CLDASEPRODOUTTER_BARRA: TStringField;
    CLDASEPRODQTD_BARRA: TStringField;
    CLDASEPRODKG_BARRA: TStringField;
    CLDASEPRODBLISTER_BARRA: TStringField;
    CLDASEPRODCXMESTRA_LARGURA: TFMTBCDField;
    CLDASEPRODOUTTER_LARGURA: TFMTBCDField;
    CLDASEPRODQTD_LARGURA: TFMTBCDField;
    CLDASEPRODKG_LARGURA: TFMTBCDField;
    CLDASEPRODBLISTER_LARGURA: TFMTBCDField;
    CLDASEPRODCXMESTRA_ALTURA: TFMTBCDField;
    CLDASEPRODOUTTER_ALTURA: TFMTBCDField;
    CLDASEPRODQTD_ALTURA: TFMTBCDField;
    CLDASEPRODKG_ALTURA: TFMTBCDField;
    CLDASEPRODBLISTER_ALTURA: TFMTBCDField;
    CLDASEPRODCXMESTRA_COMPRIMENTO: TFMTBCDField;
    CLDASEPRODOUTTER_COMPRIMENTO: TFMTBCDField;
    CLDASEPRODQTD_COMPRIMENTO: TFMTBCDField;
    CLDASEPRODKG_COMPRIMENTO: TFMTBCDField;
    CLDASEPRODBLISTER_COMPRIMENTO: TFMTBCDField;
    CLDASEPRODCXMESTRA_CUBAGEM: TFMTBCDField;
    CLDASEPRODOUTTER_CUBAGEM: TFMTBCDField;
    CLDASEPRODQTD_CUBAGEM: TFMTBCDField;
    CLDASEPRODKG_CUBAGEM: TFMTBCDField;
    CLDASEPRODBLISTER_CUBAGEM: TFMTBCDField;
    CLDASEPRODKG: TFMTBCDField;
    CLDASEPRODUN_BARRA: TStringField;
    CLDASEPRODBLOQUEADO_PARA_VENDA: TSmallintField;
    CLDASEPRODFORA_DE_LINHA: TSmallintField;
    CLDASEPRODCUSTO: TFMTBCDField;
    CLDASEPRODCRK: TFMTBCDField;
    CLDASEPRODPIS: TFMTBCDField;
    CLDASEPRODCOFINS: TFMTBCDField;
    CLDASEPRODCONTR_SOCIAL: TFMTBCDField;
    CLDASEPRODIRPJ: TFMTBCDField;
    CLDASEPRODICMS: TFMTBCDField;
    CLDASEPRODST: TFMTBCDField;
    CLDASEPRODIPI: TFMTBCDField;
    CLDASEPRODSOMA_IMPOSTOS: TFMTBCDField;
    CLDASEPRODPROMOCAO: TSmallintField;
    CLDASEPRODPRECO_PROMOCIONAL: TFMTBCDField;
    CLDASEPRODPROMOCAO_ATE: TDateField;
    CLDASEPRODOBS_PROMOCAO: TBlobField;
    CLDASEPRODMILHEIRO: TFMTBCDField;
    CLDASEPRODONU: TIntegerField;
    CLDASEPRODSEQ_PAG: TIntegerField;
    CLDASEPRODCXMESTRA_KG: TFMTBCDField;
    CLDASEPRODOUTER_KG: TFMTBCDField;
    CLDASEPRODQTD_KG: TFMTBCDField;
    CLDASEPRODBLISTER_KG: TFMTBCDField;
    CLDASEPRODPER_DES_PRO: TFMTBCDField;
    CLDASEPRODUSAR_PROMOCAO: TStringField;
    CLDASEPRODDIVISAO_ID: TSmallintField;
    CLDASEPRODPESO_LIQUIDO: TFMTBCDField;
    CLDASEPRODPESO_BRUTO: TFMTBCDField;
    CLDASEPRODBLOQUEADO_ESTADOS: TStringField;
    CLDASEPRODCAIXAS_POR_PALETS: TIntegerField;
    CLDASEPRODCOD_ENT_KRO: TStringField;
    CLDASEPRODBLOQUEADO_NOTA: TSmallintField;
    CLDASEPRODEMP_NOTA: TIntegerField;
    CLDASEPRODBST: TSmallintField;
    CLDASEPRODDESCRICAO_NFE: TStringField;
    CLDASEPRODEMB_PROD_ANT: TSmallintField;
    CLDASEPRODMUDANCA_UNIDADE: TSmallintField;
    CLDASEPRODMUD_UNID_PARTIR: TDateField;
    CLDASEPRODMUD_UNID_OPERACAO: TStringField;
    CLDASEPRODMUD_UNID_FATOR: TIntegerField;
    CLDASEPRODCLASSE: TStringField;
    CLDASEPRODCOD_GEN1: TStringField;
    CLDASEPRODCOD_GEN2: TStringField;
    CLDASEPRODCOD_GEN3: TStringField;
    CLDASEPRODGENERICO1: TStringField;
    CLDASEPRODGENERICO2: TStringField;
    CLDASEPRODGENERICO3: TStringField;
    CLDASEPRODICMS_IMPORTACAO: TFMTBCDField;
    CLDASEPRODDT_PRI_IMP: TDateField;
    CLDASEPRODDT_PRI_NOTA: TDateField;
    CLDASEPRODCONF_SAIEST: TIntegerField;
    CLDASEPRODCONF_DEVOLUCAO: TIntegerField;
    CLDASEPRODCONF_CANCELAMENTO: TIntegerField;
    CLDASEPRODCONFERIDO_COLIGADA: TSmallintField;
    CLDASEPRODTIPO_RESTRICAO_VENDA: TSmallintField;
    CLDASEPRODGETIN: TStringField;
    CLDASEPRODBLOQ_AJF: TSmallintField;
    CLDASEPRODEMP_NOTA2: TIntegerField;
    CLDASEPRODEMP_NOTA1_UF: TStringField;
    CLDASEPRODBLOQ_SEM_SDO_FISCAL: TSmallintField;
    cldasecli: TClientDataSet;
    cldasecliCLIENTE_ID: TIntegerField;
    cldasecliCLIENTE: TStringField;
    cldasecliRAZAO_SOCIAL: TStringField;
    cldasecliENDERECO: TStringField;
    cldasecliNUMERO: TStringField;
    cldasecliCOMPLEMENTO: TStringField;
    cldasecliBAIRRO: TStringField;
    cldasecliCIDADE: TStringField;
    cldasecliESTADO: TStringField;
    cldasecliCEP: TStringField;
    cldasecliTELEFONE: TStringField;
    cldasecliFAX: TStringField;
    cldasecliCNPJ: TStringField;
    cldasecliIE: TStringField;
    cldasecliCOD_VEN: TIntegerField;
    cldasecliRESTRICAO: TSmallintField;
    cldasecliDT_ATUALIZACAO: TDateField;
    cldasecliUSU_ATU: TStringField;
    cldasecliCANCELADO: TSmallintField;
    cldasecliEMAIL: TStringField;
    cldasecliWEBSITE: TStringField;
    cldasecliTPO_CLI: TStringField;
    cldasecliSIS_VDD: TStringField;
    cldasecliSIS_TRP: TStringField;
    cldasecliDT_CADASTRO: TDateField;
    cldasecliDT_SERASA: TDateField;
    cldasecliST_SERASA: TStringField;
    cldasecliQD_CHQ_S_FUNDO: TSmallintField;
    cldasecliQTD_PFIN: TSmallintField;
    cldasecliDT_CONSTITUICAO: TDateField;
    cldasecliPAIS: TStringField;
    cldasecliCELULAR: TStringField;
    cldasecliNUM_PROTESTOS: TSmallintField;
    cldasecliSERASA_DE: TDateField;
    cldasecliSERASA_ATE: TDateField;
    cldasecliCODIGO_MUN: TStringField;
    cldasecliCOMENT_COMERCIAL: TBlobField;
    cldasecliOBSERVACAO: TBlobField;
    cldasecliEMPNFE: TIntegerField;
    cldasecliCONTROLE_MANUAL: TIntegerField;
    cldasecliCOD_REP: TIntegerField;
    cldasecliCOLIGADA_ID: TIntegerField;
    cldasecliLIMITE_CREDITO: TFMTBCDField;
    cldasecliCAPITAL_SOCIAL: TFMTBCDField;
    cldasecliTRANSP_ID: TIntegerField;
    cldasecliEXTRANGEIRO: TSmallintField;
    cldasecliIBGE: TStringField;
    cldasecliEMAIL_NFE: TStringField;
    cldasecliCONTATO1: TStringField;
    cldasecliCONTATO2: TStringField;
    cldasecliCONTATO3: TStringField;
    cldasecliEMAIL1: TStringField;
    cldasecliEMAIL2: TStringField;
    cldasecliEMAIL3: TStringField;
    cldasecliSITE: TStringField;
    cldasecliDEPARTAMENTO1: TStringField;
    cldasecliDEPARTAMENTO2: TStringField;
    cldasecliDEPARTAMENTO3: TStringField;
    cldasecliMOEDA_ID: TIntegerField;
    cldasecliCONDICAO_PGTO_ID: TIntegerField;
    cldasecliTERMOS_PGTO_ID: TIntegerField;
    cldasecliHEALTH_WARNING: TBlobField;
    cldasecliINSTR_ENTRE_ID: TIntegerField;
    cldasecliCLASSIFICACAO_ID: TIntegerField;
    cldasecliBANCO1: TStringField;
    cldasecliBANCO2: TStringField;
    cldasecliAGENCIA1: TStringField;
    cldasecliAGENCIA2: TStringField;
    cldasecliCONTACORRENTE1: TStringField;
    cldasecliCONTACORRENTE2: TStringField;
    cldasecliFAVORECIDO1: TStringField;
    cldasecliFAVORECIDO2: TStringField;
    cldasecliDESCONTO: TFMTBCDField;
    cldasecliCATEGORIA: TStringField;
    cldasecliTIPOS_MANUAL: TStringField;
    cldasecliNOME_COMPLETO_REC: TStringField;
    cldasecliTIPO_CLI_COMISSAO: TStringField;
    cldasecliPROFISSAO: TStringField;
    cldasecliFONE_FORNEC: TStringField;
    cldasecliFAX_FORNEC: TStringField;
    cldasecliCNPF_SEM: TStringField;
    cldasecliIMPORTACAO_BANCO: TStringField;
    cldasecliIMPORTACAO_ENDERECO_BANCO: TStringField;
    cldasecliIMPORTACAO_NECEFICIARIO: TStringField;
    cldasecliIMPORTACAO_CODIGO_BANCO: TStringField;
    cldasecliENDERECO_BENEFICIARIO: TStringField;
    cldasecliIMPORTANCAO_CODIGO_AGENCIA: TStringField;
    cldasecliIMPORTACAO_CONTA: TStringField;
    cldasecliIBAN: TStringField;
    cldasecliIMPORTACAO_INTERMEDIARIO: TStringField;
    cldasecliTIPO_CLI_COMISSAO_ESPECIAL: TSmallintField;
    cldasecliSWIFT_CODE: TStringField;
    cldasecliSWIFT_CODE_INTER: TStringField;
    cldasecliREGIAO_ID: TIntegerField;
    cldasecliCLIENTE_KROYA: TSmallintField;
    cldasecliNECESSARIO_PIN: TSmallintField;
    cldasecliOBS_NOTA: TBlobField;
    cldasecliSERASA_PDF: TBlobField;
    cldasecliCPF: TStringField;
    cldasecliRG: TStringField;
    cldasecliCOMISSAO_DIF_REP: TStringField;
    cldasecliCOD_SUP: TSmallintField;
    cldasecliCOD_SUPD: TIntegerField;
    cldasecliTABELA: TSmallintField;
    cldasecliDATA_ULTIMA_COMPRA: TDateField;
    cldasecliLIMITE_CALCULADO: TFMTBCDField;
    cldasecliCOMPRA_PERIODO: TFMTBCDField;
    cldasecliTRANSP_INFLA_ID: TIntegerField;
    cldasecliOBS_RECEBIMENTO: TBlobField;
    cldasecliABREVIADO: TStringField;
    cldasecliTRANSP_SC: TIntegerField;
    cldasecliTRANSP_SC_INFLA: TIntegerField;
    cldasecliTOTAL_INAD: TFMTBCDField;
    cldasecliCONFERIDO_COLIGADA: TSmallintField;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cldaseclassif: TClientDataSet;
    cldaseclassifCLASS_ID: TIntegerField;
    cldaseclassifCLASSIFICACAO: TStringField;
    cldaseclassifDESCRICAO: TStringField;
    cldaseclassifCFOPESTADO: TStringField;
    cldaseclassifCFOPFORAEST: TStringField;
    cldaseclassifCFOPEXTERIOR: TStringField;
    cldaseclassifIPI: TFMTBCDField;
    cldaseclassifIMPORTACAO: TFMTBCDField;
    cldaseclassifCONVENIO: TStringField;
    cldaseclassifPIS: TFMTBCDField;
    cldaseclassifCOFINS: TFMTBCDField;
    cldaseclassifPIS_FACIL: TFMTBCDField;
    cldaseclassifIRPJ: TFMTBCDField;
    cldaseclassifCONTR_SOCIAL: TFMTBCDField;
    cldaseclassifPIS_IMPORTACAO: TFMTBCDField;
    cldaseclassifCOFINS_IMPORTACAO: TFMTBCDField;
    cldaseclassifCOFINS_FACIL: TFMTBCDField;
    cldaseclassifIMPORTACAO_FACIL: TFMTBCDField;
    cldaseclassifIPI_IMPORTACAO: TFMTBCDField;
    cldaseclassifIPI_FACIL: TFMTBCDField;
    cldaseclassifCOD_PROD_GNRE: TSmallintField;
    cldaseclassifCEST: TStringField;
    cldaseclassifTEM_ST: TSmallintField;
    cldaseclassifUNIDADE_EXPORTACAO: TStringField;
    cldaseclassifUSADA: TSmallintField;
    cldaseunid: TClientDataSet;
    cldaseunidUNID_VENDA: TStringField;
    cldaseunidDESCRICAO: TStringField;
    cldaseunidDESCRICAO_INGLES: TStringField;
    save_excel: TSaveDialog;
    cldaseentrada: TClientDataSet;
    SaveTextFileDialog1: TSaveTextFileDialog;
    CLDASEALIQ: TClientDataSet;
    CLDASEALIQCODEMP_ID: TIntegerField;
    CLDASEALIQCLASS_ID: TIntegerField;
    CLDASEALIQESTADO: TStringField;
    CLDASEALIQICMS_OP: TFMTBCDField;
    CLDASEALIQMVA_ST_ORI: TFMTBCDField;
    CLDASEALIQALIQ_INT_EST_DES: TFMTBCDField;
    CLDASEALIQMVA_ST_AJUSTADA: TFMTBCDField;
    CLDASEALIQCONSUMIDOR_FINAL: TFMTBCDField;
    CLDASEALIQMVA_ST_ORI_S: TFMTBCDField;
    CLDASEALIQALIQ_INT_EST_DES_S: TFMTBCDField;
    CLDASEALIQMVA_ST_AJUSTADA_S: TFMTBCDField;
    CLDASEALIQCONSUMIDOR_FINAL_S: TFMTBCDField;
    CLDASEALIQICMS_NAC: TFMTBCDField;
    CLDASEALIQCOD_PROD_GNRE: TSmallintField;
    CLDASEALIQCOD_PROD_GNRE_FP: TSmallintField;
    CLDASEALIQFUNDO_POBREZA: TFMTBCDField;
    CLDASEALIQUSA_MVA_AJUSTADA: TSmallintField;
    CLDASEALIQFP_FAZ_PARTE_MVA: TSmallintField;
    CLDASEALIQGNRE_UNICA: TIntegerField;
    CLDASEALIQGNRE_COD_PROD: TStringField;
    CLDASEALIQGNRE_COD_PROD_FP: TStringField;
    CLDASEALIQCONVENIO: TStringField;
    CLDASEALIQDECRETO: TStringField;
    CLDASEALIQARTIGO: TStringField;
    CLDASEALIQOBSERVACAO: TBlobField;
    CLDASEALIQICMS_IMPORT: TFMTBCDField;
    cldaseinvmes: TClientDataSet;
    cldaseinvmesCODEMP_ID: TIntegerField;
    cldaseinvmesANO: TIntegerField;
    cldaseinvmesMES: TIntegerField;
    cldaseinvmesLIB_SPED_EM: TSQLTimeStampField;
    cldaseinvmesLIB_SPED_POR: TStringField;
    cldaseinvmesGERADO_SPED_EM: TSQLTimeStampField;
    cldaseinvitem: TClientDataSet;
    cldaseinvitemCODEMP_ID: TIntegerField;
    cldaseinvitemANO: TIntegerField;
    cldaseinvitemMES: TIntegerField;
    cldaseinvitemCOD_PRODUTO: TStringField;
    cldaseinvitemINICIAL: TIntegerField;
    cldaseinvitemSAIDA: TIntegerField;
    cldaseinvitemREMESSA_ARM: TIntegerField;
    cldaseinvitemTOTAL_SAIDA: TIntegerField;
    cldaseinvitemIMP_COM: TIntegerField;
    cldaseinvitemRETORNO_ARM: TIntegerField;
    cldaseinvitemENTRADA: TIntegerField;
    cldaseinvitemFINAL: TIntegerField;
    cldaseinvitemFINAL_ARM: TIntegerField;
    cldaseinvitemDIF_ATUAL_ARM: TIntegerField;
    cldaseinvitemGOL_INICIAL: TIntegerField;
    cldaseinvitemGOL_ENTRADA: TIntegerField;
    cldaseinvitemGOL_SAIDA: TIntegerField;
    cldaseinvitemGOL_FINAL: TIntegerField;
    cldaseinvitemPEL_INICIAL: TIntegerField;
    cldaseinvitemPEL_ENTRADA: TIntegerField;
    cldaseinvitemPEL_SAIDA: TIntegerField;
    cldaseinvitemPEL_FINAL: TIntegerField;
    cldaseinvitemDF_INICIAL: TIntegerField;
    cldaseinvitemDF_ENTRADA: TIntegerField;
    cldaseinvitemDF_SAIDA: TIntegerField;
    cldaseinvitemDF_FINAL: TIntegerField;
    cldaseinvitemTOTAL_ENTRADA: TIntegerField;
    cldaseinvitemOUT_INICIAL: TIntegerField;
    cldaseinvitemOUT_ENTRADA: TIntegerField;
    cldaseinvitemOUT_SAIDA: TIntegerField;
    cldaseinvitemOUT_FINAL: TIntegerField;
    cldaseinvitemDESCRICAO: TStringField;
    cldasefazinv: TClientDataSet;
    cldasefazinvCODEMP_ID: TIntegerField;
    cldasefazinvCOD_PRODUTO: TStringField;
    cldasefazinvPMEIO: TFMTBCDField;
    cldasefazinvPRCHEIO: TFMTBCDField;
    cldasefazinvPCHEIO: TFMTBCDField;
    cldasefazinvCUSTO: TFMTBCDField;
    cldasefazinvCUSTO_CRK: TFMTBCDField;
    cldasefazinvPAPAR: TFMTBCDField;
    cldasefazinvENVIA_INVENTARIO: TSmallintField;
    DASO_INVMES: TDataSource;
    pgc_k: TPageControl;
    tash_periodo: TTabSheet;
    GroupBox2: TGroupBox;
    Button8: TButton;
    DBGrid2: TDBGrid;
    tash_bloco_k: TTabSheet;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Button9: TButton;
    Button10: TButton;
    Button6: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PERIODO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTADO: TcxGridDBColumn;
    cxGrid1DBTableView1COD_PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ_ARMAZEM: TcxGridDBColumn;
    cxGrid1DBTableView1NOME_ARMAZEM: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE_VENDA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tash_processamento: TTabSheet;
    dxGaugeControl1: TdxGaugeControl;
    gauge_velocimetro: TdxGaugeCircularHalfScale;
    tash_proc2: TTabSheet;
    dxGaugeControl2: TdxGaugeControl;
    dxGaugeControl2ContainerScale1: TdxGaugeContainerScale;
    gauge_circular1: TdxGaugeCircularScale;
    gaugelegenda1: TdxGaugeQuantitativeScaleCaption;
    gaugerange1: TdxGaugeCircularScaleRange;
    gaugerange2: TdxGaugeCircularScaleRange;
    Button1: TButton;
    procedure FrameEnter(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    a_produtos:array of string;
    a_terceiros:array of string;
    a_unidades:array of string;
    u_unidades:integer;
    u_produtos:integer;
    u_terceiros:integer;
    CUSTO_PRODUTO:DOUBLE;
    PERIODO:STRING;
    PERIODO_DE:TDATE;
    PERIODO_ATE:TDATE;
    PROCEDURE INCLUI_SDO(CODEMP_ID:INTEGER;PERIODO:STRING;IMPORTADO:INTEGER;COD_PRODUTO:STRING;CNPJ_ARMAZEM:STRING;NOME_ARMAZEM:STRING;SALDO:INTEGER;UNIDADE:STRING;DESCRICAO:STRING);
    procedure zera_array;
    procedure inclui_produto(cod_produto:string);
    procedure inclui_terceiro(cod_terceiro:string);
    procedure inclui_unidades(unidade:string);
    function apura_custo(codemp:integer;cod_produto:string):double;
    function limpa_cnpj(cnpj:string):string;
    procedure processa_mes(codemp_id:integer);
    function fracao(total:integer;parte:integer):double;

    { Public declarations }
  end;

implementation

{$R *.dfm}

uses un_damo_principal;

function TfrmSpedFiscal.apura_custo(codemp: integer;
  cod_produto: string): double;
var custo:double;
  FAZ: Boolean;
  I:INTEGER;
begin
   custo:=0;

   for I := 0 to 1 do BEGIN
      cldaseentrada.Close;
      case I of
         0:cldaseentrada.CommandText:='SELECT * FROM ENTRADA_ESTOQUE_ATU WHERE EMPRESA_ID='+INTTOSTR(CODEMP)+' AND CODIGO='+QUOTEDSTR(cod_produto)+' ORDER BY DATA_ENTRADA';
         1:cldaseentrada.CommandText:='SELECT * FROM ENTRADA_ESTOQUE_REV WHERE EMPRESA_ID='+INTTOSTR(CODEMP)+' AND CODIGO='+QUOTEDSTR(cod_produto)+' ORDER BY DATA_ENTRADA';
      end;
      CLDASEENTRADA.Open;
      CLDASEENTRADA.First;
      while NOT CLDASEENTRADA.EOF do BEGIN
         FAZ:=TRUE;
         if UPPERCASE(COPY(CLDASEENTRADA.FieldByName('NOTA_FISCAL').AsString,1,3))='CAN' then FAZ:=FALSE;
         if UPPERCASE(COPY(CLDASEENTRADA.FieldByName('NOTA_FISCAL').AsString,1,3))='DEV' then FAZ:=FALSE;
         if (CLDASEENTRADA.FIELDBYNAME('CUSTO_UNITARIO').ASFLOAT>0) AND (FAZ=TRUE) then CUSTO:=CLDASEENTRADA.FIELDBYNAME('CUSTO_UNITARIO').ASFLOAT;
         CLDASEENTRADA.Next;
      END;
   END;
   APURA_CUSTO:=CUSTO;

end;

procedure TfrmSpedFiscal.Button10Click(Sender: TObject);
var
  i: integer;
  TOTAL_INVENTARIO:DOUBLE;
  arquivo_sped:string;
   ACBrSPEDFiscal1:TACBrSPEDFiscal;
   total_registros:integer;
   registro_atual:integer;

begin

   if cldaseinvmesGERADO_SPED_EM.IsNull then begin



  total_registros:=cldasesdo.RecordCount;

   ACBrSPEDFiscal1:=TACBrSPEDFiscal.Create(self);

   arquivo_sped:='sped_'+cldaseempNOMEMP.AsString+'_'+formatfloat('0000',cldaseinvmesANO.AsInteger)+formatfloat('00',cldaseinvmesmes.AsInteger)+'.txt';

//   if SaveTextFileDialog1.Execute then begin

   cxShellBrowserDialog1.Path:='';
   if cxShellBrowserDialog1.Execute then begin
      pgc_k.ActivePage:=tash_proc2;
      tash_proc2.Refresh;
      gaugelegenda1.Text:='Verificando Armazens';
      gauge_circular1.Value:=0;
      zera_array;

      TOTAL_INVENTARIO:=0;

      cldasesdo.First;
      registro_atual:=0;
      while not cldasesdo.eof do begin
         TOTAL_INVENTARIO:=TOTAL_INVENTARIO+(cldasesdoSALDO.AsInteger*cldasesdoCUSTO.AsFloat);
         inclui_produto(cldasesdoCOD_PRODUTO.AsString);
         if (cldasesdoCNPJ_ARMAZEM.AsString<>'0000') and (cldasesdoCNPJ_ARMAZEM.AsString<>'0000') then begin
            inclui_terceiro(cldasesdoCNPJ_ARMAZEM.AsString);
         end;
         cldasesdo.Next;
         inc(registro_atual);
         gauge_circular1.Value:=fracao(total_registros,registro_atual);
         Application.ProcessMessages;
      end;

//      ACBrSPEDFiscal1.Path:=ExtractFilePath(SaveTextFileDialog1.FileName);
//      ACBrSPEDFiscal1.Arquivo:=ExtractFileName(SaveTextFileDialog1.FileName);
      ACBrSPEDFiscal1.Path:=cxShellBrowserDialog1.Path;
      ACBrSPEDFiscal1.Arquivo:=arquivo_sped;

      ACBrSPEDFiscal1.Bloco_K.LimpaRegistros;
      cldasesdo.First;

      ACBrSPEDFiscal1.DT_INI := periodo_de;
      ACBrSPEDFiscal1.DT_FIN := periodo_ate;

      with ACBrSPEDFiscal1.Bloco_0 do begin
         LimpaRegistros;
         with Registro0000New do begin
            COD_VER:=vlVersao111;
            COD_FIN:=raOriginal;
            DT_INI:=periodo_de;
            DT_FIN:=periodo_ate;
            NOME:=cldaseempRAZAO_NFE.AsString;
            CNPJ:=limpa_cnpj(cldaseempCNPJ.AsString);
            UF:=cldaseempESTADO.AsString;
            IE:=cldaseempIE.AsString;
            COD_MUN:=strtoint(cldaseempIBGE.AsString);
            IND_PERFIL:=pfPerfilC;
            ind_ativ:=atIndustrial;
         end;

         with Registro0001New do begin
            IND_MOV:=imComDados;
            WITH Registro0005New DO BEGIN
               FANTASIA:=cldaseempRAZAO_NFE.AsString;
               CEP:=limpa_cnpj(cldaseempCEP.AsString);
               ENDERECO:=cldaseempENDERECO.AsString;
               NUM:=cldaseempNUMERO.AsString;
               COMPL:=cldaseempCOMPLEMENTO.AsString;
               BAIRRO:=cldaseempBAIRRO.AsString;
               FONE:=cldaseempTELEFONE.AsString;
               FAX:='';
               EMAIL:='';
            END;
            with Registro0100New do begin
               nome:=cldaseempNOME_CONTADOR.AsString;
               cpf:=cldaseempCONTADOR_CPF.AsString;
               crc:=cldaseempCONTADOR_CRC.asString;
               email:=cldaseempCONTADOR_EMAIL.AsString;
               cod_mun:=strtoint(cldaseempIBGE.AsString);
            end;

            for i := 0 to length(a_terceiros)-1 do begin
               with Registro0150New do begin
                  COD_PART:=a_terceiros[i];
                  CLDASECLI.Close;
                  CLDASECLI.CommandText:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+A_TERCEIROS[I];
                  CLDASECLI.Open;
                  NOME:=cldasecliRAZAO_SOCIAL.AsString;
                  COD_PAIS:='1058';
                  CNPJ:=limpa_cnpj(cldasecliCNPJ.AsString);
                  IE:=limpa_cnpj(cldasecliIE.AsString);
                  COD_MUN:=strtoint(cldasecliIBGE.AsString);
                  ENDERECO:=cldasecliENDERECO.AsString;
                  NUM:=cldasecliNUMERO.AsString;
                  COMPL:='';
                  BAIRRO:=cldasecliBAIRRO.AsString;
               end;
            end;
            for I:=0 TO LENGTH(a_produtos)-1 do BEGIN
               gaugelegenda1.Text:='Incluindo Produtos';
               gauge_circular1.Value:=0;
               WITH Registro0200New DO BEGIN
                  COD_ITEM:=a_produtos[I];
                  CLDASEPROD.Close;
                  CLDASEPROD.CommandText:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(A_PRODUTOS[I]);
                  CLDASEPROD.Open;
                  CLDASECLASSIF.Close;
                  CLDASECLASSIF.CommandText:='SELECT * FROM CLASSIFICACAO WHERE CLASS_ID='+INTTOSTR(CLDASEPRODCLASS_ID.AsInteger);
                  CLDASECLASSIF.Open;
                  inclui_unidades(CLDASEPRODUNID_VENDA.AsString);
                  DESCR_ITEM:=CLDASEPRODDESCRICAO.AsString;
                  UNID_INV:=CLDASEPRODUNID_VENDA.AsString;
                  TIPO_ITEM:=tiMercadoriaRevenda;
                  COD_NCM:=cldaseclassifCLASSIFICACAO.AsString;
                  EX_IPI:='';
                  COD_GEN:=COPY(cldaseclassifCLASSIFICACAO.asstring,1,2);
                  COD_LST:='';

                  CLDASEALIQ.Close;
                  CLDASEALIQ.CommandText:='SELECT * FROM CLASSIF_ESTADOS2 WHERE CODEMP_ID='+INTTOSTR(cldaseempCODEMP_ID.AsInteger)+' AND CLASS_ID='+INTTOSTR(CLDASEPRODCLASS_ID.AsInteger)+' AND ESTADO='+QUOTEDSTR('SP');
                  CLDASEALIQ.Open;

                  ALIQ_ICMS:=CLDASEALIQICMS_OP.AsFloat;

                  CEST:=limpa_cnpj(cldaseclassifCEST.AsString);
               END;
               gauge_circular1.Value:=fracao(length(a_produtos)+1,i+1);
               Application.ProcessMessages;
            END;

            for I:=0 TO LENGTH(a_unidades)-1 do BEGIN
               WITH Registro0190New DO BEGIN
                  CLDASEUNID.Close;
                  CLDASEUNID.CommandText:='SELECT * FROM UNID_VENDA WHERE UNID_VENDA='+QUOTEDSTR(A_UNIDADES[I]);
                  CLDASEUNID.Open;
                  UNID:=A_UNIDADES[I];
                  DESCR:=cldaseunidDESCRICAO.AsString;
               END;
            END;
         end;
      end;

      with ACBrSPEDFiscal1.Bloco_E do begin
         with RegistroE001New do begin
            ind_mov:=imSemDados;
            with RegistroE100New do begin
               dt_ini:=periodo_de;
               dt_fin:=periodo_ate;
            end;
            with RegistroE500New do begin
               IND_APUR:=iaMensal;
               dt_ini:=periodo_de;
               dt_fin:=periodo_ate;
            end;
         end;


      end;


      with ACBrSPEDFiscal1.Bloco_H do begin
         with RegistroH001New do begin
            IND_MOV:=imComDados;
            with RegistroH005New do begin
               DT_INV:=periodo_ate;
               VL_INV:=TOTAL_INVENTARIO;
               MOT_INV:=miFinalPeriodo;

               registro_atual:=0;
               gaugelegenda1.Text:='Bloco H';
               gauge_circular1.Value:=0;
               CLDASESDO.First;
               while NOT CLDASESDO.EOF do BEGIN
                  WITH RegistroH010New DO BEGIN
                     COD_ITEM:=cldasesdoCOD_PRODUTO.AsString;
                     UNID:=cldasesdoUNIDADE_VENDA.AsString;
                     QTD:=cldasesdoSALDO.AsInteger;
                     VL_UNIT:=cldasesdoCUSTO.AsFloat;
                     VL_ITEM:=cldasesdoCUSTO.AsFloat*cldasesdoSALDO.AsInteger;
                     if cldasesdoNOME_ARMAZEM.AsString='LOCAL' then begin
                        IND_PROP := piInformante;
                        COD_PART := ''
                     end
                     else begin
                        IND_PROP := piInformanteNoTerceiro;
                        COD_PART := cldasesdoCNPJ_ARMAZEM.AsString;
                     end;
                  END;
                  CLDASESDO.Next;
                  inc(registro_atual);
                  gauge_circular1.value:=fracao(total_registros,registro_atual);
                  Application.ProcessMessages;
               END;
            end;
         end;
      end;




      with ACBrSPEDFiscal1.Bloco_K do begin
         with RegistroK001New do begin
            IND_MOV := imComDados;
            with RegistroK100New do
            begin
              DT_INI := periodo_de;
              DT_FIN := periodo_ate;
               registro_atual:=0;
               gaugelegenda1.Text:='Bloco K';
               gauge_circular1.value:=0;
               CLDASESDO.First;
               while not cldasesdo.eof do begin
                  with RegistroK200New do begin
                     COD_ITEM := cldasesdoCOD_PRODUTO.AsString;
                     DT_EST:=periodo_ate;
                     QTD := cldasesdoSALDO.AsInteger;
                     if cldasesdoNOME_ARMAZEM.AsString='LOCAL' then begin
                        IND_EST := estPropInformantePoder;
                        COD_PART := ''
                     end
                     else begin
                        IND_EST := estPropInformanteTerceiros;
                        COD_PART := cldasesdoCNPJ_ARMAZEM.AsString;
                     end;
                     DT_EST := ACBrSPEDFiscal1.DT_FIN;
                  end;
                  cldasesdo.Next;
                  inc(registro_atual);
                  gauge_circular1.Value:=fracao(total_registros,registro_atual);
                  Application.ProcessMessages;
               end;
            end;
         end;
      end;

      ACBrSPEDFiscal1.SaveFileTXT;

      cldaseinvmes.Edit;
      cldaseinvmesGERADO_SPED_EM.AsDateTime:=now();
      cldaseinvmes.Post;
      cldaseinvmes.ApplyUpdates(0);
      cldaseinvmes.Refresh;
      pgc_k.ActivePage:=tash_bloco_k;
      showmessage('Processamento Terminado');

   end;


   FreeAndNil(ACBrSPEDFiscal1);
   end
   else begin
      showmessage('Arquivo já foi gerado');
   end;

end;

procedure TfrmSpedFiscal.Button1Click(Sender: TObject);
begin
   cldaseinvmes.Edit;
   cldaseinvmesGERADO_SPED_EM.AsDateTime:=now();
   cldaseinvmes.post;
   cldaseinvmes.applyupdates(0);
   pgc_k.ActivePage:=tash_periodo;


end;

procedure TfrmSpedFiscal.Button3Click(Sender: TObject);
begin
  pgc_k.ActivePage:=tash_periodo;

end;

procedure TfrmSpedFiscal.Button6Click(Sender: TObject);
begin
   if save_excel.Execute then begin
      ExportGridToExcel(save_excel.FileName, cxGrid1);
   end;

end;

procedure TfrmSpedFiscal.Button8Click(Sender: TObject);
VAR ANO,MES,DIA:WORD;
begin
   PERIODO:=formatfloat('0000',cldaseinvmesANO.AsInteger)+'/'+formatfloat('00',cldaseinvmesMES.AsInteger);
   ANO:=cldaseinvmesANO.AsInteger;
   MES:=cldaseinvmesMES.AsInteger;
   DIA:=1;
   PERIODO_DE:=ENCODEDATE(ANO,MES,DIA);
   MES:=MES+1;
   if MES=13 then BEGIN
      MES:=1;
      ANO:=ANO+1;
   END;
   periodo_ate:=encodedate(ano,mes,dia)-1;

   cldasesdo.Close;
   cldasesdo.CommandText:='SELECT * FROM BLOCO_K_SALDOS WHERE CODEMP_ID='+INTTOSTR(cldaseinvmesCODEMP_ID.AsInteger)+' AND PERIODO='+QUOTEDSTR(formatfloat('0000',cldaseinvmesANO.AsInteger)+'/'+formatfloat('00',cldaseinvmesMES.AsInteger))+' ORDER BY IMPORTADO,COD_PRODUTO';
   CLDASESDO.Open;
   pgc_k.ActivePage:=tash_bloco_k;

end;

procedure TfrmSpedFiscal.Button9Click(Sender: TObject);
begin
   if cldaseinvmesGERADO_SPED_EM.IsNull then begin
      processa_mes(cldaseinvmesCODEMP_ID.AsInteger);
      SHOWMESSAGE('Processamento Terminado');
   end
   else begin
      Showmessage('Já gerado sped, não pode ser processado');
   end;

end;

function TfrmSpedFiscal.fracao(total, parte: integer): double;
begin
   fracao:=(parte*100)/total;
end;

procedure TfrmSpedFiscal.FrameEnter(Sender: TObject);
begin
   tash_periodo.TabVisible:=false;
   tash_bloco_k.TabVisible:=false;
   tash_processamento.TabVisible:=false;
   tash_proc2.TabVisible:=false;
   pgc_k.ActivePageIndex:=0;

   cldaseemp.Close;
   cldaseemp.CommandText:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   cldaseemp.Open;

   CLDASEINVMES.Close;
   CLDASEINVMES.CommandText:='SELECT * FROM INV_MENSAL WHERE CODEMP_ID='+INTTOSTR(cldaseempCODEMP_ID.AsInteger)+' AND LIB_SPED_EM IS NOT NULL ORDER BY ANO DESC,MES DESC';
   CLDASEINVMES.Open;

end;

procedure TfrmSpedFiscal.inclui_produto(cod_produto: string);
var existe:boolean;
  i: Integer;
begin
   existe:=false;
   if u_produtos>0 then begin
      for i := 0 to u_produtos-1 do begin
         if a_produtos[i]=cod_produto then existe:=true;
      end;
   end;
   if existe=false then begin
      inc(u_produtos);
      SetLength(a_produtos,u_produtos);
      a_produtos[u_produtos-1]:=cod_produto;
   end;

end;

procedure TfrmSpedFiscal.INCLUI_SDO(CODEMP_ID: INTEGER; PERIODO: STRING;
  IMPORTADO: INTEGER; COD_PRODUTO, CNPJ_ARMAZEM, NOME_ARMAZEM: STRING;
  SALDO: INTEGER; UNIDADE, DESCRICAO: STRING);
begin
   cldasesdo.Append;
   cldasesdoCODEMP_ID.AsInteger:=CODEMP_ID;
   cldasesdoPERIODO.AsString:=PERIODO;
   cldasesdoIMPORTADO.AsInteger:=IMPORTADO;
   cldasesdoCOD_PRODUTO.AsString:=COD_PRODUTO;
   cldasesdoCNPJ_ARMAZEM.AsString:=CNPJ_ARMAZEM;
   cldasesdoNOME_ARMAZEM.AsString:=NOME_ARMAZEM;
   cldasesdoSALDO.AsInteger:=SALDO;
   CLDASESDOCUSTO.AsFloat:=CUSTO_PRODUTO;
   cldasesdoUNIDADE_VENDA.AsString:=UNIDADE;
   cldasesdoDESCRICAO.AsString:=DESCRICAO;
   CLDASESDO.Post;
   CLDASESDO.ApplyUpdates(0);

end;

procedure TfrmSpedFiscal.inclui_terceiro(cod_terceiro: string);
var
  existe: Boolean;
  i: Integer;
begin
   existe:=false;
   if u_terceiros>0 then begin
      for i := 0 to u_terceiros-1 do begin
         if a_terceiros[i]=cod_terceiro then existe:=true;
      end;
   end;
   if existe=false then begin
      inc(u_terceiros);
      SetLength(a_terceiros,u_terceiros);
      a_terceiros[u_terceiros-1]:=cod_terceiro;
   end;
end;

procedure TfrmSpedFiscal.inclui_unidades(unidade: string);
var
  existe: Boolean;
  i: Integer;
begin
   existe:=false;
   if u_unidades>0 then begin
      for i := 0 to u_unidades-1 do begin
         if a_unidades[i]=unidade then existe:=true;
      end;
   end;
   if existe=false then begin
      inc(u_unidades);
      SetLength(a_unidades,u_unidades);
      a_unidades[u_unidades-1]:=unidade;
   end;

end;

function TfrmSpedFiscal.limpa_cnpj(cnpj: string): string;
var
  i: Integer;
  ncnpj:string;
begin
   ncnpj:='';
   for i := 1 to length(cnpj) do begin
      if (cnpj[i]<>'.') and (cnpj[i]<>',') and (cnpj[i]<>'/') and (cnpj[i]<>'-') then ncnpj:=ncnpj+cnpj[i];
   end;
   limpa_cnpj:=ncnpj;

end;

procedure TfrmSpedFiscal.processa_mes(codemp_id: integer);
var
  FAZ: Boolean;
  FAZ_LOCAL:BOOLEAN;
  FAZ_GOLD:BOOLEAN;
  FAZ_PEL:BOOLEAN;
  FAZ_OUT:BOOLEAN;
  total_processar:integer;
  processado:integer;
begin

   pgc_k.ActivePage:=tash_processamento;

   cldasesdo.First;
   while NOT CLDASESDO.EOF do BEGIN
      CLDASESDO.Delete;
   END;
   CLDASESDO.ApplyUpdates(0);

   CLDASEINVITEM.Close;
   CLDASEINVITEM.CommandText:='SELECT * FROM INV_MENSAL_ITENS WHERE CODEMP_ID='+INTTOSTR(cldaseinvmesCODEMP_ID.AsInteger)+' AND ANO='+inttostr(cldaseinvmesANO.AsInteger)+' and mes='+inttostr(cldaseinvmesmes.AsInteger);
   cldaseinvitem.Open;

   total_processar:=cldaseinvitem.RecordCount;
   cldaseinvITEM.First;
   processado:=0;
   gauge_velocimetro.Value:=0;

   while NOT cldaseinvITEM.Eof do BEGIN
      FAZ:=FALSE;
      FAZ_LOCAL:=FALSE;
      FAZ_GOLD:=FALSE;
      FAZ_PEL:=FALSE;
      FAZ_OUT:=FALSE;

      if (cldaseinvITEMFINAL.AsInteger>0) THEN BEGIN
         FAZ:=TRUE;
         FAZ_LOCAL:=TRUE;
      END;
      if (cldaseinvITEMGOL_FINAL.AsInteger>0) THEN BEGIN
         FAZ:=TRUE;
         FAZ_GOLD:=TRUE;
      END;
      if (cldaseinvITEMPEL_FINAL.AsInteger>0) then BEGIN
         FAZ:=TRUE;
         FAZ_PEL:=TRUE;
      END;
      if (cldaseinvITEMOUT_FINAL.AsInteger>0) then BEGIN
         FAZ:=TRUE;
         FAZ_OUT:=TRUE;
      END;

      if (cldaseinvitemDIF_ATUAL_ARM.AsInteger=0) then faz:=false;

      cldasefazinv.Close;
      CLDASEFAZINV.COMMANDTEXT:='SELECT * FROM PRODUTOS_VALORES WHERE CODEMP_ID='+INTTOSTR(cldaseempCODEMP_ID.ASINTEGER)+' AND COD_PRODUTO='+QUOTEDSTR(cldaseinvitemCOD_PRODUTO.ASSTRING);
      CLDASEFAZINV.Open;
      if cldasefazinvENVIA_INVENTARIO.AsInteger<>-1 then FAZ:=FALSE;

      if FAZ=TRUE then BEGIN
         CLDASEPROD.Close;
         CLDASEPROD.CommandText:='SELECT * FROM PRODUTOS WHERE CODIGO='+QUOTEDSTR(cldaseinvitemCOD_PRODUTO.AsString);
         CLDASEPROD.Open;
         CUSTO_PRODUTO:=apura_custo(CODEMP_ID,CLDASEPRODCODIGO.AsString);
         if FAZ_LOCAL then BEGIN
            INCLUI_SDO(CODEMP_ID,PERIODO,CLDASEPRODIMPORTADO.AsInteger,cldaseinvitemCOD_PRODUTO.AsString,'0000','LOCAL',cldaseinvITEMFINAL.AsInteger,CLDASEPRODUNID_VENDA.AsString,cldaseinvitemDESCRICAO.asstring);
         END;
         if FAZ_GOLD then BEGIN
            INCLUI_SDO(CODEMP_ID,PERIODO,CLDASEPRODIMPORTADO.AsInteger,cldaseinvitemCOD_PRODUTO.AsString,'2894','GOLDLOG',cldaseinvITEMGOL_FINAL.AsInteger,CLDASEPRODUNID_VENDA.AsString,cldaseinvitemDESCRICAO.asstring);
         END;
         if FAZ_PEL then BEGIN
            INCLUI_SDO(CODEMP_ID,PERIODO,CLDASEPRODIMPORTADO.AsInteger,cldaseinvitemCOD_PRODUTO.AsString,'2115','PELOG',cldaseinvITEMPEL_FINAL.AsInteger,CLDASEPRODUNID_VENDA.AsString,cldaseinvitemDESCRICAO.asstring);
         END;
         if FAZ_OUT then BEGIN
            INCLUI_SDO(CODEMP_ID,PERIODO,CLDASEPRODIMPORTADO.AsInteger,cldaseinvitemCOD_PRODUTO.AsString,'9999','OUTRAS',cldaseinvITEMOUT_FINAL.AsInteger,CLDASEPRODUNID_VENDA.AsString,cldaseinvitemDESCRICAO.asstring);
         END;
      END;
      inc(processado);
      gauge_velocimetro.Value:=fracao(total_processar,processado);
      Application.ProcessMessages;
      cldaseinvITEM.Next;
   END;
   pgc_k.ActivePage:=tash_bloco_k;


end;

procedure TfrmSpedFiscal.zera_array;
var
  i: Integer;
begin
   if LENGTH(a_produtos)>0 then BEGIN
      for i := 0 to length(a_produtos)-1 do begin
         a_produtos[i]:='';
      end;
   END;
   if LENGTH(a_terceiros)>0 then BEGIN
      for i := 0 to length(a_terceiros)-1 do begin
         a_terceiros[i]:='';
      end;
   END;
   if LENGTH(a_unidades)>0 then BEGIN
      for i := 0 to length(a_unidades)-1 do begin
         a_unidades[i]:='';
      end;
   END;
   u_produtos:=0;
   u_terceiros:=0;
   u_unidades:=0;
end;

end.
