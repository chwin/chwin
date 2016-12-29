#IfWinNotActive,emacs
^n::Send {Down Down}
^p::Send {Up Down}
^b::Send {Left Down}
^e::Send {End Down}
^a::Send {Home Down}
!v::Send {PgUp Down}
^d::Send {Del Down}
^g::Send {Esc}

;; The following are conflicted with the
;; default Windows' style
^f::Send {Right Down} ; Default ^f is search, it's replace by ^s
^v::Send {PgDn Down}

^y::
if WinActive("ahk_class MozillaUIWindowClass")
        Send ^y
else
        Send ^v
return

!w::
if WinActive("ahk_class MozillaUIWindowClass")
        Send !w
else
        Send ^c
return

^s:: ; Deault ^s is save, now replace by !s
if WinActive("ahk_class MozillaUIWindowClass")
        Send ^s
else
        Send ^f
return

!s::
if WinActive("ahk_class MozillaUIWindowClass")
        Send !s
else
        Send ^s
return

^w::
if WinActive("ahk_class MozillaUIWindowClass")
        Send ^w
else
        Send ^x
return

#IfWinActive
