Gui, Color,, c00FFFF ;�Ʀr�ة����C��
Gui, Font, c00FFFF s10,Comic Sans MS ;�Τ@ ,   c+�C��c00FFFF ,s+�r���j�p  , �r��:Comic Sans MS
Gui, Add, Button, x50 y50 w150 h30 gMora, �۰ʲq���{��
Gui, Add, Button, x50 y100 w150 h30 gMoratool, �ƾڭ״_�u��
Gui, Color, black
Gui, Show, x100 y100 h150 w250, ��ܾ�
return

Mora:
	Run Mora.exe
return

Moratool:
	Run Moratool.exe
return


GuiClose:
Process, Close, Mora.exe
Process, Close, Moratool.exe
ExitApp
return