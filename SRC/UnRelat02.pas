unit UnRelat02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, UnConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFormRelat02 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rllabel: TRLLabel;
    QryVendaItem: TFDQuery;
    DsVendaitem: TDataSource;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelat02: TFormRelat02;

implementation

{$R *.dfm}

end.
