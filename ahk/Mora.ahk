Gui, Color,, 272727 ;數字框底邊顏色
Gui, Font, ECF5FF s10,Comic Sans MS ;統一 ,   c+顏色c00FFFF ,s+字的大小  , 字型:Comic Sans MS
Gui, Add, Text, x20 y10 w500 h25  , 參數控制:   (輸入後,點擊跑跑視窗即可按下F3開始/停止)
Gui, Add, Text, x20 y50 w100 h25  , 剪刀數量
Gui, Add, edit, x20 y90 w60 h20 ,
Gui, Add, Text, x170 y50 w100 h25  , 石頭數量
Gui, Add, edit, x170 y90 w60 h20 ,
Gui, Add, Text, x320 y50 w100 h25  , 布數量
Gui, Add, edit, x320 y90 w60 h20 ,
Gui, Add, Text, x20 y120 w300 h25  , (當猜拳數量不足5會提出警告)

Gui, Color, black
Gui, Show, x100 y100 h150 w600, 自動猜拳參數控制介面
return

GuiClose:
ExitApp
return


$F3::
GuiControlGet, scissors,,Edit1    ;剪刀數量
GuiControlGet, stone,,Edit2       ;石頭數量
GuiControlGet, cloth,,Edit3       ;布數量
;MsgBox, %scissors%,%stone%,%cloth%

;1.讀取資料庫
a1 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
a1[j] := A_LoopField
a1[j, k] := A_LoopReadLine
a2 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
a2[j] := A_LoopField
a2[j, k] := A_LoopReadLine
mora1 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
mora1[j] := A_LoopField
mora1[j, k] := A_LoopReadLine
mora2 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
mora2[j] := A_LoopField
mora2[j, k] := A_LoopReadLine 
mora3 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
mora3[j] := A_LoopField
mora3[j, k] := A_LoopReadLine 
mora4 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
mora4[j] := A_LoopField
mora4[j, k] := A_LoopReadLine 
mora5 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
mora5[j] := A_LoopField
mora5[j, k] := A_LoopReadLine 
mora6 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
mora6[j] := A_LoopField
mora6[j, k] := A_LoopReadLine 
mora7 := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
mora7[j] := A_LoopField
mora7[j, k] := A_LoopReadLine 
a1Count=0 
a2Count=0 
mora1Count=0 
mora2Count=0
mora3Count=0
mora4Count=0
mora5Count=0
mora6Count=0
mora7Count=0

Loop, Read, a1.txt   ;檔案位置
{
      a1Count += 1   ;紀錄讀取紀錄總數
      a1[a1Count] := A_LoopReadLine  ;讀取一行放入陣列
 }

Loop, Read, a2.txt   ;檔案位置
{
      a2Count += 1   ;紀錄讀取紀錄總數
      a2[a2Count] := A_LoopReadLine  ;讀取一行放入陣列
 } 

Loop, Read, mora1.txt   ;檔案位置
{
      mora1Count += 1   ;紀錄讀取紀錄總數
      mora1[mora1Count] := A_LoopReadLine  ;讀取一行放入陣列
 }

Loop, Read, mora2.txt   ;檔案位置
{
      mora2Count += 1   ;紀錄讀取紀錄總數
      mora2[mora2Count] := A_LoopReadLine  ;讀取一行放入陣列
 }
 
Loop, Read, mora3.txt   ;檔案位置
{
      mora3Count += 1   ;紀錄讀取紀錄總數
      mora3[mora3Count] := A_LoopReadLine  ;讀取一行放入陣列
 }
 
Loop, Read, mora4.txt   ;檔案位置
{
      mora4Count += 1   ;紀錄讀取紀錄總數
      mora4[mora4Count] := A_LoopReadLine  ;讀取一行放入陣列
}

Loop, Read, mora5.txt   ;檔案位置
{
      mora5Count += 1   ;紀錄讀取紀錄總數
      mora5[mora5Count] := A_LoopReadLine  ;讀取一行放入陣列
}

Loop, Read, mora6.txt   ;檔案位置
{
      mora6Count += 1   ;紀錄讀取紀錄總數
      mora6[mora6Count] := A_LoopReadLine  ;讀取一行放入陣列
}

Loop, Read, mora7.txt   ;檔案位置
{
      mora7Count += 1   ;紀錄讀取紀錄總數
      mora7[mora7Count] := A_LoopReadLine  ;讀取一行放入陣列
}

loop   ;主要迴圈
{

if (scissors <= 4)
{
msgbox,剪刀數量低於5,按下確定繼續運行或關閉程式
}
if (stone <= 4)
{
msgbox,石頭數量低於5,按下確定會繼續運行或關閉程式
}
if (cloth <= 4)
{
msgbox,布數量低於5,按下確定會繼續運行或關閉程式
}

;2.寫入目前數據到資料庫
FileDelete, state.txt    ;先刪除檔案
FileAppend, ,state.txt ;建立文檔
sleep 100
number= 0

;;;補充一個點來輔助(605,306);;;

xlocal=605
ylocal=306
PixelGetColor, color, %xlocal%, %ylocal%, RGB
StringRight color,color,6
FileAppend,                             ;加入到檔案尾端
(
%color%

),state.txt  ;指定寫入的檔案
number += 1

xmin = 216 ;x最短距離
xmax = 370 ;x最長距離
ymin = 167 ;y最短距離
ymax = 167 ;y最長距離
xlocal = %xmin%
ylocal = %ymin%
loop 
{
if (ylocal > ymax)
break
xlocal = %xmin%
loop 
{
if (xlocal > xmax)
break
PixelGetColor, color, %xlocal%, %ylocal%, RGB
StringRight color,color,6
FileAppend,                             ;加入到檔案尾端
(
%color%

),state.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
;msgbox,%number%





;3.讀取目前數據
state := Object()    ;;;宣告座標軸的陣列物件，用以依序儲存滑鼠X,Y座標
state[j] := A_LoopField
state[j, k] := A_LoopReadLine    
stateCount=0           
Loop, Read, state.txt   ;檔案位置
{
      stateCount += 1   ;紀錄讀取紀錄總數
      state[stateCount] := A_LoopReadLine  ;讀取一行放入陣列
}


apple :=state[1]
apple1 :=mora1[1]
apple2 :=mora2[1]
apple3 :=mora3[1]
apple4 :=mora4[1]
apple5 :=mora5[1]
apple6 :=mora6[1]
apple7 :=mora7[1]
a1pple :=a1[1]
a2pple :=a1[1]
;msgbox, %apple% ,%apple1% ,%apple2%,%apple3%,%apple4%,%apple5%,%apple6%,%apple7%,%a1pple%,%a2pple%
;4.判斷行為
;導入第一組數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora1[n]) ;對方出剪刀
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 395, 568     ;我方出石頭
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
stone+=-1 
}
;導入第二組數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora2[n]) ;對方出石頭
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 559, 575     ;我方出布
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
cloth+=-1 
}
;導入第三組數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora3[n]) ;對方出布
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 230, 575     ;我方剪刀
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
scissors+=-1 
}
;導入第四組數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora4[n]) ;對方出剪刀,石頭
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 395, 568     ;我方出石頭
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
stone+=-1 
}
;導入第五組數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora5[n]) ;對方出剪刀,布
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 230, 575     ;我方剪刀
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
scissors+=-1 
}
;導入第六組數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora6[n]) ;對方出石頭,布
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 559, 575     ;我方出布
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
cloth+=-1 
}
;導入第七組數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora7[n]) ;對方出剪刀,石頭,布
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 395, 568     ;我方出石頭
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
stone+=-1 
}
;導入a1數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = a1[n]) ;成功拿到齒輪後
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 537, 583     ;按下確定
Send {LButton}
sleep 500
MouseMove, 178, 256     ;開始猜拳(177,200) (178,256)
Send {LButton}
sleep 500
MouseMove, 376, 494     ;移至yes
Send {LButton}
sleep 1500
}
;導入a2數據
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = a2[n]) ;yes/no畫面
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 376, 494     ;按下yes
Send {LButton}
sleep 1500
}
}
return






