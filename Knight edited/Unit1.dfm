object AboutTheKnight: TAboutTheKnight
  Left = 1134
  Top = 303
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Knight'
  ClientHeight = 179
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
    Left = 32
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 1
    OnClick = btn1Click
  end
end
