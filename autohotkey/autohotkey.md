[TOC]
# 应用实例
    实例1
    应用举例：快速登录163信箱
    　　1. 下载 AutoHotkey，并解压或安装。
    　　2. 建立脚本文件。把下述内容复制到文本编辑器，保存为 m163.ahk。
    run, http://mail.163.com
    WinActivate, Maxthon ;;防止窗口不激活
    winwait, 网易 ;;等待网页加载成功（至少title显示出来）
    sleep, 500 ;;保险起见，再等0.5秒（视网速）
    send, xbeta{tab}password{enter};;模拟键入用户名、密码、回车
    return
    　　3. 为m163.ahk 建立快捷方式 m163.lnk，复制到已加入path的目录，就可以了
    　　4. 现在键入：win+r m163 enter，就是不是进入163信箱了。

    补充
    　　1：如果你还想进一步偷懒，还可以让它帮你点击进入“新邮件”
    　　2：如果防止ahk中密码泄密，可以编译为exe，当然，最好让exe运行后直接退出。我目前的做法是加一句“process, close, m163.exe” 不知有无其他更好办法。
    实例2
    msgbox, 这是我的第一个AutoHotkey脚本 `n 我既关注效率，也尊重版权
    run, https://xbeta.info/autohotkey-guide.htm

::test1:: 善用佳软。ひらがな 平仮名；カタカナ 片仮名。Korean/한국어/조선말。
运行后，在任何能正常显示 unicode 字符的程序中（比如浏览器的地址栏、MS Word），键入 test1后，再加空格、或tab、或回车，就可以触发缩写，“善用佳软……”内容就上屏了。
通过这一例子，可以看到 AutoHotkey 实现常用短语（地址、邮箱、密码、网址、签名）的缩写非常方便。

 ::mail::goomood-cwin@yahoo.com.cn
    ::blog::http://blog.csdn.net/teshorse

     如果想某热键运行自己的程序，同时不影响其他程序设置该热键，那么在该热键关键字前加个符号~
    如 ~^!z::run notepad
    如此一来， 当前按下ctrl+alt+z的时候，会打开记事本，同时不会影响QQ弹出消息窗口

    sendinput 与 send 效果一样, 只是将要输入的字符串当作一个整体一次性输出, 而不像send将一个字符一个字符进行输出.
    因此, sendinput 的输出速度要比send 快得多.
    sendraw 将字符串原样输出, 就像使用剪贴板粘贴一样, 因此:
    ::cn::
        sendraw ^{space}
        return 
    输出的不是组合ctrl+space, 而是字符串"^{space}"
    
    使用send / sendInput / sendevent / sendraw 命令可以模拟用户输入
9. HotString 可以识别窗口，可以根据不同的窗口输出不同的内容
如何运行记事本并以最大化状态显示？
Run, Notepad.exe , , Max

9、如何直接打开文件？
Run, MyFile.txt

命令行解释器cmd.exe 用那个宏来表示？
%ComSpec% /k在执行完命令后保留命令提示窗口，而/c则在执行完命令之后关闭提示窗口

11、命令“dir c:/Windows/system32”如何实现？
Run, %ComSpec% /k dir c:/Windows/system32


## sd
