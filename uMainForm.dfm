object frmFFUI: TfrmFFUI
  Left = 0
  Top = 0
  Caption = 'FFMPEG UI v2.0'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Constraints.MinHeight = 768
  Constraints.MinWidth = 1024
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  DesignSize = (
    1008
    729)
  PixelsPerInch = 96
  TextHeight = 13
  object lblVideoFile: TLabel
    Left = 8
    Top = 11
    Width = 196
    Height = 15
    Caption = #25171#24320#25991#20214'/'#25991#20214#22841'/'#32593#32476#20018#27969#65306
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object pgcAll: TPageControl
    Left = 8
    Top = 45
    Width = 992
    Height = 644
    ActivePage = tsConfig
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabHeight = 40
    TabOrder = 0
    TabWidth = 140
    object tsInfo: TTabSheet
      Caption = #20449#24687
    end
    object tsPlay: TTabSheet
      Caption = #25773#25918
      ImageIndex = 1
      object pnlButtonCommand: TPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 42
        Align = alTop
        BevelKind = bkSoft
        BevelOuter = bvNone
        Caption = 'pnlButtonCommand'
        ShowCaption = False
        TabOrder = 0
        object btnPlay: TButton
          Left = 10
          Top = 5
          Width = 89
          Height = 29
          Caption = #25773#25918
          TabOrder = 0
          OnClick = btnPlayClick
        end
        object btnPause: TButton
          Left = 105
          Top = 4
          Width = 89
          Height = 29
          Caption = #26242#20572
          Enabled = False
          TabOrder = 1
          OnClick = btnPauseClick
        end
        object btnStop: TButton
          Left = 202
          Top = 4
          Width = 89
          Height = 29
          Caption = #20572#27490
          Enabled = False
          TabOrder = 2
          OnClick = btnStopClick
        end
      end
      object pnlVideo: TPanel
        Left = 0
        Top = 42
        Width = 984
        Height = 552
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnl1'
        Color = clWhite
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
      end
    end
    object tsConv: TTabSheet
      Caption = #36716#25442
      ImageIndex = 2
      DesignSize = (
        984
        594)
      object lstFiles: TListBox
        Left = 8
        Top = 12
        Width = 257
        Height = 569
        Anchors = [akLeft, akTop, akBottom]
        ItemHeight = 13
        TabOrder = 0
      end
      object btnAddVideoFile: TButton
        Left = 280
        Top = 12
        Width = 109
        Height = 29
        Caption = #28155#21152#25991#20214
        TabOrder = 1
        OnClick = btnAddVideoFileClick
      end
      object btnDelVideoFile: TButton
        Left = 280
        Top = 100
        Width = 109
        Height = 29
        Caption = #21024#38500
        TabOrder = 2
        OnClick = btnDelVideoFileClick
      end
      object btnAddFolder: TButton
        Left = 280
        Top = 56
        Width = 109
        Height = 29
        Caption = #28155#21152#25991#20214#22841
        TabOrder = 3
        OnClick = btnAddFolderClick
      end
      object btnVideoStartConv: TButton
        Left = 280
        Top = 230
        Width = 109
        Height = 49
        Caption = #36716#25442
        TabOrder = 4
        OnClick = btnVideoStartConvClick
      end
      object btnVideoStopConv: TButton
        Left = 280
        Top = 285
        Width = 109
        Height = 57
        Caption = #20572#27490#36716#25442
        Enabled = False
        TabOrder = 5
        OnClick = btnVideoStopConvClick
      end
      object pnlVideoConv: TPanel
        Left = 412
        Top = 12
        Width = 561
        Height = 569
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = 'pnlVideoConv'
        Ctl3D = False
        ParentCtl3D = False
        ShowCaption = False
        TabOrder = 6
      end
      object btnVideoConvParam: TButton
        Left = 280
        Top = 167
        Width = 109
        Height = 57
        Caption = #21442#25968#35774#32622
        TabOrder = 7
        OnClick = btnVideoConvParamClick
      end
    end
    object tsSept: TTabSheet
      Caption = #20998#31163
      ImageIndex = 4
    end
    object tsMerge: TTabSheet
      Caption = #21512#24182
      ImageIndex = 5
    end
    object tsLive: TTabSheet
      Caption = #30452#25773
      ImageIndex = 4
      DesignSize = (
        984
        594)
      object rgWeb: TRadioGroup
        Left = 10
        Top = 3
        Width = 145
        Height = 580
        Anchors = [akLeft, akTop, akBottom]
        Caption = #30452#25773#28304#65306
        ItemIndex = 0
        Items.Strings = (
          #30913#30424#25991#20214
          'USB '#25668#20687#22836
          'IP   '#30456#26426
          #26700#38754)
        TabOrder = 0
      end
      object pnlWeb: TPanel
        Left = 168
        Top = 9
        Width = 804
        Height = 574
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = 'pnlWeb'
        Ctl3D = False
        ParentCtl3D = False
        ShowCaption = False
        TabOrder = 1
      end
    end
    object tsConfig: TTabSheet
      Caption = #37197#32622
      ImageIndex = 6
      DesignSize = (
        984
        594)
      object rgUI: TRadioGroup
        Left = 12
        Top = 16
        Width = 961
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        Caption = #25773#25918#26102#20351#29992#30340#35270#39057#24211#65306
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'FFMPEG(v4.2.0)'
          'MPV (v2.0.0)'
          'VLC (v3.0.8)')
        TabOrder = 0
        OnClick = rgUIClick
      end
      object rgGPU: TRadioGroup
        Left = 12
        Top = 72
        Width = 961
        Height = 45
        Anchors = [akLeft, akTop, akRight]
        Caption = #26159#21542#20351#29992'GPU'#21152#36895#65306
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'YES ('#38656#35201' NVIDIA '#26174#21345#65292'X64'#24179#21488')'
          'NO')
        TabOrder = 1
        OnClick = rgUIClick
      end
      object grpVideoConv: TGroupBox
        Left = 12
        Top = 131
        Width = 961
        Height = 237
        Anchors = [akLeft, akTop, akRight]
        Caption = #26684#24335#36716#25442#65306
        TabOrder = 2
        DesignSize = (
          961
          237)
        object lblVideoWidth: TLabel
          Left = 209
          Top = 78
          Width = 24
          Height = 13
          Caption = #23485#65306
          Visible = False
        end
        object lblVideoHeight: TLabel
          Left = 209
          Top = 49
          Width = 24
          Height = 13
          Caption = #23485#65306
          Visible = False
        end
        object lblSaveVideoPath: TLabel
          Left = 349
          Top = 49
          Width = 36
          Height = 13
          Caption = #36335#24452#65306
          Visible = False
        end
        object lblConvTip: TLabel
          Left = 24
          Top = 26
          Width = 48
          Height = 13
          Caption = #36716#25442#20026#65306
        end
        object lblTitle: TLabel
          Left = 30
          Top = 125
          Width = 32
          Height = 13
          Caption = 'Title'#65306
        end
        object lblArtist: TLabel
          Left = 30
          Top = 153
          Width = 38
          Height = 13
          Caption = 'Artist'#65306
        end
        object lblGenre: TLabel
          Left = 30
          Top = 181
          Width = 41
          Height = 13
          Caption = 'Genre'#65306
        end
        object lblComment: TLabel
          Left = 30
          Top = 207
          Width = 57
          Height = 13
          Caption = 'Comment'#65306
        end
        object lbl1: TLabel
          Left = 24
          Top = 103
          Width = 60
          Height = 13
          Caption = #21098#36753#20449#24687#65306
        end
        object chkVideoSize: TCheckBox
          Left = 192
          Top = 26
          Width = 114
          Height = 17
          Caption = #20445#25345#35270#39057#23485#39640
          Checked = True
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          OnClick = chkVideoSizeClick
        end
        object edtVideoHeight: TEdit
          Left = 234
          Top = 74
          Width = 47
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          Text = '600'
          Visible = False
        end
        object edtVideoWidth: TEdit
          Left = 234
          Top = 47
          Width = 47
          Height = 21
          NumbersOnly = True
          TabOrder = 2
          Text = '800'
          Visible = False
        end
        object chkVideoSavePath: TCheckBox
          Left = 332
          Top = 26
          Width = 114
          Height = 17
          Caption = #20445#23384#36335#24452#21516#25991#20214
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = chkVideoSavePathClick
        end
        object btnSaveVideoPath: TButton
          Left = 589
          Top = 46
          Width = 36
          Height = 23
          Caption = #36873#25321
          TabOrder = 4
          Visible = False
        end
        object edtSaveVideoPath: TEdit
          Left = 385
          Top = 47
          Width = 205
          Height = 21
          TabOrder = 5
          Visible = False
        end
        object cbbConv: TComboBox
          Left = 30
          Top = 45
          Width = 109
          Height = 21
          Style = csDropDownList
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 6
          Text = 'H264 (*.MKV)'
          Items.Strings = (
            'H264 (*.MKV)'
            'H265 (*.MKV)'
            'Flash(*.FLV)')
        end
        object edtTitle: TEdit
          Left = 84
          Top = 123
          Width = 203
          Height = 21
          TabOrder = 7
          Text = 'dbyoung'
        end
        object edtArtist: TEdit
          Left = 84
          Top = 150
          Width = 203
          Height = 21
          TabOrder = 8
          Text = 'FFUI 2.0'
        end
        object edtGenre: TEdit
          Left = 84
          Top = 177
          Width = 203
          Height = 21
          TabOrder = 9
          Text = 'Video'
        end
        object edtComment: TEdit
          Left = 84
          Top = 204
          Width = 203
          Height = 21
          TabOrder = 10
          Text = 'dbyoung@sina.com'
        end
        object btnSaveConvParam: TButton
          Left = 816
          Top = 169
          Width = 135
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #20445#23384
          TabOrder = 11
          OnClick = btnSaveConvParamClick
        end
        object btnSaveConvParamAndStartConv: TButton
          Left = 816
          Top = 200
          Width = 135
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #20445#23384#24182#24320#22987#36716#25442
          TabOrder = 12
          OnClick = btnSaveConvParamAndStartConvClick
        end
      end
    end
  end
  object srchbxSelectVideoFile: TSearchBox
    Left = 216
    Top = 8
    Width = 784
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    PopupMenu = pmOpen
    ReadOnly = True
    TabOrder = 1
    OnDblClick = mniOpenFileClick
    OnInvokeSearch = srchbxSelectVideoFileInvokeSearch
  end
  object statInfo: TStatusBar
    Left = 0
    Top = 705
    Width = 1008
    Height = 24
    Panels = <>
    PopupMenu = pmStatCopy
    SimplePanel = True
  end
  object dlgOpenVideoFile: TOpenDialog
    Filter = 
      #35270#39057#25991#20214'(*.AVI;*.MP4;*.MKV;*.MOV;*.RMVB;*.VOB)|*.AVI;*.MP4;*.MKV;*.M' +
      'OV;*.RMVB;*.VOB'
    Left = 304
    Top = 623
  end
  object tmrPlay: TTimer
    Enabled = False
    Interval = 100
    Left = 76
    Top = 623
  end
  object pmOpen: TPopupMenu
    AutoHotkeys = maManual
    Left = 828
    Top = 3
    object mniOpenFile: TMenuItem
      Caption = #25171#24320#25991#20214'...'
      OnClick = mniOpenFileClick
    end
    object mniOpenFolder: TMenuItem
      Caption = #25171#24320#25991#20214#22841'...'
      OnClick = mniOpenFolderClick
    end
    object mniOpenWebStream: TMenuItem
      Caption = #25171#24320#32593#32476#20018#27969'...'
      OnClick = mniOpenWebStreamClick
    end
  end
  object pmStatCopy: TPopupMenu
    AutoHotkeys = maManual
    Left = 228
    Top = 623
    object mniCopyDosCommand: TMenuItem
      Caption = #22797#21046#21040#21098#20999#26495
      OnClick = mniCopyDosCommandClick
    end
  end
  object tmrPlayVideo: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrPlayVideoTimer
    Left = 152
    Top = 623
  end
end
