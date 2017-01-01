^!r::Reload  ;指定 Ctrl-Alt-R 作为重启脚本的热键
#UseHook 
#InstallKeybdHook
#HotkeyInterval 2000
#MaxHotkeysPerInterval 200
#SingleInstance force
run .\joy.ahk
run .\key_swich.ahk
run .\yaogan.ahk
run .\up_down_left_right.ahk
sleep 100
send {enter}
sleep 100
send {enter}
sleep 100
send {enter}
sleep 100
send {enter}
