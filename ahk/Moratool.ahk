Gui, Color,, c00FFFF ;數字框底邊顏色
Gui, Font, c00FFFF s12,Comic Sans MS ;統一 ,   c+顏色c00FFFF ,s+字的大小  , 字型:Comic Sans MS
Gui, Add, Text, x20 y30 w550 h25  , 修復說明:(修復時不要關掉我)
Gui, Add, Text, x20 y60 w550 h25  , 1.讓跑跑卡丁車先進入全螢幕再視窗畫(讓視窗維持在左上角)
Gui, Add, Text, x20 y90 w550 h25  , 2.進入跑跑卡丁車的猜拳遊戲
Gui, Add, Text, x20 y120 w550 h25  , 3.按下yes,並不要做任何事情(以下全程必須讓跑跑遊戲的視窗在最上層)
Gui, Add, Text, x20 y150 w550 h25  , 4.如果畫面是顯示yes/no按下Curl+F9,等待更新完成(一次就好)
Gui, Add, Text, x20 y180 w550 h25  ,   如果畫面是顯示剪刀按下Curl+F1,等待更新完成
Gui, Add, Text, x20 y210 w550 h25  ,   如果畫面是顯示石頭按下Curl+F2,等待更新完成
Gui, Add, Text, x20 y240 w550 h25  ,   如果畫面是顯示布按下Curl+F3,等待更新完成
Gui, Add, Text, x20 y270 w550 h25  ,   如果畫面是顯示(剪刀+石頭)按下Curl+F4,等待更新完成
Gui, Add, Text, x20 y300 w550 h25  ,   如果畫面是顯示(剪刀+布)按下Curl+F5,等待更新完成
Gui, Add, Text, x20 y330 w550 h25  ,   如果畫面是顯示(石頭+布)按下Curl+F6,等待更新完成
Gui, Add, Text, x20 y360 w550 h25  ,   如果畫面是顯示(剪刀+石頭+布)按下Curl+F7,等待更新完成
Gui, Add, Text, x20 y390 w550 h25  ,   如果畫面是顯示(拿到齒輪的畫面)按下Curl+F8,等待更新完成
Gui, Add, Text, x20 y420 w550 h25  , 5.以上數據全部更新一輪後,即可關閉應用程式

Gui, Color, black
Gui, Show, x100 y100 h470 w600, 自動猜拳修復工具
return


^F1::
FileDelete, mora1.txt    ;先刪除檔案
FileAppend, ,mora1.txt ;建立文檔
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

),mora1.txt  ;指定寫入的檔案
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

),mora1.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,剪刀的數據  已修復
return 

^F2::
FileDelete, mora2.txt    ;先刪除檔案
FileAppend, ,mora2.txt ;建立文檔
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

),mora2.txt  ;指定寫入的檔案
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

),mora2.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,石頭的數據  已修復
return 

^F3::
FileDelete, mora3.txt    ;先刪除檔案
FileAppend, ,mora3.txt ;建立文檔
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

),mora3.txt  ;指定寫入的檔案
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

),mora3.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,布的數據  已修復
return 

^F4::
FileDelete, mora4.txt    ;先刪除檔案
FileAppend, ,mora4.txt ;建立文檔
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

),mora4.txt  ;指定寫入的檔案
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

),mora4.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,(剪刀+石頭)的數據  已修復
return 

^F5::
FileDelete, mora5.txt    ;先刪除檔案
FileAppend, ,mora5.txt ;建立文檔
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

),mora5.txt  ;指定寫入的檔案
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

),mora5.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,(剪刀+布)的數據  已修復
return 

^F6::
FileDelete, mora6.txt    ;先刪除檔案
FileAppend, ,mora6.txt ;建立文檔
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

),mora6.txt  ;指定寫入的檔案
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

),mora6.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,(石頭+布)的數據  已修復
return 

^F7::
FileDelete, mora7.txt    ;先刪除檔案
FileAppend, ,mora7.txt ;建立文檔
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

),mora7.txt  ;指定寫入的檔案
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

),mora7.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,(剪刀+石頭+布)的數據  已修復
return 

^F8::
FileDelete, a1.txt    ;先刪除檔案
FileAppend, ,a1.txt ;建立文檔
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

),a1.txt  ;指定寫入的檔案
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

),a1.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,領取齒輪畫面數據  已更新
return 

^F9::
FileDelete, a2.txt    ;先刪除檔案
FileAppend, ,a2.txt ;建立文檔
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

),a2.txt  ;指定寫入的檔案
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

),a2.txt  ;指定寫入的檔案
xlocal+=1 ;每次都加1
number += 1
}
ylocal+=1 ;每次都加1
}
msgbox,yes/no畫面數據  已更新
return 

GuiClose:
ExitApp
return