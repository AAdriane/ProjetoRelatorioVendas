object FormRelat03: TFormRelat03
  Left = 0
  Top = 0
  Caption = 'FormRelat03'
  ClientHeight = 495
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DsVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 168
        Top = 8
        Width = 389
        Height = 28
        Caption = 'Relat'#243'rio de vendas pos Estados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 81
      Width = 718
      Height = 112
      DataFields = 'UF'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        BandType = btHeader
        Color = clSkyBlue
        ParentColor = False
        Transparent = False
        object RLLabel2: TRLLabel
          Left = 16
          Top = 10
          Width = 29
          Height = 17
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 51
          Top = 11
          Width = 22
          Height = 16
          DataField = 'UF'
          DataSource = DsVenda
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 33
        Width = 718
        Height = 24
        BandType = btColumnHeader
        Color = clMoneyGreen
        ParentColor = False
        Transparent = False
        object RLLabel3: TRLLabel
          Left = 16
          Top = 6
          Width = 86
          Height = 17
          Caption = 'Cod.Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 168
          Top = 5
          Width = 91
          Height = 17
          Caption = 'Cod.Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 328
          Top = 6
          Width = 51
          Height = 17
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 499
          Top = 6
          Width = 81
          Height = 17
          Caption = 'Valor total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 57
        Width = 718
        Height = 32
        object DBText1: TDBText
          Left = 16
          Top = 9
          Width = 65
          Height = 17
          DataField = 'ID_VENDA'
          DataSource = DsVenda
        end
        object DBText2: TDBText
          Left = 168
          Top = 9
          Width = 65
          Height = 17
          DataField = 'ID_CLIENTE'
          DataSource = DsVenda
        end
        object DBText3: TDBText
          Left = 328
          Top = 9
          Width = 105
          Height = 17
          DataField = 'NOME'
          DataSource = DsVenda
        end
        object DBText4: TDBText
          Left = 499
          Top = 9
          Width = 65
          Height = 17
          DataField = 'VALORTOTAL'
          DataSource = DsVenda
        end
      end
    end
  end
  object QryVenda: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from venda'
      'join cliente on cliente.codcliente = venda.id_cliente'
      'join municipio on municipio.id_municipio = cliente.id_municipio'
      'order by municipio.uf')
    Left = 40
    Top = 24
  end
  object DsVenda: TDataSource
    DataSet = QryVenda
    Left = 112
    Top = 24
  end
end
