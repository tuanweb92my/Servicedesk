
RoboCopy \\vnhocapfs101\Apps\RemoteAssistant\ \\vnhocapfs101\OTHERS\RemoteAssistant\Report\ /E /W:0 /R:1 /Z >> \\vnhocapfs101\OTHERS\RemoteAssistant\Report\backup.log


RoboCopy \\vnhocapfs101\Apps\RemoteAssistant\ \\vnhocapfs101\OTHERS\RemoteAssistant\Backup_Report\Report_%date:~4,2%-%date:~7,2%-%date:~10,4%\ /xf *.bat *.txt /MAXAGE:1 >> \\vnhocapfs101\OTHERS\RemoteAssistant\Backup_Report\backup.log
