===Project Description===
SysAdmin Tool is a simple modular command-line toolkit 
designed for system administrators and DevOps beginners.
It demonstrates:
1) File backup operations
2) System information reporting
3) Network connectivity checks
4) Basic logging practices

=====Modules and Functions=====
directoryCheck() - outputs a list of flies in the given directory
backupFromTo <src> <dest> - creates a backup of all files from source
directory to destination directory. Erros are appended to logs/sysadmin.log

systemInformation() - displays current date, system uptime and CPU
usage stats

hostipCheck <host> - checks network availability using ping -c1.
Prints whether the host is reachable.
