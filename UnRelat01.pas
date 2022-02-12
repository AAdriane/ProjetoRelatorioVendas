unit UnRelat01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFormRelat01 = class(TForm)
    qryDados: TFDQuery;
    RLReport1: TRLReport;
    dsDados: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    DBText1: TDBText;
    RLLabel2: TRLLabel;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    DBText2: TDBText;
    RLLabel4: TRLLabel;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel5: TRLLabel;
    qryDadosCODCLIENTE: TIntegerField;
    qryDadosNOME: TStringField;
    qryDadosCPF: TLargeintField;
    qryDadosID_MUNICIPIO: TIntegerField;
    qryDadosID_MUNICIPIO_1: TIntegerField;
    qryDadosNOME_1: TStringField;
    qryDadosUF: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat01: TFormRelat01;

implementation

{$R *.dfm}

uses UnConexao;

procedure TFormRelat01.FormCreate(Sender: TObject);
begin

  qryDados.Close;
  qryDados.Open;
end;

end.
