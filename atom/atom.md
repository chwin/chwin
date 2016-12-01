# 配置
    ui主题和语法主题必须保持一致，否则markdown文件不能语法高亮
# 插件安装
## 必装插件
    # Atom的简体中文语言包，完整汉化，兼容所有已发布的版本Atom。
    simplified-chinese-menu
    # 光标自由切换到上一次/下一次编辑位置
    last-cursor-position
    # 同步Atom配置
    sync-settings
    # 打开文件路径自动补全
    advanced-open-file
    # 能够在计算机之间同步已经安装好的包
    Package sync
    # 提供完整的源码预浏览作用，能够定位你正在编辑的文件总貌。
    Minimap
    # 光标移到时，同时在文件总貌预览中跟随移动，从而判断你当前位于文件的哪个位置。
    Minimap cursorline
    # 显示文件类型图标
    file-icons
    # 高亮当前所选文字，双击后全文这个词或者变量都会高亮哦
    highlight-selected
    # 快捷按钮
    tool-bar
    # 写markdown快捷按钮，必须先装tool-bar才能使用
    tool-bar-markdown-writer
    # 右侧显示大纲
    symbols-tree-view
    terminal-plus
### vim插件
    # atom中开启vim模式
    vim-mode
    # 在vim模式中使用块操作
    vim-mode-visual-block
    # 在vim模式可以使用命令行
    ex-mode
    # 常规模式下的相对行号
    relative-numbers
### markdown插件
    # 可以设置显示缩进空格和参考线，提供 Github Flavored Markdown 等 MD 高亮支持
    language-markdown
    # 方便管理图片、链接等
    markdown-writer
    # 同步滚动预览
    markdown-scroll-sync
### Git/github
    merge-conflicts
    git-plus 在 Atom 里面执行 Git 命令，不用来回切换终端和编辑器
    git-control git面板
    merge-conflicts 在 Atom 里面处理合并产生冲突的文件 git提交记录
    gist-it 快速分享代码到gist.github.com
    git-time-machine 历史提交
    git-log 以图形方式显示log
    git-status 快捷键查看git状态
### 其它插件
    Remote-FTP ftp管理工具，命令和图形化界面都支持。
## 快捷键使用
    若是有其他插件和这个快捷键冲突了，在个人 keymap 里面修改。
    unset 功能，挺简单也很实用。直接取消快捷键的命令。
    'atom-text-editor':
        'alt-h':'unset!'
    这么简单的一条命令。就直接取消了；因为在 keymap 里面的设置是权重是最高的。

    ctrl + p 查找文件
    ctrl + shift + p 查找命令
    ctrl+shift+f 在整个项目中查找关键字
    alt + - 跳转到上一次修改，需要last-cursor-position插件
    alt + _ 跳转到下一次修改，需要last-cursor-position插件
    ctrl+\ 左侧边栏开关
    alt+\  文件在侧边栏和编辑区跳转
    zc或ctrl+alt+[ 折叠当前缩进
    zo或ctrl+alt+] 展开当前缩进
    zM或ctrl+alt+shift+[折叠所有缩进
    zR或ctrl+alt+shift+]展开所有缩进
    alt + 数字 切换对应窗口
    ctrl + , 打开配置窗口
    Ctrl+Shift+M    开启Markdown实时预览
    Command+Shift+P    打开命令窗口，可以运行各种菜单功能
    Command + T    快速多文件切换
    Command + F    文件内查找和替换
    Command + Shift + F    多文件查找和替换
    Command + [    对选中内容向左缩进
    Command + ]    对选中内容向右缩进
    crtl+shift+i 插入图片，在安装了markdown-preview-enhanced插件才能用
    ctrl-m 相应括号之间，html tag之间等跳转
the end

这是一个适用于 Web 开发者的 Atom 插件列表。 有了这些插件帮助， Atom 可以为我们提供类似 IDE 的功能。刚接触 Atom ?

语法支持
language-babel
ES2016、ESNext、JSX 语法扩展
language-postcss
PostCSS 语法高亮
自动补全
autocomplete-modules
模块名自动补全
autocomplete-paths
路径自动补全
atom-ternjs
ES5, ES6, ES7, Node.js, jQuery, Angular 等等 js 代码自动补全
emmet
快速手写 HTML, CSS, Sass / SCSS / LESS
语法检查
linter
基本语法检查框架
linter-jshint
基于 jshint 的 JavaScript 语法检查插件
linter-eslint
基于 ESLint 的 JavaScript 语法检查插件
版本控制
git-plus
丢掉终端，在 Atom 里面执行 Git 命令
merge-conflicts
通过 Atom 处理冲突的文件
扩展功能
file-icons
显示文件类型对应的图标
atom-beautify
代码格式化
pigments
代码颜色可视化
color-picker
取色器
highlight-selected
高亮选中
minimap
源码预览图
minimap-highlight-selected
源码预览图中高亮选中
docblockr
注释插件
markdown-preview-plus
markdown 实时预览
hyperclick
跳转到变量定义文件，需要配合 js-hyperclick 使用
js-hyperclick
跳转到变量定义文件，需要配合 hyperclick 使用
travis-ci-status
底部状态栏扩展
