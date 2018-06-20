call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat THBAK1N0002 272 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat THBAK1N0002 272 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat THBAK1N0002 272 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat THBAK1N0002 272 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat THBAK1N0002 272 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" THBAK1N0002 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat THBAK1N0002 mayansri 272 
