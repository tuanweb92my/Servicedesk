call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat DEHER1N3718 209 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat DEHER1N3718 209 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat DEHER1N3718 209 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat DEHER1N3718 209 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat DEHER1N3718 209 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" DEHER1N3718 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat DEHER1N3718 ruedlmax 209 
