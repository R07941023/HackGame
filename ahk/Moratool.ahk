Gui, Color,, c00FFFF ;�Ʀr�ة����C��
Gui, Font, c00FFFF s12,Comic Sans MS ;�Τ@ ,   c+�C��c00FFFF ,s+�r���j�p  , �r��:Comic Sans MS
Gui, Add, Text, x20 y30 w550 h25  , �״_����:(�״_�ɤ��n������)
Gui, Add, Text, x20 y60 w550 h25  , 1.���]�]�d�B�����i�J���ù��A�����e(�����������b���W��)
Gui, Add, Text, x20 y90 w550 h25  , 2.�i�J�]�]�d�B�����q���C��
Gui, Add, Text, x20 y120 w550 h25  , 3.���Uyes,�ä��n������Ʊ�(�H�U���{�������]�]�C���������b�̤W�h)
Gui, Add, Text, x20 y150 w550 h25  , 4.�p�G�e���O���yes/no���UCurl+F9,���ݧ�s����(�@���N�n)
Gui, Add, Text, x20 y180 w550 h25  ,   �p�G�e���O��ܰŤM���UCurl+F1,���ݧ�s����
Gui, Add, Text, x20 y210 w550 h25  ,   �p�G�e���O��ܥ��Y���UCurl+F2,���ݧ�s����
Gui, Add, Text, x20 y240 w550 h25  ,   �p�G�e���O��ܥ����UCurl+F3,���ݧ�s����
Gui, Add, Text, x20 y270 w550 h25  ,   �p�G�e���O���(�ŤM+���Y)���UCurl+F4,���ݧ�s����
Gui, Add, Text, x20 y300 w550 h25  ,   �p�G�e���O���(�ŤM+��)���UCurl+F5,���ݧ�s����
Gui, Add, Text, x20 y330 w550 h25  ,   �p�G�e���O���(���Y+��)���UCurl+F6,���ݧ�s����
Gui, Add, Text, x20 y360 w550 h25  ,   �p�G�e���O���(�ŤM+���Y+��)���UCurl+F7,���ݧ�s����
Gui, Add, Text, x20 y390 w550 h25  ,   �p�G�e���O���(���쾦�����e��)���UCurl+F8,���ݧ�s����
Gui, Add, Text, x20 y420 w550 h25  , 5.�H�W�ƾڥ�����s�@����,�Y�i�������ε{��

Gui, Color, black
Gui, Show, x100 y100 h470 w600, �۰ʲq���״_�u��
return


^F1::
FileDelete, mora1.txt    ;���R���ɮ�
FileAppend, ,mora1.txt ;�إߤ���
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

),mora1.txt  ;���w�g�J���ɮ�
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

),mora1.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,�ŤM���ƾ�  �w�״_
return 

^F2::
FileDelete, mora2.txt    ;���R���ɮ�
FileAppend, ,mora2.txt ;�إߤ���
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

),mora2.txt  ;���w�g�J���ɮ�
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

),mora2.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,���Y���ƾ�  �w�״_
return 

^F3::
FileDelete, mora3.txt    ;���R���ɮ�
FileAppend, ,mora3.txt ;�إߤ���
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

),mora3.txt  ;���w�g�J���ɮ�
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

),mora3.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,�����ƾ�  �w�״_
return 

^F4::
FileDelete, mora4.txt    ;���R���ɮ�
FileAppend, ,mora4.txt ;�إߤ���
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

),mora4.txt  ;���w�g�J���ɮ�
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

),mora4.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,(�ŤM+���Y)���ƾ�  �w�״_
return 

^F5::
FileDelete, mora5.txt    ;���R���ɮ�
FileAppend, ,mora5.txt ;�إߤ���
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

),mora5.txt  ;���w�g�J���ɮ�
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

),mora5.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,(�ŤM+��)���ƾ�  �w�״_
return 

^F6::
FileDelete, mora6.txt    ;���R���ɮ�
FileAppend, ,mora6.txt ;�إߤ���
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

),mora6.txt  ;���w�g�J���ɮ�
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

),mora6.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,(���Y+��)���ƾ�  �w�״_
return 

^F7::
FileDelete, mora7.txt    ;���R���ɮ�
FileAppend, ,mora7.txt ;�إߤ���
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

),mora7.txt  ;���w�g�J���ɮ�
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

),mora7.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,(�ŤM+���Y+��)���ƾ�  �w�״_
return 

^F8::
FileDelete, a1.txt    ;���R���ɮ�
FileAppend, ,a1.txt ;�إߤ���
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

),a1.txt  ;���w�g�J���ɮ�
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

),a1.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,��������e���ƾ�  �w��s
return 

^F9::
FileDelete, a2.txt    ;���R���ɮ�
FileAppend, ,a2.txt ;�إߤ���
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

),a2.txt  ;���w�g�J���ɮ�
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

),a2.txt  ;���w�g�J���ɮ�
xlocal+=1 ;�C�����[1
number += 1
}
ylocal+=1 ;�C�����[1
}
msgbox,yes/no�e���ƾ�  �w��s
return 

GuiClose:
ExitApp
return