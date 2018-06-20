call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC3N0038 64 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC3N0038 64 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC3N0038 64 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC3N0038 64 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC3N0038 64 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC3N0038 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC3N0038 nguyeson 64 
