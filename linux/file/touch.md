
*** touch
     touch [-acdmt] 文件
参数：
-a : 仅修改access time。
-c : 仅修改时间，而不建立文件。
-d : 后面可以接日期，也可以使用 --date="日期或时间"
-m : 仅修改mtime。
-t : 后面可以接时间，格式为 [YYMMDDhhmm]


touch 当前目录有同名文件则更新三个时间

touch a 创建一个空文件

touch a b c 同时创建3个文件

touch -d "6/20/10 18:32" aa.txt 创建并修改文件时间

当前没有文件时建立新文件，已有同名文件时对当前文件更新时间。



1. 同时修改文件的修改时间和访问时间

touch -d "2010-05-31 08:10:30" test.doc



2. 只修改文件的修改时间

touch -m -d "2010-05-31 08:10:30" test.doc



3. 只修改文件的访问时间

touch -a -d "2010-05-31 08:10:30" test.doc







　　名称：touch

　　使用权限：所有使用者

　　使用方式：

　　touch [-acfm]

　　[-r reference-file] [--file=reference-file]

　　[-t MMDDhhmm[[CC]YY][.ss]]

　　[-d time] [--date=time] [--time={atime,access,use,mtime,modify}]

　　[--no-create] [--help] [--version]

　　file1 [file2 ...]

　　说明：

　　touch 指令改变档案的时间记录。 ls -l 可以显示档案的时间记录。

　　参数：

　　a 改变档案的读取时间记录。

　　m 改变档案的修改时间记录。

　　c 假如目的档案不存在，不会建立新的档案。与 --no-create 的效果一样。

　　f 不使用，是为了与其他 unix 系统的相容性而保留。

　　r 使用参考档的时间记录，与 --file 的效果一样。

　　d 设定时间与日期，可以使用各种不同的格式。

　　t 设定档案的时间记录，格式与 date 指令相同。

　　--no-create 不会建立新档案。

　　--help 列出指令格式。

　　--version 列出版本讯息。

　　范例：

　　最简单的使用方式，将档案的时候记录改为现在的时间。若档案不存在，系统会建立一个新的档案。

　　touch file

　　touch file1 file2

　　将 file 的时间记录改为 5 月 6 日 18 点 3 分，公元两千年。时间的格式可以参考 date 指令，至少需输入MMDDHHmm ，就是月日时与分。

　　touch -c -t 05061803 file

　　touch -c -t 050618032000 file

　　将 file 的时间记录改变成与 referencefile 一样。

　　touch -r referencefile file

　　将 file 的时间记录改成 5 月 6 日 18 点 3 分，公元两千年。时间可以使用 am, pm 或是 24 小时的格式，日期可以使用其他格式如 6 May 2000 。

　　touch -d "6:03pm" file

　　touch -d "05/06/2000" file

　　touch -d "6:03pm 05/06/2000" file

　　touch 也可以制造一个空档(0 byte).例如DHCP Server所需的/etc/dhcpd.leases,dhcpd 必须要有这个档案才能运作正常.[root@/root]#touch /etc/dhcpd.leases[root@/root]#ls -l /etc/dhcpd.leases-rw-r--r-- 1 root root 0 Jul 3 05:50 /etc/dhcpd.leases

　　记得上一次重灌前把/etc下的设定档tar起来，重灌好之后把原有设定还原，却发现系统检查设定档的时间有问题，这个时候用

　　find /etc -name * -exec touch {};

　　就可以把设定档的时间更新到与现在一致了。
