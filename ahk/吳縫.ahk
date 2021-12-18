#MaxThreadsPerHotkey 2

$F2::
PressKey := ! PressKey
Loop
{
    If ! PressKey
    Send {LCtrl}
    Sleep 20
}
Return

#MaxThreadsPerHotkey 1