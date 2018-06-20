call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat INGUR6N7070 299 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat INGUR6N7070 299 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat INGUR6N7070 299 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat INGUR6N7070 299 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat INGUR6N7070 299 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" INGUR6N7070 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat INGUR6N7070 negivar 299 
