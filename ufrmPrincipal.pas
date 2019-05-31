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
    Timer1: TTimer;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1RAZAO_NFE: TcxGridDBColumn;
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
//   tsw_auto.Enabled:=false;
//   timer1.Enabled:=false;
//   timer1.Interval:=300000;
////   envio_de_notas;
//   timer1.Enabled:=true;
//   tsw_auto.Enabled:=true;
end;


procedure TfrmPrincipal.tsw_autoPropertiesChange(Sender: TObject);
begin
   Timer1.Enabled:=tsw_auto.Checked;
end;

end.
