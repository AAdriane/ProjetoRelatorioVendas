object FormRelat02: TFormRelat02
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de produtos por cliente'
  ClientHeight = 366
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object RLReport1: TRLReport
    Left = -48
    Top = -24
    Width = 794
    Height = 1123
    DataSource = DsVendaitem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
    end
    object rllabel: TRLLabel
      Left = 232
      Top = 48
      Width = 341
      Height = 24
      Caption = 'Relat'#243'rio de produtos por cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 89
      Width = 718
      Height = 168
      DataFields = 'CODCLIENTE'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 42
        BandType = btColumnHeader
        Color = clSkyBlue
        ParentColor = False
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 234
          Top = 16
          Width = 51
          Height = 16
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 413
          Top = 16
          Width = 33
          Height = 16
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 24
          Top = 16
          Width = 100
          Height = 16
          Caption = 'Codigo Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLDBText1: TRLDBText
          Left = 128
          Top = 16
          Width = 85
          Height = 16
          DataField = 'CODCLIENTE'
          DataSource = DsVendaitem
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 289
          Top = 15
          Width = 43
          Height = 17
          DataField = 'NOME'
          DataSource = DsVendaitem
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 453
          Top = 16
          Width = 30
          Height = 16
          DataField = 'CPF'
          DataSource = DsVendaitem
          Text = ''
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 42
        Width = 718
        Height = 40
        Color = clCream
        ParentColor = False
        Transparent = False
        object DBText1: TDBText
          Left = 138
          Top = 12
          Width = 71
          Height = 17
          DataField = 'ID_PRODUTO'
          DataSource = DsVendaitem
        end
        object DBText2: TDBText
          Left = 376
          Top = 12
          Width = 65
          Height = 17
          DataField = 'DESCRICAO'
          DataSource = DsVendaitem
        end
        object RLLabel4: TRLLabel
          Left = 24
          Top = 12
          Width = 106
          Height = 16
          Caption = 'Codigo Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 217
          Top = 12
          Width = 124
          Height = 16
          Caption = 'Produto comprado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 82
        Width = 718
        Height = 31
        object RLLabel6: TRLLabel
          Left = 24
          Top = 12
          Width = 79
          Height = 16
          Caption = 'Quantidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 122
          Top = 12
          Width = 139
          Height = 16
          DataField = 'QUANTIDADE'
          DataSource = DsVendaitem
          Text = ''
        end
      end
    end
  end
  object QryVendaItem: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'select * from vendaitem'
      'join produto on produto.codproduto = vendaitem.id_produto'
      'join venda on venda.id_venda = vendaitem.id_venda'
      'join cliente on cliente.codcliente = venda.id_cliente')
    Left = 94
    Top = 6
  end
  object DsVendaitem: TDataSource
    DataSet = QryVendaItem
    Left = 30
    Top = 6
  end
end
