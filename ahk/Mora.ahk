Gui, Color,, 272727 ;�Ʀr�ة����C��
Gui, Font, ECF5FF s10,Comic Sans MS ;�Τ@ ,   c+�C��c00FFFF ,s+�r���j�p  , �r��:Comic Sans MS
Gui, Add, Text, x20 y10 w500 h25  , �ѼƱ���:   (��J��,�I���]�]�����Y�i���UF3�}�l/����)
Gui, Add, Text, x20 y50 w100 h25  , �ŤM�ƶq
Gui, Add, edit, x20 y90 w60 h20 ,
Gui, Add, Text, x170 y50 w100 h25  , ���Y�ƶq
Gui, Add, edit, x170 y90 w60 h20 ,
Gui, Add, Text, x320 y50 w100 h25  , ���ƶq
Gui, Add, edit, x320 y90 w60 h20 ,
Gui, Add, Text, x20 y120 w300 h25  , (��q���ƶq����5�|���Xĵ�i)

Gui, Color, black
Gui, Show, x100 y100 h150 w600, �۰ʲq���ѼƱ����
return

GuiClose:
ExitApp
return


$F3::
GuiControlGet, scissors,,Edit1    ;�ŤM�ƶq
GuiControlGet, stone,,Edit2       ;���Y�ƶq
GuiControlGet, cloth,,Edit3       ;���ƶq
;MsgBox, %scissors%,%stone%,%cloth%

;1.Ū����Ʈw
a1 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
a1[j] := A_LoopField
a1[j, k] := A_LoopReadLine
a2 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
a2[j] := A_LoopField
a2[j, k] := A_LoopReadLine
mora1 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
mora1[j] := A_LoopField
mora1[j, k] := A_LoopReadLine
mora2 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
mora2[j] := A_LoopField
mora2[j, k] := A_LoopReadLine 
mora3 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
mora3[j] := A_LoopField
mora3[j, k] := A_LoopReadLine 
mora4 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
mora4[j] := A_LoopField
mora4[j, k] := A_LoopReadLine 
mora5 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
mora5[j] := A_LoopField
mora5[j, k] := A_LoopReadLine 
mora6 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
mora6[j] := A_LoopField
mora6[j, k] := A_LoopReadLine 
mora7 := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
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

Loop, Read, a1.txt   ;�ɮצ�m
{
      a1Count += 1   ;����Ū�������`��
      a1[a1Count] := A_LoopReadLine  ;Ū���@���J�}�C
 }

Loop, Read, a2.txt   ;�ɮצ�m
{
      a2Count += 1   ;����Ū�������`��
      a2[a2Count] := A_LoopReadLine  ;Ū���@���J�}�C
 } 

Loop, Read, mora1.txt   ;�ɮצ�m
{
      mora1Count += 1   ;����Ū�������`��
      mora1[mora1Count] := A_LoopReadLine  ;Ū���@���J�}�C
 }

Loop, Read, mora2.txt   ;�ɮצ�m
{
      mora2Count += 1   ;����Ū�������`��
      mora2[mora2Count] := A_LoopReadLine  ;Ū���@���J�}�C
 }
 
Loop, Read, mora3.txt   ;�ɮצ�m
{
      mora3Count += 1   ;����Ū�������`��
      mora3[mora3Count] := A_LoopReadLine  ;Ū���@���J�}�C
 }
 
Loop, Read, mora4.txt   ;�ɮצ�m
{
      mora4Count += 1   ;����Ū�������`��
      mora4[mora4Count] := A_LoopReadLine  ;Ū���@���J�}�C
}

Loop, Read, mora5.txt   ;�ɮצ�m
{
      mora5Count += 1   ;����Ū�������`��
      mora5[mora5Count] := A_LoopReadLine  ;Ū���@���J�}�C
}

Loop, Read, mora6.txt   ;�ɮצ�m
{
      mora6Count += 1   ;����Ū�������`��
      mora6[mora6Count] := A_LoopReadLine  ;Ū���@���J�}�C
}

Loop, Read, mora7.txt   ;�ɮצ�m
{
      mora7Count += 1   ;����Ū�������`��
      mora7[mora7Count] := A_LoopReadLine  ;Ū���@���J�}�C
}

loop   ;�D�n�j��
{

if (scissors <= 4)
{
msgbox,�ŤM�ƶq�C��5,���U�T�w�~��B��������{��
}
if (stone <= 4)
{
msgbox,���Y�ƶq�C��5,���U�T�w�|�~��B��������{��
}
if (cloth <= 4)
{
msgbox,���ƶq�C��5,���U�T�w�|�~��B��������{��
}

;2.�g�J�ثe�ƾڨ��Ʈw
FileDelete, state.txt    ;���R���ɮ�
FileAppend, ,state.txt ;�إߤ���
sleep 100
number= 0

;;;�ɥR�@���I�ӻ��U(605,306);;;

xlocal=605
ylocal=306
PixelGetColor, color, %xlocal%, %ylocal%, RGB
StringRight color,color,6
FileAppend,                             ;�[�J���ɮק���
(
%color%

),state.txt  ;���w�g�J���ɮ�
number += 1

xmin = 216 ;x�̵u�Z��
xmax = 370 ;x�̪��Z��
ymin = 167 ;y�̵u�Z��
ymax = 167 ;y�̪��Z��
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
FileAppend,                             ;�[�J���ɮק���
(
%color%

),state.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
;msgbox,%number%





;3.Ū���ثe�ƾ�
state := Object()    ;;;�ŧi�y�жb���}�C����A�ΥH�̧��x�s�ƹ�X,Y�y��
state[j] := A_LoopField
state[j, k] := A_LoopReadLine    
stateCount=0           
Loop, Read, state.txt   ;�ɮצ�m
{
      stateCount += 1   ;����Ū�������`��
      state[stateCount] := A_LoopReadLine  ;Ū���@���J�}�C
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
;4.�P�_�欰
;�ɤJ�Ĥ@�ռƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora1[n]) ;���X�ŤM
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 395, 568     ;�ڤ�X���Y
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
stone+=-1 
}
;�ɤJ�ĤG�ռƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora2[n]) ;���X���Y
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 559, 575     ;�ڤ�X��
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
cloth+=-1 
}
;�ɤJ�ĤT�ռƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora3[n]) ;���X��
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 230, 575     ;�ڤ�ŤM
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
scissors+=-1 
}
;�ɤJ�ĥ|�ռƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora4[n]) ;���X�ŤM,���Y
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 395, 568     ;�ڤ�X���Y
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
stone+=-1 
}
;�ɤJ�Ĥ��ռƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora5[n]) ;���X�ŤM,��
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 230, 575     ;�ڤ�ŤM
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
scissors+=-1 
}
;�ɤJ�Ĥ��ռƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora6[n]) ;���X���Y,��
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 559, 575     ;�ڤ�X��
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
cloth+=-1 
}
;�ɤJ�ĤC�ռƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = mora7[n]) ;���X�ŤM,���Y,��
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 395, 568     ;�ڤ�X���Y
Send {LButton}
sleep 3400  
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
stone+=-1 
}
;�ɤJa1�ƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = a1[n]) ;���\���쾦����
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 537, 583     ;���U�T�w
Send {LButton}
sleep 500
MouseMove, 178, 256     ;�}�l�q��(177,200) (178,256)
Send {LButton}
sleep 500
MouseMove, 376, 494     ;����yes
Send {LButton}
sleep 1500
}
;�ɤJa2�ƾ�
n := 0
a := 0
loop %number%
{
n +=1
if (state[n] = a2[n]) ;yes/no�e��
a +=1
}
;msgbox,%n% %a% %number%
if (a = 156)
{
MouseMove, 376, 494     ;���Uyes
Send {LButton}
sleep 1500
}
}
return






