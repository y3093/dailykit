::--- Using command below when you haven't set global variable of nodejs's path.
:: cd C:\Program" "Files\nodejs\

::--- Please set the root path of KuaiWanMahjongServer project
set ServerPath=E:\project\KuaiWanMahjongServer\

::--- Browser's exe file
set BrowserEXE=C:\Program" "Files" "(x86)\Google\Chrome\Application\chrome.exe

::--- URL of Testing html page. such as: "E:\project\index.html" or "http://localhost:7456"
set TestPath="http://localhost:7456"

::--- Start node services
start "Account Service" node  %ServerPath%AccountServer\app.js
start "Hall Service" node %ServerPath%HallServer\app.js
start "Mahjong Service" node %ServerPath%MahjongServer\app.js

:: If you needn't open test page, ignoring command below.
start %BrowserEXE% %TestPath%
