unit UnRelat04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, RLReport, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormRelat04 = class(TForm)
    RLReport1: TRLReport;
    QryVenda: TFDQuery;
    DsDados: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    RLLabel9: TRLLabel;
    DBText8: TDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat04: TFormRelat04;

implementation

{$R *.dfm}

procedure TFormRelat04.FormCreate(Sender: TObject);
begin
QryVenda.open;
end;

end.
