Suspend ;一開始先暫停此腳本

$RButton::        ;滑鼠左鍵的判斷
Loop
        { 
                If Not GetKeyState("RButton", "P") ;判斷左鍵是否按著
				break				
                Send {RButton Down}
				sleep 50
				Send {RButton Up}
				sleep 50
                Send {LButton Down}
                sleep 50    ;設定延遲時間，數字越小則點擊速度越快
                Send {LButton Up}
                sleep 50  ;設定延遲時間，數字越小則點擊速度越快              
        }
		        sleep 50
                Send {WheelDown} ;切換成副武器
				sleep 50
                Send {WheelUp} ;切換回主武器
				
Return
$F3::   ;設定F2為啟動/暫停
Suspend