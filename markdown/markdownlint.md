前言
我们在书写代码的时候,
经常会用到eslint来约束代码规范,
这样团队开发或者后期维护都省了很多烦恼.

markdown书写时一样有这样的问题,
那么我们如何来约束markdown的书写规范呢.

今天介绍一款 vscode 的插件 markdownlint
https://github.com/DavidAnson/markdownlint

vscode 直接搜索安装插件 markdownlint
当你在vscode中书写markdown文本时,不符合规范的内容就会有黄色波浪线来提示及时修正.


语法规范提示内容

MD001 - Heading levels should only increment by one level at a time
标题级数只能每次扩大一个，也就是说不能隔级创建标题，必须h1-h2-h3...这样