unit UnRelat04Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormRelat04Parametros = class(TForm)
    cbCliente: TDBComboBox;
    RLLabel1: TRLLabel;
    DsCliente: TDataSource;
    qryCliente: TFDQuery;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    Button1: TButton;
    Image1: TImage;
    cbLista: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat04Parametros: TFormRelat04Parametros;

implementation

uses
  unRelat04;

{$R *.dfm}

procedure TFormRelat04Parametros.Button1Click(Sender: TObject);
var
select: string;
begin
  FormRelat04 := TFormRelat04.Create(Nil);

  FormRelat04.qryVenda.Close;

   select :=' select * from venda ' +
            ' join cliente on cliente.codcliente = venda.id_cliente ' +
            ' join vendaitem on vendaitem.id_venda = venda.id_venda ' +
            ' join produto on produto.codproduto = vendaitem.id_produto ' ;


  if (cbCliente.itemindex <> 0) then
  begin
    select := select + ' where cliente.nome = ' +QuotedStr(cbCliente.Text);
  end;
  if (cbLista.ItemIndex = 0) then
  begin
    select := select + ' order by cliente.nome ';
  end
  else
  begin
     select := select + ' order by cliente.codcliente ';
  end;

  FormRelat04:= TFormRelat04.create(nil);

  formRelat04.QryVenda.close;

  formRelat04.QryVenda.SQL.Text := SELECT;

  formRelat04.QryVenda.Open;

  IF  formRelat04.QryVenda.RecordCount = 0 Then
    ShowMessage('N?o existem vendas para o cliente selecionado')
  Else
    formRelat04.RLReport1.Preview;

  formRelat04.Free;

end;

procedure TFormRelat04Parametros.FormCreate(Sender: TObject);
begin
QryCliente.Close;
QryCliente.Open;

cbCliente.Items.Clear;

cbCliente.Items.Add('Todos');
cbCliente.ItemIndex := 0;

qryCliente.First;

while not Qrycliente.Eof do
begin
  cbCliente.Items.Add(qryCliente.FieldByName('NOME').Value);
  qryCliente.Next;
end;
end;

end.
