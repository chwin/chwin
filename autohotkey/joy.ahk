#SingleInstance force
;; 摇杆
    #Persistent ;保持脚本运行，直到用户明确地退出。
    SetTimer, WatchAxis, 5
    return

    WatchAxis:
    GetKeyState, JoyZ, JoyZ ;得到 x 轴的坐标。
    GetKeyState, JoyR, JoyR ;得到 y 轴的坐标。
    KeyToHoldDownPrev = %KeyToHoldDown% ; Prev 现在保存了先前按下的按键（如果有的话）。

    if JoyZ > 70
      KeyToHoldDown = Right
    else if JoyZ < 30
      KeyToHoldDown = Left
    else if JoyR > 70
      KeyToHoldDown = Down
    else if JoyR < 30
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
;; 跳转到句首
    F8::
    Send {Home}
    return
; 重复3次
    F4::
    DetectHiddenWindows, on
    IfWinNotExist ahk_class TfMainForm
    {
    	Run D:\setup\aboboo\Aboboo.Portable.2.8.3\aboboo.exe
        Sleep, 5000
        Click 1132 18
        Sleep, 1000
        Click 276 18
        Sleep, 1000
        Click 185 26
    }
    Else
    {
        IfWinNotActive ahk_class TfMainForm
        {
            WinActivate
            Sleep, 100
            Click 386 963
            Sleep, 100
            Click 386 840
        }
        Else
        {
            Click 386 963
            Sleep, 100
            Click 386 840
        }
    }
    return
; 不重复
F3::
DetectHiddenWindows, on
IfWinNotExist ahk_class TfMainForm
{
	Run D:\setup\aboboo\Aboboo.Portable.2.8.3\aboboo.exe
    Sleep, 5000
    Click 1132 18
    Sleep, 1000
    Click 276 18
    Sleep, 1000
    Click 185 26
}
Else
{
    IfWinNotActive ahk_class TfMainForm
    {
    WinActivate
    Sleep, 100
    Click 386 963
    Sleep, 100
    Click 386 753
    }
    Else
    {
    Sleep, 100
    Click 386 963
    Sleep, 100
    Click 386 753
    }
}
return
; 去除无用抬头结尾
    `::
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
