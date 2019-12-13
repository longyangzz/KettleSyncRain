@echo off 

　　if "%1" == "h" goto begin 

　　mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 

　　:begin 
D:\数据同步程序\data-integration\Carte.bat 192.168.15.133 8082