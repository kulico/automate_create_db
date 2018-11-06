linux_host=$(cat /etc/hostname)
sh /home/oracle/scripts/count_db_name.sh
count=$(cat /home/oracle/scripts/count_db_name.txt)
db_name=jelly$count
echo $db_name

/u01/app/oracle/product/18.0.0/dbhome_1/bin/dbca -silent -createDatabase -templateName /u01/app/oracle/product/18.0.0/dbhome_1/assistants/dbca/templates/General_Purpose.dbc -gdbName $db_name -sid $db_name -characterSet AL32UTF8 -SysPassword welcome1 -SystemPassword welcome1 -createAsContainerDatabase false -emConfiguration NONE -memoryPercentage 40 -ignorePreReqs

echo "
$db_name:/u01/app/oracle/product/18.0.0/dbhome_1:Y" >> /etc/oratab