unit ufrmGnre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf,
  Data.DB, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.FileCtrl, Vcl.ComCtrls, Vcl.ExtCtrls, frxClass, ACBrDFe, ACBrGNRE2,
  ACBrGNREGuiaFRDM, ACBrBase, ACBrGNREGuiaClass, ACBrGNREGuiaFR,
  Xml.Win.msxmldom, Xml.XMLDoc, Datasnap.DBClient, pgnreconversao;

type
  TfrmGnre = class(TFrame)
    cldaselotes: TClientDataSet;
    cldaselotesnfe: TIntegerField;
    cldaselotesresultado: TStringField;
    cldaselotesarquivo_xml: TBlobField;
    cldaselotesresultado_fp: TStringField;
    cldaselotesarquivo_xml_fp: TBlobField;
    cldaselotesrecibo: TStringField;
    cldaselotesrecibo_fb: TStringField;
    cldasenota: TClientDataSet;
    cldasenotaCODEMP_ID: TSmallintField;
    cldasenotaIDENTIFICACAO_ID: TIntegerField;
    cldasenotaCLIENTE_ID: TSmallintField;
    cldasenotaTRANSP_ID: TIntegerField;
    cldasenotaTPVENDA_ID: TSmallintField;
    cldasenotaVALOR_PRODUTOS: TFMTBCDField;
    cldasenotaPEDIDOS: TStringField;
    cldasenotaNFE: TIntegerField;
    cldasenotaPESO: TStringField;
    cldasenotaVOLUMES: TStringField;
    cldasenotaSEPARACAO_ID: TIntegerField;
    cldasenotaBASE_ICMS: TFMTBCDField;
    cldasenotaICMS: TFMTBCDField;
    cldasenotaBASE_ST: TFMTBCDField;
    cldasenotaST: TFMTBCDField;
    cldasenotaVALOR_FRETE: TFMTBCDField;
    cldasenotaVALOR_SEGURO: TFMTBCDField;
    cldasenotaVALOR_IPI: TFMTBCDField;
    cldasenotaTOTAL_NOTA: TFMTBCDField;
    cldasenotaFRETE_CONTA: TStringField;
    cldasenotaOBSERVACAO: TBlobField;
    cldasenotaDATA_IMPRESSAO: TDateField;
    cldasenotaHORA_IMPRESSAO: TTimeField;
    cldasenotaCIDADE: TStringField;
    cldasenotaESTADO: TStringField;
    cldasenotaCNPJ: TStringField;
    cldasenotaTIPO_NOTA: TStringField;
    cldasenotaMOVIMENTADO_DE: TStringField;
    cldasenotaDEVOLVIDO: TSmallintField;
    cldasenotaCANCELADO_POR: TStringField;
    cldasenotaCANCELADO_EM: TSQLTimeStampField;
    cldasenotaCANCELADO_MOTIVO: TBlobField;
    cldasenotaFORMA_PAGTO: TStringField;
    cldasenotaCOMPLEMENTAR: TSmallintField;
    cldasenotaNOTA_CLIENTE: TSmallintField;
    cldasenotaDEV_ENV_EST: TSmallintField;
    cldasenotaDT_ENTRADA_ESTOQUE: TDateField;
    cldasenotaFORMA_PAGAMENTO: TStringField;
    cldasenotaPERC_DESCONTO: TFMTBCDField;
    cldasenotaTOTAL_DESCONTO: TFMTBCDField;
    cldasenotaOBS_ADICIONAL: TBlobField;
    cldasenotaGNRE_PAGA: TSmallintField;
    cldasenotaCHAVE_ACESSO: TStringField;
    cldasenotaMOVIMENTA_ESTOQUE: TSmallintField;
    cldasenotaUTILIZADA_BOLETO: TSmallintField;
    cldasenotaEXP_ESTOQUE: TIntegerField;
    cldasenotaISS: TFMTBCDField;
    cldasenotaSERVICO: TFMTBCDField;
    cldasenotaIND_PRESENCA: TStringField;
    cldasenotaIBGE_DEVOLUCAO: TStringField;
    cldasenotaEMISSAO_DEVOLUCAO: TSQLTimeStampField;
    cldasenotaCNPJ_DEVOLUCAO: TStringField;
    cldasenotaMODELO_DEVOLUCAO: TStringField;
    cldasenotaSERIE_DEVOLUCAO: TStringField;
    cldasenotaNUMERO_DEVOLUCAO: TIntegerField;
    cldasenotaCHAVE_DEVOLUCAO: TStringField;
    cldasenotaPERC_FP: TFMTBCDField;
    cldasenotaVLR_FP: TFMTBCDField;
    cldasenotaGNRE_UNICA: TSmallintField;
    cldasenotaGUIA_GNRE: TBlobField;
    cldasenotaGUIA_GNRE_FP: TBlobField;
    cldasenotaPG_GUIA_GNRE: TBlobField;
    cldasenotaPG_GUIA_GNRE_FP: TBlobField;
    cldasenotaLIB_DESP_OUT_EST: TSmallintField;
    cldasenotaGNRE_LOTE: TStringField;
    cldasenotaGNRE_RETORNO_INCONSISTENCIA: TBlobField;
    cldasenotaGNRE_RECIBO: TStringField;
    cldasenotaGNRE_RETORNO_TXT: TBlobField;
    cldasenotaGNRE_BARRA: TStringField;
    cldasenotaGNRE_RECIBO_FP: TStringField;
    cldasenotaGNRE_RETORNO_TXT_FP: TBlobField;
    cldasenotaGNRE_BARRA_FP: TStringField;
    cldasenotaGNRE_RETORNO_INCONSISTENCIA_FP: TBlobField;
    cldasenotaGNRE_STATUS: TStringField;
    cldasenotaGNRE_STATUS_FP: TStringField;
    OpenDialog1: TOpenDialog;
    cldasevi_nf: TClientDataSet;
    cldasevi_nfCODEMP_ID: TSmallintField;
    cldasevi_nfIDENTIFICACAO_ID: TIntegerField;
    cldasevi_nfCLIENTE_ID: TSmallintField;
    cldasevi_nfTRANSP_ID: TIntegerField;
    cldasevi_nfTPVENDA_ID: TSmallintField;
    cldasevi_nfTIPO_NOTA: TStringField;
    cldasevi_nfVALOR_PRODUTOS: TFMTBCDField;
    cldasevi_nfPEDIDOS: TStringField;
    cldasevi_nfNFE: TIntegerField;
    cldasevi_nfPESO: TStringField;
    cldasevi_nfVOLUMES: TStringField;
    cldasevi_nfSEPARACAO_ID: TIntegerField;
    cldasevi_nfFRETE_CONTA: TStringField;
    cldasevi_nfVALOR_FRETE: TFMTBCDField;
    cldasevi_nfVALOR_SEGURO: TFMTBCDField;
    cldasevi_nfOBSERVACAO: TBlobField;
    cldasevi_nfMOVIMENTADO_DE: TStringField;
    cldasevi_nfCLIENTE: TStringField;
    cldasevi_nfRAZAO_SOCIAL: TStringField;
    cldasevi_nfNOME: TStringField;
    cldasevi_nfDESCRICAO: TStringField;
    cldasevi_nfemitegnre: TBooleanField;
    cldasevi_nfDATA_EMISSAO: TDateField;
    cldasevi_nfST: TFMTBCDField;
    cldasevi_nfESTADO: TStringField;
    cldasevi_nfCOMPLEMENTAR: TSmallintField;
    cldasevi_nfCANCELADO_EM: TSQLTimeStampField;
    cldasevi_nfCANCELADO_POR: TStringField;
    cldasevi_nfTOTAL_NOTA: TFMTBCDField;
    cldasevi_nfVALOR_IPI: TFMTBCDField;
    cldasevi_nfICMS: TFMTBCDField;
    cldasevi_nfVLR_FP: TFMTBCDField;
    cldasevi_nfGNRE_UNICA: TSmallintField;
    frxReport1: TfrxReport;
    cldasegen: TClientDataSet;
    cldasegen2: TClientDataSet;
    ACBrGNRE1: TACBrGNRE;
    ACBrGNREGuiaFR1: TACBrGNREGuiaFR;
    dasovi_nf: TDataSource;
    daso_lotes: TDataSource;
    XMLDocument1: TXMLDocument;
    cldasegen3: TClientDataSet;
    PageControl2: TPageControl;
    tash_geral: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    nota_de: TDateTimePicker;
    nota_ate: TDateTimePicker;
    Button2: TButton;
    Button3: TButton;
    FileListBox1: TFileListBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button9: TButton;
    Button6: TButton;
    tash_erros: TTabSheet;
    Bevel2: TBevel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    memoresp: TMemo;
    TabSheet4: TTabSheet;
    wbresposta: TWebBrowser;
    TabSheet5: TTabSheet;
    memoRespWS: TMemo;
    Button1: TButton;
    btn_div_gnre: TButton;
    btn_div_gnre_fp: TButton;
    DBGrid3: TDBGrid;
    procedure ACBrGNRE1GerarLog(const ALogLine: string; var Tratado: Boolean);
    procedure ACBrGNRE1StatusChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
    procedure grava_xml;
    FUNCTION LIMPA_CNPJ(CNPJ:STRING):STRING;
    function valor_brasileiro2(valor:double;digitos:integer):string;
    function valor_americano2(valor:double;digitos:integer):string;
    procedure verifica_retorno;
    procedure elimina_sucesso;

  public

     diretorio:string;
     cliente_id: Integer;
     RECEITA: string;
     UFFAVORECIDA: STRING;
     CICCONTRIBUINTE: string;
     DOCUMENTO_ORIGEM: string;
     REFERENCIA: string;
     VALOR_PRINCIPAL: Currency;
     ATUALIZACAOMONETARIA: string;
     JUROS: string;
     MULTA: string;
     TOTALRECOLHER: CURRENCY;
     DIA,MES,ANO:WORD;
     vencimento: tdate;
     diasemana: word;
     svencimento: string;
     convenio: string;
     identificacao_id: integer;
     ACONVENIO:ARRAY OF STRING;
     FAZ: Boolean;
     espaco: string;
     INSCRICAO_ESTADUAL: STRING;
     RAZAO_SOCIAL: STRING;
     ENDERECO: string;
     MUNICIO: string;
     UF: string;
     CEP: string;
     TELEFONE: string;
     INFORMACOES: string;
     produto: string;
     CLASS_ID:INTEGER;
     detalhamento_receita: string;
     detalhamento_receita_fp:string;
     RAZAO_SOCIAL_EMITENTE: string;
     ENDERECO_EMITENTE: string;
     MUNICIO_EMITENTE: string;
     UF_EMITENTE: string;
     CEP_EMITENTE: string;
     TELEFONE_EMITENTE: string;
     inscricao_estadual_emitente: string;
     cnpj_destinatario: string;
     inscricao_estadual_destinatario: string;
     razao_social_destinatario: string;
     municipio_destinatario: string;
     ex1_cod: string;
     ex2_cod: string;
     ex3_cod: string;
     ex1_tipo: string;
     ex2_tipo: string;
     ex3_tipo: string;
     ex1_campo: string;
     ex2_campo: string;
     ex3_campo: string;
     ex1_fp_cod: string;
     ex2_fp_cod: string;
     ex3_fp_cod: string;
     ex1_fp_tipo: string;
     ex2_fp_tipo: string;
     ex3_fp_tipo: string;
     ex1_fp_campo: string;
     ex2_fp_campo: string;
     ex3_fp_campo: string;
     chave: string;
     ibge_emitente: string;
     ibge_destinatario: string;
     num_serie:string;
     SENHA:STRING;
     FUNDO:BOOLEAN;
     id_contrib:integer;
     id_contrib_fp:integer;
     convenio_fp:string;

    { Public declarations }
  end;

implementation

{$R *.dfm}

uses un_damo_principal, ACBrGNREGuias, ACBrGNREConfiguracoes, pcnAuxiliar,
  ufrmStatus;

procedure TfrmGnre.ACBrGNRE1GerarLog(const ALogLine: string;
  var Tratado: Boolean);
begin
  tratado:=true;
end;

procedure TfrmGnre.ACBrGNRE1StatusChange(Sender: TObject);

  procedure MostrarStatus(const AMsg: string);
  begin
    if AMsg = '' then
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide
    end
    else
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := AMsg;
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;

begin
  case ACBrGNRE1.Status of
    stGNREIdle: MostrarStatus('');
    stGNRERecepcao: MostrarStatus('Enviando dados do GNRE...');
    stGNRERetRecepcao: MostrarStatus('Recebendo dados do GNRE...');
    stGNREConsulta: MostrarStatus('Consultando Lote GNRE...');
  end;
  Application.ProcessMessages;
end;

procedure TfrmGnre.Button2Click(Sender: TObject);
var geranfe:boolean;
begin

  cldasevi_nf.Filtered:=false;
  CLDASEVI_NF.CLOSE;
  CLDASEVI_NF.COMMANDTEXT:='SELECT * FROM VI_NF7bA WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND DATA_EMISSAO>='+quotedstr(FORMATDATETIME('YYYY-MM-DD',nota_de.Date))+' AND DATA_EMISSAO<='+quotedstr(FORMATDATETIME('YYYY-MM-DD',nota_ate.Date))+' AND TIPO_NOTA='+QUOTEDSTR('S');
  CLDASEVI_NF.OPEN;
  if CLDASEVI_NF.RecordCount=0 then BEGIN
     SHOWMESSAGE('Período Informado não possui notas');
  END
  else begin
     cldasevi_nf.first;
     while not cldasevi_nf.eof do begin

        CLDASEGEN.CLOSE;
        CLDASEGEN.COMMANDTEXT:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(cldasevi_nfESTADO.AsString);
        CLDASEGEN.OPEN;

        geranfe:=false;
        if CLDASEGEN.FIELDBYNAME('GERA_GNRE').AsInteger=-1 then BEGIN
           if cldasevi_nfST.AsFloat>0 then begin
              geranfe:=true;
           end;
        END;
        if cldasegen.FieldByName('CONFERIDO').AsInteger<>-1 then begin
           geranfe:=false;
        end;
        cldasevi_nf.edit;
        cldasevi_nfemitegnre.AsBoolean:=geranfe;
        cldasevi_nf.post;
        cldasevi_nf.next;
     end;
     cldasevi_nf.Filtered:=true;
     cldasevi_nf.first;
  end;

end;

procedure TfrmGnre.Button3Click(Sender: TObject);
var
  I: Integer;
  gnre_unica: Integer;
  vlr_fp: double;
  vlr_st: double;
  GERA_GNRE_FP: Integer;
  sucesso: Boolean;
begin

  ACBrGNRE1.Guias.Clear;
  cldaselotes.First;

  while not cldaselotes.eof do begin
    ACBrGNRE1.Guias.Clear;
    CLDASEGEN.CLOSE;
    CLDASEGEN.COMMANDTEXT:='SELECT * FROM EMPRESAS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
    CLDASEGEN.Open;
    CICCONTRIBUINTE:=limpa_cnpj(CLDASEGEN.FIELDBYNAME('CNPJ').AsString);
    RAZAO_SOCIAL_EMITENTE:=CLDASEGEN.FIELDBYNAME('NOMEMP_COBRANCA').ASSTRING;
    ENDERECO_EMITENTE:=trim(CLDASEGEN.FIELDBYNAME('ENDERECO').AsString)+' ,'+CLDASEGEN.FieldByName('NUMERO').AsString;
    MUNICIO_EMITENTE:=CLDASEGEN.FIELDBYNAME('CIDADE').AsString;
    UF_EMITENTE:=CLDASEGEN.FIELDBYNAME('ESTADO').AsString;
    CEP_EMITENTE:=LIMPA_CNPJ(CLDASEGEN.FIELDBYNAME('CEP').AsString);
    TELEFONE_EMITENTE:=LIMPA_CNPJ(CLDASEGEN.FIELDBYNAME('TELEFONE').AsString);
    ibge_emitente:=cldasegen.fieldbyname('codigo_mun').AsString;
    inscricao_estadual_emitente:=LIMPA_CNPJ(CLDASEGEN.FIELDBYNAME('IE').AsString);
    if LENGTH(TRIM(CEP))>0 then BEGIN
      CEP:=COPY(CEP,1,5)+'-'+COPY(CEP,6);
    END;

    SETLENGTH(ACONVENIO,0);
    ATUALIZACAOMONETARIA:=VALOR_BRASILEIRO2(0.00,2);
    JUROS:=VALOR_BRASILEIRO2(0.00,2);
    MULTA:=VALOR_BRASILEIRO2(0.00,2);

    cldasegen.Close;
    cldasegen.commandtext:='SELECT * FROM NFE_ARQUIVO WHERE NFE='+INTTOSTR(cldaselotesnfe.AsInteger)+' AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
    CLDASEGEN.Open;

    chave:=cldasegen.FieldByName('CHAVE_NFE').AsString;

    cldasegen.Close;
    cldasegen.commandtext:='SELECT * FROM NF WHERE NFE='+INTTOSTR(cldaselotesnfe.AsInteger)+' AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
    CLDASEGEN.Open;

    gnre_unica:=cldasegen.FieldByName('gnre_unica').AsInteger;
    vlr_fp:=cldasegen.fieldbyname('vlr_fp').asfloat;
    vlr_st:=cldasegen.fieldbyname('st').asfloat;

    cliente_id:=cldasegen.FieldByName('CLIENTE_ID').AsInteger;
    DOCUMENTO_ORIGEM:=inttostr(cldasegen.fieldbyname('NFE').AsInteger);
    VALOR_PRINCIPAL:=cldasegen.FieldByName('ST').AsFloat;
    TOTALRECOLHER:=cldasegen.FieldByName('ST').AsFloat;
    identificacao_id:=cldasegen.fieldbyname('identificacao_id').asinteger;
    INFORMACOES:='Ref Nfe: '+inttostr(cldasegen.fieldbyname('NFE').AsInteger);

    CLDASEGEN.CLOSE;
    CLDASEGEN.COMMANDTEXT:='SELECT * FROM CLIENTES WHERE CLIENTE_ID='+INTTOSTR(CLIENTE_ID);
    CLDASEGEN.OPEN;
    UFFAVORECIDA:=CLDASEGEN.FIELDBYNAME('ESTADO').ASSTRING;
    cnpj_destinatario:=limpa_cnpj(cldasegen.FieldByName('cnpj').AsString);
    inscricao_estadual_destinatario:=limpa_cnpj(cldasegen.FieldByName('ie').AsString);
    razao_social_destinatario:=cldasegen.FieldByName('razao_social').AsString;
    municipio_destinatario:=cldasegen.FieldByName('cidade').AsString;
    RECEITA:='100099';
    INSCRICAO_ESTADUAL:=LIMPA_CNPJ(CLDASEGEN.FieldByName('IE').ASSTRING);
    ibge_destinatario:=cldasegen.fieldbyname('codigo_mun').AsString;
    CLDASEGEN.CLOSE;
    CLDASEGEN.COMMANDTEXT:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(UFFAVORECIDA);
    CLDASEGEN.OPEN;
    CONVENIO:='';
    CONVENIO_FP:='';
    if LENGTH(TRIM(cldasegen.FieldByName('CONVENIO').AsString))>0 then convenio:=cldasegen.FieldByName('CONVENIO').AsString;
    if LENGTH(TRIM(cldasegen.FieldByName('CONVENIO_FP').AsString))>0 then convenio_fp:=cldasegen.FieldByName('CONVENIO_FP').AsString;

    detalhamento_receita:=CLDASEGEN.FieldByName('DETALHAMENTO_RECEITA').ASSTRING;
    detalhamento_receita_fp:=CLDASEGEN.FieldByName('DETALHAMENTO_RECEITA_FP').ASSTRING;

    id_contrib:=CLDASEGEN.FieldByName('id_destinatario_gnre').AsInteger;
    id_contrib_fp:=CLDASEGEN.FieldByName('id_destinatario_gnre_fp').AsInteger;

    GERA_GNRE_FP:=CLDASEGEN.FIELDBYNAME('GERA_GNRE_FP').ASINTEGER;

    ex1_cod:=cldasegen.fieldbyname('EX1_COD').AsString;
    ex2_cod:=cldasegen.fieldbyname('EX2_COD').AsString;
    ex3_cod:=cldasegen.fieldbyname('EX3_COD').AsString;
    ex1_tipo:=cldasegen.FieldByName('EX1_TIPO').AsString;
    ex2_tipo:=cldasegen.FieldByName('EX2_TIPO').AsString;
    ex3_tipo:=cldasegen.FieldByName('EX3_TIPO').AsString;
    ex1_campo:=cldasegen.FieldByName('EX1_CAMPO').AsString;
    ex2_campo:=cldasegen.FieldByName('EX2_CAMPO').AsString;
    ex3_campo:=cldasegen.FieldByName('EX3_CAMPO').AsString;

    ex1_fp_cod:=cldasegen.fieldbyname('EX1_FP_COD').AsString;
    ex2_fp_cod:=cldasegen.fieldbyname('EX2_FP_COD').AsString;
    ex3_fp_cod:=cldasegen.fieldbyname('EX3_FP_COD').AsString;
    ex1_fp_tipo:=cldasegen.FieldByName('EX1_FP_TIPO').AsString;
    ex2_fp_tipo:=cldasegen.FieldByName('EX2_FP_TIPO').AsString;
    ex3_fp_tipo:=cldasegen.FieldByName('EX3_FP_TIPO').AsString;
    ex1_fp_campo:=cldasegen.FieldByName('EX1_FP_CAMPO').AsString;
    ex2_fp_campo:=cldasegen.FieldByName('EX2_FP_CAMPO').AsString;
    ex3_fp_campo:=cldasegen.FieldByName('EX3_FP_CAMPO').AsString;

    REFERENCIA:=INTTOSTR(CLDASEGEN.FieldByName('INTERVALO_GNRE').AsInteger);
    REFERENCIA:=REFERENCIA+FORMATDATETIME('MMYYYY',now);
    vencimento:=now()+1;
    DecodeDate(now(),ano,mes,dia);
    diasemana:=dayofweek(vencimento);
    if diasemana=7 then vencimento:=vencimento-1;
    if diasemana=1 then vencimento:=vencimento-2;
    svencimento:=formatdatetime('yyyy-mm-dd',vencimento);

    cldasegen.close;
    cldasegen.commandtext:='SELECT * FROM NF_ITENS WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND IDENTIFICACAO='+INTTOSTR(identificacao_id);
    CLDASEGEN.OPEN;
    CLDASEGEN.FIRST;

    while NOT CLDASEGEN.EOF do BEGIN
      CLDASEGEN2.Close;
      CLDASEGEN2.COMMANDTEXT:='SELECT * FROM CLASSIFICACAO WHERE CLASSIFICACAO='+QUOTEDSTR(CLDASEGEN.FIELDBYNAME('CLASSIFICACAO').AsString);
      CLDASEGEN2.Open;
      FAZ:=TRUE;
      cldasegen3.close;
      cldasegen3.commandtext:='SELECT * FROM CLASSIF_ESTADOS2 WHERE CODEMP_ID='+INTTOSTR(dmconexao.empresa_id)+' AND CLASS_ID='+INTTOSTR(CLDASEGEN2.FieldByName('CLASS_ID').AsInteger)+' AND ESTADO='+QUOTEDSTR(UFFAVORECIDA);
      CLDASEGEN3.OPEN;

      PRODUTO:=CLDASEGEN3.FieldByName('GNRE_COD_PROD').AsString;

      for I := 0 to LENGTH(ACONVENIO) - 1 do BEGIN
        if ACONVENIO[I]=CLDASEGEN2.FieldByName('CONVENIO').AsString then FAZ:=FALSE;
      END;
      if FAZ=TRUE then BEGIN
        SetLength(ACONVENIO,LENGTH(ACONVENIO)+1);
        ACONVENIO[LENGTH(ACONVENIO)-1]:=CLDASEGEN2.FieldByName('CONVENIO').AsString;
      END;
      cldasegen.Next;
    END;
    espaco:='';
    for I := 0 to length(aconvenio) - 1 do begin
      if length(trim(aconvenio[i]))>0 then begin
        convenio:=convenio+espaco+aconvenio[i];
        espaco:='/';
      end;
    end;

    if gnre_unica=-1 then begin
      VALOR_PRINCIPAL:=vlr_st+vlr_fp;
      TOTALRECOLHER:=vlr_st+vlr_fp;
      RECEITA:='100099';
      grava_xml;
    end
    else begin
      VALOR_PRINCIPAL:=vlr_st;
      TOTALRECOLHER:=vlr_st;
      RECEITA:='100099';
      grava_xml;
      if vlr_fp>0 then begin
        if GERA_GNRE_FP=-1 then BEGIN
          RECEITA:='100129';
          VALOR_PRINCIPAL:=vlr_fp;
          TOTALRECOLHER:=vlr_fp;
          grava_xml;
        END;
      end;
    end;
    cldaselotes.Next;
  end;

  elimina_sucesso;

end;

procedure TfrmGnre.Button6Click(Sender: TObject);
begin
   PageControl2.ActivePage:=tash_erros;

end;

procedure TfrmGnre.Button9Click(Sender: TObject);
var
 aux : String;
begin
   cldaselotes.First;
   while not cldaselotes.eof do begin
      if cldaselotesresultado.AsString='PROCESSAMENTO' then begin
         ACBrGNRE1.SSL.NumeroSerie:=dmconexao.num_serie;
         ACBrGNRE1.SSL.Senha:=dmconexao.senha;
         ACBrGNRE1.SSL.CarregarCertificado;
         ACBrGNRE1.WebServices.Retorno.numeroRecibo := cldaselotesrecibo.AsString;
         ACBrGNRE1.WebServices.Retorno.Executar;
         MemoResp.Lines.Text   := UTF8Encode(ACBrGNRE1.WebServices.Retorno.RetWS);
         memoRespWS.Lines.Text := UTF8Encode(ACBrGNRE1.WebServices.Retorno.RetWS);
         MemoResp.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'\temp.xml');
         WBResposta.Navigate(ExtractFileDir(application.ExeName)+'\temp.xml');
         verifica_retorno;
      end;
      if cldaselotesresultado.AsString='PROCESSAMENTO' then begin
         ACBrGNRE1.SSL.NumeroSerie:=dmconexao.num_serie;
         ACBrGNRE1.SSL.Senha:=dmconexao.senha;
         ACBrGNRE1.SSL.CarregarCertificado;
         ACBrGNRE1.WebServices.Retorno.numeroRecibo := cldaselotesrecibo_fb.AsString;
         ACBrGNRE1.WebServices.Retorno.Executar;
         MemoResp.Lines.Text   := UTF8Encode(ACBrGNRE1.WebServices.Retorno.RetWS);
         memoRespWS.Lines.Text := UTF8Encode(ACBrGNRE1.WebServices.Retorno.RetWS);
         MemoResp.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'\temp.xml');
         WBResposta.Navigate(ExtractFileDir(application.ExeName)+'\temp.xml');
         verifica_retorno;
      end;
      cldaselotes.Next;
   end;
   elimina_sucesso;
end;

procedure TfrmGnre.DBGrid1DblClick(Sender: TObject);
VAR ESTADO:STRING;
begin
  inherited;
  ESTADO:=cldasevi_nfESTADO.ASSTRING;

  CLDASEGEN.CLOSE;
  CLDASEGEN.COMMANDTEXT:='SELECT * FROM ESTADOS WHERE SIGLA='+QUOTEDSTR(ESTADO);
  CLDASEGEN.OPEN;


  if CLDASEGEN.FIELDBYNAME('GERA_GNRE').AsInteger=-1 then BEGIN
     if cldasevi_nfST.AsFloat>0 then begin

        if not cldaselotes.Locate('nfe',cldasevi_nfNFE.AsInteger,[]) then begin

        cldaselotes.append;
        cldaselotesnfe.AsInteger:=cldasevi_nfNFE.AsInteger;
        cldaselotes.post;

        end;

     end
     else begin
        showmessage('Nota não possui ST');
     end;
  END
  ELSE BEGIN
     SHOWMESSAGE('Não pode ser emitida GNRE para este estado');
  END;
  cldasegen.close;

end;

procedure TfrmGnre.DBGrid2DblClick(Sender: TObject);
begin
   cldaselotes.Delete;
end;

procedure TfrmGnre.elimina_sucesso;
var
  sucesso: Boolean;
begin
  cldaselotes.First;
  while not cldaselotes.Eof  do begin
     sucesso:=true;
     if (cldaselotesresultado.AsString='PENDENCIA') then sucesso:=false;
     if (cldaselotesresultado_fp.AsString='PENDENCIA') then sucesso:=false;
     if sucesso=true then begin
        cldaselotes.Delete;
     end
     else begin
        cldaselotes.Next;
     end;
  end;
end;

procedure TfrmGnre.FrameEnter(Sender: TObject);
begin
   tash_geral.TabVisible:=false;
   tash_erros.TabVisible:=false;
   PageControl2.ActivePage:=tash_geral;
   NOTA_DE.Date:=DATE;
   NOTA_ATE.Date:=DATE;

   tash_geral.Refresh;

   Button2Click(self);

   ACBrGNREGuiaFR1.FastFile:=ExtractFileDir(application.exename)+'\GNRE_GUIA.fr3';

end;

procedure TfrmGnre.grava_xml;
begin
   if RECEITA='100099' then fundo:=false
   else fundo:=true;
   ACBrGNRE1.Guias.Clear;
   acbrgnre1.GuiasRetorno.Clear;


   with acbrgnre1.Guias.Add.GNRE do begin
      c01_UfFavorecida := UFFAVORECIDA;
      c02_receita := STRTOINT(receita);
      c03_idContribuinteEmitente:=CICCONTRIBUINTE;

      if FUNDO=false then begin
         if (LENGTH(TRIM(detalhamento_receita))>0) then BEGIN
            c25_detalhamentoReceita:=STRTOINT(detalhamento_receita);
         END;
         if LENGTH(TRIM(convenio))>0 then BEGIN
            c15_convenio:=CONVENIO;
         END;
      end
      else begin
         if (LENGTH(TRIM(detalhamento_receita_fp))>0) then BEGIN
            c25_detalhamentoReceita:=STRTOINT(detalhamento_receita_fp);
         END;
         if LENGTH(TRIM(convenio_fp))>0 then BEGIN
            c15_convenio:=convenio_fp;
         END;
      end;

      if LENGTH(TRIM(produto))>0 then BEGIN
         c26_produto:=STRTOINT(produto);
      END;
      c27_tipoIdentificacaoEmitente:=1;
      c28_tipoDocOrigem := 10;
      c04_docOrigem := documento_origem;
      c06_valorPrincipal := valor_principal;
      c10_valorTotal:=VALOR_PRINCIPAL;
      c14_dataVencimento := vencimento;
      c16_razaoSocialEmitente:=RAZAO_SOCIAL_EMITENTE;
      c18_enderecoEmitente:=ENDERECO_EMITENTE;
      c19_municipioEmitente:=ibge_emitente;
      c20_ufEnderecoEmitente:=UF_EMITENTE;
      c21_cepEmitente:=CEP_EMITENTE;
      c22_telefoneEmitente:=TELEFONE_EMITENTE;
      if FUNDO=false then begin
         if id_contrib=-1 then BEGIN
               if LENGTH(TRIM(inscricao_estadual_destinatario))>0 then BEGIN
                    c36_inscricaoEstadualDestinatario:=inscricao_estadual_destinatario;
               END
               ELSE BEGIN
                  c34_tipoIdentificacaoDestinatario:=1;
                  c35_idContribuinteDestinatario:=cnpj_destinatario;
                  c37_razaoSocialDestinatario:=razao_social_destinatario;
                  c38_municipioDestinatario:=ibge_destinatario;
                  c36_inscricaoEstadualDestinatario:=inscricao_estadual_destinatario;
               END;
         END;
      end
      else begin
         if id_contrib_fp=-1 then BEGIN
            c34_tipoIdentificacaoDestinatario:=1;
            c35_idContribuinteDestinatario:=cnpj_destinatario;
            c37_razaoSocialDestinatario:=razao_social_destinatario;
            c38_municipioDestinatario:=ibge_destinatario;
            c36_inscricaoEstadualDestinatario:=inscricao_estadual_destinatario;
         END;
      end;

      c33_dataPagamento:=vencimento;
      referencia.periodo:=0;
      referencia.mes:=formatfloat('00',mes);
      referencia.ano:=ano;

      if fundo=false then begin
         if (LENGTH(TRIM(ex1_cod))>0) OR (LENGTH(TRIM(ex2_cod))>0) OR (LENGTH(TRIM(ex3_cod))>0) then BEGIN
            if (LENGTH(TRIM(ex1_cod))>0) then begin
               with camposExtras.Add.CampoExtra do begin
                  codigo:=STRTOINT(ex1_cod);
                  tipo:=ex1_tipo;
                  if EX1_CAMPO='chave' then begin
                     valor:=chave;
                  end;
               end;
            END;
            if (LENGTH(TRIM(ex2_cod))>0) then begin
               with camposExtras.Add.CampoExtra do begin
                  codigo:=STRTOINT(ex2_cod);
                  tipo:=ex2_tipo;
                  if EX2_CAMPO='chave' then begin
                     valor:=chave;
                  end;
               end;
            END;
            if (LENGTH(TRIM(ex3_cod))>0) then begin
               with camposExtras.Add.CampoExtra do begin
                  codigo:=STRTOINT(ex3_cod);
                  tipo:=ex3_tipo;
                  if EX3_CAMPO='chave' then begin
                     valor:=chave;
                  end;
               end;
            END;
         END;
      end
      else begin
         if (LENGTH(TRIM(ex1_fp_cod))>0) OR (LENGTH(TRIM(ex2_fp_cod))>0) OR (LENGTH(TRIM(ex3_fp_cod))>0) then BEGIN
            if (LENGTH(TRIM(ex1_fp_cod))>0) then begin
               with camposExtras.Add.CampoExtra do begin
                  codigo:=STRTOINT(ex1_fp_cod);
                  tipo:=ex1_fp_tipo;
                  if EX1_fp_CAMPO='chave' then begin
                     valor:=chave;
                  end;
               end;
            END;
            if (LENGTH(TRIM(ex2_fp_cod))>0) then begin
               with camposExtras.Add.CampoExtra do begin
                  codigo:=STRTOINT(ex2_fp_cod);
                  tipo:=ex2_fp_tipo;
                  if EX2_fp_CAMPO='chave' then begin
                     valor:=chave;
                  end;
               end;
            END;
            if (LENGTH(TRIM(ex3_fp_cod))>0) then begin
               with camposExtras.Add.CampoExtra do begin
                  codigo:=STRTOINT(ex3_fp_cod);
                  tipo:=ex3_fp_tipo;
                  if EX3_fp_CAMPO='chave' then begin
                     valor:=chave;
                  end;
               end;
            END;
         END;

      end;
   end;

   TRY
   ACBrGNRE1.SSL.NumeroSerie:=dmconexao.num_serie;
   ACBrGNRE1.SSL.Senha:=dmconexao.senha;
   ACBrGNRE1.SSL.CarregarCertificado;
   ACBrGNRE1.Enviar;

   MemoResp.Lines.Text   := UTF8Encode(ACBrGNRE1.WebServices.Retorno.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrGNRE1.WebServices.Retorno.RetWS);
   memoresp.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'\temp.xml');
   wbresposta.Navigate(ExtractFileDir(application.ExeName)+'\temp.xml');

   Except ON E:EXCEPTION DO
    SHOWMESSAGE('Try do envio: '+E.Message);
   END;



   verifica_retorno;

end;

function TfrmGnre.LIMPA_CNPJ(CNPJ: STRING): STRING;
var novo_cnpj:string;
    i:integer;
begin
  novo_cnpj:='';
  for I := 1 to length(cnpj) do begin
     if (cnpj[i]<>'.') and (cnpj[i]<>',') and (cnpj[i]<>'/') and (cnpj[i]<>'-')  and (cnpj[i]<>' ') and (cnpj[i]<>'(') and (cnpj[i]<>')') then begin
       novo_cnpj:=novo_cnpj+cnpj[i];
     end;
  end;
  limpa_cnpj:=novo_cnpj;
end;

function TfrmGnre.valor_americano2(valor: double; digitos: integer): string;
var
    mascara:string;
    i:integer;
    RETORNO:STRING;
begin
   mascara:='';
   for i := 1 to digitos do begin
     mascara:=mascara+'0';
   end;
   Mascara:='############0.'+mascara;

  retorno:=formatfloat(mascara,valor);
  for I := 1 to length(retorno) do begin
     if retorno[i]=',' then retorno[i]:='.'
  end;
  result:=retorno;

end;

function TfrmGnre.valor_brasileiro2(valor: double; digitos: integer): string;
var mascara:string;
    i:integer;
    RETORNO:STRING;
begin
   mascara:='';
   for i := 1 to digitos do begin
     mascara:=mascara+'0';
   end;
   Mascara:='############0.'+mascara;

  retorno:=formatfloat(mascara,valor);
  for I := 1 to length(retorno) do begin
     if retorno[i]='.' then retorno[i]:=','
  end;
  result:=retorno;
end;

procedure TfrmGnre.verifica_retorno;
begin
   CLDASENOTA.Close;
   CLDASENOTA.commandtext:='SELECT * FROM NF WHERE NFE='+INTTOSTR(cldaselotesnfe.AsInteger)+' AND CODEMP_ID='+INTTOSTR(dmconexao.empresa_id);
   CLDASENOTA.Open;
   CLDASENOTA.Edit;
   CLDASELOTES.EDIT;
   if fundo then begin
      cldasenotaGNRE_RECIBO_FP.AsString:=ACBrGNRE1.WebServices.Retorno.numeroRecibo;
      cldaselotesrecibo_fb.AsString:=ACBrGNRE1.WebServices.Retorno.numeroRecibo;
   end
   else begin
      cldasenotaGNRE_RECIBO.AsString:=ACBrGNRE1.WebServices.Retorno.numeroRecibo;
      cldaselotesrecibo.AsString:=ACBrGNRE1.WebServices.Retorno.numeroRecibo;
   end;
   if POS('PENDENCIA',uppercase(ACBrGNRE1.WebServices.Retorno.descricao))>0 then begin
      if fundo then BEGIN
         cldasenotaGNRE_STATUS_FP.AsString:='PENDENCIA';
         cldaselotesresultado_fp.AsString:='PENDENCIA';
         cldasenotaGNRE_RETORNO_INCONSISTENCIA_FP.LoadFromFile(ExtractFileDir(application.ExeName)+'\temp.xml');
      END
      ELSE BEGIN
         cldasenotaGNRE_STATUS.AsString:='PENDENCIA';
         cldaselotesresultado.AsString:='PENDENCIA';
         cldasenotaGNRE_RETORNO_INCONSISTENCIA.LoadFromFile(ExtractFileDir(application.ExeName)+'\temp.xml');
      END;
   end;
   if POS('SUCESSO',uppercase(ACBrGNRE1.WebServices.Retorno.descricao))>0 then begin
      if FUNDO then BEGIN
         cldasenotaGNRE_STATUS_FP.AsString:='SUCESSO';
         cldaselotesresultado_fp.AsString:='SUCESSO';
      END
      ELSE BEGIN
         cldasenotagnre_status.AsString:='SUCESSO';
         cldaselotesresultado.AsString:='SUCESSO';
      END;
      FileListBox1.Directory:='C:\GNRE_PDF\TXT';
      FILELISTBOX1.Refresh;
      FILELISTBOX1.Update;
      if filelistbox1.Count>0 then begin
         FileListBox1.ItemIndex:=0;
         if fundo then begin
            cldasenotaGNRE_RETORNO_TXT_FP.LoadFromFile(filelistbox1.filename);
         end
         else begin
            cldasenotaGNRE_RETORNO_TXT.LoadFromFile(filelistbox1.filename);
         end;

         ACBrGNREGuiaFR1.FastFile:=ExtractFileDir(application.exename)+'\GNRE_GUIA.fr3';
         ACBrGNRE1.GuiasRetorno.Clear;
         ACBrGNRE1.GuiasRetorno.LoadFromFile(filelistbox1.FileName);
         DeleteFile(filelistbox1.FileName);
         if fundo then begin
            cldasenotaGNRE_BARRA_FP.AsString:=ACBRGNRE1.GuiasRetorno.Items[0].GNRE.RepresentacaoNumerica;
         end
         else begin
            cldasenotaGNRE_BARRA.AsString:=ACBRGNRE1.GuiasRetorno.Items[0].GNRE.RepresentacaoNumerica;
         end;
         ACBrGNRE1.GuiasRetorno.ImprimirPDF;
         acbrgnre1.GuiasRetorno.Imprimir;
         FileListBox1.Directory:='C:\gnre_pdf\salvar';
         FILELISTBOX1.Refresh;
         FILELISTBOX1.Update;
         if filelistbox1.Count>0 then begin
            FileListBox1.ItemIndex:=0;
            if fundo then begin
               cldasenotaGUIA_GNRE_FP.LoadFromFile(filelistbox1.FileName);
               cldasenotaGUIA_GNRE_FP.SaveToFile('c:\gnre_pdf\gnre_estoque\gnre_nf_'+inttostr(cldaselotesnfe.AsInteger)+'_FP.pdf');
            end
            else begin
               cldasenotaGUIA_GNRE.LoadFromFile(filelistbox1.FileName);
               cldasenotaGUIA_GNRE.SaveToFile('c:\gnre_pdf\gnre_estoque\gnre_nf_'+inttostr(cldaselotesnfe.AsInteger)+'.pdf');
            end;
            deletefile(filelistbox1.FileName);
         end;
      end;
   end;
   if POS('PROCESSAMENTO',uppercase(ACBrGNRE1.WebServices.Retorno.descricao))>0 then begin
      if fundo then begin
         cldasenotaGNRE_STATUS_FP.AsString:='PROCESSAMENTO';
         cldaselotesresultado_fp.AsString:='PROCESSAMENTO';
      end
      else begin
         cldasenotagnre_status.AsString:='PROCESSAMENTO';
         cldaselotesresultado.AsString:='PROCESSAMENTO';
      end;
   end;
   cldaselotes.Post;
   CLDASENOTA.Post;
   CLDASENOTA.ApplyUpdates(0);
   cldasenota.CancelUpdates;

end;

end.
