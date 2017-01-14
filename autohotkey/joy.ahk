#SingleInstance force
;; 单键映射
    Joy1::F1
    Joy2::F2
    Joy4::F3
    Joy5::F4
    Joy11::F5
    Joy12::F6
    Joy7::F7
    Joy8::send {Home}
    Joy9::F9
    Joy10::F10
; 重复3次
    F4::
    IfWinNotExist ahk_class TfMainForm
    OPEN_ABOBOO()
    Else IfWinNotActive ahk_class TfMainForm
    {
        WinActivate
        fudu3()
    }
    Else
    fudu3()
    return
; 不重复
F3::
    IfWinNotExist ahk_class TfMainForm
        OPEN_ABOBOO()
    Else IfWinNotActive ahk_class TfMainForm
    {
        WinActivate
        fudu1()
    }
    Else
        fudu1()
    return

OPEN_ABOBOO()
{
    Run d:\sync\setup\aboboo\Aboboo.Portable.2.8.3\aboboo.exe
    Sleep, 5000
    WinMaximize ahk_class TfMainForm
    Sleep, 2500
    Click 395 45
    Sleep, 2500
    Click 272 36
}

fudu3()
{
    Click 586 963
    Sleep, 100
    Click 586 775
}

fudu1()
{
    Sleep, 100
    Click 586 963
    Sleep, 100
    Click 586 640
}