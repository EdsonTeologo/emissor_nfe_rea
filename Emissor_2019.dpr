program Emissor_2019;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  ufrmEmpresas in 'ufrmEmpresas.pas' {frmEmpresas: TFrame},
  un_damo_principal in 'un_damo_principal.pas' {dmconexao: TDataModule},
  un_frm_le_certificado in 'un_frm_le_certificado.pas' {frm_le_certificado},
  ufrmNotas in 'ufrmNotas.pas' {frmNotas: TFrame},
  un_frm_motivo in 'un_frm_motivo.pas' {frm_motivo},
  un_frm_mensagem_progresso in 'un_frm_mensagem_progresso.pas' {frm_mensagem_progresso},
  un_frm_inutilizar in 'un_frm_inutilizar.pas' {frm_inutilizar_nota},
  ufrmGnre in 'ufrmGnre.pas' {frmGnre: TFrame},
  ufrmRelGerencial in 'ufrmRelGerencial.pas' {frmRelGerencial: TFrame},
  ufrmSpedFiscal in 'ufrmSpedFiscal.pas' {frmSpedFiscal: TFrame},
  ufrmBackup in 'ufrmBackup.pas' {frmBackup: TFrame},
  ufrmParametros in 'ufrmParametros.pas' {frmParametros: TFrame},
  un_frm_diretorio in 'un_frm_diretorio.pas' {frm_diretorio},
  ufrmNotaAutomatica in 'ufrmNotaAutomatica.pas' {frmNotaAutomatica: TFrame},
  ufrmProcessoAutomatico in 'ufrmProcessoAutomatico.pas' {frmProcessoAutomatico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdmconexao, dmconexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tfrm_le_certificado, frm_le_certificado);
  Application.CreateForm(Tfrm_motivo, frm_motivo);
  Application.CreateForm(Tfrm_mensagem_progresso, frm_mensagem_progresso);
  Application.CreateForm(Tfrm_inutilizar_nota, frm_inutilizar_nota);
  Application.CreateForm(Tfrm_diretorio, frm_diretorio);
  Application.Run;
end.
