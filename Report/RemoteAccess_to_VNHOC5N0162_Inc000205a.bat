call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC5N0162 205 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC5N0162 205 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC5N0162 205 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC5N0162 205 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC5N0162 205 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC5N0162 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC5N0162 tuvin 205 
