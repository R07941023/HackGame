Suspend ;�@�}�l���Ȱ����}��

$LButton::        ;�ƹ����䪺�P�_
Loop
        { 
                If Not GetKeyState("LButton", "P") ;�P�_����O�_����
                Break
                Send {LButton Down}
                sleep 30    ;�]�w����ɶ��A�Ʀr�V�p�h�I���t�׶V��
                Send {LButton Up}
                sleep 100  ;�]�w����ɶ��A�Ʀr�V�p�h�I���t�׶V��              
        }
Return

$F1::   ;�]�wF1���Ұ�/�Ȱ�
Suspend