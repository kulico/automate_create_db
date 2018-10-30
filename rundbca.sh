/u01/app/oracle/product/18.0.0/dbhome_1/bin/dbca -silent -createDatabase -templateName /u01/app/oracle/product/18.0.0/dbhome_1/assistants/dbca/templates/General_Purpose.dbc -gdbName jellybeardb -sid jellybeardb -characterSet AL32UTF8 -SysPassword welcome1 -SystemPassword welcome1 -createAsContainerDatabase false -emConfiguration NONE -memoryPercentage 40 -ignorePreReqs

echo "#



# This file is used by ORACLE utilities.  It is created by root.sh
# and updated by either Database Configuration Assistant while creating
# a database or ASM Configuration Assistant while creating ASM instance.

# A colon, ':', is used as the field terminator.  A new line terminates
# the entry.  Lines beginning with a pound sign, '#', are comments.
#
# Entries are of the form:
#   $ORACLE_SID:$ORACLE_HOME:<N|Y>:
#
# The first and second fields are the system identifier and home
# directory of the database respectively.  The third field indicates
# to the dbstart utility that the database should , "Y", or should not,
# "N", be brought up at system boot time.
#
# Multiple entries with the same $ORACLE_SID are not allowed.
#
#
jellybeardb:/u01/app/oracle/product/18.0.0/dbhome_1:Y" >/etc/oratab