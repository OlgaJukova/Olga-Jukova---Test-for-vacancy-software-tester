object AboutTheKnight: TAboutTheKnight
  Left = 1424
  Top = 170
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Knight'
  ClientHeight = 371
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pb1: TPaintBox
    Left = 216
    Top = 16
    Width = 137
    Height = 145
  end
  object pb2: TPaintBox
    Left = 216
    Top = 184
    Width = 137
    Height = 145
  end
  object mmo1: TMemo
    Left = 16
    Top = 16
    Width = 177
    Height = 97
    Lines.Strings = (
      '             The Knight'
      'is a chess piece what completes'
      'a move one cell vertically and two '
      'cells horizontally and vice versa '
      'two cells vertically and one cell '
      'horizontally')
    ReadOnly = True
    TabOrder = 0
  end
  object btn1: TButton
    Left = 16
    Top = 136
    Width = 177
    Height = 25
    Caption = 'Show_knight_movement'
    TabOrder = 1
    OnClick = btn1Click
  end
  object mmo2: TMemo
    Left = 16
    Top = 184
    Width = 177
    Height = 137
    Lines.Strings = (
      '     The Program Knight'
      'In General the chess piese '
      'Knight can be moved from '
      'start position to eight'
      ' position , provided that '
      'this cells exist and are '
      'available.'
      '      The Program calculates '
      'all possible branches of the '
      'field traversal from the start '
      'positions and select the '
      'branches with the maximum '
      'number of moves.'
      '      Branch is a combination'
      ' of consistent moves from '
      'start  position to a position '
      'from wich there are no '
      'avaliable moves.')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btn2: TButton
    Left = 16
    Top = 328
    Width = 177
    Height = 25
    Caption = 'Example_of_work'
    TabOrder = 3
    OnClick = btn2Click
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmr1Timer
    Left = 264
    Top = 72
  end
  object tmr2: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmr2Timer
    Left = 144
    Top = 24
  end
  object tmr3: TTimer
    Enabled = False
    Interval = 800
    OnTimer = tmr3Timer
    Left = 168
    Top = 160
  end
  object tmr4: TTimer
    Enabled = False
    Interval = 800
    OnTimer = tmr4Timer
    Left = 184
    Top = 280
  end
end
