unit un_frm_mensagem_progresso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_mensagem_progresso = class(TForm)
    st_mem: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mensagem_progresso: Tfrm_mensagem_progresso;

implementation

{$R *.dfm}

end.
