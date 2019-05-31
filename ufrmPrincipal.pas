unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxCustomTileControl, cxClasses, dxTileControl, dxSkinsForm,
  Vcl.ComCtrls, Vcl.StdCtrls, dxBarBuiltInMenu, cxPC, cxContainer, cxEdit,
  Data.DB, Datasnap.DBClient, Datasnap.Win.MConnect, Datasnap.Win.SConnect,
  cxGroupBox, cxRadioGroup, cxCheckBox, dxToggleSwitch, Vcl.ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid,pcnAuxiliar,pcnConversao,pcnnfertxt,idattachmentfile,IDSMTP,
  pcnConversaoNFe;

type
  TfrmPrincipal = class(TForm)
    dxSkinController1: TdxSkinController;
    StatusBar1: TStatusBar;
    pgcPrincipal: TcxPageControl;
    tbsMenu: TcxTabSheet;
    tbsAuto: TcxTabSheet;
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Group2: TdxTileControlGroup;
    dxTileControl1Group3: TdxTileControlGroup;
    dxTileControl1Group4: TdxTileControlGroup;
    dxTileControl1Item3: TdxTileControlItem;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Item2: TdxTileControlItem;
    dxTileControl1Item5: TdxTileControlItem;
    dxTileControl1Item6: TdxTileControlItem;
    dxTileControl1Item7: TdxTileControlItem;
    dxTileControl1Item4: TdxTileControlItem;
    dxTileControl1Item8: TdxTileControlItem;
    tsw_auto: TdxToggleSwitch;
    rd_grupo: TcxRadioGroup;
    cldaseemp: TClientDataSet;
    cldaseempCODEMP_ID: TIntegerField;
    cldaseempRAZAO_NFE: TStringField;
    cldaseempCNPJ: TStringField;
    cldaseempIE: TStringField;
    cldaseempENDERECO: TStringField;
    cldaseempBAIRRO: TStringField;
    cldaseempCIDADE: TStringField;
    cldaseempESTADO: TStringField;
    cldaseempCEP: TStringField;
    cldaseempULTIMA_NOTA: TIntegerField;
    cldaseempNUMERO: TStringField;
    cldaseempCOMPLEMENTO: TStringField;
    cldaseempIBGE: TStringField;
    cldaseempSENHA: TStringField;
    cldaseempNUMERO_SERIE: TStringField;
    cldaseempFORMATO_NOTA: TStringField;
    cldaseempVALIDADE_CERTIFICADO: TSQLTimeStampField;
    cldaseempdias_vencer: TIntegerField;
    cldaseempNOTA_ELETRONICA: TSmallintField;
    sock_auto: TSocketConnection;
    Timer1: TTimer;
    dsemp: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1RAZAO_NFE: TcxGridDBColumn;
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
    cldaseemissorIDENTIFICACAO_ID: TIntegerField;
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
    procedure ActivateDetail(Sender: TdxTileControlItem);
    procedure DeactivateDetail(Sender: TdxTileControlItem);
    procedure dxTileControl1Item8Click(Sender: TdxTileControlItem);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure tsw_autoPropertiesChange(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmEmpresas, ufrmNotas, un_damo_principal, ufrmGnre, ufrmRelGerencial,
  ufrmSpedFiscal, ufrmBackup, ufrmParametros, ufrmNotaAutomatica;

procedure TfrmPrincipal.ActivateDetail(Sender: TdxTileControlItem);
begin
  if Sender.DetailOptions.DetailControl = nil then begin
     case sender.Tag of
         1:Begin
            Sender.DetailOptions.DetailControl := TfrmEmpresas.Create(Self);
         End;
         2:begin
            Sender.DetailOptions.DetailControl := TfrmNotas.Create(Self);
         end;
         3:begin
            Sender.DetailOptions.DetailControl := TfrmGnre.Create(Self);
         end;
         4:begin
            Sender.DetailOptions.DetailControl := TfrmSpedFiscal.Create(Self);
         end;
         5:begin
            Sender.DetailOptions.DetailControl := TfrmRelGerencial.Create(Self);
         end;
         6:begin
            Sender.DetailOptions.DetailControl := TfrmBackup.Create(Self);
         end;
         7:begin
            Sender.DetailOptions.DetailControl := TfrmParametros.Create(Self);
         end;
         8:begin
            Sender.DetailOptions.DetailControl := TfrmNotaAutomatica.Create(Self);
         end;

     end;
  end;
//    dxTileControl1.Title.Text:='Fiscal'+' / '+sender.Text1.Value;
//    showmessage(sender.Text1.Value);
end;

procedure TfrmPrincipal.DeactivateDetail(Sender: TdxTileControlItem);
begin
  Sender.DetailOptions.DetailControl.Destroy;
  Sender.DetailOptions.DetailControl.Free;
//  dxTileControl1.Title.Text:='Fiscal';

end;

procedure TfrmPrincipal.dxTileControl1Item8Click(Sender: TdxTileControlItem);
begin
   pgcPrincipal.ActivePage:=tbsAuto;
end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
   tbsMenu.TabVisible:=false;
   tbsAuto.TabVisible:=false;
   pgcPrincipal.ActivePage:=tbsMenu;
end;


procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
   tsw_auto.Enabled:=false;
   timer1.Enabled:=false;
   timer1.Interval:=300000;
//   envio_de_notas;
   timer1.Enabled:=true;
   tsw_auto.Enabled:=true;
end;


procedure TfrmPrincipal.tsw_autoPropertiesChange(Sender: TObject);
begin
   Timer1.Enabled:=tsw_auto.Checked;
end;

end.
