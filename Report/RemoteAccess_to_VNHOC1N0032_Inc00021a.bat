call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned.bat VNHOC1N0032 21 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status.bat VNHOC1N0032 21 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack.bat VNHOC1N0032 21 
pause 
runas /noprofile /user:hlp_nguyeant3@ap.adsint.biz "\\vnhocapfs101\OTHERS\RemoteAssistant\SCCM Remote Control\CmRcViewer.exe" VNHOC1N0032 
call \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc.bat VNHOC1N0032 nguyeant 21 
