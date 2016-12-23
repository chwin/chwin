
# shell 输入模式配置
cat <<end >~/.inputrc
set editing-mode vi
set show-all-if-ambiguous on
set completion-ignore-case on
set meta-flag on
set convert-meta off
set output-meta on
set bell-style visible
"\C-l": clear-screen
"\C-n": next-history
"\C-p": previous-history
"\C-a": beginning-of-line
"\C-e": end-of-line
"\C-f": forward-char
"\C-b": backward-char
end

# ctrl 键映射
cat <<end >~/.Xmodmaprc
!
! Swap Caps_Lock and Control_L
!
remove Lock = Caps_Lock
remove Control = Control_L
keysym Control_L = Caps_Lock
keysym Caps_Lock = Control_L
add Lock = Caps_Lock
add Control = Control_L
end
echo xmodmap ~/.Xmodmaprc >> .bashrc
echo xmodmap ~/.Xmodmaprc >> .zshrc
