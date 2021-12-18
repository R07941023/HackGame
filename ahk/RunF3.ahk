Gui, Color,, c00FFFF ;數字框底邊顏色
Gui, Font, c00FFFF s10,Comic Sans MS ;統一 ,   c+顏色c00FFFF ,s+字的大小  , 字型:Comic Sans MS
Gui, Add, Button, x50 y50 w150 h30 gMora, 自動猜拳程式
Gui, Add, Button, x50 y100 w150 h30 gMoratool, 數據修復工具
Gui, Color, black
Gui, Show, x100 y100 h150 w250, 選擇器
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