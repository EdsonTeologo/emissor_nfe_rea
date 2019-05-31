unit un_damo_principal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.Win.MConnect, Datasnap.Win.SConnect,  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage, midaslib,pcnAuxiliar,pcnConversao,
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFEClass, ACBrNFeDANFEFR,
  ACBrMail, ACBrBase, ACBrDFe, ACBrNFe,dxCustomTileControl;

type
  Tdmconexao = class(TDataModule)
    SocketConnection1: TSocketConnection;
    cldaseagora: TClientDataSet;
    cldaseagoraCURRENT_TIME: TTimeField;
    cldaseagoraCURRENT_DATE: TDateField;
    cldaseagoraCURRENT_TIMESTAMP: TSQLTimeStampField;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    sock_bak: TSocketConnection;
    sock_rea: TSocketConnection;
    ACBrNFe1: TACBrNFe;
    ACBrMail1: TACBrMail;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    SocketConnection2: TSocketConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empresa_id:integer;
    razao_social:string;
    num_serie:string;
    senha:string;
    data:tdate;
    hora:ttime;
    data_hora:tdatetime;
    formato_nota:string;
    ambiente:string;
    grupo:integer;
    procedure mostra_empresa(empresa:string);
    procedure carga_certificado;
    procedure atualiza_agora;
    PROCEDURE CARGA_CONFIG;
    FUNCTION limpa_cnpj(cnpj:string):string;
  end;
var
  dmconexao: Tdmconexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Vcl.Dialogs, ufrmPrincipal;

{$R *.dfm}

{ Tdmconexao }

procedure Tdmconexao.atualiza_agora;
begin
   cldaseagora.Close;
   cldaseagora.Open;
   data:=cldaseagoraCURRENT_DATE.AsDateTime;
   hora:=cldaseagoraCURRENT_TIME.AsDateTime;
   data_hora:=cldaseagoraCURRENT_TIMESTAMP.AsDateTime;
   cldaseagora.Close;
end;

procedure Tdmconexao.carga_certificado;
begin
   ACBrNFe1.SSL.NumeroSerie:=num_serie;
   ACBrNFe1.SSL.Senha:=senha;
   ACBrNFe1.SSL.CarregarCertificado;
end;


procedure Tdmconexao.CARGA_CONFIG;
VAR ARQRET:TEXTFILE;
    LINHA:STRING;
    SERVIDOR:STRING;
    TIPO_CONEXAO:STRING;
    ENDERECO:STRING;
    POSICAO:INTEGER;
    CAMPO:STRING;
    CONTEUDO:STRING;
begin
   ASSIGNFILE(ARQRET,'CONEXAO.TXT');
   RESET(ARQRET);
   while NOT EOF(ARQRET) DO BEGIN
      READLN(ARQRET,LINHA);
      POSICAO:=POS('=',LINHA);
      CAMPO:=UPPERCASE(COPY(LINHA,1,POSICAO-1));
      CONTEUDO:=COPY(LINHA,POSICAO+1);
      if CAMPO='SERVIDOR' then SERVIDOR:=CONTEUDO;
      if CAMPO='TIPO_CONEXAO' then TIPO_CONEXAO:=CONTEUDO;
      if CAMPO='ENDERECO' then ENDERECO:=CONTEUDO;
      if CAMPO='AMBIENTE' then AMBIENTE:=CONTEUDO;
   END;

   SocketConnection1.ServerName:=SERVIDOR;
   if UPPERCASE(TIPO_CONEXAO)='IP' then SocketConnection1.Address:=ENDERECO
   ELSE SocketConnection1.Host:=ENDERECO;
//   closefile(arqret);

   if UPPERCASE(AMBIENTE)='PRODUCAO' then BEGIN
      ACBrNFe1.Configuracoes.WebServices.Ambiente:=taProducao;
   END
   else begin
      ACBrNFe1.Configuracoes.WebServices.Ambiente:=taHomologacao;
   end;

   sock_bak.ServerName:=SERVIDOR;
   if UPPERCASE(TIPO_CONEXAO)='IP' then sock_bak.Address:=ENDERECO
   ELSE sock_bak.Host:=ENDERECO;
   closefile(arqret);

   if UPPERCASE(AMBIENTE)='PRODUCAO' then BEGIN
      ACBrNFe1.Configuracoes.WebServices.Ambiente:=taProducao;
   END
   else begin
      ACBrNFe1.Configuracoes.WebServices.Ambiente:=taHomologacao;
   end;

end;

procedure Tdmconexao.DataModuleCreate(Sender: TObject);
begin
   empresa_id:=0;
   CARGA_CONFIG;
end;

function Tdmconexao.limpa_cnpj(cnpj: string): string;
var novo_cnpj:string;
   i:integer;
begin
   novo_cnpj:='';
   for i:=1 to length(cnpj) do begin
      if (cnpj[i]<>'.') and (cnpj[i]<>',') and (cnpj[i]<>'/') and (cnpj[i]<>'-') and (cnpj[i]<>' ') and (cnpj[i]<>'(') and (cnpj[i]<>')') then begin
         novo_cnpj:=novo_cnpj+cnpj[i];
      end;
   end;
   limpa_cnpj:=trim(novo_cnpj);
end;

procedure Tdmconexao.mostra_empresa(empresa: string);
var i:integer;
begin
   frmPrincipal.StatusBar1.Panels[0].Text:='Empresa selecionada: '+empresa;
   for i := 0 to frmprincipal.ComponentCount-1 do begin
      if frmprincipal.Components[i] is tdxtilecontrolitem then (frmPrincipal.Components[i] as TdxTileControlItem).Enabled:=true;
   end;
end;

end.
