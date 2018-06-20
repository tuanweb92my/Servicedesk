call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC4N0013 37 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC4N0013 37 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC4N0013 37 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC4N0013 37 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC4N0013 37 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC4N0013 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC4N0013 nguyengo5 37 
