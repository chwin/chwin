msgbox chwin
#HotkeyInterval 2000
#MaxHotkeysPerInterval 2000
#SingleInstance force

SetCapsLockState, AlwaysOff ; 一直关闭caps lock键
SetStoreCapslockMode, off
;; 交换ctrl键
    Capslock::Lctrl
    Lctrl::Capslock
;; 改变ESC键位置
    ^[::
        SendInput {Esc}
    return

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
^!r::Reload  ;指定 Ctrl-Alt-R 作为重启脚本的热键。



;; 移动光标
    ;   !i::SendInput {Up}
    ;   !k::SendInput {Down}
    ;   !j::SendInput {Left}
    ;   !l::SendInput {Right}
    ;   !u::SendInput {Home}
    ;   !o::SendInput {End}
    ;   !h::SendInput {BS}
    ;   !d::SendInput {Del}

