#SingleInstance force
EnvSet, hotkeyPATH, d:\sync\chwin\autohotkey\
run %hotkeyPATH%key_swich.ahk
run %hotkeyPATH%joy.ahk
run %hotkeyPATH%key_swich.ahk
run %hotkeyPATH%yaogan.ahk
run %hotkeyPATH%up_down_left_right.ahk
    ^!r::Reload  ;指定 Ctrl-Alt-R 作为重启脚本的热键。