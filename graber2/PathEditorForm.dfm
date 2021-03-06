object fPathEditor: TfPathEditor
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'fPathEditor'
  ClientHeight = 158
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object bOk: TcxButton
      Left = 8
      Top = 5
      Width = 75
      Height = 25
      Caption = 'bOk'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object lHelp: TcxLabel
      Left = 424
      Top = 8
      Cursor = crHandPoint
      Caption = 'lHelp'
      Style.TextStyle = [fsUnderline]
      StyleHot.TextColor = clHotLight
      Transparent = True
      OnClick = lHelpClick
    end
  end
  object bCancel: TcxButton
    Left = 89
    Top = 5
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'bCancel'
    ModalResult = 2
    TabOrder = 1
  end
  object bVariables: TcxButton
    Left = 8
    Top = 116
    Width = 113
    Height = 25
    Caption = '$variable$'
    DropDownMenu = pmVariables
    Kind = cxbkDropDown
    TabOrder = 2
  end
  object lex1: TcxLabel
    Left = 8
    Top = 75
    Caption = 
      'ex. c:\$tag$\<%md5%> ; if filename is not specified then will be' +
      ' used $fname$ ;'
    Transparent = True
  end
  object lex2: TcxLabel
    Left = 8
    Top = 93
    Caption = 'if file extension is not specified then will be used .$ext$ ;'
    Transparent = True
  end
  object bFields: TcxButton
    Left = 127
    Top = 116
    Width = 113
    Height = 25
    Caption = '%field[:format]%'
    DropDownMenu = pmFields
    Kind = cxbkDropDown
    TabOrder = 5
  end
  object lex3: TcxLabel
    Left = 258
    Top = 114
    Caption = 'ex. %post_date:yyyy-mm-dd% ;'
    Transparent = True
  end
  object lex4: TcxLabel
    Left = 258
    Top = 127
    Caption = 'ex. %score:.6x% ;'
    Transparent = True
  end
  object lwiki1: TcxLabel
    Left = 437
    Top = 114
    Cursor = crHandPoint
    Caption = 'wiki'
    Style.TextStyle = [fsUnderline]
    StyleHot.TextColor = clHotLight
    Transparent = True
    OnClick = lwiki1Click
  end
  object lwiki2: TcxLabel
    Left = 437
    Top = 127
    Cursor = crHandPoint
    Caption = 'wiki'
    Style.TextStyle = [fsUnderline]
    StyleHot.TextColor = clHotLight
    Transparent = True
    OnClick = lwiki2Click
  end
  object cbPath: TcxMRUEdit
    Left = 8
    Top = 48
    Properties.AutoSelect = False
    Properties.OnButtonClick = bBrowseClick
    TabOrder = 10
    Text = 'cbPath'
    Width = 460
  end
  object dPath: TcxShellBrowserDialog
    Root.BrowseFolder = bfDrives
    Left = 248
    Top = 16
  end
  object pmVariables: TPopupMenu
    Left = 328
    Top = 12
    object N3: TMenuItem
      Caption = '$ext$ - file extension'
      OnClick = N3Click
    end
    object N12: TMenuItem
      Caption = '$date$ - current date'
      OnClick = N12Click
    end
    object N1: TMenuItem
      Caption = '$fname$ - original file name'
      OnClick = N1Click
    end
    object N8: TMenuItem
      Caption = '$fn$ - sequence number if name already exists'
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = 
        '$fnn[(N)]$ - sequence number inside derectory (count every N tim' +
        'es)'
      OnClick = N9Click
    end
    object N11: TMenuItem
      Caption = '$md5$ - file'#39's md5 hash-summ'
      OnClick = N11Click
    end
    object N7: TMenuItem
      Caption = '$nn$ - sequence number in the list'
      OnClick = N7Click
    end
    object N2: TMenuItem
      Caption = '$rname$ - resource name'
      OnClick = N2Click
    end
    object N6: TMenuItem
      Caption = '$rootdir$ - nekopaw grabber directory'
      OnClick = N6Click
    end
    object N4: TMenuItem
      Caption = '$short$ - short name'
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = '$tag$ - tag string used to search'
      OnClick = N5Click
    end
    object N10: TMenuItem
      Caption = '$tags[(N)]$ - tags of picture (N - count)'
      OnClick = N10Click
    end
    object N13: TMenuItem
      Caption = '$time$ - current time'
      OnClick = N13Click
    end
  end
  object pmFields: TPopupMenu
    Left = 288
    Top = 12
  end
  object PopupMenu1: TPopupMenu
    Left = 448
    Top = 96
  end
end
