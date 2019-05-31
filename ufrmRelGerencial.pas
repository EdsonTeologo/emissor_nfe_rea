unit ufrmRelGerencial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, frxClass, frxDBSet, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient,pcnconversao,pcnauxiliar,pcnConversaonfe;

type
  TfrmRelGerencial = class(TFrame)
    CLDASEEMIT: TClientDataSet;
    CLDASEEMITCODEMP_ID: TIntegerField;
    CLDASEEMITCLIENTE_ID: TIntegerField;
    CLDASEEMITNFE: TIntegerField;
    CLDASEEMITID_NFE: TStringField;
    CLDASEEMITXML_NFE: TBlobField;
    CLDASEEMITDATA_EMISSAO: TDateField;
    CLDASEEMITCNPJ: TStringField;
    CLDASEEMITRAZAO_SOCIAL: TStringField;
    CLDASEEMITNATUREZA: TStringField;
    CLDASEEMITESTADO: TStringField;
    CLDASEEMITPRODUTOS: TStringField;
    CLDASEEMITVALOR_NOTA: TFMTBCDField;
    CLDASEEMITCHAVE_NFE: TStringField;
    CLDASEEMITPROTOCOLO: TStringField;
    CLDASEEMITDATA_HORA_RECIBO: TSQLTimeStampField;
    CLDASEEMITPROTOCOLO_CANC: TStringField;
    CLDASEEMITJUSTIFICATIVA_CANCELAMENTO: TBlobField;
    CLDASEEMITHORA_EMISSAO: TTimeField;
    CLDASEEMITTXT_ORIGEM: TBlobField;
    CLDASEEMITXML_ORIGEM: TBlobField;
    CLDASEEMITXML_RETORNO: TBlobField;
    CLDASEEMITDATA_ENVIO: TSQLTimeStampField;
    CLDASEEMITCODIGO_ENVIO: TStringField;
    CLDASEEMITMOTIVO_ENVIO: TStringField;
    CLDASEEMITACAO: TSmallintField;
    CLDASEEMITRESULTADO: TSmallintField;
    CLDASEEMITSTATUS_ATUAL: TStringField;
    CLDASEEMITCOD_RESP_ENVIO: TSmallintField;
    CLDASEEMITSTAT_RESP_ENVIO: TStringField;
    CLDASEEMITLOTE: TIntegerField;
    CLDASEEMITCOD_RESP_CANCELAMENTO: TSmallintField;
    CLDASEEMITSTAT_RESP_CANCELAMENTO: TStringField;
    CLDASEEMITPROTOCOLO_CANCELAMENTO: TStringField;
    CLDASEEMITCOD_RESP_CARTA: TSmallintField;
    CLDASEEMITSTAT_RESP_CARTA: TStringField;
    CLDASEEMITPROTOCOLO_CARTA: TStringField;
    CLDASEEMITMOTIVO_CANCELAMENTO: TBlobField;
    CLDASEEMITMUDANCA_CARTA: TBlobField;
    CLDASEEMITDATA_HORA_REC_CANC: TSQLTimeStampField;
    CLDASEEMITDATA_HORA_REC_CARTA: TSQLTimeStampField;
    CLDASEEMITDATA_HORA_REC_UNIT: TSQLTimeStampField;
    CLDASEEMITCOD_RESP_INUT: TSmallintField;
    CLDASEEMITSTAT_RESP_INUT: TStringField;
    CLDASEEMITMOTIVO_INUT: TBlobField;
    CLDASEEMITNOTA_INUT_ATE: TIntegerField;
    CLDASEEMITPROTOCOLO_INUT: TStringField;
    CLDASEEMITXML_CANCELAMENTO: TBlobField;
    CLDASEEMITXML_INUT: TBlobField;
    CLDASEEMITXML_CARTA: TBlobField;
    CLDASEEMITTOTAL_PRODUTOS: TFMTBCDField;
    CLDASEEMITICMS_ST: TFMTBCDField;
    CLDASEEMITFRETE: TFMTBCDField;
    CLDASEEMITSEGURO: TFMTBCDField;
    CLDASEEMITIPI: TFMTBCDField;
    CLDASEEMITOUTRASDESP: TFMTBCDField;
    CLDASEEMITDESCONTO: TFMTBCDField;
    CLDASEEMITBC_ICMS: TFMTBCDField;
    CLDASEEMITICMS: TFMTBCDField;
    CLDASEEMITTIPO_NOTA: TStringField;
    CLDASEEMITIMP_IMP: TFMTBCDField;
    CLDASEEMITCOFINS: TFMTBCDField;
    CLDASEEMITPIS: TFMTBCDField;
    CLDASEEMITISSQN: TFMTBCDField;
    CLDASEEMITCOFINS_ST: TFMTBCDField;
    CLDASEEMITPIS_ST: TFMTBCDField;
    CLDASEEMITTOTAL_NOTA: TFMTBCDField;
    CLDASEEMITICMS_FCP: TFMTBCDField;
    CLDASEEMITDATA_AUTORIZACAO: TSQLTimeStampField;
    CLDASEEMITIMPOSTO_RENDA: TFMTBCDField;
    CLDASEEMITTIPO: TStringField;
    CLDASEEMITDENEGADA1: TBlobField;
    DASOEMIT: TDataSource;
    dasocanc: TDataSource;
    cldasecanc: TClientDataSet;
    cldasecancCODEMP_ID: TIntegerField;
    cldasecancCLIENTE_ID: TIntegerField;
    cldasecancNFE: TIntegerField;
    cldasecancID_NFE: TStringField;
    cldasecancXML_NFE: TBlobField;
    cldasecancDATA_EMISSAO: TDateField;
    cldasecancCNPJ: TStringField;
    cldasecancRAZAO_SOCIAL: TStringField;
    cldasecancNATUREZA: TStringField;
    cldasecancESTADO: TStringField;
    cldasecancPRODUTOS: TStringField;
    cldasecancVALOR_NOTA: TFMTBCDField;
    cldasecancCHAVE_NFE: TStringField;
    cldasecancPROTOCOLO: TStringField;
    cldasecancDATA_HORA_RECIBO: TSQLTimeStampField;
    cldasecancPROTOCOLO_CANC: TStringField;
    cldasecancJUSTIFICATIVA_CANCELAMENTO: TBlobField;
    cldasecancHORA_EMISSAO: TTimeField;
    cldasecancTXT_ORIGEM: TBlobField;
    cldasecancXML_ORIGEM: TBlobField;
    cldasecancXML_RETORNO: TBlobField;
    cldasecancDATA_ENVIO: TSQLTimeStampField;
    cldasecancCODIGO_ENVIO: TStringField;
    cldasecancMOTIVO_ENVIO: TStringField;
    cldasecancACAO: TSmallintField;
    cldasecancRESULTADO: TSmallintField;
    cldasecancSTATUS_ATUAL: TStringField;
    cldasecancCOD_RESP_ENVIO: TSmallintField;
    cldasecancSTAT_RESP_ENVIO: TStringField;
    cldasecancLOTE: TIntegerField;
    cldasecancCOD_RESP_CANCELAMENTO: TSmallintField;
    cldasecancSTAT_RESP_CANCELAMENTO: TStringField;
    cldasecancPROTOCOLO_CANCELAMENTO: TStringField;
    cldasecancCOD_RESP_CARTA: TSmallintField;
    cldasecancSTAT_RESP_CARTA: TStringField;
    cldasecancPROTOCOLO_CARTA: TStringField;
    cldasecancMOTIVO_CANCELAMENTO: TBlobField;
    cldasecancMUDANCA_CARTA: TBlobField;
    cldasecancDATA_HORA_REC_CANC: TSQLTimeStampField;
    cldasecancDATA_HORA_REC_CARTA: TSQLTimeStampField;
    cldasecancDATA_HORA_REC_UNIT: TSQLTimeStampField;
    cldasecancCOD_RESP_INUT: TSmallintField;
    cldasecancSTAT_RESP_INUT: TStringField;
    cldasecancMOTIVO_INUT: TBlobField;
    cldasecancNOTA_INUT_ATE: TIntegerField;
    cldasecancPROTOCOLO_INUT: TStringField;
    cldasecancXML_CANCELAMENTO: TBlobField;
    cldasecancXML_INUT: TBlobField;
    cldasecancXML_CARTA: TBlobField;
    cldasecancTOTAL_PRODUTOS: TFMTBCDField;
    cldasecancICMS_ST: TFMTBCDField;
    cldasecancFRETE: TFMTBCDField;
    cldasecancSEGURO: TFMTBCDField;
    cldasecancIPI: TFMTBCDField;
    cldasecancOUTRASDESP: TFMTBCDField;
    cldasecancDESCONTO: TFMTBCDField;
    cldasecancBC_ICMS: TFMTBCDField;
    cldasecancICMS: TFMTBCDField;
    cldasecancTIPO_NOTA: TStringField;
    cldasecancIMP_IMP: TFMTBCDField;
    cldasecancCOFINS: TFMTBCDField;
    cldasecancPIS: TFMTBCDField;
    cldasecancISSQN: TFMTBCDField;
    cldasecancCOFINS_ST: TFMTBCDField;
    cldasecancPIS_ST: TFMTBCDField;
    cldasecancTOTAL_NOTA: TFMTBCDField;
    cldasecancICMS_FCP: TFMTBCDField;
    cldasecancDATA_AUTORIZACAO: TSQLTimeStampField;
    cldasecancIMPOSTO_RENDA: TFMTBCDField;
    cldasecancTIPO: TStringField;
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
    cldaseinutPROTOCOLO_INUT: TStringField;
    cldaseinutXML_CANCELAMENTO: TBlobField;
    cldaseinutXML_INUT: TBlobField;
    cldaseinutXML_CARTA: TBlobField;
    cldaseinutTOTAL_PRODUTOS: TFMTBCDField;
    cldaseinutICMS_ST: TFMTBCDField;
    cldaseinutFRETE: TFMTBCDField;
    cldaseinutSEGURO: TFMTBCDField;
    cldaseinutIPI: TFMTBCDField;
    cldaseinutOUTRASDESP: TFMTBCDField;
    cldaseinutDESCONTO: TFMTBCDField;
    cldaseinutBC_ICMS: TFMTBCDField;
    cldaseinutICMS: TFMTBCDField;
    cldaseinutTIPO_NOTA: TStringField;
    cldaseinutIMP_IMP: TFMTBCDField;
    cldaseinutCOFINS: TFMTBCDField;
    cldaseinutPIS: TFMTBCDField;
    cldaseinutISSQN: TFMTBCDField;
    cldaseinutCOFINS_ST: TFMTBCDField;
    cldaseinutPIS_ST: TFMTBCDField;
    cldaseinutTOTAL_NOTA: TFMTBCDField;
    cldaseinutICMS_FCP: TFMTBCDField;
    cldaseinutDATA_AUTORIZACAO: TSQLTimeStampField;
    cldaseinutIMPOSTO_RENDA: TFMTBCDField;
    cldaseinutTIPO: TStringField;
    dasoinut: TDataSource;
    dasodene: TDataSource;
    cldasedene: TClientDataSet;
    cldasedeneCODEMP_ID: TIntegerField;
    cldasedeneCLIENTE_ID: TIntegerField;
    cldasedeneNFE: TIntegerField;
    cldasedeneID_NFE: TStringField;
    cldasedeneXML_NFE: TBlobField;
    cldasedeneDATA_EMISSAO: TDateField;
    cldasedeneCNPJ: TStringField;
    cldasedeneRAZAO_SOCIAL: TStringField;
    cldasedeneNATUREZA: TStringField;
    cldasedeneESTADO: TStringField;
    cldasedenePRODUTOS: TStringField;
    cldasedeneVALOR_NOTA: TFMTBCDField;
    cldasedeneCHAVE_NFE: TStringField;
    cldasedenePROTOCOLO: TStringField;
    cldasedeneDATA_HORA_RECIBO: TSQLTimeStampField;
    cldasedenePROTOCOLO_CANC: TStringField;
    cldasedeneJUSTIFICATIVA_CANCELAMENTO: TBlobField;
    cldasedeneHORA_EMISSAO: TTimeField;
    cldasedeneTXT_ORIGEM: TBlobField;
    cldasedeneXML_ORIGEM: TBlobField;
    cldasedeneXML_RETORNO: TBlobField;
    cldasedeneDATA_ENVIO: TSQLTimeStampField;
    cldasedeneCODIGO_ENVIO: TStringField;
    cldasedeneMOTIVO_ENVIO: TStringField;
    cldasedeneACAO: TSmallintField;
    cldasedeneRESULTADO: TSmallintField;
    cldasedeneSTATUS_ATUAL: TStringField;
    cldasedeneCOD_RESP_ENVIO: TSmallintField;
    cldasedeneSTAT_RESP_ENVIO: TStringField;
    cldasedeneLOTE: TIntegerField;
    cldasedeneCOD_RESP_CANCELAMENTO: TSmallintField;
    cldasedeneSTAT_RESP_CANCELAMENTO: TStringField;
    cldasedenePROTOCOLO_CANCELAMENTO: TStringField;
    cldasedeneCOD_RESP_CARTA: TSmallintField;
    cldasedeneSTAT_RESP_CARTA: TStringField;
    cldasedenePROTOCOLO_CARTA: TStringField;
    cldasedeneMOTIVO_CANCELAMENTO: TBlobField;
    cldasedeneMUDANCA_CARTA: TBlobField;
    cldasedeneDATA_HORA_REC_CANC: TSQLTimeStampField;
    cldasedeneDATA_HORA_REC_CARTA: TSQLTimeStampField;
    cldasedeneDATA_HORA_REC_UNIT: TSQLTimeStampField;
    cldasedeneCOD_RESP_INUT: TSmallintField;
    cldasedeneSTAT_RESP_INUT: TStringField;
    cldasedeneMOTIVO_INUT: TBlobField;
    cldasedeneNOTA_INUT_ATE: TIntegerField;
    cldasedenePROTOCOLO_INUT: TStringField;
    cldasedeneXML_CANCELAMENTO: TBlobField;
    cldasedeneXML_INUT: TBlobField;
    cldasedeneXML_CARTA: TBlobField;
    cldasedeneTOTAL_PRODUTOS: TFMTBCDField;
    cldasedeneICMS_ST: TFMTBCDField;
    cldasedeneFRETE: TFMTBCDField;
    cldasedeneSEGURO: TFMTBCDField;
    cldasedeneIPI: TFMTBCDField;
    cldasedeneOUTRASDESP: TFMTBCDField;
    cldasedeneDESCONTO: TFMTBCDField;
    cldasedeneBC_ICMS: TFMTBCDField;
    cldasedeneICMS: TFMTBCDField;
    cldasedeneTIPO_NOTA: TStringField;
    cldasedeneIMP_IMP: TFMTBCDField;
    cldasedeneCOFINS: TFMTBCDField;
    cldasedenePIS: TFMTBCDField;
    cldasedeneISSQN: TFMTBCDField;
    cldasedeneCOFINS_ST: TFMTBCDField;
    cldasedenePIS_ST: TFMTBCDField;
    cldasedeneTOTAL_NOTA: TFMTBCDField;
    cldasedeneICMS_FCP: TFMTBCDField;
    cldasedeneDATA_AUTORIZACAO: TSQLTimeStampField;
    cldasedeneIMPOSTO_RENDA: TFMTBCDField;
    cldasedeneTIPO: TStringField;
    cldasedeneDENEGADA1: TBlobField;
    cldasecfop: TClientDataSet;
    cldasecfoptipo_nota: TStringField;
    cldasecfopcfop: TStringField;
    cldasecfopprodutos: TFloatField;
    cldasecfoptotalnfe: TFloatField;
    cldasecfopbc_icms: TFloatField;
    cldasecfopicms: TFloatField;
    cldasecfopicms_st: TFloatField;
    cldasecfopicms_fcp: TFloatField;
    cldasecfopipi: TFloatField;
    cldasecfopimp_imp: TFloatField;
    cldasecfoppis: TFloatField;
    cldasecfopcofins: TFloatField;
    dasocfop: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSource3: TDataSource;
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
    daso_emp: TDataSource;
    Bevel1: TBevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cx_ate: TcxDateEdit;
    cx_de: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    frx_relger: TfrxReport;
    frxdb_dene: TfrxDBDataset;
    frxdb_canc: TfrxDBDataset;
    frxdb_emp: TfrxDBDataset;
    frxdb_emit: TfrxDBDataset;
    frxdb_inut: TfrxDBDataset;
    frxdb_cfop: TfrxDBDataset;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    PROCEDURE carga_xml_nota;

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses un_damo_principal;

procedure TfrmRelGerencial.carga_xml_nota;
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
  qtd_itens:integer;
  num_item:integer;
  cfop: string;
begin
   if not CLDASEEMITXML_NFE.IsNull then begin
   CLDASEEMITXML_NFE.SaveToFile('NFE.XML');
   DMCONEXAO.ACBRNFE1.NotasFiscais.Clear;
   DMCONEXAO.ACBrNFe1.NotasFiscais.LoadFromFile('NFE.XML');
   NOTA:=DMCONEXAO.ACBRNFE1.NotasFiscais.Items[0].NFe.Ide.nNF;
   CNPJ_EMITENTE:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
   chave:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;

   cldaseemit.EDIT;
   cldaseemitID_NFE.AsString:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
   cldaseemitNATUREZA.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;

   IF dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe=fnNormal THEN CLDASEEMITTIPO.ASSTRING:='NORMAL';
   IF dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe=fnComplementar THEN CLDASEEMITTIPO.ASSTRING:='COMPLEMENTAR';
   IF dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe=fnAjuste THEN CLDASEEMITTIPO.ASSTRING:='AJUSTE';
   IF dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.finNFe=fnDevolucao THEN CLDASEEMITTIPO.ASSTRING:='DEVOLUCAO';

   cldaseemitDATA_AUTORIZACAO.AsDateTime:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFE.procNFe.dhRecbto;
   cldaseemitVALOR_NOTA.AsFloat:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
   cldaseemitCNPJ.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
   cldaseemitRAZAO_SOCIAL.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
   cldaseemitESTADO.Asstring:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
   CNPJ:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
   PRODUTOS:='';
   itens:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.Det.Count;
   for i := 0 to itens - 1 do begin
       produtos:=produtos+DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd+'/';
   end;
   cldaseemit.FieldByNAME('PRODUTOS').AsSTRING:=PRODUTOS;
   cldaseemitVALOR_NOTA.AsFloat:=DMCONEXAO.ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
   cldaseemitID_NFE.AsString:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.infNFe.ID;
   cldaseemitDATA_HORA_RECIBO.AsDateTime:=DMCONEXAO.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;

   if dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF=tnsaida then cldaseemitTIPO_NOTA.AsString:='S';
   if dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF=tnEntrada then cldaseemitTIPO_NOTA.AsString:='E';


   cldaseemitTOTAL_PRODUTOS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vProd;
   cldaseemitTOTAL_NOTA.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vNF;

   cldaseemitICMS_ST.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vST;
   cldaseemitICMS_FCP.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vFCPST;
   cldaseemitFRETE.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vFrete;
   cldaseemitSEGURO.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vSeg;
   cldaseemitIPI.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vIPI;
   cldaseemitOUTRASDESP.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vOutro;
   cldaseemitDESCONTO.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vDesc;
   cldaseemitBC_ICMS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vBC;
   cldaseemitICMS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vICMS;
   cldaseemitIMP_IMP.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vII;
   cldaseemitCOFINS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vCOFINS;
   cldaseemitPIS.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ICMSTot.vPIS;

   cldaseemitISSQN.AsFloat:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.total.ISSQNtot.vISS;

   cldaseemit.post;
   cldaseemit.applyupdates(0);

   qtd_itens:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.det.Count;

   for num_item:=0 to qtd_itens-1 do begin
      cfop:=dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Prod.CFOP;
      if cldasecfop.FindKey([CLDASEEMITTIPO_NOTA.asstring,cfop]) then begin
         cldasecfop.Edit;
      end
      else begin
         cldasecfop.Append;
         cldasecfoptipo_nota.AsString:=CLDASEEMITTIPO_NOTA.AsString;
         cldasecfopcfop.AsString:=cfop;
      end;
      cldasecfopprodutos.asfloat:=cldasecfopprodutos.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Prod.vProd;
      cldasecfopbc_icms.asfloat:=cldasecfopbc_icms.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.ICMS.vBC;
      cldasecfopicms.asfloat:=cldasecfopicms.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.ICMS.vICMS;
      cldasecfopicms_st.asfloat:=cldasecfopicms_st.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.ICMS.vICMSST;
      cldasecfopicms_fcp.asfloat:=cldasecfopicms_fcp.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.ICMS.vFCPST;
      cldasecfopipi.asfloat:=cldasecfopipi.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.IPI.vIPI;
      cldasecfopimp_imp.asfloat:=cldasecfopimp_imp.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.II.vII;
      cldasecfopcofins.asfloat:=cldasecfopcofins.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.COFINS.vCOFINS;
      cldasecfoppis.asfloat:=cldasecfoppis.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.PIS.vPIS;
      cldasecfoptotalnfe.asfloat:=cldasecfoptotalnfe.asfloat+dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Prod.vProd+
                                                             dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.ICMS.vICMSST+
                                                             dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.ICMS.vFCPST+
                                                             dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.IPI.vIPI+
                                                             dmconexao.ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[num_item].Imposto.II.vII;
      cldasecfop.Post;
   end;

   end;
end;

procedure TfrmRelGerencial.cxButton1Click(Sender: TObject);
begin
   CLDASEEMP.Close;
   CLDASEEMP.CommandText:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASEEMP.Open;

   cldaseemit.Close;
   cldaseemit.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' and DATA_EMISSAO>='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_de.DATE))+' AND DATA_EMISSAO<='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_ate.DATE))+' AND DENEGADA1 IS NULL AND PROTOCOLO_CANCELAMENTO IS NULL AND PROTOCOLO_INUT IS NULL '+' ORDER BY NFE';
   CLDASEEMIT.Open;
   cldasecanc.Close;
   cldasecanc.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' and DATA_EMISSAO>='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_de.DATE))+' AND DATA_EMISSAO<='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_ate.DATE))+' AND PROTOCOLO_CANCELAMENTO IS NOT NULL'+' ORDER BY NFE';
   CLDASEcanc.Open;
   cldaseinut.Close;
   cldaseinut.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' and DATA_EMISSAO>='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_de.DATE))+' AND DATA_EMISSAO<='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_ate.DATE))+' AND PROTOCOLO_INUT IS NOT NULL'+' ORDER BY NFE';
   cldaseinut.Open;

   cldasedene.Close;
   cldasedene.CommandText:='SELECT * FROM NFE_ARQUIVO WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' and DATA_EMISSAO>='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_de.DATE))+' AND DATA_EMISSAO<='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',cx_ate.DATE))+' AND DENEGADA1 IS NOT NULL'+' ORDER BY NFE';
   cldasedene.Open;


   cldasecfop.EmptyDataSet;
   cldaseemit.First;
   while not cldaseemit.eof do begin
      carga_xml_nota;
      cldaseemit.Next;
   end;



   showmessage('Processamento Terminado');


end;

procedure TfrmRelGerencial.cxButton2Click(Sender: TObject);
begin
//   pplabel2.Caption:='Empresa: '+dmconexao.razao_social;
//   ppReport1.Print;


frx_relger.ShowReport;

end;

end.
