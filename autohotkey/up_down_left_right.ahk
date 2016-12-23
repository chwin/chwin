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
