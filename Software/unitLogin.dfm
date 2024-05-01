object FRM_LOGIN: TFRM_LOGIN
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 425
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Scaled = False
  TextHeight = 15
  object pn_wallpaper_direita: TPanel
    Left = 255
    Top = 0
    Width = 496
    Height = 425
    Color = 7884343
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Microsoft New Tai Lue'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object lbl_usuario: TLabel
      Left = 81
      Top = 123
      Width = 97
      Height = 35
      Caption = 'Usu'#225'rio:'
      Color = 7949879
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_senha: TLabel
      Left = 83
      Top = 205
      Width = 78
      Height = 35
      Caption = 'Senha:'
      Color = 8081207
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_esqueceu_senha: TLabel
      Left = 328
      Top = 278
      Width = 123
      Height = 17
      Cursor = crHandPoint
      Caption = 'Esqueceu sua senha?'
      Color = 8212535
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object img_senha: TImage
      Left = 47
      Top = 239
      Width = 30
      Height = 36
      Picture.Data = {
        07544269746D617036090000424D360900000000000036040000280000001E00
        000028000000010008000000000000050000120B0000120B0000000100003900
        00003B35D100FFFFFF00543F920064466900714B48003F36C700584089004A3B
        AC004338BF006F4A4D0060447400774E39005C427F004F3D9F0069485D004639
        B5003A34D5004237C100483AB10067476200513E9B00754D400057408B004C3C
        A7006D49530063456D003C35CF003E36CA00503D9D00724C45005F4377004037
        C6004438BB0056408D006E4A51004639B7003C35D1003F36C9004E3DA1004C3A
        A9005E437900473AB400483AB3003B34D300704B4B004A3BAD004438BD004236
        C3003E36CD00543E9300744C420062456F0056408F00503C9F006E4A52005F44
        7600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010119201010101010101010101010101010101010101010101020190101
        0C0C0103202B1010101010101010101010101010101010101010101010200301
        0C0C031110101010101010101010101010101010101010101010101010101103
        0C0C081010101010101010101010101010101010101010101010101010101008
        0C0C101010101010101010101010101010101010101010101010101010101010
        0C0C101010101010101010101010101010101010101010101010101010101010
        0C0C101010101010101010101010101020201010101010101010101010101010
        0C0C101010101010101010101010102D0E0E2D00101010101010101010101010
        0C0C101010101010101010101010250A01010A25101010101010101010101010
        0C0C101010101010101010101010053301013305101010101010101010101010
        0C0C101010101010101010101010252801012825101010101010101010101010
        0C0C1010101010101010101010101B1E01011E1B101010101010101010101010
        0C0C1010101010101010101010102322010122232B1010101010101010101010
        0C0C101010101010101010101011130101010113111010101010101010101010
        0C0C1010101010101010101010070B010101010B071010101010101010101010
        0C0C101010101010101010101017010101010101171010101010101010101010
        0C0C1010101010101010101010202C010101012C201010101010101010101010
        0C0C1010101010101010101010101709010109171A1010101010101010101010
        0C0C101010101010101010101010101214141210101010101010101010101010
        0C0C101010101010101010101010101010101010101010101010101010101010
        0C0C101010101010101010101010101010101010101010101010101010101010
        0C0C1A101010101010101010101010101010101010101010101010101010101A
        0C0C161A10101010101010101010101010101010101010101010101010101A16
        0C0C010205101010101010101010101010101010101010101010101010050201
        0C0C01010C07292510101F12120F0F0F0F0F0F0F0F0F0F1F10102529070C0101
        0C0C01010101011C1010060101010101010101010101010610101C0101010101
        0C0C010101010114101006010101010101010101010101061010140101010101
        0C0C01010101011C1010160101010101010101010101011610101C0101010101
        0C0C01010101011C1010060101010101010101010101010610101C0101010101
        0C0C01010101011C1010060101010101010101010101010610101C0101010101
        0C0C010101010114101021010101010101010101010101211010140101010101
        0C0C010101010134101014010101010101010101010101141010340101010101
        0C0C01010101010A3010110E010101010101010101010E1110300A0101010101
        0C0C010101010104121010261501010101010101011526101012040101010101
        0C0C0101010101010C242424210401010101010104211A10100C010101010101
        0C0C0101010101011D0D1010100D1322040436130D1010100D1D010101010101
        0C0C010101010101011812101010102926260F10101010121801010101010101
        0C0C01010101010101010927252B101010101010102527090101010101010101
        0C0C0101010101010101010B0A121B000000001B12370B010101010101010101
        0C0C0101010101010101010101320C0F1A1A0F0C320101010101010101010101
        0C0C}
      Transparent = True
    end
    object img_user: TImage
      Left = 45
      Top = 158
      Width = 30
      Height = 36
      Picture.Data = {
        07544269746D6170B6080000424DB60800000000000036040000280000001E00
        000024000000010008000000000080040000120B0000120B0000000100005200
        00003B35D100FFFFFF004438BA0063456D0061447100774E39004C3BA800543F
        9300714B48006D4953004D3CA3005B42810056408D004137C3003D35CD006747
        6200754D3E00493AAF006F4A4D00523E99005F4377006B4859003F36C9004338
        BF005D437C0065466700594187004739B400734C43005C427A004F3DA000724B
        46006F4A4F003A34D500764D3B00523E9700473AB30068476000594185004036
        C6004338BD003C35CF004A3BAD00503D9D00604474006E4A5200624570004E3C
        A2004237C100784E38006C4957006A485C00664666004A3BAB00704B4A003E36
        CB0056408F004036C7003C34D1003B34D3004438BB006D4954006A485A00744C
        42004D3CA500654668005E437A004438BD005F447600483AB2005A4184006647
        640062446E00704B4C005C427F0058408900614472005A4283004639B7004E3C
        A100724C46000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101224145212121212121212121212121212121212121114705010101
        0C0C010132402921212121212121212121212121212121212121210E2F090101
        0C0C013E0E212121212121212121212121212121212121212121212121163D01
        0C0C222A21212121212121212121212121212121212121212121212121214031
        0C0C030021212121212121212121212121212121212121212121212121212925
        0C0C28212121212121212121212121212121212121212121212121212121211E
        0C0C212121212121212121212121212121212121212121212121212121212128
        0C0C0E212121212121212121212121212121212121212121212121212121211B
        0C0C4E212121212121212121212121212121212121212121212121212121212B
        0C0C0C3B21212121212121212121212121212121212121212121212121212118
        0C0C342921212121212121212121212121212121212121212121212121213733
        0C0C1F302121212121212121212121212121212121212121212121212121023F
        0C0C050A21212121212121212121212121212121212121212121212121212B31
        0C0C011821212121212121212121212121212121212121212121212121212C01
        0C0C0136162121212121212121212121212121212121212121212121210D5001
        0C0C01010B212121212121212121210E3C3C2921212121212121212121420101
        0C0C0101312B21212121212121352E363F3F364C112121212121212123010101
        0C0C010101050C1621212117040101010101010101440D212121271A01010101
        0C0C01010101012D140C2608010136192C2C33220101491A0C2C200101010101
        0C0C01010101010101010101332F373B3B3B3B174A1001010101010101010101
        0C0C0101010101010101014A2121212121212121214520010101010101010101
        0C0C010101010101010146212121212121212121212130490101010101010101
        0C0C010101010101013421212121212121212121212121350501010101010101
        0C0C010101010101102421212121212121212121212121212E01010101010101
        0C0C010101010101252121212121212121212121212121210601010101010101
        0C0C0101010101010B2121212121212121212121212121213008010101010101
        0C0C010101010101072121212121212121212121212121210E3D010101010101
        0C0C010101010101072121212121212121212121212121210E3D010101010101
        0C0C010101010101462121212121212121212121212121210D36010101010101
        0C0C010101010101342121212121212121212121212121212A05010101010101
        0C0C0101010101011C2821212121212121212121212121211801010101010101
        0C0C010101010101014421212121212121212121212121021001010101010101
        0C0C01010101010101011321212121212121212121210E150101010101010101
        0C0C010101010101010105232121212121212121210D0F010101010101010101
        0C0C010101010101010101012E2A29212121210D071201010101010101010101
        0C0C010101010101010101010110193521274B20010101010101010101010101
        0C0C}
      Transparent = True
    end
    object txt_nomeuser: TEdit
      Left = 81
      Top = 158
      Width = 369
      Height = 39
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object txt_senhauser: TEdit
      Left = 81
      Top = 239
      Width = 369
      Height = 39
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Microsoft New Tai Lue'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object btn_entrar: TBitBtn
      Left = 304
      Top = 301
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Glyph.Data = {
        EE0C0000424DEE0C0000000000003604000028000000460000001F0000000100
        080000000000B8080000120B0000120B000000010000130000000082000070B9
        7000D0E8D000309A300090C99000108A1000FFFFFF00C0E0C00050A95000F0F8
        F00080C1800040A1400020922000A0D0A000E0F0E0007FC07F00B0D8B00060B1
        6000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000F0F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000007765000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000007765000000000000
        00050B0B0B0B0B0B0B030000030B05000000000B0B0000000005010A01050003
        0B05000000000005010A0A0C0C0B0C00000C0B0C000000000000000000000000
        7765000000000000000B0606060606060607000007060B000000000606000000
        00070606060B0007060B0000000003090606060602060A00000A060A00000000
        00000000000000007765000000000000000B06060A0A0A0A0A11000007060B00
        0000000606000000030606030C050007060B000000000D060E0C050D06060A00
        000A060A0000000000000000000000007765000000000000000B060600000000
        0000000007060B0000000006060000000B06070000000007060B000000000706
        0A0000000E060A00000A060A0000000000000000000000007765000000000000
        000B0606000000000000000007060B0000000006060000000B06070000000007
        060B000000000D06070000000A060A00000A060A000000000000000000000000
        7765000000000000000B0606000000000000000007060B000000000606000000
        0B06070000000007060B000000000309060E0D0A10060A00000A060A00000000
        00000000000000007765000000000000000B0606000000000000000007060B00
        00000006060000000B06070000000007060B00000000000C0D02060606060A00
        000A060A0000000000000000000000007765000000000000000B060606060606
        060000000706110000000506060000000B06070000000007060A000000000000
        0000000C0D060A00000A06070000000000000000000000007765000000000000
        000B0606070707070700000007060200000011060E0000000B06070000000007
        06090500000000110500000007060100000A06060B0000000000000000000000
        7765000000000000000B0606000000000000000007060607081109060A00000A
        0D060E0A0A0C0007060609040D0300070E010B0A06060C00000A0606060D0411
        00000000000000007765000000000000000B0606000000000000000007060409
        060606070500000606060606060B000706010906060B00010906060606110000
        000A06040206060A00000000000000007765000000000000000B060600000000
        00000000000000000B0B0300000000000B060700000000000000050B0B050000
        00030B0B0500000000000000000B0B0C00000000000000007765000000000000
        000B060600000000000000000000000000000000000000000B06070000000000
        0000000000000000000000000000000000000000000000000000000000000000
        7765000000000000000B06060707070707110000000000000000000000000000
        0C10070000000000000000000000000000000000000000000000000000000000
        00000000000000007765000000000000000B060606060606060A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000007765000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000007765000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000077650F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F7765}
      TabOrder = 2
    end
    object btn_sair: TBitBtn
      Left = 378
      Top = 301
      Width = 70
      Height = 30
      Cursor = crHandPoint
      Glyph.Data = {
        EE0C0000424DEE0C0000000000003604000028000000460000001F0000000100
        080000000000B8080000120B0000120B000000010000130000003A34D5007874
        E200CECDF5004641D800FFFFFF00A9A7ED006B67E000DBDAF700918DE7005F5A
        DD00F3F3FD00B6B3EF009C99EA00534DDA00C2C0F200E7E6FA009D9AEA008480
        E500000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000007765000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000007765000000000000
        000000000000000000000000000911101008090000000000030810100D0D060D
        00000D060D000003060900000000000000000000000000000000000000000000
        77650000000000000000000000000000000000000E0404040404040203000009
        0A04040404070410000010041000000604020000000000000000000000000000
        00000000000000007765000000000000000000000000000000000000020A0B01
        06080A040700000B040F0D030B04041000001004100000060402000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000011030000000006040409000204100000000F04100000100410000006
        0402000000000000000000000000000000000000000000007765000000000000
        00000000000000000000000000000000000000040406000B0402000000100410
        0000100410000006040200000000000000000000000000000000000000000000
        77650000000000000000000000000000000000000000000000000504040D0009
        0A040F0B100E0410000010041000000604020000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000000000
        0D0E0404050000000D0B07040404041000001004100000060402000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000D0B0404040500000000000000000D0B04100000100410000006
        0404000000000000000000000000000000000000000000007765000000000000
        00000000000000000000000000110A0404020600000000001103000000020408
        0000100410000006040410000000000000000000000000000000000000000000
        7765000000000000000000000000000000000000060404070600000000000000
        020F08061004040D000010041000000604040402100500000000000000000000
        000000000000000077650000000000000000000000000000000000000E040F03
        0000000000000000080A040404041100000010041000000604020B0404020000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000002041000000000000000000000000906060300000000000000000000
        0000000906090000000000000000000000000000000000007765000000000000
        0000000000000000000000000B040F0300000000090000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        77650000000000000000000000000000000000000D0A040A05100B0F02000000
        0000000000000000000011021100000000000000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000090E04
        0404040402000000000000000000000000000204020000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000003060606090000000000000000000000000000091009000000
        0000000000000000000000000000000000000000000000007765000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000776500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000077650000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000007765000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        7765000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000077650C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C7765}
      TabOrder = 3
    end
  end
  object pn_wallpaper_esquerda: TPanel
    Left = 0
    Top = 0
    Width = 258
    Height = 425
    Margins.Top = 0
    Margins.Right = 0
    Color = 3814613
    ParentBackground = False
    TabOrder = 0
    object lbl_bem_vindo: TLabel
      Left = 13
      Top = 184
      Width = 232
      Height = 56
      Caption = 'BEM VINDO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -45
      Font.Name = 'Myriad Hebrew'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
end
