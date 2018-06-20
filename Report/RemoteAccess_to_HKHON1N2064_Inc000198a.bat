call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat HKHON1N2064 198 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat HKHON1N2064 198 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat HKHON1N2064 198 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat HKHON1N2064 198 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat HKHON1N2064 198 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" HKHON1N2064 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat HKHON1N2064 cheundix 198 
