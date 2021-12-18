Suspend ;一開始先暫停此腳本

$LButton::        ;滑鼠左鍵的判斷
Loop
        { 
                If Not GetKeyState("LButton", "P") ;判斷左鍵是否按著
                Break
                Send {LButton Down}
                sleep 30    ;設定延遲時間，數字越小則點擊速度越快
                Send {LButton Up}
                sleep 100  ;設定延遲時間，數字越小則點擊速度越快              
        }
Return

$F1::   ;設定F1為啟動/暫停
Suspend