call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC1N0247 31 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC1N0247 31 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC1N0247 31 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC1N0247 31 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC1N0247 31 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC1N0247 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC1N0247 nguyepha 31 