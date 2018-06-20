call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC6N0045 173 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC6N0045 173 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC6N0045 173 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC6N0045 173 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC6N0045 173 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC6N0045 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC6N0045 kuoycha 173 
