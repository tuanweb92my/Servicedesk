call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC2N0032 191 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC2N0032 191 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC2N0032 191 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC2N0032 191 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC2N0032 191 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC2N0032 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC2N0032 nguyehuy 191 
