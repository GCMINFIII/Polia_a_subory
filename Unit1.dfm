object Form1: TForm1
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 160
    Top = 96
    Width = 121
    Height = 49
    Caption = 'Vytvor pole'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 160
    Top = 208
    Width = 121
    Height = 49
    Caption = 'Zo s'#250'boru do po'#318'a2'
    TabOrder = 1
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 160
    Top = 264
    Width = 121
    Height = 49
    Caption = 'Zobraz v listboxe'
    TabOrder = 2
    Visible = False
    OnClick = Button4Click
  end
  object ListBox1: TListBox
    Left = 320
    Top = 96
    Width = 177
    Height = 225
    ItemHeight = 13
    TabOrder = 3
  end
  object Button2: TButton
    Left = 160
    Top = 152
    Width = 121
    Height = 49
    Caption = 'Z po'#318'a do s'#250'boru'
    TabOrder = 4
    Visible = False
    OnClick = Button2Click
  end
end
