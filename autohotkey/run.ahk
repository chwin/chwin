; 快捷打开chrome
!c::
	DetectHiddenWindows, on
	IfWinNotExist ahk_class Chrome_WidgetWin_1
		Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
	Else
		IfWinNotActive ahk_class Chrome_WidgetWin_1
		WinActivate
	Else
		WinMinimize
Return
; 快捷打开aboboo
!a::
	DetectHiddenWindows, on
	IfWinNotExist ahk_class TfMain
		Run D:\setup\aboboo\Aboboo.Portable.2.8.3\aboboo.exe
	Else
		IfWinNotActive ahk_class TfMain
		WinActivate
	Else
		WinMinimize
Return
; 快捷打开total commander
!t::
	DetectHiddenWindows, on
	IfWinNotExist ahk_class TTOTAL_CMD
		Run D:\tc\TOTALCMD64.EXE
	Else
		IfWinNotActive ahk_class TTOTAL_CMD
		WinActivate
	Else
		WinMinimize
Return
