* emacs
** 李杀配置
*** init文件
    (add-to-list 'load-path "~/.emacs.d/ergoemacs-mode")
    (require 'ergoemacs-mode)

    (setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
    (setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
    (ergoemacs-mode 1)
*** 安装
    cd ~/.emacs.d
    git clone -b master --single-branch https://github.com/ergoemacs/ergoemacs-mode.git
** org-mode
*** 基本操作

    |----------------+-----------------------------------------------------------------|
    | <TAB>          | 对当前结点进行切换：收缩→查看所有子结点→查看所有内容          |
    | <SHIFT>-<TAB>  | 对当前文件进行切换：收缩→查看所有子结点→查看所有内容          |
    | M-<ENTER>      | 插入一个同级别的标题                                            |
    | M-S-<ENTER>    | 插入一个同级别的TODO标题                                        |
    | M-LEFT/RIGHT   | 将当前标题升/降级                                               |
    | M-S-LEFT/RIGHT | 将子树升/降级                                                   |
    | M-UP/DOWN      | 将当前标题上移/下移                                             |
    | M-S-UP/DOWN    | 将子树上/下移动                                                 |
    | C-c C-n        | 移动到下一个标题                                                |
    | C-c C-p        | 移动到上一个标题                                                |
    | C-c C-f        | 移动到和当前标题同等级的下一个标题                              |
    | C-c C-b        | 移动到和当前标题同等级的上一个标题                              |
    | C-c C-u        | 向上移动到更高一层的标题                                        |
    | C-c C-w        | 将子树或者区域移动到另一个标题处（跨缓冲区）                    |
    |----------------+-----------------------------------------------------------------|
    | C-c C-t        | 切换当前结点的状态                                              |
    | C-c [          | 将当前文件设置为事件视图的数据源                                |
    | C-c ]          | 从事件视力的数据源中删除当前文件（数据源）                      |
    | C-c *          | 将本行设为标题或者正文                                          |
    | C-c C-x b      | 在新缓冲区显示当前分支                                          |
    | C-c /          | 只列出包含搜索结果的大纲，并高亮，支持多种搜索方式              |
    | C-c l          | 创建一个跳转目标点                                              |
    | C-c C-o        | 访问链接                                                        |
    | C-c %          | 可以记录当前光标所在位置                                        |
    | C-c &          | 跳转回来记录光标位置                                            |
    | C-c C-e        | 可以导出成各种格式，包括自动用latex生成pdf，这个功能部分取代lyx |
    | C-c .          | 在光标位置插入时间                                              |
    |----------------+-----------------------------------------------------------------|
    | C-c 竖线       | 创建或者转化成表格                                              |
    | C-c C-c        | 调整表格，不移动光标                                            |
    | TAB            | 移动到下一区域，必要时新建一行                                  |
    | S-TAB          | 移动到上一区域                                                  |
    | RET            | 移动到下一行，必要时新建一行                                    |
    | M-LEFT/RIGHT   | 移动列                                                          |
    | M-UP/DOWN      | 移动行                                                          |
    | M-S-LEFT/RIGHT | 删除/插入列                                                     |
    | M-S-UP/DOWN    | 删除/插入行                                                     |
    | C-c -          | 添加水平分割线                                                  |
    | C-c RET        | 添加水平分割线并跳到下一行                                      |
    | C-c ^          | 根据当前列排序，可以选择排序方式                                |
    |----------------+-----------------------------------------------------------------|

*** 格式导出与发布
**** 导出
     |-----------+------------------|
     | C-c C-e a | 导出为文本文件。 |
     | C-c C-e h | 导出为 HTML 文件 |
     |-----------+------------------|

**** 发布
     |-----------+------------------------------------|
     | C-c C-e C | 提示指明一个项目，将所有的文件发布 |
     | C-c C-e P | 发布包含当前文件的项目             |
     | C-c C-e F | 只发布当前文件                     |
     | C-c C-e E | 发布所有项目                       |
     |-----------+------------------------------------|

*粗体*
/斜体/
+删除线+
_下划线_
下标： H_2 O(这里必须留一个空格要不然2和O都成为小标，目前还不知道怎么去掉空格)
上标： E=mc^2
等宽字：  =git=

** 高手配置

   bbatsov/prelude · GitHub 　这个配置可以说是实现了emacs的又一个发行版。
   purcell/emacs.d · GitHub 　注重于web编程的世界级配置。
   eschulte/emacs24-starter-kit · GitHub 一个emacs完全入门的emacs配置，这是一个奇特的文学工程，也就是说把配置文件巧妙地放进了教程当中，学习emacs的顶级配置。
   xiaohanyu/oh-my-emacs · GitHub 他的作者是中国人，但是github的fork数目确很可观，是一个世界级配置，他继承了前面的prelude和emacs24-starter-kit的优点，然后加入了更多的功能，比如python语言的elpy终极配置，c语言的clang补全。
   redguardtoo/emacs.d · GitHub 这款配置的作者是 @陈斌， emacs绝对高手，他的配置在几年前fork自purcell的配置，然后多年来自己调教，非常优秀。

** 配置文件
*** 包管理
**** 配置包服务器
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
**** 包管理命令
     M-x ielm 打开Emacs Lisp交互解释器
    | M-x list-packages | 调用包管理                             |
    | C-s packname      | 搜索一个包                             |
    | <Enter>           | 查看包信息                             |
    | i                 | 标记安装包                             |
    | u                 | 撤销标记包                             |
    | d                 | 标记删除包                             |
    | x                 | 执行安装标记包                         |
    | r                 | 刷新包服务器列表                       |
    | U                 | 标记所有序号更新的包                   |
    | C-h m             | describe-mode  显示所有包命令（C-h m） |
    | C-h f             | describe-function                      |
    | C-h v             | describe-variable                      |
    |                   | locate-library 查找本地包              |
    |                   |                                        |
*** 不重动 Emacs 让 .emacs 配置文件生效
    有四个函数可以做到：eval-last-sexp,eval-region,eval-buffer 和load-file
    M-x eval-last-sexp 使.emacs中光标前的那一条语句立刻生效。
    M-x eval-region 使.emacs中选中的region中的语句立刻生效。
    M-x eval-buffer 使当前的buffer中的设置语句立刻生效。
    M-x load-file ~/.emacs 载入.emacs文件，从而使其中的设置生效。

    M-x sort-lines 排序选中行。
    M-x dig
    M-x ifconfig
    M-x ping
    M-x telnet
    M-z 删除到某个字符，同Vim的 df
    C-u M-! date 插入当前时间

*** 光标移动
    (global-set-key (kbd "C-w") 'previous-line) ;; 上
    (global-set-key (kbd "C-s") 'next-line) ;;下
    (global-set-key (kbd "C-a") 'backward-char) ;; 左
    (global-set-key (kbd "C-d") 'forward-char) ;;右
    (global-set-key (kbd "C-q") 'move-beginning-of-line) ;;行首
    (global-set-key (kbd "C-e") 'move-end-of-line) ;;行尾
    (global-set-key (kbd "M-w") 'scroll-down) ;;上翻页
    (global-set-key (kbd "M-s") 'scroll-up) ;;下翻页
    ;(global-set-key (kbd "C-x e") 'beginning-of-buffer) ;;文件首
    ;(global-set-key (kbd "C-x d") 'end-of-buffer) ;;文件尾
    (global-set-key (kbd "C-f") 'delete-char) ;;删除字符
    (global-set-key (kbd "M-f") 'kill-line) ;;删除行
    ;(global-set-key (kbd "C-x") 'kill-region) ;;剪切
    (global-set-key (kbd "C-c") 'kill-ring-save) ;;复制
    (global-set-key (kbd "C-v") 'yank) ;;粘贴
    (global-set-key (kbd "M-g") 'undo) ;;重做
    (global-set-key (kbd "M-,") 'execute-extended-command)
*** 设置启动窗口初始位置大小
    ;;设置窗口位置为屏库左上角(0,0)
    (set-frame-position (selected-frame) 0 0)
    ;;设置宽和高
    (set-frame-width (selected-frame) 110)
    (set-frame-height (selected-frame) 33)
****
M-x load-file ~/.emacs




(setq org-hide-leading-stars t)
;; (define-key global-map "\C-c a" 'org-agenda)
 (setq org-log-done 'time)


(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)
(setq x-select-enable-clipboard t);允许emacs和外部其他程序的粘贴

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)

;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; 大纲模式自动缩进
(setq org-startup-indented t)

;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


;; 显示时间设置
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
(setq display-time-interval 10);;时间的变化频率，单位多少来着？

;;设置打开文件的缺省路径，这里为桌面，默认的路径为“～/”
(setq default-directory "d:/chwin/")

;;防止页面滚动时跳动，
;;=================================
;;scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动
;;scroll-step 1 设置为每次翻滚一行，可以使页面更连续
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)

;; =================================
;; 取消工具栏
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; =================================
;; 设置字体
;; Setting English Font
(set-face-attribute
  'default nil :font "Consolas 14")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :size 16)))

;; =================================
;; 设置当前行注解
(defun qiang-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
If no region is selected and current line is not blank and we are not at the end of the line,
then comment current line.
Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
    (global-set-key "\M-;" 'qiang-comment-dwim-line)
*** 基本设置
;; =================================
;; 去除启动欢迎页面
(setq inhibit-startup-message t)
;; =================================
;; 显示行号
(global-linum-mode t)
;; 显示列号
(setq column-number-mode t)
;; =================================
;;关闭备份文件#xxx#
(setq auto-save-default nil)
;; =================================
;;关闭烦人的出错时的提示声
(setq visible-bell t)
;; =================================
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no
(fset 'yes-or-no-p 'y-or-n-p)
;; =================================
;;可以将备份文件全部放到~/.backups目录下。
(setq backup-directory-alist (quote (("." . "~/.backups"))))
再介绍下恢复文件，一般"#youfile #"就是你上次未保存(或者意外死机没保存)的文件内容，打开原文件emacs会提示你可以自动恢复文件，
M-x recover-file <RET> 文件名 <RET>
yes <RET>
C-x C-s
;; =================================
;; =================================
;; =================================
*** 快捷键绑定
(global-set-key [M-f1] 'shell);F1进入Shell
(global-set-key [M-f2] 'python-shell);F2进入Python-Shell
;(global-set-key (kbd "C-`") 'eval-buffer);配置文件生效
;(global-set-key [f5] 'gdb);F5调试程序
;(setq compile-command "make -f Makefile")
;(global-set-key [f7] 'do-compile);F7编译文件
;(global-set-key [f3] 'other-window);F3窗口间跳转
;(global-set-key [f4] 'delete-other-windows);F4 关闭其它窗口
;(global-set-key [C-return] 'kill-this-buffer);C-return关闭当前buffer
;(global-set-key [f1] 'split-window-vertically);F1分割窗口
;(global-set-key (kbd "C-,") 'backward-page);文件首
;(global-set-key (kbd "C-.") 'forward-page);文件尾
*** 文字跳转
;; C-t	文字跳转  通过这个，我们可以通过 C-t 加上指定字符向后跳，后者 C-u C-t 向前跳。比如C-t w w w w …就一直往后跳到后续的w处。类似于Vim中的fw;;;…
(defun my-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `my-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (let ((case-fold-search nil))
    (if (eq n 1)
        (progn                            ; forward
          (search-forward (string char) nil nil n)
          (backward-char)
          (while (equal (read-key)
                        char)
            (forward-char)
            (search-forward (string char) nil nil n)
            (backward-char)))
      (progn                              ; backward
        (search-backward (string char) nil nil )
        (while (equal (read-key)
                      char)
          (search-backward (string char) nil nil )))))
  (setq unread-command-events (list last-input-event)))
  (global-set-key (kbd "C-t") 'my-go-to-char)
** 基本操作
*** 移动

    |-----------+--------------------|
    | M-g M-g 5 | 跳转到第五行       |
    | C-b       | 前一个字符         |
    | C-f       | 后一个字符         |
    | C-p       | 上一行             |
    | C-n       | 下一行             |
    | M-f       | 后一个单词         |
    | M-b       | 前一个单词         |
    | C-a       | 行首               |
    | C-e       | 行尾               |
    | M-a       | 移动到句首         |
    | M-e       | 移动到句尾         |
    | C-v       | 向下翻一页         |
    | M-v       | 向上翻一页         |
    | C-l       | 上、中、下切换屏幕 |
    | M-{       | 段落开头           |
    | M-}       | 段落结尾           |
    | M-<       | 到文件开头         |
    | M->       | 到文件末尾         |
    |-----------+--------------------|

    M-a 左移
    M-d 右移
    M-w 上移
    M-s 下移
    M-e 行首
    M-q 行尾
    C-a 左移词
    C-d 右移词
    C-w 上翻页
    C-s 下翻页
    C-e 句首
    C-q 句尾
    C-M-e 段首
    C-M-q 段尾
    M-S-e 文件首
    M-S-q 文件尾

    M-1 只显示主窗口
    M-2 上下分割窗口
    M-3 左右分割窗口
    M-4 关闭窗口
    M-` 跳转窗口

*** 文本编辑
| M-n/C-u n | 重复执行后一个命令n次                      |
| C-d       | 删除后一个字符                             |
| M-d       | 删除后一个单词                             |
| Del       | 删除前一个字符                             |
| M-Del     | 删除前一个单词                             |
| C-k       | 移除一行                                   |
| M-k       | 移除一句                                   |
| C-<SPC>   | 设定标志位(主要是为了粘贴剪切以及删除使用) |
| M-h       | 标记一个段落                               |
| C-x h     | 标记整个缓冲区                             |
| C-x C-x   | 交换插入点和文本标记位置                   |
| C-w       | 移除标记区域的内容（剪切）                 |
| M-w       | 复制标记区域的内容（复制）                 |
| C-y       | 召回(yank)复制/移除的区域/行（粘贴）       |
| M-y       | 召回更早的内容 (在kill缓冲区内循环)        |
| C-t       | 交换两个字符的位置                         |
| M-t       | 交换两个单词的位置                         |
| C-x C-t   | 交换两行的位置                             |
| M-u       | 使从光标位置到单词结尾处的字母变成大写     |
| M-l       | 与M-u相反                                  |
| M-c       | 使从光标位置开始的单词的首字母变为大写     |

C-r 移除一行
M-r 移除一句
C-f 剪切
M-f 复制
C-v 召回
M-v 召回更早的内容
M-z 撤销

*** 窗口命令
C-x 0    关闭窗格
C-x 1    关闭除了光标所在窗格外所有窗格
C-x 2    水平分割窗格
C-x 3    垂直分割窗格
C-x o    切换至其他窗格
C-x C-b    列出所有缓冲区
C-x b      切换缓冲区
C-x s      保存多个缓冲区

C-x     字符扩展。  C-x 之后输入另一个字符或者组合键。
M-x     命令名扩展。M-x 之后输入一个命令名。
C-z     挂起（windows下最小化，linux下后台挂起fg激活）

M-x recover 恢复自动保存的文件
M-x auto-fill-mode 开启自动折行辅模式（再次运行命令关闭自动折行）
C-u 100 C-x f  设置行边界为100个字符
M-q            手动折行
C-s            向前搜索
C-s C-s        重复刚才的查找操作
C-s C-w           递增查找，光标位置的单词用作查找字符串
C-s C-y           递增查找，光标位置到行尾用作查找字符串
C-s M-y           递增查找，删除环中的字符用作查找字符串
C-r            向后搜索
C-r C-r           重复刚才的查找造作
M-%            查找替换（逐步提示）
M-x replace-string  查找替换光标所在行以下所有内容，无需提示
C-M-v          向上滚动下面窗口
C-M-S-v        向下滚动下面窗口
C-x o          跳转到其他窗口
C-x 4 C-f      在新窗口中新建一个文件

C-x (  录制宏
C-x )  结束录制
C-x e  调用宏
M-x name   调用保存的宏
C-u C-x (  宏尾部追加宏内容
M-x name-last-kbd-macro 保存宏

M-x insert-kbd-macro 将宏代码插入到文件
M-n M-x  jjjjjj

快捷键设想
移动项
C-e    上
C-s    下
C-a    左
C-d    右
C-q    行首
C-e    行尾
C-r    上一页
C-f    下一页
C-S-r  文件首
C-S-f  文件尾
C-z    撤销
C-x    剪切
C-c    复制
C-v    粘贴
M-x    替换（C-x）
M->    替换（M-x）
ESC    取消命令

编辑项目
C-w    剪切到行首
C-r    剪切到行尾
C-w    文件首
C-s    文件尾
C-a    上移一个单词
C-d    下移一个单词
C-r
C-f
C-SPC 设定选区
C-z 撤销
S-SPC
M-1
M-2
M-3
M-4
M-5
M-6
M-`
tab 代替ctrl-x  两下tab缩进
ESC 3 执行三次下一个命令
M-` 重新执行刚才的命令（C-u)
C-x ** 执行一个其他命令

*** 柜型编辑
| C-x r k | 剪切一个矩形块                   |
| C-x r y | 粘贴一个矩形块                   |
| C-x r o | 插入一个矩形块                   |
| C-x r c | 清除一个矩形块(使其变成空白)     |
| C-x r t | 在选定区域的所有列前插入样的字符 |

C-g     取消当前命令
C-/     撤销命令
C-u     命令执行次数（默认4次）
    C-u 8 C-f   向前移动8个字符
    C-u 8 *     输入8个星号
C-x z 重复上一条命令。可以一直按 z 不断执行，非常方便！
*** 帮助
    键盘操作 　　命令名称 　　回答的问题
    C-h c 　　describe-key-briefly 　　这个按键组合将运行哪个命令
    C-h k 　　describe-key 　　这个按键组合将运行哪个命令？这个命令的作用是什么
    C-h l 　　view-lossage 　　最近输入的100个字符是什么
    C-h w 　　where-is 　　这个命令的按键绑定是什么
    C-h f 　　describe-function 　　这个函数的作用是什么
    C-h v 　　describe-variable 　　这个变量的含义是什么？它有哪些可取值
    C-h m 　　describe-mode 　　查看当前编辑缓冲区所在编辑模式的有关资料
    C-h b 　　describe-bindings 　　这个缓冲区都有哪些按键绑定
    C-h s 　　describe-syntax 　　这个编辑缓冲区使用的是哪个语法表
    C-h i 　　info 　　启动文档阅读器Info程序
    C-h C-f  Info-goto-emacs-command-node 　　启动文档阅读器Info程序，并前进到指定的结点；这个帮助命令的参数是一个命令名
    C-h C-k  Info-goto-emacs-key-command-node 　　启动文档阅读器Info程序，并前进到指定的结点；这个帮助命令的参数是对应于某个命令的按键组合
    C-h p 　　finder-by-keyword 　　沿着这个命令弹出的菜单可以查到关于安装在本系统上的Emacs LISP程序包资料
*** 文件操作
    C-x C-f    打开/新建一个文件
    C-x C-s    保存文件
    C-x C-w    另存为文件
    C-x C-v    关闭当前缓冲区文件并打开新文件
    C-x i      在当前光标处插入文件
    C-x b      新建/切换缓冲区
    C-x C-b    显示缓冲区列表
    C-x k      关闭当前缓冲区
    C-x C-c    关闭e

** emacs 命令速查
http://www.linuxidc.com/Linux/2012-08/68300.htm
http://blog.csdn.net/shuxiao9058/article/details/7420342
http://www.educity.cn/linux/1606885.html
