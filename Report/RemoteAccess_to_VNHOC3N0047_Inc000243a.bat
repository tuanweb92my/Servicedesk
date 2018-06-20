call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC3N0047 243 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC3N0047 243 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC3N0047 243 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC3N0047 243 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC3N0047 243 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC3N0047 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC3N0047 nguyethh 243 
