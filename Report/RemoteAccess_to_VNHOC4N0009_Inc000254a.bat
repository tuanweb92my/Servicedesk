call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC4N0009 254 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC4N0009 254 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC4N0009 254 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC4N0009 254 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC4N0009 254 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC4N0009 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC4N0009 phamnha 254 
