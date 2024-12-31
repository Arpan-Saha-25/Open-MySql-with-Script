@echo off
cd "path\Program Files\MySQL\MySQL Server 8.0\bin"

:: Set your MySQL username and password
set MYSQL_USER=root
set MYSQL_PASSWORD="xyz"

:: Run MySQL with the specified credentials
mysql -u %MYSQL_USER% -p%MYSQL_PASSWORD% 
::-e "show databases;"

cmd /k
