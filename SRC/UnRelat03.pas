unit UnRelat03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, RLReport, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormRelat03 = class(TForm)
    RLReport1: TRLReport;
    QryVenda: TFDQuery;
    DsVenda: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand4: TRLBand;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    RLDBText1: TRLDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat03: TFormRelat03;

implementation

{$R *.dfm}

procedure TFormRelat03.FormCreate(Sender: TObject);
begin
QryVenda.open;
end;

end.
