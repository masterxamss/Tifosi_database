# Tifosi database

![logo-cenef bd88502499a936f6d32beb2ac89540dc-svg](https://github.com/user-attachments/assets/b71a3a78-1515-4d98-9ffe-ec2feebdf91b)

#

## The purpose of this project is create a database with MySQL

## Getting Started 🚀
These instructions will lead you to make a copy on your machine
### Prerequisites 📝
```
git@2.34.1 or higher
Mysql 8.0 or higher
```
## Project setup 🔧
From your command line, first clone portfolio:
```
# Clone the repository
$ git clone https://github.com/masterxamss/Tifosi_database.git

# Move into the repository
$ cd Tifosi_database

# Remove the current origin repository
$ git remote remove origin
```
After that, you can run the below commands.
```
# RUN THE COMMAND AS ADMINSTRATOR MySQL, THIS SCRIPT WILL CREATE A DATABASE STRUCTURE AND USER 'tifosi'. 
$ mysql -u 'username' -p < tifosi.sql
Enter password:

# RUN THE COMMAND AS USER 'tifosi', PASSWORD IS ON THE SCRIPT (tifosi.sql) LINE 23, THIS SRIPT WILL IMPORT THE DATA;
$ mysql -u tifosi -p < tifosi-data.sql
Enter password:

# ENTER AS USER 'tifosi'
$ mysql -u 'tifosi' -p
Enter password:

# NOW YOU ARE ABLE TO USE DATABASE
mysql> USE tifosi;
mysql> SHOW TABLES;
mysql> SELECT * FROM view_focaccia_ingredients;


```

<div align="center">

![logo-mysql-170x115](https://github.com/user-attachments/assets/b7e0d3ad-fa1d-446f-b6a2-953e022cbb41)

</div>
