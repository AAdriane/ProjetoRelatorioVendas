unit UnRelat02parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, UnConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, RLReport, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  TFormRelat02Parametros = class(TForm)
    dbCliente: TDBComboBox;
    QryCliente: TFDQuery;
    DataSource1: TDataSource;
    RLLabel1: TRLLabel;
    Button1: TButton;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    cbLista: TComboBox;
    RLImage1: TRLImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat02Parametros: TFormRelat02Parametros;

implementation

uses
  UnRelat02;

{$R *.dfm}

procedure TFormRelat02Parametros.Button1Click(Sender: TObject);
var
  select: string;
begin
  FormRelat02 := TFormRelat02.Create(Nil);

  FormRelat02.qryVendaItem.Close;

   select := ' select * from vendaitem vi, venda v, cliente c, produto p ' +
             ' where p.codproduto = vi.id_produto '  +
             ' and v.id_venda = vi.id_venda ' +
             ' and c.codcliente = v.id_cliente ';


 if (dbCliente.itemindex <> 0) then
  begin
    select := select + ' and c.nome = ' +QuotedStr(dbCliente.Text);
  end;
  if (cbLista.ItemIndex = 0) then
  begin
    select := select + ' order by c.nome ';
  end
  else
  begin
     select := select + ' order by c.codcliente ';
  end;

  FormRelat02:= TFormRelat02.create(nil);

  formRelat02.QryVendaItem.close;

  formRelat02.QryVendaItem.SQL.Text := SELECT;

  formRelat02.QryVendaitem.Open;

  IF  formRelat02.QryVendaItem.RecordCount = 0 Then
    ShowMessage('Não existem produtos vendidos para o cliente selecionado')
  Else
    formRelat02.RLReport1.Preview;

  formRelat02.Free;



end;

procedure TFormRelat02Parametros.FormCreate(Sender: TObject);
begin
QryCliente.Close;
QryCliente.Open;

dbCliente.Items.Clear;

dbCliente.Items.Add('Todos');
dbCliente.ItemIndex := 0;

qryCliente.First;

while not Qrycliente.Eof do
begin
  dbCliente.Items.Add(qryCliente.FieldByName('NOME').Value);
  qryCliente.Next;
end;
end;

end.
