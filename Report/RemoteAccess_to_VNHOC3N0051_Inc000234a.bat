call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC3N0051 234 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC3N0051 234 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC3N0051 234 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC3N0051 234 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC3N0051 234 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC3N0051 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC3N0051 tranngo 234 
