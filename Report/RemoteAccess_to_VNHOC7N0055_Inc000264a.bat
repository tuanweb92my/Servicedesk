call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC7N0055 264 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC7N0055 264 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC7N0055 264 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC7N0055 264 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC7N0055 264 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC7N0055 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC7N0055 lenam 264 
