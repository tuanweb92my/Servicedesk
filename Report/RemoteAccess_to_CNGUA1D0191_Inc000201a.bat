call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat CNGUA1D0191 201 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response.bat CNGUA1D0191 201 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_response2.bat CNGUA1D0191 201 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat CNGUA1D0191 201 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat CNGUA1D0191 201 
pause 
"\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" CNGUA1D0191 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat CNGUA1D0191 huangkev 201 
