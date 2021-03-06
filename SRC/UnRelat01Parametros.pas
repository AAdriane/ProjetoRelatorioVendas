unit UnRelat01Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, unConexao, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  RLReport;

type
  TFormRelat01Parametros = class(TForm)
    Button1: TButton;
    qryMunicipios: TFDQuery;
    cbMunicipios: TComboBox;
    Label1: TLabel;
    qryMunicipiosID_MUNICIPIO: TIntegerField;
    qryMunicipiosNOME: TStringField;
    qryMunicipiosUF: TStringField;
    RLImage1: TRLImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat01Parametros: TFormRelat01Parametros;

implementation

uses
  UnRelat01;

{$R *.dfm}

procedure TFormRelat01Parametros.Button1Click(Sender: TObject);
begin
  FormRelat01 := TFormRelat01.Create(Nil);

  // fecha a query antes de mudar o SQL
  FormRelat01.qryDados.Close;

  // a fun??o QuotedStr serve para colocar uma string entre aspas.

  // Se selecionou todos, n?o aplica o filtro Where
  if cbMunicipios.ItemIndex = 0 then
    FormRelat01.qryDados.SQL.Text := 'SELECT * FROM CLIENTE ' +
      'JOIN MUNICIPIO ON ( ' + 'CLIENTE.ID_MUNICIPIO = MUNICIPIO.ID_MUNICIPIO) '
      + 'ORDER BY CLIENTE.ID_MUNICIPIO, CLIENTE.CODCLIENTE '
    // Sen?o, filtra somente os clientes do munic?pio selecionado
  Else
    FormRelat01.qryDados.SQL.Text := 'SELECT * FROM CLIENTE ' +
      'JOIN MUNICIPIO ON ( ' + 'CLIENTE.ID_MUNICIPIO = MUNICIPIO.ID_MUNICIPIO) '
      + 'WHERE MUNICIPIO.NOME =  ' + QuotedStr(cbMunicipios.Text) +
      'ORDER BY CLIENTE.ID_MUNICIPIO, CLIENTE.CODCLIENTE ';

  // Reabrir a query com o novo SQL
  FormRelat01.qryDados.Open;

  // Verifica se houve registro retornado na consulta SQL.
  IF FormRelat01.qryDados.RecordCount = 0 Then
    ShowMessage('N?o existem clientes no munic?pio selecionado')
  Else
    FormRelat01.RLReport1.Preview;

  FormRelat01.Free;
end;

procedure TFormRelat01Parametros.FormCreate(Sender: TObject);
begin
  qryMunicipios.Close;
  qryMunicipios.Open;

  cbMunicipios.Items.Clear;

  cbMunicipios.Items.Add('Todos');
  cbMunicipios.ItemIndex := 0;

  // Posiciona no primeiro registro da Query
  qryMunicipios.First;

  // enquanto n?o chegar no ?ltimo registro
  while not qryMunicipios.Eof do
  Begin
    // adiciono o municipio selecionado na query para o combobox
    cbMunicipios.Items.Add(qryMunicipios.FieldByName('nome').Value);

    // passa para o pr?ximo registro.
    qryMunicipios.Next;
  End;

end;

end.
