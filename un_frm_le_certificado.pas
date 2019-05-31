unit un_frm_le_certificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  Tfrm_le_certificado = class(TForm)
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    edt_serie: TcxTextEdit;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    cxButton3: TcxButton;
    edt_senha1: TcxTextEdit;
    cxLabel3: TcxLabel;
    dte_validade: TcxDateEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    botao_acionado:string;
  end;

var
  frm_le_certificado: Tfrm_le_certificado;

implementation

{$R *.dfm}

uses un_damo_principal;

procedure Tfrm_le_certificado.cxButton1Click(Sender: TObject);
begin
   botao_acionado:='gravar';
   close;
end;

procedure Tfrm_le_certificado.cxButton2Click(Sender: TObject);
begin
   edt_serie.Text:=dmconexao.ACBrNFe1.SSL.SelecionarCertificado;
   dte_validade.Date:=dmconexao.ACBrNFe1.SSL.CertDataVenc;
end;

procedure Tfrm_le_certificado.cxButton3Click(Sender: TObject);
begin
   botao_acionado:='cancelar';



   close;

end;

end.
