#Persistent ;保持脚本运行，直到用户明确地退出。
SetTimer, WatchPOV, 5
return
WatchPOV:
GetKeyState, POV, JoyPOV ;获得视点控制的坐标。
KeyToHoldDownPrev = %KeyToHoldDown% ; Prev 现在存储了先前按下的键（如果有的话）。
;有一些游戏杆会有平滑/连续的视角切换而不是固定的增幅。
;要全部支持它们，可用一个值域：
if POV < 0 ;没有角度
  KeyToHoldDown =
else if POV > 31500 ; 315 至 360 度：向上
  KeyToHoldDown = Up
else if POV between 0 and 4500 ; 0 至 45 度：向上
  KeyToHoldDown = Up
else if POV between 4501 and 13500 ; 45 至 135 度：向右
  KeyToHoldDown = Right
else if POV between 13501 and 22500 ; 135 至 225 度：向下
  KeyToHoldDown = Down
else ; 225 至 315 度：向左
  KeyToHoldDown = Left
if KeyToHoldDown = %KeyToHoldDownPrev% ;已经按下了正确的键（或者不需要任何键）。
return ;什么也不做。
;否则，释放先前的键并且按下一个新键:
SetKeyDelay -1 ;避免击键之间的延时。
if KeyToHoldDownPrev ;先前的按键需要释放。
    Send, {%KeyToHoldDownPrev% up} ;释放它。
if KeyToHoldDown ;需要按下一个键。
    Send, {%KeyToHoldDown% down} ;按下它。
return

;; 单键映射
Joy1::F1
Joy2::F2
Joy4::F3
Joy5::F4
Joy11::F5
Joy12::F6
Joy7::F7
Joy8::F8
Joy9::F9
Joy10::F10

F8::
Send {Home}
return

; 重复3次
F4::
Click 637 963
Sleep, 100
Click 667 720
return
; 不重复
F3::
Click 631 963
Sleep, 100
Click 655 640
return

; 去除无用抬头结尾
F9::
Send {Down}
Sleep 1000
Click 271 957
Sleep, 2000
Click 58 620
Sleep, 100
Click 683 674
Sleep, 100
Click 648 740
Sleep, 100
Click 790 676
Sleep, 100
Send, {Delete}
Sleep, 100
Send, {Delete up}3
Sleep, 100
Click 914 675
Sleep, 100
Send, {Delete up}{Delete 4}3
Sleep, 100
Click 593 674
Sleep, 100
Click 904 789
Sleep, 100
Send {F7}
Sleep, 1000
Click 631 963
Sleep, 100
Click 655 640
return
