call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC5N0161 293 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC5N0161 293 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC5N0161 293 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC5N0161 293 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC5N0161 293 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC5N0161 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC5N0161 tranan 293 
