#UseHook 
#InstallKeybdHook
#HotkeyInterval 2000
#MaxHotkeysPerInterval 200
#SingleInstance force
    ^!r::Reload  ;指定 Ctrl-Alt-R 作为重启脚本的热键。

;; 交换ctrl键
    Capslock::Lctrl
    Rctrl::Capslock

    ^`;::
    SendInput {Esc}
    return

;; 移动光标
    ;   !i::SendInput {Up}
    ;   !k::SendInput {Down}
    ;   !j::SendInput {Left}
    ;   !l::SendInput {Right}
    ;   !u::SendInput {Home}
    ;   !o::SendInput {End}
    ;   !h::SendInput {BS}
    ;   !d::SendInput {Del}

;; 快捷符号
`;::SendInput {`;}
+`;::SendInput {:}
`; & j::SendInput {)}
`; & f::SendInput {(}
`; & g::SendInput {{}
`; & h::SendInput {}}
`; & v::SendInput {=}
`; & b::SendInput {-}
`; & c::SendInput {+}
`; & x::SendInput {*}
`; & z::SendInput {\}
`; & d::SendInput {!}
`; & s::SendInput {?}
`; & r::SendInput {[}
`; & u::SendInput {]}
`; & e::SendInput {#}
`; & w::SendInput {@}