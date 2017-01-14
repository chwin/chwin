#SingleInstance force
IfWinNotActive ahk_class YodaoMainWndClass
    WinActivate
IfWinNotExist ahk_class YodaoMainWndClass
run "C:\Program Files (x86)\Youdao\Dict\YodaoDict.exe"


^!r::Reload  ;指定 Ctrl-Alt-R 作为重启脚本的热键。