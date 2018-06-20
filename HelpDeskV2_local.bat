ping a-live.adidas-group.com  | findstr /r /c:"Reply from 10.126.218.69"

if %errorlevel% == 0 (
   c:\Helpdesk\I_Need_Remote_Assistant_local.bat
) else (
   c:\Helpdesk\I_Need_Remote_Assistant_local_outside.bat
)




