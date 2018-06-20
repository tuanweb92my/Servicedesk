call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC1N0238 177 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC1N0238 177 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC1N0238 177 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC1N0238 177 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC1N0238 177 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC1N0238 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC1N0238 caomin 177 
