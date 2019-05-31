unit ufrmBackup;

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
  Vcl.Menus, cxGroupBox, cxRadioGroup, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, Vcl.Samples.Gauges, Data.DB,
  Datasnap.DBClient;

type
  TfrmBackup = class(TFrame)
    cldasenfe_xml: TClientDataSet;
    cldasenfe_xmlCODEMP_ID: TIntegerField;
    cldasenfe_xmlXML_NFE: TBlobField;
    cldasenfe_xmlCNPJ: TStringField;
    cldasenfe_xmlDATA_EMISSAO: TDateField;
    cldasenfe_xmlID_NFE: TStringField;
    Gauge1: TGauge;
    cxLabel1: TcxLabel;
    cxdt_ini: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdt_fin: TcxDateEdit;
    cxButton1: TcxButton;
    rd_grupo: TcxRadioGroup;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses un_damo_principal;

procedure TfrmBackup.cxButton1Click(Sender: TObject);
VAR ANO,MES,DIA:WORD;
begin
   GAUGE1.Visible:=TRUE;
   case rd_grupo.ItemIndex of
      0:dmconexao.sock_bak.ServerName:='srv_reality.ReDaMoPrincipal';
      1:dmconexao.sock_bak.ServerName:='srv_tabacocia.RedaMoPrincipal';
      2:dmconexao.sock_bak.ServerName:='srv_goldlog.ReDaMoPrincipal';
   end;

   GAUGE1.Progress:=0;
   CLDASENFE_XML.Close;
   CLDASENFE_XML.CommandText:='SELECT * FROM VI_NFE_XML3 WHERE DATA_EMISSAO>='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',CXDT_INI.Date))+' AND DATA_EMISSAO<='+QUOTEDSTR(FORMATDATETIME('YYYY-MM-DD',CXDT_FIN.Date));
   cldasenfe_xml.Open;
   GAUGE1.MaxValue:=cldasenfe_xml.RecordCount;
   cldasenfe_xml.First;
   while NOT cldasenfe_xml.Eof do BEGIN
      if Length(trim(cldasenfe_xmlID_NFE.AsString))>0 then begin
         DECODEDATE(cldasenfe_xmlDATA_EMISSAO.AsDateTime,ANO,MES,DIA);
         if NOT DirectoryExists('C:\BKUP_NFE_XML\'+cldasenfe_xmlCNPJ.AsString+'\'+FORMATFLOAT('0000',ANO)+'\'+FORMATFLOAT('00',MES))  then BEGIN
            ForceDirectories('C:\BKUP_NFE_XML\'+cldasenfe_xmlCNPJ.AsString+'\'+FORMATFLOAT('0000',ANO)+'\'+FORMATFLOAT('00',MES))
         END;
         cldasenfe_xmlXML_NFE.SaveToFile('C:\BKUP_NFE_XML\'+cldasenfe_xmlCNPJ.AsString+'\'+FORMATFLOAT('0000',ANO)+'\'+FORMATFLOAT('00',MES)+'\'+cldasenfe_xmlID_NFE.ASSTRING+'.xml');
      end;
      cldasenfe_xml.Next;
      Gauge1.Progress:=GAUGE1.Progress+1;
      APPLICATION.ProcessMessages;
   END;
   SHOWMESSAGE('Backup Terminado');
   gauge1.Visible:=false;
   cldasenfe_xml.Close;

end;

end.
