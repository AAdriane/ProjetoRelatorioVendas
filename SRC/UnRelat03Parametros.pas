unit UnRelat03Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormRelat03Parametros = class(TForm)
    cbEstado: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat03Parametros: TFormRelat03Parametros;


implementation

  uses
  UnRelat03;

{$R *.dfm}

procedure TFormRelat03Parametros.Button1Click(Sender: TObject);
var
select: string;
begin
  select := 'select * from venda v, cliente c, municipio m ' +
           'where c.codcliente = v.id_cliente '+
           'and m.id_municipio = c.id_municipio ';

  if cbEstado.itemindex <> 0  then
  begin

    select := select + 'and m.uf  = '+QuotedStr(cbEstado.Text);

  end;

  select := select + ' order by m.uf' ;

  FormRelat03 := TFormRelat03.Create(Nil);

  formRelat03.QryVenda.Close;

  FormRelat03.qryVenda.SQL.Text := SELECT;

  formRelat03.QryVenda.Open;

  IF FormRelat03.qryVenda.RecordCount = 0 Then
    ShowMessage('Não existem vendas na UF selecionada')
  Else
    FormRelat03.RLReport1.Preview;

  FormRelat03.Free;


end;

end.
