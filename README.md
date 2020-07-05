# Lock-Local-Administrators-Group
This is a simple script for maintaining the list of users in a Windows Server's local administrators group.
This only works for machines with Powershell version 5.x and above per my testing.

The way it works is it references a separate master list of users (You can edit the script somehow
to reference a table on a secure database like SQL or a table on ServiceNow depending on your requirement),
and if you are not in the list, it removes you from the local admin group. Conversely, if you are on the master list
but not in the local administrators group, you get added.
