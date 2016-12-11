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



Joy1::F7
Joy2::F8
Joy4::F9
Joy5::F10
Joy7::F3
Joy8::F4
Joy9::F1
Joy10::F2
Joy11::F5
Joy12::F6
F6::Home
F9::
Click 637 963
Sleep, 100
Click 667 725
return

F10::
Click 631 963
Sleep, 100
Click 655 644
return

F6::
Click 285 960
Sleep, 500
Click 61 622
Sleep, 100
Click 931 675
Sleep, 100
Click 931 675
Send, 4
Sleep, 100
Click 660 684
Sleep, 100
Click 647 740
Sleep, 100
Click 591 673
Sleep, 100
Click 899 789
Sleep, 100
return




SetCapsLockState , AlwaysOff
Capslock::Ctrl
Rctrl::Capslock

;; 移动光标

    !i::SendInput {Up}
    !k::SendInput {Down}
    !j::SendInput {Left}
    !l::SendInput {Right}
    !u::SendInput {Home}
    !o::SendInput {End}
    !h::SendInput {BS}
    !d::SendInput {Del}

;; 快捷符号
    '::SendInput {'}
    +'::SendInput {"}
    ' & j::SendInput {)}
    ' & f::SendInput {(}
    ' & g::SendInput {{}
    ' & h::SendInput {}}
    ' & v::SendInput {=}
    ' & b::SendInput {-}
    ' & c::SendInput {+}
    ' & x::SendInput {*}
    ' & z::SendInput {\}
    ' & d::SendInput {!}

    ' & s::SendInput {?}

    ' & r::SendInput {[}

    ' & u::SendInput {]}

    ' & e::SendInput {#}

    ' & w::SendInput {@}
