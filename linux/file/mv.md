
*** mv
　　名称：mv

　　使用权限：所有使用者

　　使用方式：

　　mv [options] source dest

　　mv [options] source... directory

　　说明：将一个档案移至另一档案，或将数个档案移至另一目录。

　　参数：-i 若目的地已有同名档案，则先询问是否覆盖旧档。

　　范例：

　　将档案 aaa 更名为 bbb :

　　mv aaa bbb

　　将所有的C语言程序移至 Finished 子目录中 :

　　mv -i *.c
