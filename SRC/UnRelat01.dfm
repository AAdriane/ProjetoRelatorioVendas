object FormRelat01: TFormRelat01
  Left = 0
  Top = 0
  Caption = 'FormRelat01'
  ClientHeight = 512
  ClientWidth = 837
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
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsDados
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
      object RLLabel1: TRLLabel
        Left = 128
        Top = 11
        Width = 472
        Height = 32
        Caption = 'Relat'#243'rio de clientes por munic'#237'pio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 89
      Width = 718
      Height = 160
      DataFields = 'ID_MUNICIPIO_1'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 27
        BandType = btHeader
        Color = clSkyBlue
        ParentColor = False
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 84
          Top = 4
          Width = 229
          Height = 20
          DataField = 'NOME_1'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 3
          Width = 70
          Height = 20
          Caption = 'Munic'#237'pio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 58
        Width = 718
        Height = 32
        object DBText1: TDBText
          Left = 48
          Top = 8
          Width = 273
          Height = 17
          DataField = 'NOME'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 327
          Top = 8
          Width = 273
          Height = 17
          DataField = 'CPF'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 27
        Width = 718
        Height = 31
        BandType = btColumnHeader
        Color = clCream
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        object RLLabel3: TRLLabel
          Left = 12
          Top = 6
          Width = 57
          Height = 17
          Caption = 'Clientes:'
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 327
          Top = 6
          Width = 32
          Height = 20
          Caption = 'CPF:'
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 90
        Width = 718
        Height = 31
        BandType = btFooter
        Color = clCream
        ParentColor = False
        Transparent = False
        object RLDBResult1: TRLDBResult
          Left = 106
          Top = 6
          Width = 46
          Height = 16
          DataField = 'CODCLIENTE'
          DataSource = dsDados
          Info = riCount
          Text = ''
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 26
          Top = 6
          Width = 74
          Height = 16
          Caption = 'Quantidade:'
          Transparent = False
        end
      end
    end
  end
  object qryDados: TFDQuery
    Connection = DmConexao.FDConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTE'
      'JOIN MUNICIPIO ON (MUNICIPIO.ID_MUNICIPIO = '
      'CLIENTE.ID_MUNICIPIO)'
      'ORDER BY CLIENTE.ID_MUNICIPIO')
    Left = 64
    object qryDadosCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryDadosCPF: TLargeintField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object qryDadosID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      Origin = 'ID_MUNICIPIO'
    end
    object qryDadosID_MUNICIPIO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MUNICIPIO_1'
      Origin = 'ID_MUNICIPIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryDadosNOME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_1'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryDadosUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
  end
  object dsDados: TDataSource
    DataSet = qryDados
    Left = 120
  end
end
