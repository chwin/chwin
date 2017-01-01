
根本就不需要用到runtc.exe这个执行文件
只要创建一个TOTALCMD.EXE快捷方式
然后修改快捷方式目标这一项里面的参数就行了
比如我的安装目录是D:\Program Files\TotalCmd\
快捷方式里面的目标这一项的设置为
"D:\Program Files\TotalCmd\TOTALCMD.EXE" /I=".\wincmd.ini" /F=".\wcx_ftp.ini"
这样执行这个快捷方式就可以制定配置文件在TC安装目录了
另外在这里还有其他参数可以设置
 