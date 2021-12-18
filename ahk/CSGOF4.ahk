$F4::
MouseGetPos, mouseX, mouseY ;擷取鍵盤位置
PixelGetColor, color, %mouseX%, %mouseY%, RGB ;讀取位置顏色
StringRight color,color,6 ;轉換顏色代碼
color_%mouseX%_%mouseY% = %color% ;讀取顏色代碼
first=%color% 
;msgbox, color_%mouseX%_%mouseY% = %first% 
loop
{
MouseGetPos, mouseX, mouseY ;擷取鍵盤位置
PixelGetColor, color, %mouseX%, %mouseY%, RGB
StringRight color,color,6
color_%mouseX%_%mouseY% = %color%
second=%color%
if (second != first) 
    break	
}
Sleep 10
Send {RButton Down}
sleep 50
Send {RButton Up}
sleep 50
Send {LButton Down}
sleep 50    ;設定延遲時間，數字越小則點擊速度越快
Send {LButton Up}
sleep 50  ;設定延遲時間，數字越小則點擊速度越快    
Send {WheelDown} ;切換成副武器
sleep 50
Send {WheelUp} ;切換回主武器
sleep 50
return
;msgbox,first=%first%    second=%second% 
return