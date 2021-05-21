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
    ActivePage = TabSheet1
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnGesture = DBGrid1Gesture
        OnKeyUp = DBGrid1KeyUp
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
      object GroupBox1: TGroupBox
        Left = 0
        Top = 486
        Width = 873
        Height = 155
        Align = alClient
        Caption = #1056#1072#1089#1095#1077#1090' '#1088#1072#1073#1086#1095#1077#1075#1086' '#1074#1088#1077#1084#1077#1085#1080' '#1080' '#1086#1073#1098#1077#1084#1086#1074
        TabOrder = 1
        object DBText1: TDBText
          Left = 504
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
          Left = 504
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
          Left = 551
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
        object Label2: TLabel
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
        object DBText4: TDBText
          Left = 504
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
        object CheckBox1: TCheckBox
          Left = 504
          Top = 132
          Width = 137
          Height = 17
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1079#1073#1088#1072#1085#1085#1086#1077'?'
          TabOrder = 3
          OnClick = CheckBox1Click
        end
        object Button1: TButton
          Left = 688
          Top = 124
          Width = 81
          Height = 25
          Caption = #1057#1086#1079#1076#1072#1090#1100' '#1056#1047
          TabOrder = 4
        end
        object Button2: TButton
          Left = 784
          Top = 124
          Width = 81
          Height = 25
          Caption = #1042#1099#1093#1086#1076
          TabOrder = 5
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
          OnClick = Button5Click
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
end
