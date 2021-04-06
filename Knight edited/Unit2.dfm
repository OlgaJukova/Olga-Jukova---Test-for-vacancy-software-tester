object AboutTheProgram: TAboutTheProgram
  Left = 1081
  Top = 301
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'About the Program'
  ClientHeight = 164
  ClientWidth = 292
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
    Left = 24
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
end
