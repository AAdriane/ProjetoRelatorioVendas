object DmConexao: TDmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 401
  Width = 660
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\diego\Desktop\Horus2021\4 SEMESTRE\LINGUAGEM D' +
        'E PROGRAMA'#199#195'O II\banco de dados trabalho\VENDAS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 152
    Top = 112
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 288
    Top = 104
  end
end
