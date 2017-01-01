# vscode

-------------------- 
GITHUB TOKEN: ad003e7e55ebc63b3aa3350d2bad8d28358f936f 
GITHUB GIST: 5556d203d67a21a67caf98d2071b0867 
GITHUB GIST TYPE: Secret 
 
-------------------- 
# atom


# adsl
900000295422
z2d6g8b8


# 小米路由开启远程ssh
进行修改  /etc/config/firewall  文件，在最后面添加几行。
# port redirect of remapped ssh port (22001) on wan
config redirect 'myssh'
    option src              wan
    option src_dport        22001
    option dest             lan
    option dest_port        22
    option proto            tcp

然后重启一下firewall就可以实现外网访问ssh了。
/etc/init.d/firewall    restart