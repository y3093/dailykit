start-service.bat 一键启nodejs服务器说明
========================================

说明
----

根据本地设置修改配置后，双击该BAT文件即可启动三个Node服务和打开测试页面。

注意事项
--------

1、windows下若需要显示中文，需将文件编码格式改为“ANSI”，否则执行时会出现中文乱码。（新建文本另存为ANSI的文本后，将dos命令复制进去，改txt的后缀为bat即可）

2、bat文件中注释为两个半角双引号“::” 。

3、需按照以下说明修改配置，即可使用。

4、包含空格的路径，用半角双引将空格包起即可

详细说明
--------

```dos

// 如果没有为NodeJS设置全局变量，请设置下方的地址为NodeJS的安装文件目录，并去掉`::`注释符号

cd C:\Program" "Files\nodejs

// 下方请设置项目服务器代码根目录

set ServerPath=E:\project\Server

// 下方请设置常用浏览器的可执行文件路径（注意包含空格的路径，用半角双引将空格包起）

set BrowserEXE=C:\Program" "Files" "(x86)\Google\Chrome\Application\chrome.exe

// 下方请设置测试HTML页面的本地路径或URL地址

set TestPath="http://localhost:7456"

// 以下为启动服务（前三行）和打开浏览器页面（最后一行）操作；前三行的变量`%%ServerPath`后面的路径为启用NodeJS服务的JS路径

start "Account Service" node %ServerPath%AccountServer\app.js

start "Hall Service" node %ServerPath%HallServer\app.js

start "Majiang Service" node %ServerPath%MahjongServer\app.js

start %BrowserEXE% %TestPath%
```
