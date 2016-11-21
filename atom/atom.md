# 配置
## 插件安装
### vim插件
    vim-mode:atom中开启vim模式
    vim-mode-visual-block:在vim模式中使用块操作
    ex-mode:在vim模式可以使用命令行
### markdown插件
    simplified-chinese-menu: Atom的简体中文语言包，完整汉化，兼容所有已发布的版本Atom。
    markdown-preview：编辑实时预览插件，Atom 官方出品
    markdown-scroll-sync：将 markdown-preview 的编辑区和预览区同步滚动
    markdown-writer：方便管理图片、链接等
    markdown-table-formatter：格式化表格
    markdown-folder:折叠标题
    language-markdown：可以设置显示缩进空格和参考线，提供 Github Flavored Markdown 等 MD 高亮支持
### Git/github
    git-plus—在 Atom 里面执行 Git 命令，不用来回切换终端和编辑器
    git-control—git面板
    tree-view-git-status—文件夹git状态
    gist-it—快速分享代码到gist.github.com
    git-log 图形化
    merge-conflicts 在 Atom 里面处理合并产生冲突的文件 git提交记录
### 其它插件
    git-plus:在 Atom 里面执行 Git 命令，不用来回切换终端和编辑器。
    sync-settings:同步Atom配置
    Remote-FTP ftp管理工具，命令和图形化界面都支持。
    last-cursor-position 光标自由切换到上一次/下一次编辑位置minimap:代码缩略图
## 快捷键使用
    若是有其他插件和这个快捷键冲突了，在个人 keymap 里面修改。
    unset 功能，挺简单也很实用。直接取消快捷键的命令。
    'atom-text-editor':
        'alt-h':'unset!'
    这么简单的一条命令。就直接取消了；因为在 keymap 里面的设置是权重是最高的。

    zc或ctrl+alt+[ 折叠当前缩进
    zo或ctrl+alt+] 展开当前缩进
    zM或ctrl+alt+shift+[折叠所有缩进
    zR或ctrl+alt+shift+]展开所有缩进
    alt + 数字 切换对应窗口
    alt + \  目录树与文件之间切换
    ctrl + p 查找文件
    ctrl + , 打开配置窗口
    ctrl + shift + m  # markdown文件预览
    Crtl+Shift+M    开启Markdown实时预览
    Command+Shift+P    打开命令窗口，可以运行各种菜单功能
    Command + T    快速多文件切换
    Command + F    文件内查找和替换
    Command + Shift + F    多文件查找和替换
    Command + [    对选中内容向左缩进
    Command + ]    对选中内容向右缩进
    crtl+shift+i 插入图片，在安装了markdown-preview-enhanced插件才能用
