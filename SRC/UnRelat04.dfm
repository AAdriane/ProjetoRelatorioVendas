object FormRelat04: TFormRelat04
  Left = 0
  Top = 0
  Caption = 'relat'#243'rio de vendas por cliente'
  ClientHeight = 480
  ClientWidth = 758
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
    Left = -16
    Top = -24
    Width = 794
    Height = 1123
    DataSource = DsDados
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
        Left = 184
        Top = 9
        Width = 364
        Height = 28
        Caption = 'Relat'#243'rio de Vendas por cliente'
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
      Height = 144
      DataFields = 'CODCLIENTE'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        GreenBarColor = clMoneyGreen
        BandType = btHeader
        Color = clSkyBlue
        ParentColor = False
        Transparent = False
        object DBText1: TDBText
          Left = 285
          Top = 10
          Width = 116
          Height = 17
          DataField = 'NOME'
          DataSource = DsDados
        end
        object DBText2: TDBText
          Left = 130
          Top = 10
          Width = 65
          Height = 17
          DataField = 'ID_CLIENTE'
          DataSource = DsDados
        end
        object RLLabel2: TRLLabel
          Left = 224
          Top = 10
          Width = 42
          Height = 16
          Caption = 'Nome:'
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 32
          Top = 10
          Width = 92
          Height = 16
          Caption = 'Codigo Cliente:'
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 33
        Width = 718
        Height = 32
        BandType = btColumnHeader
        Color = clBtnFace
        ParentColor = False
        Transparent = False
        object DBText3: TDBText
          Left = 328
          Top = 8
          Width = 65
          Height = 17
          DataField = 'VALORTOTAL'
          DataSource = DsDados
        end
        object DBText4: TDBText
          Left = 127
          Top = 9
          Width = 65
          Height = 17
          DataField = 'ID_VENDA'
          DataSource = DsDados
        end
        object RLLabel4: TRLLabel
          Left = 32
          Top = 9
          Width = 89
          Height = 16
          Caption = 'Codigo Venda:'
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 224
          Top = 9
          Width = 70
          Height = 16
          Caption = 'Valor Total:'
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 32
        object DBText5: TDBText
          Left = 211
          Top = 8
          Width = 65
          Height = 17
          DataField = 'DESCRICAO'
          DataSource = DsDados
        end
        object DBText6: TDBText
          Left = 130
          Top = 8
          Width = 21
          Height = 17
          DataField = 'ID_PRODUTO'
          DataSource = DsDados
        end
        object DBText7: TDBText
          Left = 408
          Top = 8
          Width = 65
          Height = 17
          DataField = 'QUANTIDADE'
          DataSource = DsDados
        end
        object DBText8: TDBText
          Left = 579
          Top = 6
          Width = 65
          Height = 17
          DataField = 'VALOR'
          DataSource = DsDados
        end
        object RLLabel6: TRLLabel
          Left = 27
          Top = 9
          Width = 97
          Height = 16
          Caption = 'Codigo Produto:'
        end
        object RLLabel7: TRLLabel
          Left = 152
          Top = 9
          Width = 53
          Height = 16
          Caption = 'Produto:'
        end
        object RLLabel8: TRLLabel
          Left = 328
          Top = 9
          Width = 74
          Height = 16
          Caption = 'Quantidade:'
        end
        object RLLabel9: TRLLabel
          Left = 479
          Top = 6
          Width = 58
          Height = 16
          Caption = 'Valor Un:'
        end
      end
    end
  end
  object QryVenda: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from venda '
      'join cliente on cliente.codcliente = venda.id_cliente'
      'join vendaitem on vendaitem.id_venda = venda.id_venda'
      'join produto on produto.codproduto = vendaitem.id_produto'
      'order by cliente.codcliente')
    Left = 32
    Top = 24
  end
  object DsDados: TDataSource
    DataSet = QryVenda
    Left = 80
    Top = 24
  end
end
