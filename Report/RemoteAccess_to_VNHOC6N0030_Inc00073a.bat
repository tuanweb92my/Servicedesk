call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC6N0030 73 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC6N0030 73 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC6N0030 73 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC6N0030 73 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC6N0030 73 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC6N0030 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC6N0030 tannkuo 73 
