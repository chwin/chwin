#SingleInstance force
`::
clipboard = ;首先清空剪贴板，使 ClipWait 命令能检测到文本何时被复制到了剪贴板中。
Send ^c
ClipWait 2 ;等待文本被复制到剪贴板中。
run open_youdao()
send %clipboard%
return
open_youdao()
{
    IfWinNotExist ahk_class YodaoMainWndClass
        run "C:\Program Files (x86)\Youdao\Dict\YodaoDict.exe"
    Else
        IfWinNotActive ahk_class TfMainForm
        WinActivate
}
^!r::Reload  ;指定 Ctrl-Alt-R 作为重启脚本的热键。