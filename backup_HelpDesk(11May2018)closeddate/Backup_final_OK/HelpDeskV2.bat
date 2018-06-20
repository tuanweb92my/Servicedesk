if NOT EXIST c:\Helpdesk ( 

mkdir c:\Helpdesk

pushd \\vnhocapfs101\OTHERS\RemoteAssistant\

copy \\vnhocapfs101\OTHERS\RemoteAssistant\I_Need_Remote_Assistant_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\I_Need_Remote_Assistant_local_outside.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Search_notassigned_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status_todone_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Search_status_time_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Send_ack_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Send_completed_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\Update_inc_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\HelpDeskV2_local.bat c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\HelpDesk.ico c:\Helpdesk
copy \\vnhocapfs101\OTHERS\RemoteAssistant\HelpDesk.lnk c:\Helpdesk

popd

)

c:\Helpdesk\I_Need_Remote_Assistant_local.bat

