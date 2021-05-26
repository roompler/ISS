object tnk: Ttnk
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1053#1050
  ClientHeight = 669
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 881
    Height = 669
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1058#1053#1050
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 873
        Height = 486
        Align = alTop
        BorderStyle = bsNone
        Color = clCream
        DataSource = DataSource1
        DrawingStyle = gdsGradient
        FixedColor = clCream
        GradientStartColor = clOlive
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Alignment = taRightJustify
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'favorite'
            Title.Caption = #1048#1079#1073#1088#1072#1085#1085#1086#1077
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tnk'
            Title.Caption = #1058#1053#1050
            Title.Color = clMoneyGreen
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'opis'
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'norm'
            Title.Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'izmer'
            Title.Caption = #1048#1079#1084#1077#1088#1080#1090#1077#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'edizmer'
            Title.Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 486
        Width = 873
        Height = 155
        Align = alClient
        Caption = #1056#1072#1089#1095#1077#1090' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1074#1088#1077#1084#1077#1085#1080' '#1080' '#1086#1073#1098#1077#1084#1086#1074
        TabOrder = 1
        object DBText1: TDBText
          Left = 528
          Top = 62
          Width = 65
          Height = 25
          DataField = 'norm'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 528
          Top = 101
          Width = 41
          Height = 25
          DataField = 'izmer'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 575
          Top = 101
          Width = 74
          Height = 17
          DataField = 'edizmer'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 528
          Top = 40
          Width = 104
          Height = 16
          Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 528
          Top = 79
          Width = 79
          Height = 16
          Caption = #1048#1079#1084#1077#1088#1080#1090#1077#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 528
          Top = 16
          Width = 129
          Height = 17
          DataField = 'tnk'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 688
          Top = 16
          Width = 63
          Height = 16
          Caption = #1056#1072#1089#1095#1077#1090' '#1095'/'#1095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 688
          Top = 67
          Width = 125
          Height = 16
          Caption = #1056#1072#1089#1095#1077#1090' '#1086#1073#1098#1077#1084#1072' '#1088#1072#1073#1086#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 688
          Top = 38
          Width = 177
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Lucida Bright'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = Edit1Change
          OnKeyPress = Edit1KeyPress
        end
        object Edit2: TEdit
          Left = 688
          Top = 89
          Width = 177
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Lucida Bright'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = Edit2Change
          OnKeyPress = Edit2KeyPress
        end
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 487
          Height = 138
          Align = alLeft
          Color = clCream
          DataField = 'opis'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button1: TButton
          Left = 688
          Top = 124
          Width = 81
          Height = 25
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1056#1047
          TabOrder = 3
        end
        object Button2: TButton
          Left = 784
          Top = 124
          Width = 81
          Height = 25
          Caption = #1042#1099#1093#1086#1076
          TabOrder = 4
          OnClick = Button2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1053#1050' '#1080#1079#1073#1088#1072#1085#1085#1086#1077
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 873
        Height = 486
        Align = alTop
        BorderStyle = bsNone
        Color = clCream
        DataSource = DataSource2
        DrawingStyle = gdsGradient
        FixedColor = clCream
        GradientStartColor = clOlive
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        OnGesture = DBGrid2Gesture
        OnKeyUp = DBGrid2KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'tnk'
            Title.Caption = #1058#1053#1050
            Title.Color = clMoneyGreen
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'opis'
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'norm'
            Title.Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'izmer'
            Title.Caption = #1048#1079#1084#1077#1088#1080#1090#1077#1083#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'edizmer'
            Title.Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 486
        Width = 873
        Height = 155
        Align = alClient
        Caption = #1056#1072#1089#1095#1077#1090' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1074#1088#1077#1084#1077#1085#1080' '#1080' '#1086#1073#1098#1077#1084#1086#1074
        TabOrder = 1
        object DBText5: TDBText
          Left = 504
          Top = 62
          Width = 65
          Height = 25
          DataField = 'norm'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 504
          Top = 101
          Width = 41
          Height = 25
          DataField = 'izmer'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 551
          Top = 101
          Width = 74
          Height = 17
          DataField = 'edizmer'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 504
          Top = 40
          Width = 104
          Height = 16
          Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 504
          Top = 79
          Width = 79
          Height = 16
          Caption = #1048#1079#1084#1077#1088#1080#1090#1077#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 504
          Top = 16
          Width = 129
          Height = 17
          DataField = 'tnk'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 688
          Top = 16
          Width = 63
          Height = 16
          Caption = #1056#1072#1089#1095#1077#1090' '#1095'/'#1095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 688
          Top = 67
          Width = 125
          Height = 16
          Caption = #1056#1072#1089#1095#1077#1090' '#1086#1073#1098#1077#1084#1072' '#1088#1072#1073#1086#1090
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 688
          Top = 38
          Width = 177
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Lucida Bright'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = Edit3Change
          OnKeyPress = Edit3KeyPress
        end
        object Edit4: TEdit
          Left = 688
          Top = 89
          Width = 177
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Lucida Bright'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = Edit4Change
          OnKeyPress = Edit4KeyPress
        end
        object DBMemo2: TDBMemo
          Left = 2
          Top = 15
          Width = 487
          Height = 138
          Align = alLeft
          Color = clCream
          DataField = 'opis'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          Left = 688
          Top = 124
          Width = 81
          Height = 25
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1056#1047
          TabOrder = 3
        end
        object Button4: TButton
          Left = 784
          Top = 124
          Width = 81
          Height = 25
          Caption = #1042#1099#1093#1086#1076
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button5: TButton
          Left = 504
          Top = 124
          Width = 137
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1080#1079#1073#1088#1072#1085#1085#1086#1075#1086
          Enabled = False
          TabOrder = 5
        end
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\ISS\Win32\Debug' +
      '\isspdb.accdb;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 168
    Top = 65520
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tnk;')
    Left = 240
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 236
    Top = 48
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tnk where fav="yes";')
    Left = 236
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery3
    Left = 308
    Top = 96
  end
  object ImageList1: TImageList
    Left = 368
    Bitmap = {
      494C010102000800180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000001632
      5162000203040000000000000000000000000000000000000000000000000002
      0304163251620000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002487
      E3FF0E8CF0FD2D66A7C9000101020000000000000000000101022D66A7C90E8C
      F0FD2487E3FF00000000000000000000000000000000000000060000001A4F38
      0F83130D034800000036000000380000003A0000003800000036000000363929
      0C6E3A290B660000000C00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003486
      D9FF0097FDFF0198FCFF138FE9F9285B94B3285B94B3138FE9F90198FCFF0097
      FDFF3486D9FF000000000000000000000000000000000000000000000000D3A8
      53FFE5B00BFFC5902CFF271C083600000000000000004E370F68CD992DFFE7B4
      12FFB27F25ED0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003375
      BDE5059CF9FF00A4FEFF00A7FEFF01A8FCFF01A8FCFF00A7FEFF00A4FEFF059C
      F9FF3273BCE3000000000000000000000000000000000000000000000000C693
      38FFE8B616FFEABB22FFECC031FFCA9732FFD4A539FFECBF2FFFEABB22FFEBBD
      2EFF835E1BAF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D65
      A5C70C9DF4FF00AAFEFF00ADFEFF00AFFEFF00AFFEFF00ADFEFF00AAFEFF0C9D
      F4FF2D65A5C7000000000000000000000000000000000000000000000000A475
      23DBEDC238FFEFC53EFFF1CA4EFFF3CE57FFF3CE57FFF1CA4EFFEFC53EFFEFC9
      4FFF5039106C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002049
      768F189BEBFF00B4FDFF00B7FDFF00B8FDFF00B8FDFF00B7FDFF00B4FDFF189A
      EBFF2049768F0000000000000000000000000000000000000000000000007654
      199DF1CD5AFFF3CF5BFFF6D66EFFF8D978FFF8D978FFF6D66EFFF3CF5BFFF3D3
      6EFF2117062C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004090E12238F
      DBF701B7FCFF00BDFEFF00C0FEFF00C1FEFF00C1FEFF00C0FEFF00BDFEFF01B7
      FCFF238FDBF703080D1000000000000000000000000000000000000000006347
      1585F4D05FFFF7D873FFFADF88FFFCE393FFFCE393FFFADF88FFF7D873FFF2D0
      67FF2E21093E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010406082588CFED00BE
      FEFF00C0FEFF00C3FEFF00C6FEFF00C7FEFF00C7FEFF00C6FEFF00C3FEFF00C0
      FEFF00BEFEFF2588CFED01040608000000000000000000000000573E1174EBC5
      4DFFF5D264FFFADD83FFFDE598FFFEE79EFFFEE79EFFFDE598FFFADD83FFF5D2
      64FFDFB44BFF1A12042400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000173456680EAEF3FF00C1
      FEFF00C3FEFF00C6FEFF00C8FEFF00C9FEFF00C9FEFF00C8FEFF00C6FEFF00C3
      FEFF00C1FEFF0EAEF3FF17345466000000000000000047320F60E5B938FFF0C8
      46FFF6D469FFFADF88FFFEE79DFFFEE79EFFFEE79EFFFEE79DFFFADF88FFF6D4
      69FFF0C846FFD7A93BFF01000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E21364271ADE4FF7CD6F8FF5FDB
      FEFF4AD8FEFF13CFFEFF00CDFEFF00CEFEFF00CEFEFF00CDFEFF13CFFEFF4AD8
      FEFF5FDBFEFF7CD6F8FF71ADE4FF0E21364223180630E3BC53FFEDC43FFFF0C8
      49FFF5D264FFFADD83FFFDE598FFFEE79EFFFEE79EFFFDE598FFFADD83FFF5D2
      65FFF0C94CFFEDC543FFD2A548FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B1A2B341A3C61763160
      94B14E78A7C18AB8DDEF00D3FEFF00D3FEFF00D3FEFF00D3FEFF8AB8DDEF4E78
      A7C1316094B11A3C61760B1A2B340000000023180630C6943BFFDCBC80FFF2E1
      B9FFFAEDC2FFF9E5A1FFFADF89FFFCE393FFFCE393FFFAE08CFFFAE8AEFFFAEE
      C7FFEEDBB1FFD8B575FFC18A2AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060E171C22CFF7FF00D7FEFF00D7FEFF22CFF7FF060E171C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00002A1D0838C28D2FFFF7DD86FFF8D978FFF8D978FFF8E29AFF684A168B1C14
      0526000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055A8E0FB00DAFEFF00DAFEFF55A8E0FB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001000002EED79BFFF3CF5AFFF4D161FFD8B46EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001836586A06DDFCFF06DDFCFF1836586A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C641DBBF1CF62FFF4D982FF553C1172000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000064A9DFFB64A9DFFB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4C98DFFCC9F4DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F233A460F233A4600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000271C0836271C083600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E7E7FFFF00000000E187800100000000
      E007E18700000000E007E00700000000E007E00700000000E007E00700000000
      C003E007000000008001C0030000000080018001000000000000000100000000
      8001000100000000F81FF00F00000000FC3FF83F00000000FC3FFC3F00000000
      FE7FFE7F00000000FE7FFE7F0000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 228
    Top = 168
    object d1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1059#1076#1072#1083#1080#1090#1100' '#1080#1079#1073#1088#1072#1085#1085#1086#1077'?'
      OnClick = d1Click
    end
  end
  object PopupMenu2: TPopupMenu
    OnChange = PopupMenu2Change
    Left = 492
    Top = 208
    object E1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1080#1079#1073#1088#1072#1085#1085#1086#1075#1086'?'
      OnClick = E1Click
    end
  end
end
