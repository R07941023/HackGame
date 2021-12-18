Run, key.exe 
sleep 100
InputBox, aausername, Identity Validator, Decoder:   (&&&&破解產品金鑰程序&&&&), Hide, 300, 150
sleep 100
;      進行加密 
;522158582365588425 ;原始密碼
total:=999999999999999999 
password:= total-aausername ;運算
if (password!= 477841417634411574)  ;password
{
MsgBox, 解密失敗!!
Process, Close, Control_Center_v1.6.3.exe
}


;第一階段設定gui
Gui, Color,, 272727 ;數字框底邊顏色
Gui, Font, c00FFFF s8,Comic Sans MS ;統一 ,   c+顏色c00FFFF ,s+字的大小  , 字型:Comic Sans MS
Gui, Add, GroupBox, x512 y20 w150 h210 , CSGO
Gui, Add, GroupBox, x692 y20 w150 h210 , 跑跑卡丁車
Gui, Add, CheckBox, x532 y50 w120 h20 vCS1 gCSF1, 連續點射(F1)
Gui, Add, CheckBox, x532 y80 w120 h20 vCS2 gCSF2, 主副槍切換(F2)
Gui, Add, CheckBox, x532 y110 w120 h20 vCS3 gCSF3, 順狙模組(F3)
Gui, Add, CheckBox, x532 y140 w120 h20 vCS4 gCSF4, 自動架槍(F4)
Gui, Add, CheckBox, x712 y50 w120 h20 vRun1 gRunF1, 無縫模組(F1)
Gui, Add, CheckBox, x712 y80 w120 h20 vRun2 gRunF2, 大富翁模式(F2)
Gui, Add, CheckBox, x712 y110 w120 h20 vRun3 gRunF3 , 猜拳模組(F3)
Gui, Add, CheckBox, x712 y140 w120 h20 vRun4 gRunF4 , 自動釣魚(F4)
Gui, Add, CheckBox, x712 y170 w120 h20 vShop gShop , 神秘商店
Gui, Add, CheckBox, x712 y200 w120 h20 vtinytask gtinytask , 自動刷圖
;GuiControl, hide, CS1 ;可以隱藏
;GuiControl, show, CS1 ;可以顯示(預設就是顯示)
Gui, Add, GroupBox, x512 y250 w150 h60 cBlue, 執行狀態
Gui, Add, GroupBox, x692 y250 w150 h60 cBlue,執行狀態
Gui, Add, Button, x32 y330 w90 h30 gReset, Reset
Gui, Add, Button, x150 y330 w90 h30 gReadme, Readme
Gui, Add, Button, x268 y330 w90 h30 gbug, bug
;Gui, Add, Button, x386 y330 w90 h30 gMoratool, 猜拳修復工具
Gui, Add, Text, x32 y380 w500 h30 gmyid, 程式製作   :      呂彥穎     a5822358@gmail.com  
Gui, Add, Text, x690 y320 w500 h30 , 卡水延遲(秒) =
Gui, Add, edit, x770 y320 w60 h20 ,
Gui, Add, Text, x572 y280 w70 h20 cRed vSpeed1 , 未執行
Gui, Add, Text, x749 y280 w70 h20 cRed vSpeed2 , 未執行
Gui, Add, Picture, x-8 y0 w500 h310 , kali_dragon_by_humanlly-d61ax9j.png
;Gui, +AlwaysOnTop ;將此程式至上
Gui, Color, black
Gui, Show, x641 y424 h428 w869, Control_Center_v1.6.3
return

;隱藏功能
!Q:: ;卡水
GuiControlGet, water,,Edit1    ;讀取卡水秒數
waterer := water*1000
MouseMove, 147, 10 
;sleep 100
Send {LButton Down}
Sleep %waterer%
Send {LButton Up}
Return

;第二階段設定code
myid:
    Run https://www.facebook.com/profile.php?id=100002526071286
return
	
Readme:
	Run rule.txt
return

bug:
	Run bug.txt
return

;Moratool:
   ; Run Moratool.exe
return

Reset:
    ;msgbox, %CSF1%,%CSF2%,%CSF3%,%Run1%,%Run2%
	CS1=0
	GuiControl,,CS1,0
	Process, Close, CSGOF1.exe
	sleep 100
	CS2=0
	GuiControl,,CS2,0
	Process, Close, CSGOF2.exe
	sleep 100
	CS3=0
	GuiControl,,CS3,0
	Process, Close, CSGOF3.exe
	sleep 100
	CS4=0
	GuiControl,,CS4,0
	Process, Close, CSGOF4.exe
	sleep 100
	Run1=0
	GuiControl,,Run1,0
	Process, Close, RunF1.exe
	Process, Close, Speed1.exe
	Process, Close, Speed2.exe
	sleep 100
	Run2=0
	GuiControl,,Run2,0
	Process, Close, RunF2.exe
	sleep 100
	Run3=0
	GuiControl,,Run3,0
	Process, Close, RunF3.exe
	Process, Close, Mora.exe
	Process, Close, Moratool.exe
	sleep 100
	Run4=0
	GuiControl,,Run4,0
	Process, Close, RunF4.exe
	sleep 100
	Shop=0
	GuiControl,,Shop,0
	Process, Close, Shop.exe
	sleep 100
	tinytask=0
	GuiControl,,tinytask,0
	Process, Close, tinytask.exe
	sleep 100
	GuiControl,, Speed1, 未執行
	GuiControl,, Speed2, 未執行
	msgbox, 數據已經刷新
	return
	
CSF1:
	Gui, Submit, NoHide ;下載這些gui的值
	if (CS1=1)
	{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0 ;取消Run1的方塊勾選
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
		sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
	    sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Run CSGOF1.exe
		sleep 100
	}
	else
	{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
		sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
		sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Process, Close, CSGOF1.exe
		sleep 100
	}
	if (game=1)
	{
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}
	else
	{
		game=1
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}
	return
	
CSF2:
	Gui, Submit, NoHide ;下載這些gui的值
	if (CS2=1)
	{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
	    sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
		sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Run CSGOF2.exe
		sleep 100
	}
	else
	{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
		sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
		sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Process, Close, CSGOF2.exe
		sleep 100
	}
	if (game=1)
	{
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}
	else
	{
		game=1
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}	
	return
	
CSF3:
	Gui, Submit, NoHide ;下載這些gui的值
	if (CS3=1)
		{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
		sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
		sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Run CSGOF3.exe
		sleep 100
	}
	else
	{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
		sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
		sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Process, Close, CSGOF3.exe
		sleep 100
	}
	if (game=1)
	{
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}
	else
	{
		game=1
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}
	return
CSF4:
	Gui, Submit, NoHide ;下載這些gui的值
	if (CS4=1)
		{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
		sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
		sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Run CSGOF4.exe
		sleep 100
	}
	else
	{
		Run1=0
		Process, Close, RunF1.exe
		GuiControl,,Run1,0
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
		Run2=0
		Process, Close, RunF2.exe
		GuiControl,,Run2,0
		sleep 100
		Run3=0
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
        Process, Close, Moratool.exe
		GuiControl,,Run3,0
		sleep 100
		Run4=0
		Process, Close, RunF4.exe
        GuiControl,,Run4,0
		sleep 100
		Shop=0
		Process, Close, Shop.exe
        GuiControl,,Shop,0
	    sleep 100
		tinytask=0
		Process, Close, tinytask.exe
		GuiControl,,tinytask,0
		sleep 100
		Process, Close, CSGOF4.exe
		sleep 100
	}
	if (game=1)
	{
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}
	else
	{
		game=1
		GuiControl,, Speed1, 執行中
		GuiControl,, Speed2, 未執行
	}
	return
	
RunF1:
	Gui, Submit, NoHide ;下載這些gui的值
	if (Run1=1)
	{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Run RunF1.exe
		sleep 100
	}
	else
	{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Process, Close, RunF1.exe
		Process, Close, Speed1.exe
	    Process, Close, Speed2.exe
		sleep 100
	}
	if (game=2)
	{
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	else
	{
		game=2
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	return

RunF2:
	Gui, Submit, NoHide ;下載這些gui的值
	if (Run2=1)
		{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Run RunF2.exe
		sleep 100
	}
	else
	{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Process, Close, RunF2.exe
		sleep 100
	}
	if (game=2)
	{
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	else
	{
		game=2
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	return

RunF3:
	Gui, Submit, NoHide ;下載這些gui的值
	if (Run3=1)
		{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Run RunF3.exe
		sleep 100
	}
	else
	{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Process, Close, RunF3.exe
		Process, Close, Mora.exe
		Process, Close, Moratool.exe
		sleep 100
	}
	if (game=2)
	{
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	else
	{
		game=2
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	return	
	
RunF4:
	Gui, Submit, NoHide ;下載這些gui的值
	if (Run4=1)
		{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Run RunF4.exe
		sleep 100
	}
	else
	{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Process, Close, RunF4.exe
		sleep 100
	}
	if (game=2)
	{
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	else
	{
		game=2
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	return
Shop:
	Gui, Submit, NoHide ;下載這些gui的值
	if (Shop=1)
		{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Run Shop.exe
		sleep 100
	}
	else
	{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Process, Close, RunF4.exe
		sleep 100
	}
	if (game=2)
	{
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	else
	{
		game=2
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	return	
tinytask:
	Gui, Submit, NoHide ;下載這些gui的值
	if (tinytask=1)
		{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Run tinytask.exe
		sleep 100
	}
	else
	{
		CS1=0
		Process, Close, CSGOF1.exe
		GuiControl,,CS1,0
		sleep 100
		CS2=0
		Process, Close, CSGOF2.exe
		GuiControl,,CS2,0
		sleep 100
		CS3=0
		Process, Close, CSGOF3.exe
		GuiControl,,CS3,0
		sleep 100
		CS4=0
		Process, Close, CSGOF4.exe
		GuiControl,,CS4,0
		sleep 100
		Process, Close, tinytask.exe
		sleep 100
	}
	if (game=2)
	{
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	else
	{
		game=2
		GuiControl,, Speed2, 執行中
		GuiControl,, Speed1, 未執行
	}
	return
	
GuiClose:
Process, Close, CSGOF1.exe
Process, Close, CSGOF2.exe
Process, Close, CSGOF3.exe
Process, Close, CSGOF4.exe
Process, Close, RunF1.exe
Process, Close, RunF2.exe
Process, Close, RunF3.exe
Process, Close, RunF4.exe
Process, Close, Shop.exe
Process, Close, Mora.exe
Process, Close, Moratool.exe
Process, Close, tinytask.exe
Process, Close, Speed1.exe
Process, Close, Speed2.exe
ExitApp
return

