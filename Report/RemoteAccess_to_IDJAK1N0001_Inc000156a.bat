call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat IDJAK1N0001 156 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat IDJAK1N0001 156 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat IDJAK1N0001 156 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat IDJAK1N0001 156 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat IDJAK1N0001 156 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" IDJAK1N0001 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat IDJAK1N0001 sitepmas 156 
