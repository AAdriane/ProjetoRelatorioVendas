unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, UnRelat04Parametros;

type
  TFormPrincipal = class(TForm)
    qryCliente: TFDQuery;
    dsCliente: TDataSource;
    qryVenda: TFDQuery;
    dsVenda: TDataSource;
    qryProduto: TFDQuery;
    dsProduto: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnConexao, UnRelat01Parametros,UnRelat03Parametros,UnRelat02Parametros;

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  FormRelat01Parametros := TFormRelat01Parametros.Create(Nil);
  FormRelat01Parametros.ShowModal;
  FormRelat01Parametros.Free;

end;

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
  Formrelat02Parametros:= TFormrelat02Parametros.Create(Nil);
  Formrelat02Parametros.ShowModal;
  Formrelat02Parametros.Free;
end;

procedure TFormPrincipal.Button3Click(Sender: TObject);
begin
  FormRelat04Parametros := TFormRelat04Parametros.Create(Nil);
  FormRelat04Parametros.ShowModal;
  FormRelat04Parametros.Free;
end;

procedure TFormPrincipal.Button4Click(Sender: TObject);
begin
  FormRelat03Parametros := TFormRelat03Parametros.Create(Nil);
  FormRelat03Parametros.ShowModal;
  FormRelat03Parametros.Free;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  qryCliente.Close;
  qryCliente.Open;

  qryVenda.Close;
  qryVenda.Open;

  qryProduto.Close;
  qryProduto.Open;
end;

end.
