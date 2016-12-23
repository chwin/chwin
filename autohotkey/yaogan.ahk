#Persistent ;保持脚本运行，直到用户明确地退出。
SetTimer, WatchAxis, 5
return

WatchAxis:
GetKeyState, JoyX, JoyX ;得到 x 轴的坐标。
GetKeyState, JoyY, JoyY ;得到 y 轴的坐标。
KeyToHoldDownPrev = %KeyToHoldDown% ; Prev 现在保存了先前按下的按键（如果有的话）。

if JoyX > 70
  KeyToHoldDown = Right
else if JoyX < 30
  KeyToHoldDown = Left
else if JoyY > 70
  KeyToHoldDown = Down
else if JoyY < 30
  KeyToHoldDown = Up
else
  KeyToHoldDown =

if KeyToHoldDown = %KeyToHoldDownPrev% ;已经按下了正确的按键（或不需要按键）。
  return ;什么也不做。

;否则，松开先前的按键并按下一个新键：
SetKeyDelay -1 ;避免击键之间的延时。
if KeyToHoldDownPrev ;先前的按键需要松开。
  Send, {%KeyToHoldDownPrev% up} ;松开它。
if KeyToHoldDown ;要按下一个键。
  Send, {%KeyToHoldDown% down} ;按下它。
return
