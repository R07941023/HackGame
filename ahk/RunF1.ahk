Gui, Color,, 272727 ;�Ʀr�ة����C��
Gui, Font, ECF5FF s10,Comic Sans MS ;�Τ@ ,   c+�C��c00FFFF ,s+�r���j�p  , �r��:Comic Sans MS
Gui, Add, Text, x20 y10 w500 h25  , �ϥλ���:  ��ܫ�,�I�ୱ���UF1�}�l/����,�A�i�J�C��
Gui, Add, Text, x95 y30 w500 h25  , �ϥΤ��i�H�H�N��������Φ�
Gui, Add, Text, x95 y50 w500 h25  , (�g���:�Y�L��,�Цh����:�I�ୱ����F1)
Gui, Add, CheckBox, x95 y110 w300 h25 vRad1 gRad_1  , ���u�Ҧ�  (�I�Y)
Gui, Add, CheckBox, x95 y170 w300 h25 vRad2 gRad_2 , �L�_�Ҧ�  (���I�Y)
Gui, Color, black
Gui, Show, x100 y100 h270 w450, �L�_�ҲհѼƱ����
return

Rad_1:
Gui, Submit, Nohide
if(Rad1==1)
{
GuiControl,,Rad2,0 ;����Run1������Ŀ�
sleep 100
Process, Close, Speed2.exe
sleep 100
Run Speed1.exe
sleep 100
}
else
{
GuiControl,,Rad2,0 ;����Run1������Ŀ�
sleep 100
Process, Close, Speed1.exe
Process, Close, Speed2.exe
}
Return

Rad_2:
Gui, Submit, Nohide
if(Rad2==1)
{
GuiControl,,Rad1,0 ;����Run1������Ŀ�
sleep 100
Process, Close, Speed1.exe
sleep 100
Run Speed2.exe
sleep 100
}
else
{
GuiControl,,Rad1,0 ;����Run1������Ŀ�
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
