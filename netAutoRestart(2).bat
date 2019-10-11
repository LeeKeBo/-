@echo off
if "%1"=="h" goto begin
start mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin
chcp 437
:loop
call:sleep 1000

ping /n 1 www.baidu.com | find "Request timed out" || goto run
curl -s -d "DDDDD=free1" -d "upass=szu123456" -d "0MKKey=" drcom.szu.edu.cn >test.txt
goto loop
:run
echo yes
goto loop
:sleep
set tmp="%temp%\tmp.vbs"
echo wscript.sleep %1>%tmp%&%tmp%&del %tmp%
goto :eof