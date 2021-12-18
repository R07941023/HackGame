Gui, Color,, 272727 ;數字框底邊顏色
Gui, Font, ECF5FF s10,Comic Sans MS ;統一 ,   c+顏色c00FFFF ,s+字的大小  , 字型:Comic Sans MS
Gui, Add, Text, x20 y10 w500 h25  , 使用說明:  選擇後,點桌面按下F1開始/停止,再進入遊戲
Gui, Add, Text, x95 y30 w500 h25  , 使用中可以隨意切換任何形式
Gui, Add, Text, x95 y50 w500 h25  , (經驗談:若無效,請多重複:點桌面→按F1)
Gui, Add, CheckBox, x95 y110 w300 h25 vRad1 gRad_1  , 擬真模式  (點頭)
Gui, Add, CheckBox, x95 y170 w300 h25 vRad2 gRad_2 , 無縫模式  (不點頭)
Gui, Color, black
Gui, Show, x100 y100 h270 w450, 無縫模組參數控制介面
return

Rad_1:
Gui, Submit, Nohide
if(Rad1==1)
{
GuiControl,,Rad2,0 ;取消Run1的方塊勾選
sleep 100
Process, Close, Speed2.exe
sleep 100
Run Speed1.exe
sleep 100
}
else
{
GuiControl,,Rad2,0 ;取消Run1的方塊勾選
sleep 100
Process, Close, Speed1.exe
Process, Close, Speed2.exe
}
Return

Rad_2:
Gui, Submit, Nohide
if(Rad2==1)
{
GuiControl,,Rad1,0 ;取消Run1的方塊勾選
sleep 100
Process, Close, Speed1.exe
sleep 100
Run Speed2.exe
sleep 100
}
else
{
GuiControl,,Rad1,0 ;取消Run1的方塊勾選
sleep 100
Process, Close, Speed1.exe
Process, Close, Speed2.exe
}
Return



GuiClose:
Process, Close, Speed1.exe
Process, Close, Speed2.exe
ExitApp
return
