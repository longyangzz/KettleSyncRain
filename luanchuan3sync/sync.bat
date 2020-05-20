@echo off 

　　if "%1" == "h" goto begin 

　　mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 

　　:begin 
E:\ETLDCLW\data-integration\kitchen /file:E:\ETLDCLW\work\shangzhi14sync\sync3.kjb /level:Detailed>>MySYNCTest.log