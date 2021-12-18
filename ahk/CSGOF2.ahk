Suspend ;一開始先暫停此腳本

$LButton::        ;滑鼠左鍵的判斷
Loop
        { 
                If Not GetKeyState("LButton", "P") ;判斷左鍵是否按著
                Break       
                Send {LButton Down}
                sleep 50    ;
                Send {LButton Up}
                sleep 50  ;            
		}
		        Send {WheelDown} ;切換成副武器
				sleep 50
                Send {WheelUp} ;切換回主武器
				
Return
$F2::   ;設定F1為啟動/暫停
Suspend