cp aa bb cc /root
cp -v  显示详细信息
cp /dev/cdrom rhel4-1.iso
cp -R 递归复制整个目录和子目录
cp -r 会把所有source当作普通文件（regular文件）；而cp -r 对特殊文件（管道文件，块设备文件，字符设备文件）会进行创建操作，而不是拷贝。

cp -f 强制复制并覆盖已有的文件，不询问用户

cp -l 链接文件，而不是复制;见下面的说明
cp -u 更新备份文件


cp -p 复制时保持文件权限

cp /dev/cdrom mycd.iso & 后台制作光盘镜像

        -b 同名,备分原来的文件
        -f 强制覆盖同名文件
        -r 按递归方式保留原目录结构复制文件

cp some_file_name{,.bkp}      快速创建一个文件的备份（扩展名是.bkp）











名称：cp

使用权限：所有使用者

使用方式：

cp [options] source dest

cp [options] source... directory

说明：将一个档案拷贝至另一档案，或将数个档案拷贝至另一目录。

参数：

-a 尽可能将档案状态、权限等资料都照原状予以复制。

-r 若 source 中含有目录名，则将目录下之档案亦皆依序拷贝至目的地。

-f 若目的地已经有相同档名的档案存在，则在复制前先予以删除再行复制。

范例：

将档案 aaa 复制(已存在)，并命名为 bbb :

cp aaa bbb

将所有的C语言程序拷贝至 Finished 子目录中 :

cp *.c Finished
