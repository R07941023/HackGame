#MaxThreadsPerHotkey 2

$F2::
PressKey := ! PressKey

Loop
{
    If ! PressKey
        Break
    Send {enter Down}
    Sleep 20
    Send {enter Up}
    Sleep 20
	Send {LButton Down}
    sleep 30    
    Send {LButton Up}
    sleep 100   
}
Return

#MaxThreadsPerHotkey 1