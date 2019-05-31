unit ufrmEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.ExtCtrls, Datasnap.DBClient, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxGroupBox, cxRadioGroup;

type
  TfrmEmpresas = class(TFrame)
    rd_grupo: TcxRadioGroup;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    rd_ambiente: TcxRadioGroup;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMEMP: TcxGridDBColumn;
    cxGrid1DBTableView1VALIDADE_CERTIFICADO: TcxGridDBColumn;
    cxGrid1DBTableView1dias_vencer: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1IE: TcxGridDBColumn;
    cxGrid1DBTableView1ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1CEP: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMA_NOTA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1COMPLEMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1IBGE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dasoemp: TDataSource;
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
    Bevel1: TBevel;
    procedure rd_grupoPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses un_damo_principal, un_frm_le_certificado;

procedure TfrmEmpresas.cxButton1Click(Sender: TObject);
begin
   if cldaseempNUMERO_SERIE.IsNull then begin
      if messagebox(handle,'Empresa não está relacionada a um certificado, deseja cadastrar certificado','Aviso',MB_YESNO+MB_ICONQUESTION)=IDYES then begin
         cxButton2Click(self);
      end;
   end;
   dmconexao.mostra_empresa(cldaseempRAZAO_NFE.AsString);
   dmconexao.razao_social:=cldaseempRAZAO_NFE.AsString;
   dmconexao.empresa_id:=cldaseempCODEMP_ID.AsInteger;
   dmconexao.num_serie:=cldaseempNUMERO_SERIE.AsString;
   dmconexao.senha:=cldaseempSENHA.AsString;
   dmconexao.formato_nota:=cldaseempFORMATO_NOTA.AsString;

end;

procedure TfrmEmpresas.cxButton2Click(Sender: TObject);
begin
   if frm_le_certificado=nil then frm_le_certificado:=tfrm_le_certificado.create(self);
   frm_le_certificado.showmodal;
   if frm_le_certificado.botao_acionado='gravar' then begin
      cldaseemp.Edit;
      cldaseempNUMERO_SERIE.AsString:=frm_le_certificado.edt_serie.Text;
      cldaseempSENHA.AsString:=frm_le_certificado.edt_senha1.Text;
      cldaseempVALIDADE_CERTIFICADO.AsDateTime:=frm_le_certificado.dte_validade.Date;
      cldaseemp.Post;
      cldaseemp.ApplyUpdates(0);
   end;

end;

procedure TfrmEmpresas.rd_grupoPropertiesChange(Sender: TObject);
begin
   cldaseemp.Close;
   dmconexao.SocketConnection1.Close;
   case rd_grupo.ItemIndex of
      0:dmconexao.SocketConnection1.ServerName:='srv_reality.ReDaMoPrincipal';
      1:dmconexao.SocketConnection1.ServerName:='srv_tabacocia.RedaMoPrincipal';
      2:dmconexao.SocketConnection1.ServerName:='srv_goldlog.ReDaMoPrincipal';
   end;
   dmconexao.grupo:=rd_grupo.itemindex;
   cldaseemp.Open;

end;

end.
