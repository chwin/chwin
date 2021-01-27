*** rm
        ls | grep -v ttt | xargs rm


  　名称：rm

　　使用权限：所有使用者

　　使用方式：rm [options] name...

　　说明：删除档案及目录。

　　参数：

　　-i 删除前逐一询问确认。

　　-f 即使原档案属性设为唯读，亦直接删除，无需逐一确认。

　　-r 将目录及以下之档案亦逐一删除。

　　范例：

　　删除所有C语言程序档；删除前逐一询问确认 :

　　rm -i *.c

　　将 Finished 子目录及子目录中所有档案删除 :

　　rm -r Finished
