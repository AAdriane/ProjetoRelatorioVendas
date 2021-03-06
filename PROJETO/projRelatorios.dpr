program projRelatorios;

uses
  Vcl.Forms,
  UnPrincipal in 'UnPrincipal.pas' {FormPrincipal},
  UnConexao in 'UnConexao.pas' {DmConexao: TDataModule},
  UnRelat01 in 'UnRelat01.pas' {FormRelat01},
  UnRelat01Parametros in 'UnRelat01Parametros.pas' {FormRelat01Parametros},
  UnRelat02 in 'UnRelat02.pas' {FormRelat02},
  UnRelat03 in 'UnRelat03.pas' {FormRelat03},
  UnRelat04 in 'UnRelat04.pas' {FormRelat04},
  UnRelat03Parametros in 'UnRelat03Parametros.pas' {FormRelat03Parametros},
  UnRelat04Parametros in 'UnRelat04Parametros.pas' {FormRelat04Parametros},
  UnRelat02parametros in 'UnRelat02parametros.pas' {FormRelat02Parametros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
