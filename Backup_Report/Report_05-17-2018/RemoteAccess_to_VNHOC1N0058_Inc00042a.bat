call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC1N0058 42 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC1N0058 42 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC1N0058 42 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC1N0058 42 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC1N0058 42 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC1N0058 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC1N0058 nguyehie 42 
