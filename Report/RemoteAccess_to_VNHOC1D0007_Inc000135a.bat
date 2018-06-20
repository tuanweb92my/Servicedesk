call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC1D0007 135 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat VNHOC1D0007 135 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat VNHOC1D0007 135 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC1D0007 135 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC1D0007 135 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC1D0007 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC1D0007 buison 135 
