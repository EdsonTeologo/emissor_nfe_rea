unit ufrmParametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxDBEdit, cxLabel, cxGroupBox, cxPC, Data.DB, Datasnap.DBClient;

type
  TfrmParametros = class(TFrame)
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
    dasoparametros: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton1: TcxButton;
    dxDBToggleSwitch2: TdxDBToggleSwitch;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxButton2: TcxButton;
    dxDBToggleSwitch3: TdxDBToggleSwitch;
    btn_edi: TcxButton;
    btn_gra: TcxButton;
    btn_can: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxButton3: TcxButton;
    dxDBToggleSwitch4: TdxDBToggleSwitch;
    dxDBToggleSwitch5: TdxDBToggleSwitch;
    cxGroupBox4: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxButton4: TcxButton;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxButton5: TcxButton;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxButton6: TcxButton;
    cxLabel7: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxButton7: TcxButton;
    cxLabel8: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxButton8: TcxButton;
    dxDBToggleSwitch1: TdxDBToggleSwitch;
    procedure FrameEnter(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btn_ediClick(Sender: TObject);
    procedure btn_graClick(Sender: TObject);
    procedure btn_canClick(Sender: TObject);
    procedure dasoparametrosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses un_damo_principal, un_frm_diretorio;

procedure TfrmParametros.btn_canClick(Sender: TObject);
begin
   cldaseparametros.Cancel;

end;

procedure TfrmParametros.btn_ediClick(Sender: TObject);
begin
   cldaseparametros.edit;

end;

procedure TfrmParametros.btn_graClick(Sender: TObject);
begin
   cldaseparametros.Post;
   cldaseparametros.ApplyUpdates(0);

end;

procedure TfrmParametros.cxButton1Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório para Salvar PDF (NFE)';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIRETORIO_NFE_PDF.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);
   end;

end;

procedure TfrmParametros.cxButton2Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório para Salvar XML (NFE)';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIRETORIO_XML_NFE.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);

   end;

end;

procedure TfrmParametros.cxButton3Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório temporário para Email (NFE)';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIRETORIO_TEMPORARIO_EMAIL.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);
   end;

end;

procedure TfrmParametros.cxButton4Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório onde o Sistema armazenará os Eventos';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIR_SISTEMA_EVENTO.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);
   end;

end;

procedure TfrmParametros.cxButton5Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório onde o Sistema armazenará os Inutilizados';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIR_SISTEMA_INU.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);
   end;

end;

procedure TfrmParametros.cxButton6Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório onde o Sistema armazenará as NFes';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIR_SISTEMA_NFE.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);
   end;

end;

procedure TfrmParametros.cxButton7Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório onde o Sistema armazenará Xmls Envios e Retornos';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIR_SISTEMA_SALVAR.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);
   end;

end;

procedure TfrmParametros.cxButton8Click(Sender: TObject);
begin
   if dasoparametros.State in [dsedit] then begin
      if frm_diretorio=nil then frm_diretorio:=tfrm_diretorio.create(self);
      frm_diretorio.StaticText1.Caption:='Diretório onde o Sistema ira procurar os Schemas';
      frm_diretorio.showmodal;
      if frm_diretorio.acao='OK' then begin
         cldaseparametrosDIR_SISTEMA_SCHEMAS_40.AsString:=frm_diretorio.DirectoryListBox1.Directory;
      end;
      FreeAndNil(frm_diretorio);
   end;

end;

procedure TfrmParametros.dasoparametrosStateChange(Sender: TObject);
begin
   btn_edi.Enabled:=not (dasoparametros.State in [dsedit]);
   btn_gra.Enabled:= (dasoparametros.State in [dsedit]);
   btn_can.Enabled:= (dasoparametros.State in [dsedit]);

end;

procedure TfrmParametros.FrameEnter(Sender: TObject);
begin
   cldaseparametros.Open;
   if cldaseparametros.RecordCount=0 then begin
      cldaseparametros.Append;
      cldaseparametrosCONFIG_ID.AsInteger:=1;
      cldaseparametros.Post;
      cldaseparametros.ApplyUpdates(0);
   end;

end;

end.
