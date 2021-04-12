object AboutTheProgram: TAboutTheProgram
  Left = 1483
  Top = 449
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'About the Program'
  ClientHeight = 439
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pb1: TPaintBox
    Left = 32
    Top = 216
    Width = 217
    Height = 209
  end
  object mmo1: TMemo
    Left = 16
    Top = 16
    Width = 249
    Height = 121
    Color = clMenuBar
    Lines.Strings = (
      '       The program Knight'
      ' calculations and shows all the variations of the '
      'Knight can make moves on the fild with a given'
      ' numberof lines and pass the maximum number '
      'of positions.'
      '      For this the program works out all avaliable'
      ' branches - a combinations of possible moves '
      'of the knight.')
    ReadOnly = True
    TabOrder = 0
  end
  object btn1: TButton
    Left = 32
    Top = 160
    Width = 185
    Height = 25
    Caption = 'Show_Details'
    TabOrder = 1
    OnClick = btn1Click
  end
end
