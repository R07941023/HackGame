$F4::
MouseGetPos, mouseX, mouseY ;�^����L��m
PixelGetColor, color, %mouseX%, %mouseY%, RGB ;Ū����m�C��
StringRight color,color,6 ;�ഫ�C��N�X
color_%mouseX%_%mouseY% = %color% ;Ū���C��N�X
first=%color% 
;msgbox, color_%mouseX%_%mouseY% = %first% 
loop
{
MouseGetPos, mouseX, mouseY ;�^����L��m
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
sleep 50    ;�]�w����ɶ��A�Ʀr�V�p�h�I���t�׶V��
Send {LButton Up}
sleep 50  ;�]�w����ɶ��A�Ʀr�V�p�h�I���t�׶V��    
Send {WheelDown} ;�������ƪZ��
sleep 50
Send {WheelUp} ;�����^�D�Z��
sleep 50
return
;msgbox,first=%first%    second=%second% 
return