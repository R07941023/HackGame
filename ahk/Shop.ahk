Gui, Color,, 272727 ;�Ʀr�ة����C��
Gui, Font, ECF5FF s10,Comic Sans MS ;�Τ@ ,   c+�C��c00FFFF ,s+�r���j�p  , �r��:Comic Sans MS
Gui, Add, Text, x20 y10 w500 h25  , �ϥλ���:��J�A�n���W�v(�@��)
Gui, Add, Text, x95 y30 w500 h25  ,ex:��J1000 �N�O���j1��
Gui, Add, Text, x20 y90 w100 h25 ,��J�W�v
Gui, Add, edit, x120 y90 w60 h20 ,
Gui, Color, black
Gui, Show, x100 y100 h150 w300,�����ө��[�t�{��
return


Q::
GuiControlGet, speed,,Edit1    
MouseMove, 243, 361 
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

W::
GuiControlGet, speed,,Edit1  
MouseMove, 363, 362 
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

E::
GuiControlGet, speed,,Edit1  
MouseMove, 485, 361 
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

R::
GuiControlGet, speed,,Edit1  
MouseMove, 611, 362 
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

T::
GuiControlGet, speed,,Edit1  
MouseMove, 730, 361 
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

A::
GuiControlGet, speed,,Edit1  
MouseMove, 248, 533 
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

S::
GuiControlGet, speed,,Edit1  
MouseMove, 364, 534 
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

D::
GuiControlGet, speed,,Edit1  
MouseMove, 486, 533
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

F::
GuiControlGet, speed,,Edit1  
MouseMove, 609, 532
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

G::
GuiControlGet, speed,,Edit1  
MouseMove, 726, 526
sleep %speed%
Send {LButton}
sleep %speed%
MouseMove, 496, 518 
sleep %speed%
Send {LButton}
sleep %speed%
Send {enter}
sleep %speed%
Send {enter}
sleep %speed%
MouseMove, 1094, 227 
sleep %speed%
Send {LButton}
return

GuiClose:
ExitApp
return