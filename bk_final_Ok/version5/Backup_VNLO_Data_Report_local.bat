rem RoboCopy \\vnhocapfs101\Apps\RemoteAssistant\ \\vnhocapfs101\OTHERS\RemoteAssistant\Report\ /MIR /W:0 /R:1 /Z > C:\Helpdesk\externalbackup.log
rem RoboCopy \\vnhocapfs101\Apps\RemoteAssistant\ \\vnhocapfs101\OTHERS\RemoteAssistant\Report\ /MIR /W:0 /R:1 /Z > \\vnhocapfs101\OTHERS\RemoteAssistant\Report\backup.log

if NOT EXIST C:\Helpdesk_report ( 

mkdir C:\Helpdesk_report
RoboCopy \\vnhocapfs101\Apps\RemoteAssistant\ C:\Helpdesk_report /E /W:0 /R:1 /Z > C:\Helpdesk_report\backup.log

)

RoboCopy \\vnhocapfs101\Apps\RemoteAssistant\ C:\Helpdesk_report /E /W:0 /R:1 /Z > C:\Helpdesk_report\backup.log


rem %date:~4,2%-%date:~7,2%-%date:~10,4% 


Robocopy \\vnhocapfs101\Apps\RemoteAssistant\ c:\Helpdesk_report\Report_%date:~4,2%-%date:~7,2%-%date:~10,4%\ /MAXAGE:1